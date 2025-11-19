void sub_100314F2C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = v3;
    v6 = [v4 count];
    v7 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    v11 = 138413058;
    v12 = v3;
    v13 = 2048;
    v14 = v6;
    v15 = 2112;
    v16 = v2;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: Fetching %lu job(s) for client %@: %@", &v11, 0x2Au);
  }

  v8 = *(a1 + 32);
  v9 = [NSOrderedSet orderedSetWithArray:*(a1 + 48)];
  v10 = sub_1003150B0(v8, v9, v2);

  (*(*(a1 + 56) + 16))();
}

id sub_1003150B0(id a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = [a2 array];
    v7 = sub_10036FDEC(v6, &stru_100522FF0);

    v3 = sub_100316E4C(v3, v7, v5);
  }

  return v3;
}

void sub_100315244(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = v3;
    v6 = [v4 count];
    v7 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    v8 = 138413058;
    v9 = v3;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v2;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Pausing %lu job(s) for client %@: %@", &v8, 0x2Au);
  }

  sub_100314824(*(a1 + 32), *(a1 + 48), &stru_100522E80);
  (*(*(a1 + 56) + 16))();
}

void sub_1003153A4(id a1, AppInstallsDatabaseTransaction *a2, int64_t a3)
{
  if (a2)
  {
    sub_100207D08(&a2->super.super.isa, a3, -10, 2uLL);
  }
}

void sub_1003154C0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  sub_10027B8B0(v2, *(a1 + 48));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = v2;
    v3 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Registered legacy client: %@", buf, 0x16u);
  }

  v4 = sub_100314DF4(*(a1 + 32), v2);
  v5 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(*(&v12 + 1) + 8 * v10) persistentID]);
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 56) + 16))();
  sub_10027AF18(v2, v6);
}

void sub_1003157D4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = v3;
    v6 = [v4 count];
    v7 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    v8 = 138413058;
    v9 = v3;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v2;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Resuming %lu job(s) for client %@: %@", &v8, 0x2Au);
  }

  sub_100314824(*(a1 + 32), *(a1 + 48), &stru_100522EA0);
  (*(*(a1 + 56) + 16))();
}

void sub_100315D74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100315E20;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_100315E20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100315F40;
  v8[3] = &unk_100522EC8;
  v8[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
  v3 = *(a1 + 40);
  if ((*(v3 + 32) & 1) == 0)
  {
    sub_100315F58(v3, *(a1 + 32));
    *(*(a1 + 40) + 32) = 1;
    v4 = dispatch_time(0, 500000000);
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100316008;
    v7[3] = &unk_10051AF98;
    v7[4] = v5;
    dispatch_after(v4, v6, v7);
  }
}

void sub_100315F58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100317A40;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100316010(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 24) count])
    {
      sub_100315F58(a1, *(a1 + 24));
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v2 = [*(a1 + 24) allKeys];
      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v14;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v14 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v13 + 1) + 8 * i);
            v8 = [*(a1 + 24) objectForKeyedSubscript:v7];
            v9 = [v8 isEqualToNumber:&off_100547F50];

            if (v9)
            {
              [*(a1 + 24) setObject:0 forKeyedSubscript:v7];
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v4);
      }

      v10 = dispatch_time(0, 500000000);
      v11 = *(a1 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100316200;
      block[3] = &unk_10051AF98;
      block[4] = a1;
      dispatch_after(v10, v11, block);
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }
}

void sub_100316620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_100316668(uint64_t a1)
{
  v2 = [[JobManagerClient alloc] initWithConnection:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setObject:v2 forKey:*(a1 + 32)];
}

id sub_1003166D4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableOrderedSet);
    v5 = sub_1003C27BC();
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1003167C0;
    v11 = &unk_10051FD88;
    v12 = v3;
    v13 = v4;
    v6 = v4;
    [v5 readUsingSession:&v8];

    a1 = [v6 copy];
  }

  return a1;
}

void sub_1003167C0(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_10027AE18(*(a1 + 32));
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  v9 = @"external_id";
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003168FC;
  v7[3] = &unk_100521638;
  v8 = *(a1 + 40);
  [v5 enumeratePersistentIDsAndProperties:v6 usingBlock:v7];
}

void sub_1003168FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"external_id"];
  v5 = *(a1 + 32);
  v8 = v4;
  if (v4)
  {
    v10[0] = 0;
    v10[1] = 0;
    [v4 getUUIDBytes:v10];
    v6 = v10[0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithLongLong:v6, v8];
  [v5 addObject:v7];
}

void sub_1003169C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [*(a1 + 8) objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v3[2](v3, v9);
          objc_autoreleasePoolPop(v10);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

id sub_100316B04(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 longLongValue];

  return sub_100232CA4(NSUUID, v2);
}

uint64_t sub_100316B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100316CC4;
  v15[3] = &unk_100522F30;
  v16 = v4;
  v5 = sub_10036FDEC(v16, v15);
  v6 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v5];
  v7 = [v3 connection];
  v8 = sub_1002D3F5C(AppInstallEntity, v7, v6);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100316D8C;
  v12[3] = &unk_100522F58;
  v9 = *(a1 + 40);
  v13 = v3;
  v14 = v9;
  v10 = v3;
  [v8 enumeratePersistentIDsUsingBlock:v12];

  return 1;
}

id sub_100316CC4(uint64_t a1)
{
  v1 = [*(a1 + 32) firstObject];
  v2 = [v1 UUIDString];
  v3 = [v2 substringToIndex:18];

  v4 = [NSString stringWithFormat:@"%@%%", v3];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"external_id" value:v4 comparisonType:7];

  return v5;
}

uint64_t sub_100316DA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = 9;
    if (a2 <= -16)
    {
      v3 = 3;
      if (a2 != -20)
      {
        v3 = 9;
      }

      if (a2 == -30)
      {
        v3 = 0;
      }

      if (a2 == -40)
      {
        return 4;
      }

      else
      {
        return v3;
      }
    }

    else
    {
      v2 = a2 + 5;
      if ((a2 + 5) <= 0x37)
      {
        if (((1 << v2) & 0x84200000000001) != 0)
        {
          return 5;
        }

        if (((1 << v2) & 0x2100000) != 0)
        {
          return 7;
        }

        if (a2 == 30)
        {
          return 2;
        }
      }

      if (a2 == -15 || a2 == -10)
      {
        return 6;
      }
    }
  }

  return result;
}

id sub_100316E4C(id a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = objc_opt_new();
    v8 = sub_10027AE18(v6);

    v9 = [NSMutableArray arrayWithObject:v8];

    if (v5)
    {
      v10 = [SQLiteContainsPredicate containsPredicateWithProperty:@"external_id" values:v5];
      [v9 addObject:v10];
    }

    v11 = sub_1003C27BC();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100316FD0;
    v15[3] = &unk_100522FD0;
    v16 = v9;
    v17 = a1;
    v18 = v7;
    v12 = v7;
    v13 = v9;
    [v11 readUsingSession:v15];

    a1 = [v12 copy];
  }

  return a1;
}

void sub_100316FD0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v3];
  v6 = [v4 connection];

  v7 = sub_1002D3F5C(AppInstallEntity, v6, v5);

  v12[0] = @"bundle_id";
  v12[1] = @"external_id";
  v12[2] = @"failure_error";
  v12[3] = @"item_id";
  v12[4] = @"IFNULL(app_install.phase, 10)";
  v8 = [NSArray arrayWithObjects:v12 count:5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10031715C;
  v10[3] = &unk_100522FA8;
  v9 = a1[6];
  v10[4] = a1[5];
  v11 = v9;
  [v7 enumeratePersistentIDsAndProperties:v8 usingBlock:v10];
}

void sub_10031715C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v17 = [v4 objectForKeyedSubscript:@"external_id"];
  v5 = [ASDJob alloc];
  if (v17)
  {
    v19[0] = 0;
    v19[1] = 0;
    [v17 getUUIDBytes:v19];
    v6 = v19[0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 initWithPersistentID:{v6, v17}];
  v8 = [v4 objectForKeyedSubscript:@"bundle_id"];
  [v7 setBundleID:v8];

  v9 = [v4 objectForKeyedSubscript:@"item_id"];
  [v7 setStoreItemID:{objc_msgSend(v9, "unsignedLongLongValue")}];

  v10 = *(a1 + 32);
  v11 = [v4 objectForKeyedSubscript:{@"IFNULL(app_install.phase, 10)"}];
  [v7 setPhase:{sub_100316DA4(v10, objc_msgSend(v11, "integerValue"))}];

  [v7 setType:2];
  v12 = [v4 objectForKeyedSubscript:@"failure_error"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
    [v7 setFailureError:v13];
  }

  v14 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v18];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
  }

  else
  {
    v16 = -1.0;
  }

  [v7 setPercentComplete:v16];
  [*(a1 + 40) addObject:v7];
}

id sub_100317398(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 longLongValue];

  return sub_100232CA4(NSUUID, v2);
}

void sub_1003173DC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2112;
    v7 = v2;
    v3 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Client %@ disconnected", &v4, 0x16u);
  }
}

void sub_1003174D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}@]: Connection interrupted for pid: %i", &v7, 0x12u);
  }
}

void sub_1003175BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    *v11 = 138543618;
    *&v11[4] = v5;
    *&v11[12] = 1024;
    *&v11[14] = v6;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@]: Connection invalidated from pid: %i", v11, 0x12u);
  }

  v8 = v3;
  v9 = v8;
  if (WeakRetained)
  {
    v10 = WeakRetained[2];
    *v11 = _NSConcreteStackBlock;
    *&v11[8] = 3221225472;
    *&v11[16] = sub_1003173DC;
    v12 = &unk_10051B570;
    v13 = WeakRetained;
    v14 = v8;
    dispatch_sync(v10, v11);
  }
}

void sub_100317730(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003177C0;
  v2[3] = &unk_100523018;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_1003169C8(v1, v2);
}

void sub_1003177C0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100316E4C(*(a1 + 32), *(a1 + 40), v4);
  if ([v3 count])
  {
    sub_10027AF18(v4, v3);
  }
}

void sub_100317830(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003178D4;
  v5[3] = &unk_100523040;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  sub_1003169C8(v2, v5);
}

void sub_1003178D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v16[0] = 0;
    v16[1] = 0;
    [v3 getUUIDBytes:v16];
    v5 = v16[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithLongLong:v5];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100316DA4(*(a1 + 40), [*(a1 + 48) integerValue]));
  v14 = v6;
  v15 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  sub_10027B4A8(v4, v8);

  v13 = v6;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v11 = v6;
  v12 = v7;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  sub_10027B11C(v4, v9, v10);
}

void sub_100317A40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100317AD0;
  v2[3] = &unk_100523018;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_1003169C8(v1, v2);
}

void sub_100317AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003166D4(*(a1 + 32), v3);
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v6 = *(a1 + 40);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100317C94;
  v15 = &unk_100523068;
  v7 = v4;
  v16 = v7;
  v8 = v5;
  v17 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:&v12];
  if ([v8 count])
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      *buf = 138412802;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      v22 = 2112;
      v23 = v8;
      v11 = v10;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%@]: Sending progress: %@ -> %@", buf, 0x20u);
    }

    sub_10027B6AC(v3, v8);
  }
}

void sub_100317C94(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v9[0] = 0;
    v9[1] = 0;
    [a2 getUUIDBytes:v9];
    v5 = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithLongLong:v5, v7];
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v8 forKey:v6];
  }
}

void sub_100317D6C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v6 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%@]: NOTIFY STATES: %@", buf, 0x16u);
  }

  v3 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100317EB0;
  v7[3] = &unk_100523018;
  v7[4] = v3;
  v8 = *(a1 + 40);
  sub_1003169C8(v3, v7);
}

void sub_100317EB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003166D4(*(a1 + 32), v3);
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v6 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100318078;
  v13[3] = &unk_100523090;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  if ([v8 count])
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      *buf = 138412802;
      v18 = v11;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v8;
      v12 = v11;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%@]: NOTIFY CLIENT: %@ -> %@", buf, 0x20u);
    }

    sub_10027B4A8(v3, v8);
  }
}

void sub_100318078(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v10[0] = 0;
    v10[1] = 0;
    [a2 getUUIDBytes:v10];
    v5 = v10[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithLongLong:v5, v8];
  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100316DA4(*(a1 + 48), [v9 integerValue]));
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }
}

BOOL sub_1003181E8(_BOOL8 a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:12];
    v5 = v4;
    if (v3)
    {
      v6 = v3[1];
      [v5 setObject:v6 forKeyedSubscript:@"app_adam_id"];

      v7 = v3[2];
    }

    else
    {
      [v4 setObject:0 forKeyedSubscript:@"app_adam_id"];
      v7 = 0;
    }

    v8 = v7;
    [v5 setObject:v8 forKeyedSubscript:@"ad_network_id"];

    if (v3)
    {
      v9 = v3[5];
      [v5 setObject:v9 forKeyedSubscript:@"impression_id"];

      v10 = v3[6];
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"impression_id"];
      v10 = 0;
    }

    v11 = v10;
    [v5 setObject:v11 forKeyedSubscript:@"source_app_adam_id"];

    if (v3)
    {
      v12 = v3[7];
      [v5 setObject:v12 forKeyedSubscript:@"timestamp"];

      v13 = v3[9];
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"timestamp"];
      v13 = 0;
    }

    v14 = v13;
    [v5 setObject:v14 forKeyedSubscript:@"attribution_signature"];

    if (v3)
    {
      v15 = v3[10];
      [v5 setObject:v15 forKeyedSubscript:@"version"];

      v16 = v3[11];
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"version"];
      v16 = 0;
    }

    v17 = v16;
    [v5 setObject:v17 forKeyedSubscript:@"source_app_bundle_id"];

    if (v3)
    {
      v18 = [NSNumber numberWithInteger:v3[12]];
      [v5 setObject:v18 forKeyedSubscript:@"fidelity_type"];

      v19 = v3[13];
    }

    else
    {
      v27 = [NSNumber numberWithInteger:0];
      [v5 setObject:v27 forKeyedSubscript:@"fidelity_type"];

      v19 = 0;
    }

    v20 = v19;
    [v5 setObject:v20 forKeyedSubscript:@"process_name"];

    if (v3)
    {
      v21 = v3[8];
      [v5 setObject:v21 forKeyedSubscript:@"local_timestamp"];

      v22 = v3[10];
      if (v22)
      {
        v23 = v22;
        v24 = ASDInstallAttributionVersionCreateFromString();

        if (v24 >= 400)
        {
          v25 = v3[4];
          v26 = &off_100527108;
LABEL_24:
          v28 = [NSNumber numberWithInteger:v25];
          [v5 setObject:v28 forKeyedSubscript:*v26];

          v29 = [InstallAttributionImpressionDatabaseEntity alloc];
          v30 = [a1 connection];
          v31 = [(SQLiteEntity *)v29 initWithPropertyValues:v5 onConnection:v30];

          a1 = [(SQLiteEntity *)v31 existsInDatabase];
          goto LABEL_25;
        }
      }

      v25 = v3[3];
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"local_timestamp"];
      v25 = 0;
    }

    v26 = &off_100527100;
    goto LABEL_24;
  }

LABEL_25:

  return a1;
}

BOOL sub_100318568(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v159 = a1;
  if (a1)
  {
    v5 = objc_opt_new();
    v6 = v5;
    if (v4)
    {
      v7 = v4[1];
      sub_100232B60(v6, v7);

      v8 = v4[2];
    }

    else
    {
      sub_100232B60(v5, 0);
      v8 = 0;
    }

    v9 = v8;
    sub_100232B70(v6, v9);

    if (v4)
    {
      v10 = v4[10];
      if (v10)
      {
        v11 = v10;
        v12 = ASDInstallAttributionVersionCreateFromString();

        if (v12 >= 400)
        {
          if (v6)
          {
            v6[4] = v4[4];
          }

          goto LABEL_15;
        }
      }

      v13 = v4[3];
    }

    else
    {
      v13 = 0;
    }

    if (v6)
    {
      v6[3] = v13;
    }

    if (!v4)
    {
      sub_100232B80(v6, 0);
      v15 = 0;
LABEL_16:
      v16 = v15;
      sub_100232BC0(v6, v16);

      if (v4)
      {
        v17 = v4[9];
        sub_100232BD0(v6, v17);

        v18 = v4[6];
      }

      else
      {
        sub_100232BD0(v6, 0);
        v18 = 0;
      }

      v19 = v18;
      sub_100232BA0(v6, v19);

      if (v4)
      {
        v20 = v4[10];
        sub_100232BE0(v6, v20);

        v21 = v4[12];
        if (!v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_100232BE0(v6, 0);
        v21 = 0;
        if (!v6)
        {
LABEL_21:
          if (v4)
          {
            v22 = v4[8];
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          sub_1002401FC(v6, v23);

          sub_100240104(v6, ASDInstallAttributionInteractionTypeView);
          v24 = [_TtC9appstored21SKANEnvironmentHelper environmentForParams:v6];
          sub_100240114(v6, v24);

          v25 = v4;
          v26 = v25;
          if (v4)
          {
            v27 = v25[6];
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;
          v157 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"source_app_adam_id", [v28 unsignedLongLongValue]);

          if (v4)
          {
            v29 = v26[1];
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          v31 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v30 unsignedLongLongValue]);

          v181 = v157;
          v182 = v31;
          v32 = [NSArray arrayWithObjects:&v181 count:2];
          v33 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v32];

          *v167 = @"app_adam_id";
          *&v167[8] = @"ad_network_id";
          *&v167[16] = @"campaign_id";
          v168 = @"source_identifier";
          v169 = @"impression_id";
          v170 = @"source_app_adam_id";
          v171 = @"local_timestamp";
          v172 = @"version";
          v173 = @"source_app_bundle_id";
          v174 = @"fidelity_type";
          v175 = @"process_name";
          v34 = [NSArray arrayWithObjects:v167 count:11];
          v160 = 0;
          v161 = &v160;
          v162 = 0x3032000000;
          v163 = sub_10031DB7C;
          v164 = sub_10031DB8C;
          v165 = 0;
          v35 = [v159 connection];
          v36 = sub_1002D3F5C(InstallAttributionImpressionDatabaseEntity, v35, v33);

          v176 = _NSConcreteStackBlock;
          v177 = 3221225472;
          v178 = sub_10031DB94;
          v179 = &unk_100520768;
          v180 = &v160;
          [v36 enumeratePersistentIDsAndProperties:v34 usingBlock:&v176];
          if (!*(v161 + 40))
          {
            v40 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              if (v4)
              {
                v63 = v26[11];
                v64 = v26[6];
              }

              else
              {
                v63 = 0;
                v64 = 0;
              }

              v65 = v64;
              *buf = 138543618;
              *&buf[4] = v63;
              *&buf[12] = 2114;
              *&buf[14] = v65;
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Cannot find started impression from source app bundle ID:%{public}@, adam ID:%{public}@", buf, 0x16u);
            }

            v41 = ASDErrorWithDescription();
            goto LABEL_88;
          }

          if (v4)
          {
            v37 = v26[10];
            if (v37 && ASDInstallAttributionVersionCreateFromString() >= 400)
            {
              v38 = *(v161 + 40);
              if (v38)
              {
                v38 = v38[4];
              }

              v39 = v26[4] == v38;

              goto LABEL_40;
            }

            v42 = v26[3];
          }

          else
          {
            v37 = 0;
            v42 = 0;
          }

          v43 = *(v161 + 40);
          if (v43)
          {
            v43 = v43[3];
          }

          v39 = v42 == v43;

          if (!v4)
          {
            v44 = 0;
LABEL_41:
            v45 = v44;
            v46 = *(v161 + 40);
            if (v46)
            {
              v46 = v46[1];
            }

            v47 = v46;
            if ([v45 isEqualToNumber:v47])
            {
              if (v4)
              {
                v48 = v26[2];
              }

              else
              {
                v48 = 0;
              }

              v153 = v48;
              v49 = *(v161 + 40);
              if (v49)
              {
                v49 = v49[2];
              }

              v151 = v49;
              if (([v153 isEqualToString:?] & v39) == 1)
              {
                if (v4)
                {
                  v50 = v26[5];
                }

                else
                {
                  v50 = 0;
                }

                v51 = v50;
                v52 = *(v161 + 40);
                if (v52)
                {
                  v52 = v52[5];
                }

                v149 = v52;
                if ([v51 isEqualToString:?])
                {
                  if (v4)
                  {
                    v53 = v26[6];
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v147 = v53;
                  v54 = *(v161 + 40);
                  if (v54)
                  {
                    v54 = v54[6];
                  }

                  v146 = v54;
                  if ([v147 isEqualToNumber:?])
                  {
                    if (v4)
                    {
                      v55 = v26[10];
                    }

                    else
                    {
                      v55 = 0;
                    }

                    v145 = v55;
                    v56 = *(v161 + 40);
                    if (v56)
                    {
                      v56 = v56[10];
                    }

                    v144 = v56;
                    if ([v145 isEqualToString:?])
                    {
                      if (v4)
                      {
                        v57 = v26[11];
                      }

                      else
                      {
                        v57 = 0;
                      }

                      v143 = v57;
                      v58 = *(v161 + 40);
                      if (v58)
                      {
                        v58 = v58[11];
                      }

                      v142 = v58;
                      if (![v143 isEqualToString:?])
                      {
                        goto LABEL_135;
                      }

                      if (v4)
                      {
                        v59 = v26[12];
                      }

                      else
                      {
                        v59 = 0;
                      }

                      v60 = *(v161 + 40);
                      if (v60)
                      {
                        v60 = v60[12];
                      }

                      if (v59 == v60)
                      {
                        if (v4)
                        {
                          v61 = v26[13];
                        }

                        else
                        {
                          v61 = 0;
                        }

                        v140 = v61;
                        v62 = *(v161 + 40);
                        if (v62)
                        {
                          v62 = v62[13];
                        }

                        v139 = v62;
                        v141 = [v140 isEqualToString:?];
                      }

                      else
                      {
LABEL_135:
                        v141 = 0;
                      }

                      if (v141)
                      {
                        if (v4)
                        {
                          v130 = v26[8];
                        }

                        else
                        {
                          v130 = 0;
                        }

                        v131 = v130;
                        [v131 doubleValue];
                        v133 = v132;
                        v134 = *(v161 + 40);
                        if (v134)
                        {
                          v134 = v134[8];
                        }

                        v135 = v134;
                        [v135 doubleValue];
                        v137 = v136;

                        v138 = sub_10031DE14();
                        LODWORD(v135) = [v138 intValue];

                        if (vabdd_f64(v133, v137) >= (1000 * v135))
                        {
                          v66 = 0;
                          v68 = 1;
LABEL_89:

                          _Block_object_dispose(&v160, 8);
                          v158 = v66;
                          if (v68)
                          {
                            if (!sub_10031989C(v159, v6, 0))
                            {
                              v89 = ASDLogHandleForCategory();
                              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                              {
                                if (v4)
                                {
                                  v90 = v26[11];
                                  v91 = v26[6];
                                  v92 = v90;
                                }

                                else
                                {
                                  v90 = 0;
                                  v92 = 0;
                                  v91 = 0;
                                }

                                v93 = v91;
                                *v167 = 138543618;
                                *&v167[4] = v90;
                                *&v167[12] = 2114;
                                *&v167[14] = v93;
                                _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Failed to finalize impression for app bundle ID:%{public}@, adam ID:%{public}@", v167, 0x16u);
                              }

                              goto LABEL_127;
                            }

                            if (v4)
                            {
                              v69 = v26[6];
                            }

                            else
                            {
                              v69 = 0;
                            }

                            v70 = v69;
                            v156 = sub_10031DE94(v70);
                            v71 = [v159 connection];
                            v72 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v71, v156);

                            v73 = [v72 countOfEntities];
                            v74 = +[BagService appstoredService];
                            v75 = [v74 lastBag];
                            v76 = [v75 integerForKey:@"install-attribution-low-fidelity-cap"];
                            v77 = v76;
                            v78 = &off_100547F98;
                            if (v76)
                            {
                              v78 = v76;
                            }

                            v79 = v78;

                            v80 = [v79 intValue];
                            if (v73 <= (v80 + 1))
                            {
                              if (v73 == (v80 + 1))
                              {
                                v152 = v70;
                                *buf = @"source_app_adam_id";
                                *&buf[8] = @"local_timestamp";
                                v150 = [NSArray arrayWithObjects:buf count:2];
                                v154 = sub_10031DE94(v152);
                                *v167 = 0;
                                *&v167[8] = v167;
                                *&v167[16] = 0x3032000000;
                                v168 = sub_10031DB7C;
                                v169 = sub_10031DB8C;
                                v170 = 0;
                                v94 = [v159 connection];
                                v183 = @"local_timestamp";
                                v95 = [NSArray arrayWithObjects:&v183 count:1];
                                v148 = sub_1002D4680(InstallAttributionParamsDatabaseEntity, v94, v154, v95);

                                v160 = _NSConcreteStackBlock;
                                v161 = 3221225472;
                                v162 = sub_10031DFA8;
                                v163 = &unk_100520768;
                                v164 = v167;
                                [v148 enumeratePersistentIDsAndProperties:v150 usingBlock:&v160];
                                v96 = [SQLiteComparisonPredicate predicateWithProperty:@"local_timestamp" equalToValue:*(*&v167[8] + 40)];
                                v181 = v154;
                                v182 = v96;
                                v97 = [NSArray arrayWithObjects:&v181 count:2];
                                v98 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v97];

                                v99 = [v159 connection];
                                v100 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v99, v98);

                                v176 = @"source_app_adam_id";
                                v177 = @"app_adam_id";
                                v178 = @"ad_network_id";
                                v179 = @"version";
                                v180 = @"fidelity_type";
                                v101 = [NSArray arrayWithObjects:&v176 count:5];
                                [v100 enumeratePersistentIDsAndProperties:v101 usingBlock:&stru_100523170];
                                [v100 deleteAllEntities];

                                _Block_object_dispose(v167, 8);
                              }

                              else
                              {
                                v102 = ASDLogHandleForCategory();
                                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v167 = 138543618;
                                  *&v167[4] = v70;
                                  *&v167[12] = 2048;
                                  *&v167[14] = v73;
                                  _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Not pruning impressions for source app:%{public}@, current count is:%ld", v167, 0x16u);
                                }
                              }
                            }

                            else
                            {
                              v81 = ASDLogHandleForCategory();
                              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                              {
                                *v167 = 138543362;
                                *&v167[4] = v70;
                                _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Impression count has violated cap for source app adam ID:%{public}@, purging.", v167, 0xCu);
                              }

                              v82 = v70;
                              v83 = sub_10031DE94(v82);
                              v84 = [v159 connection];
                              v85 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v84, v83);

                              [v85 deleteAllEntities];
                              v86 = ASDLogHandleForCategory();
                              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                              {
                                *v167 = 138543362;
                                *&v167[4] = v82;
                                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Purged all lo-fi params for source app:%{public}@", v167, 0xCu);
                              }
                            }

                            v103 = ASDLogHandleForCategory();
                            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                            {
                              if (v4)
                              {
                                v104 = v26[11];
                                v105 = v26[6];
                                v106 = v104;
                              }

                              else
                              {
                                v104 = 0;
                                v106 = 0;
                                v105 = 0;
                              }

                              v107 = v105;
                              *v167 = 138543618;
                              *&v167[4] = v104;
                              *&v167[12] = 2114;
                              *&v167[14] = v107;
                              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Finalized impression for app bundle ID:%{public}@, adam ID:%{public}@", v167, 0x16u);
                            }
                          }

                          else
                          {
                            v87 = ASDLogHandleForCategory();
                            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                            {
                              if (v4)
                              {
                                v124 = v26[11];
                                v125 = v26[6];
                                v126 = v124;
                              }

                              else
                              {
                                v124 = 0;
                                v126 = 0;
                                v125 = 0;
                              }

                              v127 = v125;
                              *v167 = 138543618;
                              *&v167[4] = v124;
                              *&v167[12] = 2114;
                              *&v167[14] = v127;
                              _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Cannot finalize impression from source app bundle ID:%{public}@, adam ID:%{public}@", v167, 0x16u);
                            }

                            if (a3 && v158)
                            {
                              v88 = v158;
                              *a3 = v158;
                            }
                          }

                          if (v4)
                          {
                            v108 = v26[6];
                            v109 = v26[1];
                          }

                          else
                          {
                            v108 = 0;
                            v109 = 0;
                          }

                          v110 = v109;
                          v111 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"source_app_adam_id", [v108 unsignedLongLongValue]);
                          v112 = [v110 unsignedLongLongValue];

                          v113 = [SQLiteComparisonPredicate predicateWithProperty:@"app_adam_id" equalToLongLong:v112];
                          *v167 = v111;
                          *&v167[8] = v113;
                          v114 = [NSArray arrayWithObjects:v167 count:2];
                          v115 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v114];

                          v116 = [v159 connection];
                          v117 = sub_1002D3F5C(InstallAttributionImpressionDatabaseEntity, v116, v115);

                          LODWORD(v116) = [v117 deleteAllEntities];
                          v118 = ASDLogHandleForCategory();
                          v89 = v118;
                          if (v116)
                          {
                            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                            {
                              if (v4)
                              {
                                v119 = v26[6];
                                v120 = v26[1];
                                v121 = v119;
                              }

                              else
                              {
                                v119 = 0;
                                v121 = 0;
                                v120 = 0;
                              }

                              v122 = v120;
                              *v167 = 138543618;
                              *&v167[4] = v119;
                              *&v167[12] = 2114;
                              *&v167[14] = v122;
                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Removed conversion for source app adam ID:%{public}@ and app adam ID:%{public}@", v167, 0x16u);
                            }
                          }

                          else if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                          {
                            if (v4)
                            {
                              v128 = v26[6];
                            }

                            else
                            {
                              v128 = 0;
                            }

                            v129 = v128;
                            *v167 = 138543362;
                            *&v167[4] = v129;
                            _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Failed to remove conversion for source app adam ID:%{public}@", v167, 0xCu);
                          }

LABEL_127:

                          goto LABEL_128;
                        }
                      }

                      goto LABEL_87;
                    }
                  }
                }
              }
            }

LABEL_87:
            v41 = ASDErrorWithDescription();
LABEL_88:
            v66 = v41;
            v67 = v41;
            v68 = 0;
            goto LABEL_89;
          }

LABEL_40:
          v44 = v26[1];
          goto LABEL_41;
        }
      }

      v6[13] = v21;
      goto LABEL_21;
    }

LABEL_15:
    v14 = v4[5];
    sub_100232B80(v6, v14);

    v15 = v4[7];
    goto LABEL_16;
  }

LABEL_128:

  return v159 != 0;
}

BOOL sub_10031989C(_BOOL8 a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = v5[1];
      v8 = v6[2];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v8;
    v10 = sub_1003C5D20(a1, v7, v9);

    if (v10)
    {
      v11 = *(v10 + 104);
      if (v6)
      {
        v12 = v6[13];
      }

      else
      {
        v12 = 0;
      }

      if (v11 > v12)
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Existing impression with higher fidelity found. Not adding params", buf, 2u);
        }

        if (a3)
        {
LABEL_11:
          ASDErrorWithDescription();
          *a3 = a1 = 0;
LABEL_62:

          goto LABEL_63;
        }

LABEL_45:
        a1 = 0;
        goto LABEL_62;
      }

      if (v6)
      {
        if (v11 == 1 && v6[13] == 1)
        {
          v14 = *(v10 + 112);
          v15 = ASDInstallAttributionInteractionTypeClick;
          v16 = [v14 isEqualToString:ASDInstallAttributionInteractionTypeClick];

          v17 = v6[14];
          v18 = [v17 isEqualToString:v15];

          if (v16)
          {
            if (!v18)
            {
              v19 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v56[0] = 0;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Existing impression with higher interaction type found. Not adding params", v56, 2u);
              }

              if (a3)
              {
                goto LABEL_11;
              }

              goto LABEL_45;
            }
          }
        }
      }
    }

    v20 = [[NSMutableDictionary alloc] initWithCapacity:10];
    v21 = v20;
    if (v6)
    {
      v22 = v6[1];
      [v21 setObject:v22 forKeyedSubscript:@"app_adam_id"];

      v23 = v6[2];
    }

    else
    {
      [v20 setObject:0 forKeyedSubscript:@"app_adam_id"];
      v23 = 0;
    }

    v24 = v23;
    [v21 setObject:v24 forKeyedSubscript:@"ad_network_id"];

    v25 = sub_10023FA74(v6);
    [v21 setObject:v25 forKeyedSubscript:@"impression_id"];

    if (v6)
    {
      v26 = v6[9];
      [v21 setObject:v26 forKeyedSubscript:@"timestamp"];

      v27 = v6[10];
    }

    else
    {
      [v21 setObject:0 forKeyedSubscript:@"timestamp"];
      v27 = 0;
    }

    v28 = v27;
    [v21 setObject:v28 forKeyedSubscript:@"attribution_signature"];

    if (v6)
    {
      v29 = [NSNumber numberWithInteger:v6[13]];
      [v21 setObject:v29 forKeyedSubscript:@"fidelity_type"];

      v30 = v6[12];
    }

    else
    {
      v50 = [NSNumber numberWithInteger:0];
      [v21 setObject:v50 forKeyedSubscript:@"fidelity_type"];

      v30 = 0;
    }

    v31 = v30;
    [v21 setObject:v31 forKeyedSubscript:@"local_timestamp"];

    if ([v21 count] != 7)
    {
      if (a3)
      {
        ASDErrorWithDescription();
        *a3 = a1 = 0;
      }

      else
      {
        a1 = 0;
      }

      goto LABEL_61;
    }

    if (v6)
    {
      v32 = v6[7];
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    if (v33)
    {
      if (v6)
      {
        v34 = v6[7];
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      [v21 setObject:v35 forKeyedSubscript:@"source_app_adam_id"];
    }

    if (v6)
    {
      v36 = v6[14];
      [v21 setObject:v36 forKeyedSubscript:@"interaction_type"];

      v37 = v6[15];
    }

    else
    {
      [v21 setObject:0 forKeyedSubscript:@"interaction_type"];
      v37 = 0;
    }

    v38 = v37;
    [v21 setObject:v38 forKeyedSubscript:@"environment"];

    if (v6)
    {
      v39 = v6[16];
      [v21 setObject:v39 forKeyedSubscript:@"private_browsing_session_id"];

      v40 = v6[11];
    }

    else
    {
      [v21 setObject:0 forKeyedSubscript:@"private_browsing_session_id"];
      v40 = 0;
    }

    v41 = v40;

    if (!v41)
    {
LABEL_60:
      v52 = [InstallAttributionParamsDatabaseEntity alloc];
      v53 = [a1 connection];
      v54 = [(SQLiteEntity *)v52 initWithPropertyValues:v21 onConnection:v53];

      a1 = [(SQLiteEntity *)v54 existsInDatabase];
LABEL_61:

      goto LABEL_62;
    }

    if (v6)
    {
      v42 = v6[11];
      [v21 setObject:v42 forKeyedSubscript:@"version"];

      v43 = v6[11];
      if (v43)
      {
        v44 = v43;
        v45 = ASDInstallAttributionVersionCreateFromString();

        if (v45 >= 400)
        {
          v46 = [NSNumber numberWithInteger:v6[4]];
          [v21 setObject:v46 forKeyedSubscript:@"source_identifier"];

          v47 = v6[8];
          [v21 setObject:v47 forKeyedSubscript:@"source_domain"];

          v48 = v6[6];
          v49 = off_10051E420;
LABEL_59:
          [v21 setObject:v48 forKeyedSubscript:*v49];

          goto LABEL_60;
        }
      }

      v51 = v6[3];
    }

    else
    {
      [v21 setObject:0 forKeyedSubscript:@"version"];
      v51 = 0;
    }

    v48 = [NSNumber numberWithInteger:v51];
    v49 = off_10051E408;
    goto LABEL_59;
  }

LABEL_63:

  return a1;
}

id sub_100319EF4(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    [a2 timeIntervalSince1970];
    v4 = [NSNumber numberWithLongLong:(v3 * 1000.0)];
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"local_timestamp" value:v4 comparisonType:3];

    v10[0] = @"ad_network_id";
    v10[1] = @"source_app_adam_id";
    v10[2] = @"version";
    v6 = [NSArray arrayWithObjects:v10 count:3];
    v7 = [v2 connection];
    v8 = sub_1002D3F5C(InstallAttributionImpressionDatabaseEntity, v7, v5);

    [v8 enumeratePersistentIDsAndProperties:v6 usingBlock:&stru_1005230D0];
    v2 = [v8 deleteAllEntities];
  }

  return v2;
}

void sub_10031A050(id a1, int64_t a2, NSDictionary *a3, unint64_t a4, BOOL *a5)
{
  v5 = a3;
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"ad_network_id"];
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:@"version"];

  sub_100232A44(InstallAttributionImpression, v7, 0, v6, 0);
}

BOOL sub_10031A0E4(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v29 = @"app_adam_id";
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  v27 = v5;
  v36 = v27;
  v30 = @"ad_network_registrable_domain";
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v37 = v7;
  v31 = @"impression_id";
  if (v4)
  {
    v8 = v4[3];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v38 = v9;
  v32 = @"source_web_registrable_domain";
  if (v4)
  {
    v10 = v4[4];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v39 = v11;
  v33 = @"version";
  if (v4)
  {
    v12 = v4[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v40 = v13;
  v34 = @"timestamp";
  if (v4)
  {
    v14 = v4[6];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v41 = v15;
  v35 = @"attribution_context";
  if (v4)
  {
    v16 = v4[7];
  }

  else
  {
    v16 = 0;
  }

  v17 = [NSNumber numberWithInteger:v16, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41];
  v42 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v29 count:7];
  v19 = [v18 mutableCopy];

  if (v4)
  {
    v20 = v4[8];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  [v19 setObject:v21 forKeyedSubscript:@"private_browsing_session_id"];
  v22 = [InstallAttributionWebParamsDatabaseEntity alloc];
  v23 = [a1 connection];
  v24 = [(SQLiteEntity *)v22 initWithPropertyValues:v19 onConnection:v23];

  v25 = [(SQLiteEntity *)v24 existsInDatabase];
  return v25;
}

id sub_10031A360(void *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"source_web_registrable_domain" equalToValue:v5];

    v13[0] = v6;
    v13[1] = v7;
    v8 = [NSArray arrayWithObjects:v13 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v10 = [v3 connection];
    v11 = sub_1002D3F5C(InstallAttributionWebParamsDatabaseEntity, v10, v9);

    v3 = [v11 deleteAllEntities];
  }

  return v3;
}

id sub_10031A4B8(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    [a2 timeIntervalSince1970];
    v4 = [NSNumber numberWithLongLong:(v3 * 1000.0)];
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"timestamp" value:v4 comparisonType:3];

    v6 = [v2 connection];
    v7 = sub_1002D3F5C(InstallAttributionWebParamsDatabaseEntity, v6, v5);

    v8 = [v7 deleteAllEntities];
    return v8;
  }

  return result;
}

id sub_10031A590(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"private_browsing_session_id" equalToValue:a2];
    v4 = [v2 connection];
    v5 = sub_1002D3F5C(InstallAttributionWebParamsDatabaseEntity, v4, v3);

    v6 = [v5 deleteAllEntities];
    return v6;
  }

  return result;
}

id sub_10031A62C(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
    v4 = [v2 connection];
    v5 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v4, v3);

    v6 = [v5 deleteAllEntities];
    return v6;
  }

  return result;
}

uint64_t sub_10031A6D8(void *a1, void *a2, int a3)
{
  v5 = a2;
  if (!a1)
  {
    v58 = 0;
    goto LABEL_36;
  }

  v63 = a3 ^ 1u;
  v6 = [NSNumber numberWithInt:?];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"fidelity_type" equalToValue:v6];

  [v5 timeIntervalSince1970];
  v9 = [NSNumber numberWithLongLong:(v8 * 1000.0)];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"local_timestamp" value:v9 comparisonType:3];

  v77[0] = v7;
  v77[1] = v10;
  v11 = [NSArray arrayWithObjects:v77 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  v13 = sub_1003C5E6C(a1, v12, 0);
  v14 = [a1 connection];
  v15 = v12;
  v16 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v14, v12);

  v57 = v16;
  v58 = [v16 deleteAllEntities];
  if (!v58)
  {
    goto LABEL_35;
  }

  v53 = v15;
  v54 = v10;
  v55 = v7;
  v61 = a1;
  v62 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v13;
  v56 = v5;
  v52 = v13;
  v65 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (!v65)
  {
    goto LABEL_25;
  }

  v60 = *v72;
  p_cache = _TtC9appstored14UpdatesContext.cache;
  do
  {
    v18 = 0;
    do
    {
      if (*v72 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v71 + 1) + 8 * v18);
      if (v19)
      {
        v20 = *(v19 + 8);
        [v62 addObject:v20];

        v21 = *(v19 + 64);
        v22 = p_cache + 386;
        if (v21)
        {
          v23 = [v22 adTypeWeb];
          goto LABEL_13;
        }
      }

      else
      {
        [v62 addObject:0];
        v22 = p_cache + 386;
      }

      v23 = [v22 adTypeApp];
      v21 = 0;
LABEL_13:

      v24 = p_cache;
      v25 = p_cache + 386;
      v26 = [p_cache + 386 resultTypeFailure];
      if (v19)
      {
        v27 = *(v19 + 16);
        v28 = *(v19 + 112);
        v29 = *(v19 + 88);
      }

      else
      {
        v28 = 0;
        v27 = 0;
        v29 = 0;
      }

      v30 = v29;
      v31 = ASDErrorWithDescription();
      v32 = [v25 impressionWithResult:v26 adNetworkID:v27 adType:v23 interactionType:v28 version:v30 error:v31];

      v33 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
      if (v19)
      {
        v34 = *(v19 + 8);
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      [v33 logEvent:v32 forAdvertisedAppAdamID:objc_msgSend(v35 completionHandler:{"longLongValue"), &stru_1005230F0}];

      if (v19)
      {
        v36 = *(v19 + 16);
        v37 = *(v19 + 88);
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v38 = v37;
      sub_100232A44(InstallAttributionImpression, v36, v63, v38, 0);

      v18 = v18 + 1;
      p_cache = v24;
    }

    while (v65 != v18);
    v39 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    v65 = v39;
  }

  while (v39);
LABEL_25:

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v64 = v62;
  v40 = [v64 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v40)
  {
    v41 = v40;
    v66 = *v68;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v68 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v43 = *(*(&v67 + 1) + 8 * i);
        v44 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v43 longLongValue]);
        v45 = [v61 connection];
        v46 = sub_1002D3DF0(InstallAttributionParamsDatabaseEntity, v45, v44);

        v47 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v43 longLongValue]);
        v48 = [v61 connection];
        v49 = sub_1002D3DF0(InstallAttributionPingbackDatabaseEntity, v48, v47);

        if (!(v46 | v49))
        {
          v50 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
          [v50 completeStoryForAdvertisedAppAdamID:objc_msgSend(v43 completionHandler:{"longLongValue"), &stru_100523110}];
        }
      }

      v41 = [v64 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v41);
  }

  v7 = v55;
  v5 = v56;
  v15 = v53;
  v10 = v54;
  v13 = v52;
LABEL_35:

LABEL_36:
  return v58;
}

id sub_10031AD08(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"private_browsing_session_id" equalToValue:a2];
    v4 = [v2 connection];
    v5 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v4, v3);

    v6 = [v5 deleteAllEntities];
    return v6;
  }

  return result;
}

id sub_10031ADA4(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"app_bundle_id" equalToValue:a2];
    v4 = [v2 connection];
    v5 = sub_1002D3F5C(InstallAttributionPingbackDatabaseEntity, v4, v3);

    v6 = [v5 deleteAllEntities];
    return v6;
  }

  return result;
}

BOOL sub_10031AE40(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 2);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      if (v8)
      {
        v11 = *(v8 + 4);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12)
      {
        if (v8)
        {
          v13 = *(v8 + 6);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          if (v8)
          {
            v15 = *(v8 + 7);
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            if (v8)
            {
              v17 = *(v8 + 14);
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v18)
            {
              if (v8)
              {
                v19 = *(v8 + 17);
              }

              else
              {
                v19 = 0;
              }

              v20 = v19;

              if (v20)
              {
                if (!v8 || (v21 = *(v8 + 17)) == 0 || (v22 = v21, v23 = ASDInstallAttributionVersionCreateFromString(), v22, v23 < 400) || (v24 = *(v8 + 9), v24, v24))
                {

                  goto LABEL_48;
                }

                v25 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without source identifier", buf, 2u);
                }
              }

              else
              {
                v25 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without version", buf, 2u);
                }
              }
            }

            else
            {
              v25 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without pingback URL", buf, 2u);
              }
            }
          }

          else
          {
            v25 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without attribution signature", buf, 2u);
            }
          }
        }

        else
        {
          v25 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without transaction id", buf, 2u);
          }
        }
      }

      else
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without ad network ID", buf, 2u);
        }
      }
    }

    else
    {
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot insert pingback without app adam ID", buf, 2u);
      }
    }

    v26 = ASDErrorWithDescription();

    if (v26)
    {
      if (a3)
      {
        v27 = v26;
        v28 = 0;
        *a3 = v26;
      }

      else
      {
        v28 = 0;
      }

LABEL_135:

      goto LABEL_136;
    }

LABEL_48:
    v102[0] = @"app_adam_id";
    if (v8)
    {
      v29 = *(v8 + 2);
    }

    else
    {
      v29 = 0;
    }

    v103 = v29;
    v102[1] = @"ad_network_id";
    v98 = v103;
    if (v8)
    {
      v30 = *(v8 + 4);
    }

    else
    {
      v30 = 0;
    }

    v104 = v30;
    v102[2] = @"transaction_id";
    v97 = v104;
    if (v8)
    {
      v31 = *(v8 + 6);
    }

    else
    {
      v31 = 0;
    }

    v105 = v31;
    v102[3] = @"attribution_signature";
    v96 = v105;
    if (v8)
    {
      v32 = *(v8 + 7);
    }

    else
    {
      v32 = 0;
    }

    v106 = v32;
    v102[4] = @"conversion_value";
    v95 = v106;
    if (v8)
    {
      v33 = *(v8 + 11);
    }

    else
    {
      v33 = 0;
    }

    v107 = [NSNumber numberWithInteger:v33];
    v102[5] = @"pingback_url";
    v94 = v107;
    if (v8)
    {
      v34 = *(v8 + 14);
    }

    else
    {
      v34 = 0;
    }

    v108 = v34;
    v102[6] = @"redownload";
    v93 = v108;
    if (v8)
    {
      v35 = v8[11];
    }

    else
    {
      v35 = 0;
    }

    v109 = [NSNumber numberWithBool:v35 & 1];
    v102[7] = @"registered";
    v92 = v109;
    if (v8)
    {
      v36 = v8[12];
    }

    else
    {
      v36 = 0;
    }

    v37 = [NSNumber numberWithBool:v36 & 1];
    v110 = v37;
    v102[8] = @"retry_count";
    if (v8)
    {
      v38 = *(v8 + 15);
    }

    else
    {
      v38 = 0;
    }

    v39 = [NSNumber numberWithInteger:v38];
    v111 = v39;
    v102[9] = @"retry_timestamp";
    v100 = v6;
    if (v8)
    {
      v40 = *(v8 + 16);
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v112 = v41;
    v102[10] = @"local_timestamp";
    v99 = a1;
    if (v8)
    {
      v42 = *(v8 + 18);
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;
    v113 = v43;
    v102[11] = @"fidelity_type";
    if (v8)
    {
      v44 = *(v8 + 20);
    }

    else
    {
      v44 = 0;
    }

    v45 = [NSNumber numberWithInteger:v44];
    v114 = v45;
    v102[12] = @"is_developer_pingback";
    if (v8)
    {
      v46 = v8[14];
    }

    else
    {
      v46 = 0;
    }

    v47 = [NSNumber numberWithBool:v46 & 1];
    v115 = v47;
    v102[13] = @"is_locked";
    if (v8)
    {
      v48 = v8[15];
    }

    else
    {
      v48 = 0;
    }

    v49 = [NSNumber numberWithBool:v48 & 1];
    v116 = v49;
    v50 = [NSDictionary dictionaryWithObjects:&v103 forKeys:v102 count:14];
    v51 = [v50 mutableCopy];

    if (v8)
    {
      v52 = *(v8 + 17);
    }

    else
    {
      v52 = 0;
    }

    v6 = v100;
    v53 = v52;

    if (!v53)
    {
      goto LABEL_113;
    }

    if (v8)
    {
      v54 = *(v8 + 17);
      [v51 setObject:v54 forKeyedSubscript:@"version"];

      v55 = *(v8 + 17);
      if (v55)
      {
        v56 = v55;
        v57 = ASDInstallAttributionVersionCreateFromString();

        if (v57 >= 400)
        {
          v58 = *(v8 + 9);
          [v51 setObject:v58 forKeyedSubscript:@"source_identifier"];

          v59 = *(v8 + 12);
          [v51 setObject:v59 forKeyedSubscript:@"coarse_conversion_value"];

          v60 = [NSNumber numberWithInteger:*(v8 + 21)];
          [v51 setObject:v60 forKeyedSubscript:@"postback_sequence_index"];

          v61 = [NSNumber numberWithBool:v8[9]];
          [v51 setObject:v61 forKeyedSubscript:@"should_send_conversion_value"];

          v62 = [NSNumber numberWithBool:v8[10]];
          [v51 setObject:v62 forKeyedSubscript:@"should_send_coarse_conversion_value"];

          v63 = *(v8 + 23);
          v64 = &off_100527C38;
LABEL_112:
          [v51 setObject:v63 forKeyedSubscript:*v64];

LABEL_113:
          if (v8)
          {
            v68 = *(v8 + 8);
          }

          else
          {
            v68 = 0;
          }

          v69 = v68;

          if (v69)
          {
            if (v8)
            {
              v70 = *(v8 + 8);
            }

            else
            {
              v70 = 0;
            }

            v71 = v70;
            [v51 setObject:v71 forKeyedSubscript:@"source_app_adam_id"];
          }

          if (v8)
          {
            v72 = *(v8 + 10);
          }

          else
          {
            v72 = 0;
          }

          v73 = v72;

          if (v73)
          {
            if (v8)
            {
              v74 = *(v8 + 10);
            }

            else
            {
              v74 = 0;
            }

            v75 = v74;
            [v51 setObject:v75 forKeyedSubscript:@"source_domain"];
          }

          if (v8)
          {
            v76 = *(v8 + 3);
            if (v76)
            {
              v77 = v76;
              v78 = *(v8 + 2);
              v79 = [v78 isEqualToNumber:&off_100547F68];

              if (v79)
              {
                v80 = *(v8 + 3);
                [v51 setObject:v80 forKeyedSubscript:@"app_bundle_id"];
              }
            }

            v81 = v8[13];
          }

          else
          {
            v81 = 0;
          }

          v82 = [NSNumber numberWithBool:v81 & 1];
          [v51 setObject:v82 forKeyedSubscript:@"is_winning_pingback"];

          if (v8)
          {
            v83 = *(v8 + 13);
            [v51 setObject:v83 forKeyedSubscript:@"conversion_value_timestamp"];

            v84 = *(v8 + 19);
          }

          else
          {
            [v51 setObject:0 forKeyedSubscript:@"conversion_value_timestamp"];
            v84 = 0;
          }

          v85 = v84;
          [v51 setObject:v85 forKeyedSubscript:@"maturity_timestamp"];

          if (v8)
          {
            v86 = *(v8 + 22);
          }

          else
          {
            v86 = 0;
          }

          v87 = v86;
          [v51 setObject:v87 forKeyedSubscript:@"environment"];

          v88 = [InstallAttributionPingbackDatabaseEntity alloc];
          v89 = [v99 connection];
          v90 = [(SQLiteEntity *)v88 initWithPropertyValues:v51 onConnection:v89];

          v28 = [(SQLiteEntity *)v90 existsInDatabase];
          v26 = 0;
          goto LABEL_135;
        }
      }

      v65 = *(v8 + 5);
    }

    else
    {
      [v51 setObject:0 forKeyedSubscript:@"version"];
      v65 = 0;
    }

    v66 = [NSNumber numberWithInteger:v65];
    [v51 setObject:v66 forKeyedSubscript:@"campaign_id"];

    if (v8)
    {
      v67 = v8[8];
    }

    else
    {
      v67 = 0;
    }

    v63 = [NSNumber numberWithBool:v67 & 1];
    v64 = &off_100527BB8;
    goto LABEL_112;
  }

  v28 = 0;
LABEL_136:

  return v28;
}

BOOL sub_10031B98C(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_64;
  }

  v63[0] = @"app_adam_id";
  if (v3)
  {
    v5 = v3[2];
  }

  else
  {
    v5 = 0;
  }

  v61 = v5;
  v64[0] = v61;
  v63[1] = @"ad_network_id";
  if (v4)
  {
    v6 = *(v4 + 4);
  }

  else
  {
    v6 = 0;
  }

  v60 = v6;
  v64[1] = v60;
  v63[2] = @"transaction_id";
  if (v4)
  {
    v7 = *(v4 + 6);
  }

  else
  {
    v7 = 0;
  }

  v59 = v7;
  v64[2] = v59;
  v63[3] = @"attribution_signature";
  if (v4)
  {
    v8 = *(v4 + 7);
  }

  else
  {
    v8 = 0;
  }

  v58 = v8;
  v64[3] = v58;
  v63[4] = @"conversion_value";
  if (v4)
  {
    v9 = *(v4 + 11);
  }

  else
  {
    v9 = 0;
  }

  v56 = [NSNumber numberWithInteger:v9];
  v64[4] = v56;
  v64[5] = &stru_100529300;
  v63[5] = @"pingback_url";
  v63[6] = @"redownload";
  if (v4)
  {
    v10 = v4[11];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSNumber numberWithBool:v10 & 1, v56];
  v64[6] = v11;
  v63[7] = @"registered";
  if (v4)
  {
    v12 = v4[12];
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSNumber numberWithBool:v12 & 1];
  v64[7] = v13;
  v63[8] = @"retry_count";
  v62 = a1;
  if (v4)
  {
    v14 = *(v4 + 15);
  }

  else
  {
    v14 = 0;
  }

  v15 = [NSNumber numberWithInteger:v14];
  v64[8] = v15;
  v63[9] = @"retry_timestamp";
  if (v4)
  {
    v16 = *(v4 + 16);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v64[9] = v17;
  v63[10] = @"local_timestamp";
  if (v4)
  {
    v18 = *(v4 + 18);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v64[10] = v19;
  v63[11] = @"fidelity_type";
  if (v4)
  {
    v20 = *(v4 + 20);
  }

  else
  {
    v20 = 0;
  }

  v21 = [NSNumber numberWithInteger:v20];
  v63[12] = @"is_developer_pingback";
  v64[11] = v21;
  v64[12] = &off_100547F80;
  v22 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:13];
  v23 = [v22 mutableCopy];

  if (v4)
  {
    v24 = *(v4 + 17);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    if (v4)
    {
      v26 = *(v4 + 17);
      [v23 setObject:v26 forKeyedSubscript:@"version"];

      v27 = *(v4 + 17);
      if (v27)
      {
        v28 = v27;
        v29 = ASDInstallAttributionVersionCreateFromString();

        if (v29 >= 400)
        {
          v30 = *(v4 + 9);
          [v23 setObject:v30 forKeyedSubscript:@"source_identifier"];

          v31 = *(v4 + 12);
          [v23 setObject:v31 forKeyedSubscript:@"coarse_conversion_value"];

          v32 = [NSNumber numberWithInteger:*(v4 + 21)];
          [v23 setObject:v32 forKeyedSubscript:@"postback_sequence_index"];

          v33 = [NSNumber numberWithBool:v4[9]];
          [v23 setObject:v33 forKeyedSubscript:@"should_send_conversion_value"];

          v34 = [NSNumber numberWithBool:v4[10]];
          [v23 setObject:v34 forKeyedSubscript:@"should_send_coarse_conversion_value"];

          v35 = *(v4 + 23);
          v36 = &off_100527C38;
LABEL_48:
          v40 = v35;
          [v23 setObject:v40 forKeyedSubscript:*v36];

          goto LABEL_49;
        }
      }

      v37 = *(v4 + 5);
    }

    else
    {
      [v23 setObject:0 forKeyedSubscript:@"version"];
      v37 = 0;
    }

    v38 = [NSNumber numberWithInteger:v37];
    [v23 setObject:v38 forKeyedSubscript:@"campaign_id"];

    if (v4)
    {
      v39 = [NSNumber numberWithBool:v4[8]];
      [v23 setObject:v39 forKeyedSubscript:@"should_send_conversion_value"];

      v35 = *(v4 + 13);
    }

    else
    {
      v55 = [NSNumber numberWithBool:0];
      [v23 setObject:v55 forKeyedSubscript:@"should_send_conversion_value"];

      v35 = 0;
    }

    v36 = &off_100527BB0;
    goto LABEL_48;
  }

LABEL_49:
  if (v4)
  {
    v41 = *(v4 + 8);
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  if (v42)
  {
    if (v4)
    {
      v43 = *(v4 + 8);
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    [v23 setObject:v44 forKeyedSubscript:@"source_app_adam_id"];
  }

  if (v4)
  {
    v45 = *(v4 + 10);
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;

  if (v46)
  {
    if (v4)
    {
      v47 = *(v4 + 10);
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;
    [v23 setObject:v48 forKeyedSubscript:@"source_domain"];
  }

  if (v4)
  {
    v49 = v4[13];
  }

  else
  {
    v49 = 0;
  }

  v50 = [NSNumber numberWithBool:v49 & 1];
  [v23 setObject:v50 forKeyedSubscript:@"is_winning_pingback"];

  v51 = [InstallAttributionPingbackDatabaseEntity alloc];
  v52 = [v62 connection];
  v53 = [(SQLiteEntity *)v51 initWithPropertyValues:v23 onConnection:v52];

  a1 = [(SQLiteEntity *)v53 existsInDatabase];
LABEL_64:

  return a1;
}

id sub_10031BFD4(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_id" equalToValue:a2];
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"is_developer_pingback" equalToLongLong:a3];
    v12[0] = v5;
    v12[1] = v6;
    v7 = [NSArray arrayWithObjects:v12 count:2];
    v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

    v9 = [v3 connection];
    v10 = sub_1002D3F5C(InstallAttributionPingbackDatabaseEntity, v9, v8);

    v3 = [v10 deleteAllEntities];
  }

  return v3;
}

uint64_t sub_10031C110(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    v14 = sub_1003A575C(InstallAttributionManager, v13);
    v15 = +[NSDate date];
    v16 = v15;
    if (!v14)
    {
      a1 = sub_10031CBE4(a1, a2, v11, v12, v15, a5);
LABEL_16:

      goto LABEL_17;
    }

    v34 = a5;
    v40 = v15;
    v17 = v12;
    v38 = v11;
    v37 = v11;
    v18 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v17 longLongValue]);
    v19 = [a1 connection];
    v36 = v18;
    v20 = sub_1002D3DF0(SKANGhostbackEntity, v19, v18);

    v39 = v17;
    v21 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v17 longLongValue]);
    v22 = [a1 connection];
    v35 = v21;
    v23 = sub_1002D4034(InstallAttributionPingbackDatabaseEntity, v22, v21);
    v24 = [v23 count];

    if (!v20 || v24)
    {
      v27 = +[NSDate date];
      v29 = v37;
      v28 = v39;
      a1 = sub_10031CBE4(a1, a2, v37, v39, v27, v34);
LABEL_15:
      v16 = v40;

      v11 = v38;
      goto LABEL_16;
    }

    v25 = +[NSDate date];
    [v25 timeIntervalSince1970];
    v27 = [NSNumber numberWithDouble:v26 * 1000.0];

    if (sub_100340114(v20, @"is_registered"))
    {
      v28 = v39;
      v29 = v37;
      if (![v20 canUpdateWithRestrictedConversionValue:a2])
      {
        goto LABEL_12;
      }
    }

    else
    {
      [v20 setValue:v27 forProperty:@"origin_timestamp"];
      [v20 setValue:&off_100547F80 forProperty:@"is_registered"];
      v28 = v39;
      v29 = v37;
    }

    v30 = [NSNumber numberWithInteger:a2];
    [v20 setValue:v30 forProperty:@"restricted_conversion_value"];

    [v20 setValue:v27 forProperty:@"restricted_update_timestamp"];
LABEL_12:
    if ((sub_100340114(v20, @"is_locked") & 1) == 0)
    {
      v31 = [NSNumber numberWithInteger:a2];
      [v20 setValue:v31 forProperty:@"free_conversion_value"];

      [v20 setValue:v29 forProperty:@"coarse_conversion_value"];
      v32 = [NSNumber numberWithBool:v34];
      [v20 setValue:v32 forProperty:@"is_locked"];

      [v20 setValue:v27 forProperty:@"update_timestamp"];
    }

    a1 = 1;
    goto LABEL_15;
  }

LABEL_17:

  return a1;
}

unint64_t sub_10031C4C4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:0];
    [v3 timeIntervalSince1970];
    v6 = [NSNumber numberWithLongLong:(v5 * 1000.0)];
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"local_timestamp" value:v6 comparisonType:3];

    v62[0] = v4;
    v62[1] = v7;
    v8 = [NSArray arrayWithObjects:v62 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v10 = sub_1003C7208(a1, v9, 0);
    v11 = [a1 connection];
    v12 = sub_1002D3F5C(InstallAttributionPingbackDatabaseEntity, v11, v9);

    v13 = [v12 deleteAllEntities];
    v14 = v13;
    if (v13)
    {
      v41 = v12;
      v43 = v13;
      v44 = v9;
      v45 = v7;
      v46 = a1;
      v47 = v4;
      v48 = v3;
      v51 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v42 = v10;
      obj = v10;
      v15 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v15)
      {
        v16 = v15;
        v50 = *v57;
        do
        {
          v17 = 0;
          do
          {
            if (*v57 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v56 + 1) + 8 * v17);
            if (v18)
            {
              v19 = *(v18 + 16);
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;
            [v51 addObject:v20];

            v21 = +[_TtC9appstored12SkannerEvent resultTypeFailure];
            v22 = +[_TtC9appstored12SkannerEvent postbackTypeRealized];
            if (v18)
            {
              v23 = *(v18 + 168);
            }

            else
            {
              v23 = 0;
            }

            v24 = [NSNumber numberWithInteger:v23];
            v25 = ASDErrorWithDescription();
            v26 = [_TtC9appstored12SkannerEvent conversionWithResult:v21 postbackType:v22 postbackSequenceIndex:v24 error:v25];

            v27 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            if (v18)
            {
              v28 = *(v18 + 16);
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;
            [v27 logEvent:v26 forAdvertisedAppAdamID:objc_msgSend(v29 completionHandler:{"longLongValue"), &stru_100523130}];

            v17 = v17 + 1;
          }

          while (v16 != v17);
          v30 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
          v16 = v30;
        }

        while (v30);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v31 = v51;
      v32 = [v31 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v53;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v53 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v52 + 1) + 8 * i);
            v37 = sub_1003C7364(v46, v36);
            v38 = [v37 count];

            if (!v38)
            {
              v39 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
              [v39 completeStoryForAdvertisedAppAdamID:objc_msgSend(v36 completionHandler:{"longLongValue"), &stru_100523150}];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v33);
      }

      v4 = v47;
      v3 = v48;
      v9 = v44;
      v7 = v45;
      v14 = v43;
      v12 = v41;
      v10 = v42;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_10031C958(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
  v4 = [a1 connection];
  v5 = sub_1002D3F5C(InstallAttributionPingbackDatabaseEntity, v4, v3);

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v5 countOfEntities];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SKAdNetwork: Purging remnant postbacks:%ld", &v9, 0xCu);
  }

  v7 = [v5 deleteAllEntities];
  return v7;
}

id sub_10031CA98(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_id" equalToValue:a2];
  v4 = [a1 connection];
  v5 = sub_1002D3DF0(InstallAttributionPingbackDatabaseEntity, v4, v3);

  v6 = sub_1003402E8(v5, @"retry_count");
  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = [NSNumber numberWithDouble:v8 * 1000.0];

  v10 = [NSNumber numberWithInteger:v6 + 1];
  if ([v5 setValue:v10 forProperty:@"retry_count"])
  {
    v11 = [v5 setValue:v9 forProperty:@"retry_timestamp"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10031CBE4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v115 = a3;
  v119 = a5;
  v9 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a4 longLongValue]);
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"is_winning_pingback" equalToValue:&off_100547F80];
  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"is_winning_pingback" equalToValue:&off_100547F68];
  v12 = [a1 connection];
  v133[0] = v9;
  v133[1] = v10;
  v89 = v10;
  v13 = [NSArray arrayWithObjects:v133 count:2];
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];
  v15 = sub_1002D4034(InstallAttributionPingbackDatabaseEntity, v12, v14);

  v105 = a1;
  v16 = [a1 connection];
  v90 = v9;
  v132[0] = v9;
  v132[1] = v11;
  v88 = v11;
  v17 = [NSArray arrayWithObjects:v132 count:2];
  v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v17];
  v92 = sub_1002D4034(InstallAttributionPingbackDatabaseEntity, v16, v18);

  if ([v15 count] || objc_msgSend(v92, "count"))
  {
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v87 = v15;
    obj = v15;
    v19 = [obj countByEnumeratingWithState:&v125 objects:v131 count:16];
    v20 = NSComparisonPredicate_ptr;
    if (!v19)
    {
      v23 = 1;
      goto LABEL_69;
    }

    v21 = v19;
    v22 = *v126;
    v91 = a6 ^ 1;
    LOBYTE(v23) = 1;
    v114 = *v126;
    while (1)
    {
      v24 = 0;
      v116 = v21;
      do
      {
        if (*v126 != v22)
        {
          objc_enumerationMutation(obj);
        }

        if ((v23 & 1) == 0)
        {
          v23 = 0;
          goto LABEL_65;
        }

        v25 = *(*(&v125 + 1) + 8 * v24);
        v26 = v115;
        v27 = v119;
        v28 = v26;
        v29 = v28;
        if (!v115)
        {
          v28 = @"none";
        }

        v120 = v28;
        v30 = sub_100340114(v25, @"registered");
        v31 = v20[23];
        [v27 timeIntervalSince1970];
        v33 = [v31 numberWithDouble:v32 * 1000.0];
        v34 = sub_100340328(v25, @"version");
        v35 = sub_100340328(v25, @"environment");
        v36 = [_TtC9appstored21SKANEnvironmentHelper pingbackDelayOverrideForEnvironment:v35];
        if (!v34)
        {
          if ((v30 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_51:
          v60 = [NSDate dateWithTimeIntervalSinceNow:-86400.0, v87];
          [v60 timeIntervalSince1970];
          v62 = v61;

          if (v36)
          {
            v63 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -[v36 integerValue]);
            [v63 timeIntervalSince1970];
            v62 = v64;
          }

          if (sub_1003402E8(v25, @"conversion_value_timestamp") >= (v62 * 1000.0) && sub_1003402E8(v25, @"conversion_value") < a2)
          {
            v38 = [v20[23] numberWithInteger:?];
            if ([v25 setValue:v38 forProperty:@"conversion_value"])
            {
              v23 = [v25 setValue:v33 forProperty:@"conversion_value_timestamp"];
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_63;
          }

          v23 = 1;
          goto LABEL_64;
        }

        v37 = ASDInstallAttributionVersionCreateFromString();
        if ((v30 & 1) == 0)
        {
          if (v37 < 400)
          {
LABEL_57:
            v38 = [v20[23] numberWithInteger:{a2, v87}];
            if ([v25 setValue:v38 forProperty:@"conversion_value"] && objc_msgSend(v25, "setValue:forProperty:", v33, @"conversion_value_timestamp"))
            {
              v23 = [v25 setValue:&off_100547F80 forProperty:@"registered"];
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_63;
          }

          v39 = sub_100340154(v25, @"conversion_value_timestamp");
          if (v39)
          {
            v38 = v39;
            v23 = 1;
          }

          else
          {
            v23 = [v25 setValue:? forProperty:?];
            v38 = v33;
          }

          if (!sub_1003C7698(v105, v25, v27))
          {
            goto LABEL_63;
          }

          v99 = v27;
          v108 = v36;
          v110 = v29;
          v93 = sub_100340114(v25, @"is_locked");
          [v38 doubleValue];
          v41 = [NSDate dateWithTimeIntervalSince1970:v40 / 1000.0];
          [v33 doubleValue];
          v43 = [NSDate dateWithTimeIntervalSince1970:v42 / 1000.0];
          v44 = sub_1003402E8(v25, @"postback_sequence_index");
          v101 = v41;
          v96 = v43;
          v95 = sub_10024D1F4(InstallAttributionPingback, v44, v41, v43, a6, v35);
          [v95 timeIntervalSince1970];
          v46 = [NSNumber numberWithDouble:v45 * 1000.0];
          if (v23)
          {
            v94 = v46;
            v47 = [NSNumber numberWithInteger:a2];
            v29 = v110;
            v27 = v99;
            if ([v25 setValue:v47 forProperty:@"conversion_value"] && objc_msgSend(v25, "setValue:forProperty:", v120, @"coarse_conversion_value") && (objc_msgSend(v25, "setValue:forProperty:", &off_100547F80, @"registered") & 1) != 0)
            {
              v48 = [v25 setValue:v94 forProperty:@"maturity_timestamp"];

              v49 = v48;
              v23 = (v93 | v91) & v48;
              v36 = v108;
              if ((v93 | v91))
              {
                goto LABEL_37;
              }

              v46 = v94;
              if (v49)
              {
                v23 = [v25 setValue:&off_100547F80 forProperty:@"is_locked"];
                goto LABEL_37;
              }
            }

            else
            {

              v23 = 0;
LABEL_37:
              v46 = v94;
            }
          }

          else
          {
            v29 = v110;
            v27 = v99;
          }

          v51 = v101;
          goto LABEL_49;
        }

        if (v37 < 400)
        {
          goto LABEL_51;
        }

        if (sub_1003C7698(v105, v25, v27))
        {
          if (sub_100340114(v25, @"is_locked"))
          {
            v38 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Cannot update postback within locked window", buf, 2u);
            }

            v23 = 1;
            goto LABEL_63;
          }

          v109 = v36;
          v111 = v29;
          v50 = v33;
          if (a6)
          {
            v97 = [v25 setValue:&off_100547F80 forProperty:@"is_locked"];
          }

          else
          {
            v97 = 1;
          }

          v38 = sub_100340154(v25, @"conversion_value_timestamp");
          [v38 doubleValue];
          v53 = [NSDate dateWithTimeIntervalSince1970:v52 / 1000.0];
          [v33 doubleValue];
          v55 = [NSDate dateWithTimeIntervalSince1970:v54 / 1000.0];
          v56 = sub_1003402E8(v25, @"postback_sequence_index");
          v106 = v53;
          v102 = v55;
          v100 = sub_10024D1F4(InstallAttributionPingback, v56, v53, v55, a6, v35);
          [v100 timeIntervalSince1970];
          v58 = [NSNumber numberWithDouble:v57 * 1000.0];
          if (v97)
          {
            v98 = v58;
            v59 = [NSNumber numberWithInteger:a2];
            if ([v25 setValue:v59 forProperty:@"conversion_value"])
            {
              v33 = v50;
              if ([v25 setValue:v120 forProperty:@"coarse_conversion_value"])
              {
                v23 = [v25 setValue:v98 forProperty:@"maturity_timestamp"];
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
              v33 = v50;
            }

            v36 = v109;

            v29 = v111;
            v58 = v98;
          }

          else
          {
            v23 = 0;
            v33 = v50;
            v36 = v109;
            v29 = v111;
          }

          v51 = v106;
LABEL_49:

LABEL_63:
          v20 = NSComparisonPredicate_ptr;
          goto LABEL_64;
        }

        v23 = 1;
LABEL_64:

        v21 = v116;
        v22 = v114;
LABEL_65:
        v24 = v24 + 1;
      }

      while (v21 != v24);
      v21 = [obj countByEnumeratingWithState:&v125 objects:v131 count:16];
      if (!v21)
      {
LABEL_69:
        v107 = v23;

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v118 = v92;
        v65 = [v118 countByEnumeratingWithState:&v121 objects:v130 count:16];
        if (v65)
        {
          v66 = v65;
          v67 = *v122;
          LOBYTE(v68) = 1;
          do
          {
            for (i = 0; i != v66; i = i + 1)
            {
              if (*v122 != v67)
              {
                objc_enumerationMutation(v118);
              }

              if (v68)
              {
                v70 = *(*(&v121 + 1) + 8 * i);
                v71 = v119;
                v72 = sub_100340114(v70, @"registered");
                [v71 timeIntervalSince1970];
                v74 = v73;

                v75 = [NSNumber numberWithDouble:v74 * 1000.0];
                v76 = sub_100340328(v70, @"version");
                v77 = sub_100340328(v70, @"environment");
                if (v72)
                {
                  v68 = 1;
                }

                else if (v76 && ASDInstallAttributionVersionCreateFromString() >= 400)
                {
                  v78 = sub_100340154(v70, @"maturity_timestamp");
                  if (v78)
                  {
                    v68 = 1;
                  }

                  else
                  {
                    [v75 doubleValue];
                    v80 = [NSDate dateWithTimeIntervalSince1970:v79 / 1000.0];
                    v81 = sub_1003402E8(v70, @"postback_sequence_index");
                    v113 = sub_10024D1F4(InstallAttributionPingback, v81, v80, v80, a6, v77);
                    [v113 timeIntervalSince1970];
                    v83 = [NSNumber numberWithDouble:v82 * 1000.0];
                    v112 = v83;
                    if ([v70 setValue:v75 forProperty:@"conversion_value_timestamp"] && objc_msgSend(v70, "setValue:forProperty:", v83, @"maturity_timestamp"))
                    {
                      v68 = [v70 setValue:&off_100547F80 forProperty:@"registered"];
                    }

                    else
                    {
                      v68 = 0;
                    }
                  }
                }

                else if ([v70 setValue:v75 forProperty:{@"conversion_value_timestamp", v87}])
                {
                  v68 = [v70 setValue:&off_100547F80 forProperty:@"registered"];
                }

                else
                {
                  v68 = 0;
                }
              }

              else
              {
                v68 = 0;
              }
            }

            v66 = [v118 countByEnumeratingWithState:&v121 objects:v130 count:16];
          }

          while (v66);
        }

        else
        {
          v68 = 1;
        }

        v84 = v107 & v68;
        v15 = v87;
        goto LABEL_97;
      }
    }
  }

  v86 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "SKAdNetwork: No pingbacks found while attempting to register/update.", buf, 2u);
  }

  v84 = 1;
LABEL_97:

  return v84;
}

uint64_t sub_10031D934(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a3 longLongValue]);
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"is_developer_pingback" equalToValue:&off_100547F80];
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"pingback_url" equalToValue:&stru_100529300];
    v20 = v6;
    v26[0] = v6;
    v26[1] = v7;
    v26[2] = v8;
    v9 = [NSArray arrayWithObjects:v26 count:3];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

    v11 = [a1 connection];
    v12 = sub_1002D4034(InstallAttributionPingbackDatabaseEntity, v11, v10);

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      LOBYTE(v17) = 1;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (v17)
          {
            v17 = [*(*(&v21 + 1) + 8 * i) setValue:v5 forProperty:@"pingback_url"];
          }

          else
          {
            v17 = 0;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10031DB7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10031DB94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v7 = a3;
  v8 = objc_alloc_init(InstallAttributionImpression);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v7 objectForKeyedSubscript:@"app_adam_id"];
  sub_100232B60(*(*(*(a1 + 32) + 8) + 40), v11);

  v12 = [v7 objectForKeyedSubscript:@"ad_network_id"];
  sub_100232B70(*(*(*(a1 + 32) + 8) + 40), v12);

  v13 = [v7 objectForKeyedSubscript:@"campaign_id"];
  v14 = [v13 integerValue];
  v15 = *(*(*(a1 + 32) + 8) + 40);
  if (v15)
  {
    *(v15 + 24) = v14;
  }

  v16 = [v7 objectForKeyedSubscript:@"source_identifier"];
  v17 = [v16 integerValue];
  v18 = *(*(*(a1 + 32) + 8) + 40);
  if (v18)
  {
    *(v18 + 32) = v17;
  }

  v19 = [v7 objectForKeyedSubscript:@"impression_id"];
  sub_100232B80(*(*(*(a1 + 32) + 8) + 40), v19);

  v20 = [v7 objectForKeyedSubscript:@"source_app_adam_id"];
  sub_100232B90(*(*(*(a1 + 32) + 8) + 40), v20);

  v21 = [v7 objectForKeyedSubscript:@"local_timestamp"];
  sub_100232BB0(*(*(*(a1 + 32) + 8) + 40), v21);

  v22 = [v7 objectForKeyedSubscript:@"version"];
  sub_100232BD0(*(*(*(a1 + 32) + 8) + 40), v22);

  v23 = [v7 objectForKeyedSubscript:@"source_app_bundle_id"];
  sub_100232BE0(*(*(*(a1 + 32) + 8) + 40), v23);

  v24 = [v7 objectForKeyedSubscript:@"fidelity_type"];
  v25 = [v24 integerValue];
  v26 = *(*(*(a1 + 32) + 8) + 40);
  if (v26)
  {
    *(v26 + 96) = v25;
  }

  v27 = [v7 objectForKeyedSubscript:@"process_name"];

  sub_100232BF0(*(*(*(a1 + 32) + 8) + 40), v27);
  *a5 = 1;
}

_UNKNOWN **sub_10031DE14()
{
  v0 = +[BagService appstoredService];
  v1 = [v0 lastBag];
  v2 = [v1 integerForKey:@"install-attribution-start-end-window"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_100547FB0;
  }

  v5 = v4;

  return v4;
}

id sub_10031DE94(uint64_t a1)
{
  v2 = &off_100547F68;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"source_app_adam_id" equalToValue:a1];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"fidelity_type" equalToValue:&off_100547F68];

  v8[0] = v3;
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

void sub_10031DFA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a3 objectForKeyedSubscript:@"local_timestamp"];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a5 = 1;
}

void sub_10031E000(id a1, int64_t a2, NSDictionary *a3, unint64_t a4, BOOL *a5)
{
  v5 = a3;
  v8 = [(NSDictionary *)v5 objectForKeyedSubscript:@"ad_network_id"];
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:@"version"];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"fidelity_type"];

  sub_100232A44(InstallAttributionImpression, v8, [v7 integerValue] != 0, v6, 1);
}

uint64_t sub_10031E0C4(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v51 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v4 longLongValue]);
    v6 = [a1 connection];
    v7 = sub_1002D3DF0(SKANGhostbackEntity, v6, v51);

    v50 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v5 longLongValue]);
    v8 = [a1 connection];
    v49 = sub_1002D4034(InstallAttributionPingbackDatabaseEntity, v8, v50);

    v9 = sub_100340328(v7, @"environment");
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_10031EB60;
    v78[3] = &unk_100523198;
    v12 = v9;
    v79 = v12;
    v13 = v10;
    v80 = v13;
    v14 = v11;
    v81 = v14;
    [v49 enumerateObjectsUsingBlock:v78];
    v15 = sub_100340114(v7, @"is_registered");
    if ((v15 & 1) == 0)
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Pending postback for app %@ not registered, skipping conversion value imprint", &buf, 0xCu);
      }

      v23 = 1;
      goto LABEL_33;
    }

    if (![v13 count])
    {
      goto LABEL_25;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v83 = 0x3032000000;
    v84 = sub_10031DB7C;
    v85 = sub_10031DB8C;
    v86 = 0;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_10031EBF0;
    v77[3] = &unk_1005231C0;
    v77[4] = &buf;
    [v13 enumerateObjectsUsingBlock:v77];
    v46 = sub_100340328(*(*(&buf + 1) + 40), @"version");
    if (v46)
    {
      v66 = 0;
      v67 = &v66;
      v68 = 0x2020000000;
      LOBYTE(v69) = 1;
      if (ASDInstallAttributionVersionCreateFromString() > 399)
      {
        v16 = sub_1003402E8(v7, @"free_conversion_value");
        v47 = sub_100340328(v7, @"coarse_conversion_value");
        v43 = sub_100340114(v7, @"is_locked");
        v17 = *(*(&buf + 1) + 40);
        v18 = [NSNumber numberWithInteger:v16];
        if ([v17 setValue:v18 forProperty:@"conversion_value"] && objc_msgSend(*(*(&buf + 1) + 40), "setValue:forProperty:", v47, @"coarse_conversion_value"))
        {
          v19 = *(*(&buf + 1) + 40);
          v20 = [NSNumber numberWithBool:v43];
          v21 = [v19 setValue:v20 forProperty:@"is_locked"];
          *(v67 + 24) = v21;
        }

        else
        {
          *(v67 + 24) = 0;
        }

        v24 = sub_100340154(v7, @"origin_timestamp");
        v45 = sub_100340154(v7, @"update_timestamp");
        [v24 doubleValue];
        v44 = [NSDate dateWithTimeIntervalSince1970:v25 / 1000.0];
        [v45 doubleValue];
        v27 = [NSDate dateWithTimeIntervalSince1970:v26 / 1000.0];
        v28 = sub_10024D1F4(InstallAttributionPingback, 0, v44, v27, v43, v12);
        [v28 timeIntervalSince1970];
        v30 = [NSNumber numberWithDouble:v29 * 1000.0];
        v31 = v67;
        if (*(v67 + 24) == 1)
        {
          v32 = [*(*(&buf + 1) + 40) setValue:v30 forProperty:@"maturity_timestamp"];
          v31 = v67;
        }

        else
        {
          v32 = 0;
        }

        *(v31 + 24) = v32;
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10031EC88;
        v74[3] = &unk_1005231E8;
        v76 = &v66;
        v33 = v24;
        v75 = v33;
        [v13 enumerateObjectsUsingBlock:v74];

LABEL_22:
        if (*(v67 + 24) == 1)
        {
          v38 = *(*(&buf + 1) + 40);
          v39 = [NSNumber numberWithBool:1];
          v40 = [v38 setValue:v39 forProperty:@"registered"];
          *(v67 + 24) = v40;

          if (v67[3])
          {
            _Block_object_dispose(&v66, 8);

            _Block_object_dispose(&buf, 8);
LABEL_25:
            v72[0] = 0;
            v72[1] = v72;
            v72[2] = 0x2020000000;
            v73 = sub_100340114(v7, @"is_locked");
            *&buf = 0;
            *(&buf + 1) = &buf;
            v83 = 0x3032000000;
            v84 = sub_10031DB7C;
            v85 = sub_10031DB8C;
            v86 = sub_100340154(v7, @"origin_timestamp");
            v66 = 0;
            v67 = &v66;
            v68 = 0x3032000000;
            v69 = sub_10031DB7C;
            v70 = sub_10031DB8C;
            [*(*(&buf + 1) + 40) doubleValue];
            v71 = [NSDate dateWithTimeIntervalSince1970:v41 / 1000.0];
            v64[0] = 0;
            v64[1] = v64;
            v64[2] = 0x3032000000;
            v64[3] = sub_10031DB7C;
            v64[4] = sub_10031DB8C;
            v65 = v67[5];
            v60 = 0;
            v61 = &v60;
            v62 = 0x2020000000;
            v63 = 1;
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_10031ED38;
            v52[3] = &unk_100523210;
            v54 = &v66;
            v55 = v64;
            v56 = v72;
            v53 = v12;
            v57 = &v60;
            p_buf = &buf;
            v59 = v15;
            [v14 enumerateObjectsUsingBlock:v52];
            v23 = *(v61 + 24);
            if (a3 && (v23 & 1) == 0)
            {
              *a3 = ASDErrorWithDescription();
            }

            _Block_object_dispose(&v60, 8);
            _Block_object_dispose(v64, 8);

            _Block_object_dispose(&v66, 8);
            _Block_object_dispose(&buf, 8);

            _Block_object_dispose(v72, 8);
LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          *(v67 + 24) = 0;
        }

        if (a3)
        {
          *a3 = ASDErrorWithDescription();
        }

        _Block_object_dispose(&v66, 8);

        _Block_object_dispose(&buf, 8);
        v23 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v66 = 0;
      v67 = &v66;
      v68 = 0x2020000000;
      LOBYTE(v69) = 1;
    }

    v34 = sub_1003402E8(v7, @"restricted_conversion_value");
    v47 = sub_100340154(v7, @"restricted_update_timestamp");
    if ([*(*(&buf + 1) + 40) setValue:v47 forProperty:@"conversion_value_timestamp"])
    {
      v35 = *(*(&buf + 1) + 40);
      v36 = [NSNumber numberWithInteger:v34];
      v37 = [v35 setValue:v36 forProperty:@"conversion_value"];
      *(v67 + 24) = v37;
    }

    else
    {
      *(v67 + 24) = 0;
    }

    goto LABEL_22;
  }

  v23 = 0;
LABEL_34:

  return v23;
}

void sub_10031EAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10031EB60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setValue:v3 forProperty:@"environment"];
  v4 = sub_100340114(v6, @"is_winning_pingback");
  v5 = 48;
  if (v4)
  {
    v5 = 40;
  }

  [*(a1 + v5) addObject:v6];
}

void sub_10031EBF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = sub_1003402E8(v9, @"postback_sequence_index");
  v8 = sub_100340114(v9, @"is_developer_pingback");
  if (!v7 && (v8 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10031EC88(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = sub_100340154(v6, @"conversion_value_timestamp");
  if (!v3)
  {
    v4 = *(*(a1 + 40) + 8);
    if (*(v4 + 24) == 1)
    {
      v5 = [v6 setValue:*(a1 + 32) forProperty:@"conversion_value_timestamp"];
      v4 = *(*(a1 + 40) + 8);
    }

    else
    {
      v5 = 0;
    }

    *(v4 + 24) = v5;
  }
}

void sub_10031ED38(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = sub_100340328(v9, @"version");
  if (v3 && ASDInstallAttributionVersionCreateFromString() >= 400)
  {
    v4 = sub_100340154(v9, @"maturity_timestamp");
    if (!v4)
    {
      v5 = sub_10024D1F4(InstallAttributionPingback, 0, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 24), *(a1 + 32));
      [v5 timeIntervalSince1970];
      v7 = [NSNumber numberWithDouble:v6 * 1000.0];
      v8 = [v9 setValue:*(*(*(a1 + 72) + 8) + 40) forProperty:@"conversion_value_timestamp"];
      if (v8)
      {
        v8 = [v9 setValue:v7 forProperty:@"maturity_timestamp"];
        if (v8)
        {
          LOBYTE(v8) = [v9 setValue:&off_100547F80 forProperty:@"registered"];
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = v8;
    }

    goto LABEL_10;
  }

  if ([v9 setValue:*(*(*(a1 + 72) + 8) + 40) forProperty:@"conversion_value_timestamp"])
  {
    v4 = [NSNumber numberWithBool:*(a1 + 80)];
    *(*(*(a1 + 64) + 8) + 24) = [v9 setValue:v4 forProperty:@"registered"];
LABEL_10:

    goto LABEL_12;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_12:
}

id sub_10031EF14(void *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
    v6 = [v3 connection];
    v7 = sub_1002D3F5C(SKANGhostbackEntity, v6, v5);

    v3 = [v7 deleteAllEntities];
    if (v3)
    {
      v8 = 0;
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = ASDErrorWithDescription();
      if (!a3)
      {
LABEL_7:

        return v3;
      }
    }

    v9 = v8;
    *a3 = v8;
    goto LABEL_7;
  }

  return v3;
}

id sub_10031F00C(id result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = [[NSMutableDictionary alloc] initWithCapacity:7];
    [v10 setObject:v9 forKeyedSubscript:@"app_adam_id"];

    [v10 setObject:v7 forKeyedSubscript:@"app_bundle_id"];
    [v10 setObject:@"none" forKeyedSubscript:@"coarse_conversion_value"];
    [v10 setObject:&off_100547F68 forKeyedSubscript:@"is_registered"];
    [v10 setObject:&off_100547F68 forKeyedSubscript:@"is_locked"];
    [v10 setObject:v8 forKeyedSubscript:@"environment"];

    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    v13 = [NSNumber numberWithDouble:v12 * 1000.0];
    [v10 setObject:v13 forKeyedSubscript:@"origin_timestamp"];
    v14 = [SKANGhostbackEntity alloc];
    v15 = [v6 connection];
    v16 = [(SQLiteEntity *)v14 initWithPropertyValues:v10 onConnection:v15];

    v17 = [(SQLiteEntity *)v16 existsInDatabase];
    return v17;
  }

  return result;
}

unint64_t sub_10031F1B4(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  [a2 timeIntervalSince1970];
  v4 = [NSNumber numberWithDouble:v3 * 1000.0];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"origin_timestamp" value:v4 comparisonType:3];
  v6 = sub_1003C928C(a1, v5, 0);
  v7 = [a1 connection];
  v8 = sub_1002D3F5C(SKANGhostbackEntity, v7, v5);

  v9 = [v8 deleteAllEntities];
  v10 = v9;
  if (v9)
  {
    v33 = v8;
    v34 = v9;
    v36 = v5;
    v37 = a1;
    v38 = v4;
    v40 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = v6;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v45 + 1) + 8 * i);
          v16 = [v15 appAdamId];
          [v40 addObject:v16];

          v17 = +[_TtC9appstored12SkannerEvent resultTypeFailure];
          v18 = +[_TtC9appstored12SkannerEvent postbackTypePending];
          v19 = ASDErrorWithDescription();
          v20 = [_TtC9appstored12SkannerEvent conversionWithResult:v17 postbackType:v18 postbackSequenceIndex:0 error:v19];

          v21 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
          v22 = [v15 appAdamId];
          [v21 logEvent:v20 forAdvertisedAppAdamID:objc_msgSend(v22 completionHandler:{"longLongValue"), &stru_100523230}];
        }

        v12 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v12);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v23 = v40;
    v24 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v41 + 1) + 8 * j);
          v29 = sub_1003C7364(v37, v28);
          v30 = [v29 count];

          if (!v30)
          {
            v31 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
            [v31 completeStoryForAdvertisedAppAdamID:objc_msgSend(v28 completionHandler:{"longLongValue"), &stru_100523250}];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v25);
    }

    v4 = v38;
    v6 = v35;
    v5 = v36;
    v10 = v34;
    v8 = v33;
  }

  return v10;
}

id sub_10031F588(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    [a2 timeIntervalSince1970];
    v4 = [NSNumber numberWithDouble:v3 * 1000.0];
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"timestamp" value:v4 comparisonType:3];
    v6 = [v2 connection];
    v7 = sub_1002D3F5C(SKANTokenEntity, v6, v5);

    v8 = [v7 deleteAllEntities];
    return v8;
  }

  return result;
}

BOOL sub_10031F658(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"app_bundle_id" equalToValue:a2];
    v4 = [a1 connection];
    v5 = sub_1002D3DF0(SKANGhostbackEntity, v4, v3);

    v30 = v5;
    v6 = [v5 valueForProperty:@"app_adam_id"];
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 longLongValue]);

    v8 = [a1 connection];
    v31 = v3;
    v9 = sub_1002D3F5C(SKANGhostbackEntity, v8, v3);

    v29 = v9;
    if (([v9 deleteAllEntities] & 1) == 0)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not clean up after app deletion %@", buf, 0xCu);
      }
    }

    v11 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v7 longLongValue]);
    v12 = [a1 connection];
    v13 = sub_1002D3F5C(InstallAttributionPingbackDatabaseEntity, v12, v11);

    if (([v13 deleteAllEntities] & 1) == 0)
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not clean postbacks after app deletion %@", buf, 0xCu);
      }
    }

    v15 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v7 longLongValue]);
    v16 = [a1 connection];
    v17 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v16, v15);

    if (([v17 deleteAllEntities] & 1) == 0)
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not clean params after app deletion %@", buf, 0xCu);
      }
    }

    v19 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v7 longLongValue]);
    v20 = [a1 connection];
    v21 = sub_1002D3F5C(InstallAttributionImpressionDatabaseEntity, v20, v19);

    if (([v21 deleteAllEntities] & 1) == 0)
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not clean impressions after app deletion %@", buf, 0xCu);
      }
    }

    v23 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v7 longLongValue]);
    v24 = [a1 connection];
    v25 = sub_1002D3F5C(SKANTokenEntity, v24, v23);

    if (([v25 deleteAllEntities] & 1) == 0)
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not clean after app deletion %@", buf, 0xCu);
      }
    }
  }

  return a1 != 0;
}

double *sub_10031FB5C(void *a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = ODRDataSampler;
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = v3;
  if (v3)
  {
    v3[4] = a2;
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(v4 + 2);
    *(v4 + 2) = v5;

    *(v4 + 24) = 0;
  }

  return v4;
}

void sub_10031FBE0(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if ((obj[24] & 1) == 0)
    {
      obj[24] = 1;
      sub_10031FC70(obj);
    }

    objc_sync_exit(obj);
  }
}

void sub_10031FC70(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 24) == 1)
    {
      v2 = [v1 takeSample];
      if (v2)
      {
        [v1[2] addObject:v2];
      }

      v3 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10031FDB8;
      block[3] = &unk_10051AF98;
      block[4] = v1;
      dispatch_after(v3, &_dispatch_main_q, block);
    }

    objc_sync_exit(v1);
  }
}

void sub_10031FD5C(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if (obj[24] == 1)
    {
      obj[24] = 0;
    }

    objc_sync_exit(obj);
  }
}

id sub_10031FDC8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[2] valueForKeyPath:@"@avg.self"];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10031FE48(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[2] valueForKeyPath:@"@min.self"];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10031FEC8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[2] valueForKeyPath:@"@max.self"];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100320030(id a1)
{
  v1 = [TransactionStore init]_0([TransactionStore alloc]);
  v2 = qword_1005AAC18;
  qword_1005AAC18 = v1;
}

_DWORD *sub_1003201C0(uint64_t a1)
{
  v2 = objc_alloc_init(LogTransactions);
  v3 = [NSMutableArray alloc];
  v4 = [*(*(a1 + 32) + 48) allValues];
  v5 = [v3 initWithArray:v4];

  v6 = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:1];
  v32 = v6;
  v7 = [NSArray arrayWithObjects:&v32 count:1];

  [v5 sortUsingDescriptors:v7];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = +[NSDate now];
        [v13 timeIntervalSinceReferenceDate];
        v15 = v14;
        if (v12)
        {
          v15 = v14 - v12[2];

          v16 = v12[2];
        }

        else
        {

          v16 = 0.0;
        }

        v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:v16];
        if (v12)
        {
          Property = objc_getProperty(v12, v17, 8, 1);
        }

        else
        {
          Property = 0;
        }

        v20 = Property;
        v21 = sub_1002525A8(v18);
        v22 = [NSString stringWithFormat:@"{ name: %@, timestamp: %@, age: %f }", v20, v21, *&v15];

        sub_1004046FC(v2, v22);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v23 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v9 = v23;
    }

    while (v23);
  }

  v24 = sub_100396684(v2);
  return v24;
}

void sub_1003204A0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1000047F4();
  sub_100320504(v3, v2);
}

void sub_100320504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003206CC;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

void sub_1003205AC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1000047F4();
  sub_100320610(v3, v2);
}

void sub_100320610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_time(0, *(a1 + 24));
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100320894;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_after(v4, v5, v6);
  }
}

void sub_1003206CC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) countForObject:*(a1 + 40)];
  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(&v3->super, OS_LOG_TYPE_INFO);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      LODWORD(v13.receiver) = 138543362;
      *(&v13.receiver + 4) = v5;
      _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_INFO, "[Transaction] Started transaction: %{public}@", &v13, 0xCu);
    }

    [*(a1 + 40) UTF8String];
    v6 = os_transaction_create();
    [*(*(a1 + 32) + 40) setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v3 = [TransactionDetails alloc];
    v7 = *(a1 + 40);
    v8 = v7;
    if (v3)
    {
      v13.receiver = v3;
      v13.super_class = TransactionDetails;
      v9 = objc_msgSendSuper2(&v13, "init");
      v3 = v9;
      if (v9)
      {
        objc_storeStrong(&v9->_name, v7);
        v10 = +[NSDate now];
        [v10 timeIntervalSinceReferenceDate];
        v3->_timestamp = v11;
      }
    }

    [*(*(a1 + 32) + 48) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  else if (v4)
  {
    v12 = *(a1 + 40);
    LODWORD(v13.receiver) = 138543362;
    *(&v13.receiver + 4) = v12;
    _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_INFO, "[Transaction] Joined transaction: %{public}@", &v13, 0xCu);
  }
}

void sub_100320894(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) countForObject:*(a1 + 40)];
  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Transaction] Left transaction: %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Transaction] Ended transaction: %{public}@", &v7, 0xCu);
    }

    [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:*(a1 + 40)];
    [*(*(a1 + 32) + 48) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_100320BEC(id a1)
{
  v1 = objc_alloc_init(UpdatesManager);
  v2 = qword_1005AAC30;
  qword_1005AAC30 = v1;
}

void sub_100320DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100321078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003210A4(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

void sub_100321180(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void sub_100321234(id a1)
{
  v1 = objc_alloc_init(UpdatesManager_ObjC);
  v2 = qword_1005AAC40;
  qword_1005AAC40 = v1;
}

void sub_100321484(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[ActiveAccountObserver sharedInstance];
    [v3 addObserver:v2 selector:"_handleAccountChangedNotification" name:@"AccountStorePrimaryAccountDidChange" object:v4];
  }

  v5 = +[ActiveAccountObserver activeAccount];
  v6 = [v5 ams_DSID];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = *(a1 + 32);
  v10 = objc_alloc_init(_TtC9appstored14UpdatesContext);
  sub_10032158C(v9, @"Initializing", v10);
}

uint64_t sub_10032158C(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = a3;
  v6 = a2;
  v54 = v5;
  v7 = sub_1003D5FC8();
  v8 = +[ASDUpdatesService isAutomaticUpdateAuthorizationEnabled];
  v53 = sub_1003D3F18(AppDefaultsManager, @"AutomaticUpdateAuthorizations");
  if (v7 && v8 == 0)
  {
    v37 = 0;
    goto LABEL_36;
  }

  v50 = v6;
  v10 = +[NSMutableArray array];
  v11 = +[NSDate date];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = sub_1002BB3F0();
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100329A10;
  v60[3] = &unk_100523668;
  v51 = v4;
  v60[4] = v4;
  v15 = v10;
  v61 = v15;
  [v14 readUsingSession:v60];

  v49 = +[LSDatabaseContext sharedDatabaseContext];
  v48 = [v49 startAccessingReturningError:0];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v56 objects:block count:16];
  if (!v17)
  {
    v19 = 0;
    goto LABEL_31;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v57;
  v52 = *v57;
  do
  {
    v21 = 0;
    v55 = v18;
    do
    {
      if (*v57 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v56 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      v24 = [ApplicationProxy proxyForBundleID:v22];
      v25 = v24;
      if (v24 && ([*(v24 + 120) isPlaceholder] & 1) == 0)
      {
        if (!v7)
        {
          ++v19;
          goto LABEL_26;
        }

        v28 = v16;
        v29 = v7;
        v30 = v19;
        v31 = [v53 objectForKeyedSubscript:v22];
        if ([v31 BOOLValue])
        {

          goto LABEL_22;
        }

        v33 = objc_getProperty(v25, v32, 120, 1);
        v34 = sub_10040C694(v33);

        v18 = v55;
        if (v34)
        {
          v19 = v30 + 1;
        }

        else
        {
LABEL_22:
          v35 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v54 logKey];
            *buf = 138412546;
            v63 = v36;
            v64 = 2114;
            v65 = v22;
            _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[%@] Found update but was authorized to install it automatically: %{public}@", buf, 0x16u);

            v18 = v55;
          }

          v19 = v30;
        }

        v7 = v29;
        v16 = v28;
        v20 = v52;
        goto LABEL_26;
      }

      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v54 logKey];
        *buf = 138412546;
        v63 = v27;
        v64 = 2114;
        v65 = v22;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Found update that is not installed: %{public}@", buf, 0x16u);

        v18 = v55;
      }

LABEL_26:
      objc_autoreleasePoolPop(v23);
      v21 = v21 + 1;
    }

    while (v18 != v21);
    v18 = [v16 countByEnumeratingWithState:&v56 objects:block count:16];
  }

  while (v18);
LABEL_31:
  v37 = v19;

  if (v48)
  {
    [v49 stopAccessing];
  }

  v38 = +[NSDate date];
  [v38 timeIntervalSinceReferenceDate];
  v40 = v39;

  v41 = ASDLogHandleForCategory();
  v6 = v50;
  v4 = v51;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v54 logKey];
    *buf = 138412802;
    v63 = v42;
    v64 = 2048;
    v65 = v37;
    v66 = 2048;
    v67 = v40 - v13;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Current update count: %ld elapsedTime: %f", buf, 0x20u);
  }

LABEL_36:
  v43 = v6;
  v44 = v54;
  v45 = v37;
  if ((+[AMSDevice deviceIsAppleTV]& 1) == 0)
  {
    v46 = *(v4 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100329BC8;
    block[3] = &unk_10051F4B0;
    v71 = v37;
    v69 = v44;
    v70 = v43;
    dispatch_async(v46, block);
  }

  return v45;
}

void sub_100321B38(uint64_t a1)
{
  [*(a1 + 32) verifyAllPendingUpdatesWithCompletionHandler:&stru_100523340];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);

    dispatch_async(v3, &stru_100523700);
  }
}

void sub_100321C5C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = a1[4];
    v6 = a1[5];
    v8 = a1[6];
    v9 = a2;
    v10 = v9;
    if (v7)
    {
      v11 = v8 == 0;
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
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v13 = *(v7 + 64);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003283A4;
      v21 = &unk_100523618;
      v25 = v8;
      v22 = v7;
      v23 = v9;
      v24 = &v16;
      sub_100379C5C(v13, buf);
      v14 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
    }

    (*(v6 + 16))(v6, v14 & 1);
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      *buf = 134218242;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to determine if %llu is a TV provider app: %{public}@", buf, 0x16u);
    }

    (*(a1[5] + 16))();
  }
}

void sub_100322034(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = a2;
    v4 = [v3 connection];

    v5 = sub_1002D3F5C(AppUpdateEntity, v4, 0);
  }

  else
  {
    v6 = a2;
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"is_per_device" equalToValue:&__kCFBooleanFalse];
    v14[0] = v7;
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"is_b2b_custom_app" equalToValue:&__kCFBooleanFalse];
    v14[1] = v8;
    v9 = [NSArray arrayWithObjects:v14 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

    v11 = [v6 connection];

    v5 = sub_1002D3F5C(AppUpdateEntity, v11, v10);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100322230;
  v12[3] = &unk_10051B038;
  v13 = *(a1 + 32);
  [v5 enumerateMemoryEntitiesUsingBlock:v12];
}

void sub_100322310(void *a1)
{
  LOBYTE(v2) = 1;
  v3 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:7 requestToken:a1[4] logKey:0 callbackHandler:a1[6] includeMetrics:0 isVPPLookup:1 userInitiated:v2 targetedItemID:0];
  sub_100322390(a1[5], v3);
}

void sub_100322390(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 callbackHandler];

    if (v5)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = sub_100321078;
      v45 = sub_100321088;
      v46 = objc_opt_new();
      v6 = sub_1002BB3F0();
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100327178;
      v37[3] = &unk_100523558;
      v7 = v4;
      v38 = v7;
      v39 = a1;
      v40 = &v41;
      [v6 readUsingSession:v37];

      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x2020000000;
      v36[3] = 0;
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2020000000;
      v35[3] = 0;
      if ([v42[5] count])
      {
        v8 = +[NSMutableSet set];
        v9 = *(a1 + 64);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100327878;
        v33[3] = &unk_10051B570;
        v33[4] = a1;
        v10 = v8;
        v34 = v10;
        sub_100379C5C(v9, v33);
        v11 = sub_1003D5FC8();
        v12 = +[ASDUpdatesService isAutomaticUpdateAuthorizationEnabled];
        v13 = v12;
        if (v12)
        {
          v14 = sub_1003D3F18(AppDefaultsManager, @"AutomaticUpdateAuthorizations");
        }

        else
        {
          v14 = 0;
        }

        v15 = v42[5];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100327994;
        v24[3] = &unk_100523580;
        v16 = v10;
        v25 = v16;
        v28 = &v41;
        v26 = v7;
        v31 = v13;
        v32 = v11;
        v17 = v14;
        v27 = v17;
        v29 = v36;
        v30 = v35;
        [v15 enumerateObjectsWithOptions:2 usingBlock:v24];
      }

      v18 = *(a1 + 24);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100327C08;
      v19[3] = &unk_1005235A8;
      v20 = v7;
      v21 = v36;
      v22 = v35;
      v23 = &v41;
      dispatch_async(v18, v19);

      _Block_object_dispose(v35, 8);
      _Block_object_dispose(v36, 8);

      _Block_object_dispose(&v41, 8);
    }
  }
}

void sub_100322710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1003228C0(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100321078;
  v10[4] = sub_100321088;
  v11 = 0;
  v2 = sub_1002BB3F0();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100322A48;
  v7[3] = &unk_10051CF30;
  v9 = v10;
  v8 = *(a1 + 32);
  [v2 readUsingSession:v7];

  v3 = *(*(a1 + 40) + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100322A9C;
  v4[3] = &unk_10051E4B0;
  v5 = *(a1 + 48);
  v6 = v10;
  dispatch_async(v3, v4);

  _Block_object_dispose(v10, 8);
}

void sub_100322A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100322A48(uint64_t a1, id a2)
{
  v3 = sub_10040539C(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100322B7C(uint64_t a1)
{
  v2 = [_TtC9appstored14UpdatesContext alloc];
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100322C54;
  v6[3] = &unk_100521F68;
  v7 = *(a1 + 48);
  LOBYTE(v5) = 0;
  v4 = [(UpdatesContext *)v2 initWithReason:0 requestToken:v3 logKey:0 callbackHandler:v6 includeMetrics:0 isVPPLookup:0 userInitiated:v5 targetedItemID:0];
  sub_100322390(*(a1 + 40), v4);
}

uint64_t sub_100322C54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &__NSArray0__struct;
  }

  return (*(v2 + 16))(v2, a2);
}

void sub_100322CE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(_TtC9appstored14UpdatesContext);
  sub_10032158C(v1, @"Hide Pending Updates Badge", v2);
}

uint64_t sub_100322E7C(uint64_t a1)
{
  sub_100322ED4(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100322ED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 logKey];
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Sending updates changed notification with reason: %{public}@", &v9, 0x16u);
    }

    notify_post("com.apple.appstored.updatesstorechanged");
  }
}

void sub_100323044(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Post processing update metrics", buf, 2u);
    }

    v3 = objc_opt_new();
    v4 = sub_1002BB3F0();
    *buf = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100328654;
    v15 = &unk_100523668;
    v5 = v3;
    v16 = v5;
    v17 = v1;
    [v4 readUsingSession:buf];

    if ([v5 count])
    {
      v6 = sub_1003795D4();
      v7 = +[BagService appstoredService];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100328A1C;
      v9[3] = &unk_10051B458;
      v10 = v6;
      v11 = v5;
      v8 = v6;
      [v7 recentBagWithCompletionHandler:v9];
    }

    else
    {
      v8 = +[NSDate date];
      sub_1003D629C(AppDefaultsManager, v8);
    }
  }
}

void sub_1003232FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    sub_1003233F4(*(a1 + 40), *(a1 + 32), a2);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logKey];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1003233F4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    if (+[AMSDevice deviceIsAppleTV](AMSDevice, "deviceIsAppleTV") && (![v7 userInitiated] || (*(a1 + 48) & 1) == 0))
    {
      v6 = [v7 logKey];
      sub_100326928(a1, v6, v5);
    }

    sub_1003246A4(a1, v7, v5);
  }
}

void sub_100323520(uint64_t a1)
{
  if ((+[AMSDevice deviceIsAppleTV]& 1) == 0 && !sub_1003D54CC() && !sub_1003D5FC8())
  {
    sub_1003D5620(AppDefaultsManager, 1);
    v2 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:3];
    v3 = +[BagService appstoredService];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10032362C;
    v7[3] = &unk_1005233D8;
    v8 = v2;
    v9 = v4;
    v6 = v2;
    [v3 upToDateBagOnQueue:v5 completionHandler:v7];
  }
}

void sub_10032362C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    sub_1003233F4(*(a1 + 40), *(a1 + 32), a2);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logKey];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1003237BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = objc_alloc_init(_TtC9appstored14UpdatesContext);
  sub_10032158C(v1, v2, v3);
}

void sub_1003238DC(void *a1)
{
  LOBYTE(v8) = 0;
  v2 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:a1[4] logKey:0 callbackHandler:0 includeMetrics:0 isVPPLookup:0 userInitiated:v8 targetedItemID:0];
  v3 = sub_10032158C(a1[5], @"Client Refresh Count", v2);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(UpdatesContext *)v2 logKey];
    *buf = 138412546;
    v13 = v5;
    v14 = 2048;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Refresh update count returning count: %ld", buf, 0x16u);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = *(a1[5] + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100323A74;
    block[3] = &unk_1005215C0;
    v10 = v6;
    v11 = v3;
    dispatch_async(v7, block);
  }
}

void sub_100323B54(void *a1)
{
  v2 = [_TtC9appstored14UpdatesContext alloc];
  v3 = a1[4];
  v4 = [NSNumber numberWithLongLong:a1[7]];
  LOBYTE(v10) = 0;
  v5 = [(UpdatesContext *)v2 initWithReason:8 requestToken:v3 logKey:0 callbackHandler:0 includeMetrics:0 isVPPLookup:0 userInitiated:v10 targetedItemID:v4];

  v6 = +[BagService appstoredService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100323C74;
  v11[3] = &unk_10051E108;
  v7 = a1[5];
  v8 = a1[6];
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v9 = v5;
  [v6 upToDateBagWithCompletionHandler:v11];
}

void sub_100323C74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100323E6C;
    block[3] = &unk_10051AEE8;
    block[4] = v8;
    v18 = v7;
    v19 = v5;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) logKey];
      *buf = 138412546;
      v21 = v13;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 24);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100323E7C;
    v14[3] = &unk_10051B790;
    v16 = v11;
    v15 = v6;
    dispatch_async(v12, v14);
  }
}

void sub_100323F7C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  LOBYTE(v10) = 0;
  v7 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:1 requestToken:a1[4] logKey:0 callbackHandler:a1[6] includeMetrics:0 isVPPLookup:0 userInitiated:v10 targetedItemID:0];
  if (v5)
  {
    sub_1003233F4(a1[5], v7, v5);
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(UpdatesContext *)v7 logKey];
      *buf = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", buf, 0x16u);
    }
  }
}

void sub_1003241B0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  LOBYTE(v10) = 1;
  v7 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:a1[4] logKey:0 callbackHandler:a1[6] includeMetrics:0 isVPPLookup:0 userInitiated:v10 targetedItemID:0];
  if (v5)
  {
    sub_1003233F4(a1[5], v7, v5);
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(UpdatesContext *)v7 logKey];
      *buf = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", buf, 0x16u);
    }
  }
}

void sub_10032449C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100324580;
  v10[3] = &unk_10051C1E0;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_100324580(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);

    sub_1003246A4(v3, v4, v2);
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) logKey];
      v7 = *(a1 + 48);
      v8 = 138412546;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1003246A4(void *a1, void *a2, void *a3)
{
  v41 = a2;
  v40 = a3;
  if (a1)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v41;
    v39 = v5;
    v38 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = objc_alloc_init(ASDCoastGuard);
    v9 = objc_opt_new();
    v10 = sub_1002BB3F0();
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v54 = sub_100327D24;
    v55 = &unk_1005235D0;
    v56 = v9;
    v11 = v9;
    [v10 readUsingSession:&buf];

    v12 = [v11 copy];
    v13 = +[LSApplicationWorkspace defaultWorkspace];
    v14 = [v13 applicationIsInstalled:@"com.apple.AppStore"];

    v15 = [v6 reason] == 2 || objc_msgSend(v6, "reason") == 4;
    v16 = [v6 bridgedTargetedItemID];
    v17 = v16 == 0;

    if (v17)
    {
      v19 = -1;
    }

    else
    {
      v18 = [v6 bridgedTargetedItemID];
      v19 = [v18 integerValue];
    }

    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 logKey];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] ╒ Prepping update request", &buf, 0xCu);
    }

    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v54 = sub_100329E10;
    v55 = &unk_1005236E0;
    v63 = v19;
    v22 = v6;
    v56 = v22;
    v23 = v12;
    v64 = v14;
    v65 = v15;
    v57 = v23;
    v58 = a1;
    v24 = v7;
    v59 = v24;
    v25 = v8;
    v60 = v25;
    v26 = v39;
    v61 = v26;
    v27 = v38;
    v62 = v27;
    sub_1003D31A8(ApplicationProxy, 0, &buf);
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v22 logKey];
      *v50 = 138412546;
      *&v50[4] = v29;
      *&v50[12] = 2048;
      *&v50[14] = [v27 count];
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] ╘ Update request contains %ld candidate(s)", v50, 0x16u);
    }

    if ([v24 count])
    {
      v30 = sub_1002BB3F0();
      *v50 = _NSConcreteStackBlock;
      *&v50[8] = 3221225472;
      *&v50[16] = sub_10032A53C;
      v51 = &unk_100523390;
      v52 = v24;
      [v30 modifyUsingTransaction:v50];

      v31 = 1;
    }

    else
    {
      v31 = 0;
    }

    v32 = v62;
    v33 = v27;

    v34 = sub_1003B8BE4([UpdatesBatchTask alloc], v33, v22);
    objc_initWeak(&buf, a1);
    objc_initWeak(v50, v34);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100328B20;
    v42[3] = &unk_100523690;
    objc_copyWeak(&v47, &buf);
    objc_copyWeak(&v48, v50);
    v43 = v22;
    v35 = v33;
    v44 = v35;
    v36 = v26;
    v45 = v36;
    v49 = v31;
    v46 = v40;
    [v34 setCompletionBlock:v42];
    v37 = a1[9];
    if (v37)
    {
      [*(v37 + 8) addOperation:v34];
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v47);
    objc_destroyWeak(v50);
    objc_destroyWeak(&buf);
  }
}

void sub_100324C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 72));
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a31);
  _Unwind_Resume(a1);
}

void sub_100324D48(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    sub_1003233F4(*(a1 + 40), *(a1 + 32), a2);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logKey];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_100324FE0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setup following migration", buf, 2u);
  }

  v3 = sub_10030B504();
  v4 = [_TtC9appstored14UpdatesContext alloc];
  v5 = v4;
  if (v3)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1003251FC;
    v17[3] = &unk_10051D460;
    v18 = *(a1 + 32);
    LOBYTE(v13) = 0;
    v6 = [(UpdatesContext *)v5 initWithReason:2 requestToken:0 logKey:0 callbackHandler:v17 includeMetrics:0 isVPPLookup:0 userInitiated:v13 targetedItemID:0];
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking for updates", buf, 2u);
    }

    v8 = +[BagService appstoredService];
    v9 = *(a1 + 40);
    v10 = *(v9 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1003252B4;
    v14[3] = &unk_1005233D8;
    v15 = v6;
    v16 = v9;
    v11 = v6;
    [v8 upToDateBagOnQueue:v10 completionHandler:v14];

    v12 = v18;
  }

  else
  {
    v12 = [(UpdatesContext *)v4 initWithReason:2];
    sub_10032158C(*(a1 + 40), @"Migration", v12);
  }
}

void sub_1003251FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = [v2 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Force update sync complete with %lu updates", &v4, 0xCu);
  }
}

void sub_1003252B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    sub_1003233F4(*(a1 + 40), *(a1 + 32), a2);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logKey];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_100325444(uint64_t a1)
{
  v2 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:*(a1 + 32)];
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(UpdatesContext *)v2 logKey];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Show Pending Updates Badge", &v5, 0xCu);
  }

  sub_10032158C(*(a1 + 40), @"Show Pending Updates Badge", v2);
}

void sub_100325640(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = a2;
    v10 = v6;
    if (v4)
    {
      v11 = *(v4 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100325774;
      block[3] = &unk_10051C9C0;
      v14 = v8;
      v15 = v7;
      v16 = v9;
      v17 = v4;
      v18 = v10;
      dispatch_async(v11, block);
    }
  }

  else
  {
    v12 = *(*(a1 + 56) + 16);

    v12();
  }
}

void sub_100325774(uint64_t a1)
{
  LOBYTE(v9) = 1;
  v2 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:5 requestToken:*(a1 + 32) logKey:0 callbackHandler:0 includeMetrics:0 isVPPLookup:0 userInitiated:v9 targetedItemID:0];
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(UpdatesContext *)v2 logKey];
    v5 = [*(a1 + 40) componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Starting update all with order: %@", buf, 0x16u);
  }

  v6 = [[_TtC9appstored18PerformUpdatesTask alloc] initWithOrderedBundleIDs:*(a1 + 40) context:v2 bag:*(a1 + 48)];
  objc_initWeak(buf, v6);
  objc_initWeak(&location, v2);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003259CC;
  v10[3] = &unk_100523450;
  objc_copyWeak(&v12, buf);
  objc_copyWeak(&v13, &location);
  v7 = *(a1 + 64);
  v10[4] = *(a1 + 56);
  v11 = v7;
  [(PerformUpdatesTask *)v6 setCompletionBlock:v10];
  v8 = *(*(a1 + 56) + 72);
  if (v8)
  {
    [*(v8 + 8) addOperation:v6];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void sub_100325994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 80));
  _Unwind_Resume(a1);
}

void sub_1003259CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 24);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100325C1C;
    v19 = &unk_10051B790;
    v21 = v5;
    v20 = WeakRetained;
    dispatch_async(v6, &v16);
    v7 = [NSDate date:v16];
    sub_1003D6364(AppDefaultsManager, v7);
  }

  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;

  v10 = ASDLogHandleForCategory();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 logKey];
      if (WeakRetained)
      {
        v14 = objc_getProperty(WeakRetained, v12, 32, 1);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      *buf = 138412546;
      v23 = v13;
      v24 = 2114;
      v25 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Error performing update all task: %{public}@", buf, 0x16u);

      goto LABEL_12;
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 logKey];
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Successfully finished update all with order", buf, 0xCu);
LABEL_12:
  }
}

void sub_100325C1C(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v2)
  {
    v5 = v2[24];
  }

  else
  {
    v5 = 0;
  }

  v9 = [v2 jobResults];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 32, 1);
  }

  v8 = Property;
  (*(v3 + 16))(v3, v5 & 1, v9, v8);
}

void sub_100325D60(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = [[_TtC9appstored6LogKey alloc] initWithBase:@"Pending Update Verification"];
  v3 = sub_1002BB3F0();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100325EE8;
  v12[3] = &unk_100521610;
  v4 = v2;
  v13 = v4;
  v14 = &v15;
  [v3 modifyUsingTransaction:v12];

  if (*(v16 + 24) == 1)
  {
    v8 = *(a1 + 32);
    v9 = objc_alloc_init(_TtC9appstored14UpdatesContext);
    sub_100322ED4(v8, @"Updates modified", v9);

    v10 = *(a1 + 32);
    v11 = objc_alloc_init(_TtC9appstored14UpdatesContext);
    sub_10032158C(v10, @"Updates Modified After Cleanup", v11);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7);

  _Block_object_dispose(&v15, 8);
}

void sub_100325ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100325EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1002D3F5C(AppUpdateEntity, v4, 0);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100325FE4;
  v11[3] = &unk_100523478;
  v12 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  [v5 enumeratePersistentIDsUsingBlock:v11];
  v9 = *(*(*(a1 + 40) + 8) + 24);

  return v9;
}

void sub_100325FE4(uint64_t a1, uint64_t a2)
{
  v4 = [AppUpdateEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  if ([(SQLiteEntity *)v6 existsInDatabase]&& sub_100350204(*(a1 + 32), v6, *(a1 + 40)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_100326154(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored14UpdatesContext);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(UpdatesContext *)v2 logKey];
    v5 = [*(a1 + 32) componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Cleaning up following removal of apps: [%{public}@]", buf, 0x16u);
  }

  v6 = objc_alloc_init(CleanupManager);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003262E4;
  v10[3] = &unk_1005224D8;
  v10[4] = *(a1 + 48);
  v11 = v2;
  v9 = v2;
  sub_1002CED30(v6, v7, v8, v10);
}

void sub_1003262E4(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v13 = v2;
    v14 = v3;
    v6 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100326398;
    block[3] = &unk_10051F4B0;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = a2;
    dispatch_async(v6, block);
  }
}

uint64_t sub_100326398(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logKey];
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Removed %ld uninstalled updates", &v6, 0x16u);
  }

  sub_100322ED4(*(a1 + 40), @"App removed", *(a1 + 32));
  return sub_10032158C(*(a1 + 40), @"Apps removed", *(a1 + 32));
}

void sub_100326524(uint64_t a1)
{
  v2 = objc_alloc_init(CleanupManager);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003265B4;
  v4[3] = &unk_1005234A0;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  sub_1002CEF04(v2, v3, v4);
}

void sub_1003265B4(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v6[6] = v2;
    v6[7] = v3;
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100326634;
    v6[3] = &unk_10051B830;
    v6[4] = v4;
    v6[5] = a2;
    dispatch_async(v5, v6);
  }
}

void sub_100326634(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored14UpdatesContext);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(UpdatesContext *)v2 logKey];
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: Corrected %ld installed updates", &v6, 0x16u);
  }

  sub_100322ED4(*(a1 + 32), @"External App installed", v2);
  sub_10032158C(*(a1 + 32), @"External App installed", v2);
}

void sub_1003267DC(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = sub_1002BB3F0();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10032688C;
    v3[3] = &unk_100523390;
    v4 = *(a1 + 32);
    [v2 modifyUsingTransaction:v3];
  }
}

uint64_t sub_10032689C(uint64_t a1, void *a2)
{
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_10034E15C(v3, Current - ASDSoftwareUpdateHistoryInterval);

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return *(*(*(a1 + 32) + 8) + 24);
}

void sub_100326928(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 64);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003269F0;
    v9[3] = &unk_10051AEE8;
    v9[4] = a1;
    v10 = v6;
    v11 = v5;
    sub_100379C5C(v8, v9);
  }
}

void sub_1003269F0(uint64_t a1)
{
  if ((*(*(a1 + 32) + 48) & 1) == 0)
  {
    v2 = sub_1001C66D8([FetchTVProviderAppsTask alloc], *(a1 + 40));
    v4 = v2;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v3, *(a1 + 48), 64);
    }

    v49 = 0;
    v5 = [v4 runTaskReturningError:&v49];
    v6 = v49;
    v7 = v6;
    if (v5)
    {
      *(*(a1 + 32) + 48) = 1;
      v41 = v6;
      v42 = v4;
      v43 = a1;
      if (v4)
      {
        v8 = v4[6];
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v44 = objc_opt_new();
      v10 = sub_1003D60F0();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v46;
        do
        {
          v15 = 0;
          do
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v45 + 1) + 8 * v15);
            if (v16)
            {
              v17 = *(v16 + 8);
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v18)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = [LSApplicationRecord alloc];
              if (v16)
              {
                v21 = *(v16 + 8);
              }

              else
              {
                v21 = 0;
              }

              v22 = v21;
              v23 = [v20 initWithStoreItemIdentifier:objc_msgSend(v22 error:{"unsignedLongLongValue"), 0}];

              if (!v23 && v10 && (!v16 ? (v24 = 0) : (v24 = *(v16 + 8)), v25 = v24, v26 = [v10 containsObject:v25], v25, v26))
              {
                v27 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  if (v16)
                  {
                    v28 = *(v16 + 8);
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v29 = *(v43 + 48);
                  v30 = v28;
                  *buf = 138412546;
                  v51 = v29;
                  v52 = 2114;
                  v53 = v30;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Will not lookup previously installed provisioned app with itemID: %{public}@", buf, 0x16u);
                }
              }

              else
              {
                [v44 addObject:{v16, v41}];
              }

              objc_autoreleasePoolPop(v19);
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v31 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
          v13 = v31;
        }

        while (v31);
      }

      v32 = [v44 copy];
      v33 = *(v43 + 32);
      v34 = *(v33 + 80);
      *(v33 + 80) = v32;

      v4 = v42;
      if (v42)
      {
        v35 = v42[7];
      }

      else
      {
        v35 = 0;
      }

      v7 = v41;
      v36 = v35;
      v37 = [v36 copy];
      v38 = *(v43 + 32);
      v39 = *(v38 + 56);
      *(v38 + 56) = v37;
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 48);
        *buf = 138412546;
        v51 = v40;
        v52 = 2114;
        v53 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Software update headboard completed with error: %{public}@", buf, 0x16u);
      }
    }
  }
}

void sub_100326DCC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ASDLogHandleForCategory();
  v7 = v6;
  if (!a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v8 = [*(a1 + 32) allKeys];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set updateAvailability to Available (%{public}@) for apps: %{public}@", &v9, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) allKeys];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set updateAvailability to Available for apps: %{public}@", &v9, 0xCu);
LABEL_4:
  }

LABEL_6:
}

uint64_t sub_100326F28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 reason];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(*(a1 + 72) + 8);
  v10 = *(*(a1 + 80) + 8);
  v11 = *(*(a1 + 88) + 8);
  obj = *(v11 + 40);
  LOBYTE(v3) = sub_10034F274(v5, v3, v6, v7, v8, (v9 + 24), (v10 + 24), &obj);

  objc_storeStrong((v11 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) logKey];
    v14 = *(*(*(a1 + 72) + 8) + 24);
    v15 = *(*(*(a1 + 64) + 8) + 24);
    v16 = [*(a1 + 40) humanReadableReason];
    *buf = 138413058;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 1024;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Merged %ld app updates into database with result: %d reason: %{public}@", buf, 0x26u);
  }

  return *(*(*(a1 + 64) + 8) + 24);
}

void sub_1003270BC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logKey];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Cleared expired history", &v4, 0xCu);
  }
}

void sub_100327178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:objc_opt_class()];
  v30 = @"DESC";
  v6 = [NSArray arrayWithObjects:&v30 count:1];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, v6, 40);
  }

  v29 = @"release_date";
  v8 = [NSArray arrayWithObjects:&v29 count:1];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v7, v8, 48);
  }

  if ([*(a1 + 32) isVPPLookup])
  {
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"is_per_device" equalToValue:&__kCFBooleanTrue];
    v28[0] = v9;
    v10 = [SQLiteComparisonPredicate predicateWithProperty:@"is_b2b_custom_app" equalToValue:&__kCFBooleanTrue];
    v28[1] = v10;
    v11 = [NSArray arrayWithObjects:v28 count:2];
    v12 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v11];

    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, v13, v12, 56);
    }
  }

  else
  {
    v14 = sub_1003274F8(*(a1 + 40));
    v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];

    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, v16, v15, 56);
    }
  }

  v17 = [SQLiteQuery alloc];
  v18 = [v3 connection];

  v19 = [(SQLiteQuery *)v17 initOnConnection:v18 descriptor:v4];
  v27[0] = @"device_families";
  v27[1] = @"install_date";
  v27[2] = @"is_background";
  v27[3] = @"is_b2b_custom_app";
  v27[4] = @"is_per_device";
  v27[5] = @"package_type";
  v27[6] = @"software_platform";
  v27[7] = @"store_item_data";
  v27[8] = @"timestamp";
  v27[9] = @"update_state";
  v20 = [NSArray arrayWithObjects:v27 count:10];
  if ([*(a1 + 32) includeMetrics])
  {
    v21 = [v20 arrayByAddingObject:@"metrics_data"];

    v20 = v21;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10032765C;
  v24[3] = &unk_1005215E8;
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v25 = v22;
  v26 = v23;
  [v19 enumerateMemoryEntitiesWithProperties:v20 usingBlock:v24];
}

id sub_1003274F8(uint64_t a1)
{
  if (a1)
  {
    v1 = [SQLiteComparisonPredicate predicateWithProperty:@"is_per_device" equalToValue:&__kCFBooleanFalse];
    v2 = [SQLiteComparisonPredicate predicateWithProperty:@"is_b2b_custom_app" equalToValue:&__kCFBooleanFalse, v1];
    v8[1] = v2;
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"is_offloaded" equalToValue:&__kCFBooleanFalse];
    v8[2] = v3;
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"is_code_signature_update" equalToValue:&__kCFBooleanFalse];
    v8[3] = v4;
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"update_state" value:&off_100548040 comparisonType:2];
    v8[4] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10032765C(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = sub_10023E0F8(v17, @"store_item_data");
  v4 = [[ASDSoftwareUpdate alloc] initWithUpdateDictionary:v3];
  if ([*(a1 + 32) includeMetrics])
  {
    v5 = sub_10023E0F8(v17, @"metrics_data");
    [v4 setMetrics:v5];
  }

  v6 = sub_10023E0F8(v17, @"update_state");
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_10023E0F8(v17, @"package_type");

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = -1;
  }

  v10 = sub_10023E0F8(v17, @"is_background");

  v11 = objc_opt_respondsToSelector();
  v12 = v7;
  if (v11)
  {
    v13 = [v10 BOOLValue];
    if ((v7 - 3) >= 2)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v12 = v14;
    }

    else
    {
      v12 = v7;
    }
  }

  [v4 setUpdateState:v12];
  [v4 setRawUpdateState:v7];
  [v4 setPackageType:v9];
  v15 = sub_10023E0F8(v17, @"install_date");
  [v4 setInstallDate:v15];

  v16 = sub_10023E0F8(v17, @"timestamp");
  [v4 setTimestamp:v16];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
}

void sub_100327878(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) headboardProvisionedApps];
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
        v8 = *(a1 + 40);
        if (v7)
        {
          v7 = v7[1];
        }

        v9 = v7;
        [v8 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100327994(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 bundleIdentifier];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = [ApplicationProxy proxyForBundleID:v6];
  v8 = v7;
  if (v7 && ![*(v7 + 120) isPlaceholder])
  {
    v12 = (*(a1 + 80) ^ 1) & *(a1 + 81);
    if ((*(a1 + 80) ^ 1) & 1) == 0 && (*(a1 + 81))
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + 32);
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 storeItemIdentifier]);
  LOBYTE(v10) = [v10 containsObject:v11];

  if (v10)
  {
    v12 = (*(a1 + 80) ^ 1) & *(a1 + 81);
    if ((*(a1 + 80) ^ 1) & 1) == 0 && (*(a1 + 81))
    {
      if (!v8)
      {
        Property = 0;
LABEL_12:
        v14 = Property;
        if (sub_10040C694(v14))
        {
          v15 = [*(a1 + 48) objectForKeyedSubscript:v6];
          v12 = [v15 BOOLValue];
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_19;
      }

LABEL_11:
      Property = objc_getProperty(v8, v9, 120, 1);
      goto LABEL_12;
    }

LABEL_19:
    [v5 setAutoUpdateEnabled:v12 & 1];

LABEL_20:
    v19 = [v5 updateState];
    if (v19 <= 4 && ((1 << v19) & 0x19) != 0)
    {
      v20 = *(a1 + 64);
    }

    else
    {
      v20 = *(a1 + 72);
    }

    ++*(*(v20 + 8) + 24);
    goto LABEL_25;
  }

  [*(*(*(a1 + 56) + 8) + 40) removeObjectAtIndex:a3];
  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) logKey];
    v18 = [v5 bundleIdentifier];
    v21 = 138412546;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Removed non installed update with bundleID: %{public}@", &v21, 0x16u);
  }

LABEL_25:
}

void sub_100327C08(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logKey];
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v7 = 138412802;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Returning %lu available and %lu recent update(s)", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) callbackHandler];
  v6[2](v6, *(*(*(a1 + 56) + 8) + 40), 0);
}

void sub_100327D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteContainsPredicate containsPredicateWithProperty:@"update_state" values:&off_100549548];
  v5 = [v3 connection];

  v6 = sub_1002D3F5C(AppUpdateEntity, v5, v4);

  v7 = sub_100215298();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100327E4C;
  v8[3] = &unk_10051B038;
  v9 = *(a1 + 32);
  [v6 enumerateMemoryEntitiesWithProperties:v7 usingBlock:v8];
}

void sub_100327E4C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 itemID];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void sub_100327F28(uint64_t a1)
{
  v2 = +[ActiveAccountObserver activeAccount];
  v3 = [v2 ams_DSID];

  if (+[AMSDevice deviceIsAppleTV]&& sub_1003D5FC8())
  {
    if (v3)
    {
      v4 = *(a1 + 32);
      if (*(v4 + 16))
      {
        if ([v3 isEqualToNumber:?])
        {
          goto LABEL_6;
        }

        v4 = *(a1 + 32);
      }

      objc_storeStrong((v4 + 16), v3);
      if (*(*(a1 + 32) + 48) == 1)
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting hasLoadedTVProviderApps", buf, 2u);
        }

        *(*(a1 + 32) + 48) = 0;
      }

      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Account changed to: %@", buf, 0xCu);
      }

      LOBYTE(v16) = 0;
      v12 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:6 requestToken:0 logKey:0 callbackHandler:&stru_1005235F0 includeMetrics:0 isVPPLookup:0 userInitiated:v16 targetedItemID:0];
      v13 = +[BagService appstoredService];
      v14 = *(a1 + 32);
      v15 = *(v14 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1003282AC;
      v17[3] = &unk_1005233D8;
      v18 = v12;
      v19 = v14;
      v9 = v12;
      [v13 upToDateBagOnQueue:v15 completionHandler:v17];

      goto LABEL_17;
    }

LABEL_6:
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v21 = v3;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not handling account change from %{public}@ to: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = v3;
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;
LABEL_17:
  }
}

void sub_1003281F4(id a1, NSArray *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error performing update for account change: %{public}@", &v5, 0xCu);
    }
  }
}

void sub_1003282AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    sub_1003233F4(*(a1 + 40), *(a1 + 32), a2);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logKey];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1003283A4(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%lld", *(a1 + 56)];
  v3 = *(a1 + 32);
  v4 = [_TtC9appstored6LogKey alloc];
  v26 = v2;
  v5 = [NSArray arrayWithObjects:&v26 count:1];
  v6 = [(LogKey *)v4 initWithBase:@"DSID-less apps check" IDs:v5];
  sub_100326928(v3, v6, *(a1 + 40));

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(*(a1 + 32) + 80);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v12)
        {
          v12 = v12[1];
        }

        v13 = v12;
        v14 = [v13 longLongValue];
        v15 = *(a1 + 56);

        if (v14 == v15)
        {
          v16 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v18 = *(a1 + 56);
            *buf = 134217984;
            v24 = v18;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%lld is one of the headboard apps", buf, 0xCu);
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [*(*(a1 + 32) + 56) containsObject:v2])
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v24 = v2;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@ is one of the TV provider apps", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_100328654(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = @"is_background";
  v17[1] = @"install_date";
  v17[2] = @"store_item_data";
  v17[3] = @"update_state";
  v4 = [NSArray arrayWithObjects:v17 count:4];
  v5 = sub_1003D60B4();
  if (!v5)
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:-75600.0];
  }

  v6 = [v3 connection];
  v7 = sub_1002D4C68(AppUpdateMemoryEntity, v6, 0);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10032880C;
  v12[3] = &unk_100523640;
  v13 = v5;
  v14 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v8;
  v16 = v9;
  v10 = v3;
  v11 = v5;
  [v7 enumerateMemoryEntitiesWithProperties:v4 usingBlock:v12];
}

void sub_10032880C(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_10023E0F8(v3, @"update_state");
  v5 = [v4 integerValue];

  v6 = sub_10023E0F8(v3, @"install_date");
  v7 = sub_10023E0F8(v3, @"is_background");
  v8 = [v7 BOOLValue];

  if (v6)
  {
    v9 = [a1[4] compare:v6] != 1;
  }

  else
  {
    v9 = 0;
  }

  if (((v5 == 1) & v8) == 1)
  {
    v10 = [AppUpdateEntity alloc];
    v11 = [v3 databaseID];
    v12 = [a1[5] connection];
    v13 = [(SQLiteEntity *)v10 initWithPersistentID:v11 onConnection:v12];

    if (v9 && sub_1003796B4())
    {
      v14 = sub_1002153E4(v13);
      if (v14)
      {
        [a1[6] addObject:v14];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v14 = v15;
      v16 = 138543618;
      v17 = v15;
      v18 = 2048;
      v19 = [v3 databaseID];
      _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping manual update notification for %lld", &v16, 0x16u);
LABEL_11:
    }
  }
}

void sub_100328A1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    sub_100379730(*(a1 + 32), *(a1 + 40), a2);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Unable to post update metrics; bag load failed: %{public}@", &v8, 0xCu);
    }
  }

  v7 = +[NSDate date];
  sub_1003D629C(AppDefaultsManager, v7);
}

void sub_100328B20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained[4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100328C30;
  block[3] = &unk_100520B28;
  block[4] = WeakRetained;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v12 = *(a1 + 80);
  v11 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_100328C30(uint64_t a1)
{
  v2 = *(a1 + 40);
  v62 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = [*(v5 + 64) copy];
  }

  else
  {
    v6 = 0;
  }

  v56 = *(a1 + 80);
  v7 = *(a1 + 72);
  v58 = v2;
  v59 = v4;
  v8 = v3;
  v61 = v6;
  v60 = v7;
  v9 = v61;
  if (v62)
  {
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x2020000000;
    v86 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = sub_100321078;
    v83 = sub_100321088;
    v84 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v10 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v11 = v61;
    v12 = [v11 countByEnumeratingWithState:&v67 objects:v105 count:16];
    if (v12)
    {
      v13 = *v68;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v68 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v67 + 1) + 8 * i);
          v16 = [v15 itemID];
          v17 = [v8 objectForKeyedSubscript:v16];

          if (v17 || [v15 isAppClip])
          {
            v18 = [v15 bundleID];
            [v10 setObject:&off_100547FE0 forKeyedSubscript:v18];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v67 objects:v105 count:16];
      }

      while (v12);
    }

    if ([v10 count])
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v10 allKeys];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting updateAvailability as available for apps: %{public}@", &buf, 0xCu);
      }

      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_100326DCC;
      v65[3] = &unk_10051B348;
      v66 = v10;
      [LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:v66 completionHandler:v65];
    }

    v21 = sub_10036FF4C(v11, &stru_100523508);

    v22 = sub_1002BB3F0();
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v95 = sub_100326F28;
    v96 = &unk_100523530;
    v101 = v85;
    v9 = v21;
    v97 = v9;
    v23 = v58;
    v98 = v23;
    v99 = v59;
    v100 = v8;
    v102 = &v75;
    v103 = &v71;
    v104 = &v79;
    [v22 modifyUsingTransaction:&buf];

    v55 = *(v72 + 24);
    v24 = v76[3];
    v25 = v23;
    v57 = v60;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = 0;
    v26 = sub_1002BB3F0();
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_1003297B8;
    *&block[24] = &unk_1005236B8;
    *&v107 = v62;
    *(&v107 + 1) = &v87;
    [v26 readUsingSession:block];

    v27 = *(v88 + 24);
    _Block_object_dispose(&v87, 8);
    if (v27 < 1)
    {
      v36 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v25 logKey];
        v38 = [v25 humanReadableReason];
        *block = 138412546;
        *&block[4] = v37;
        *&block[12] = 2114;
        *&block[14] = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%@] No updates to perform after merge updates for reason: %{public}@", block, 0x16u);
      }
    }

    else
    {
      v28 = sub_1003D5FC8();
      v29 = [v25 shouldPerformUpdates];
      v30 = ASDLogHandleForCategory();
      v31 = os_log_type_enabled(&v30->super.super.super.super, OS_LOG_TYPE_DEFAULT);
      if ((v29 & v28) == 1)
      {
        if (v31)
        {
          v32 = [v25 logKey];
          v33 = [v25 humanReadableReason];
          *block = 138412802;
          *&block[4] = v32;
          *&block[12] = 1024;
          *&block[14] = 1;
          *&block[18] = 2114;
          *&block[20] = v33;
          _os_log_impl(&_mh_execute_header, &v30->super.super.super.super, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing updates with auto updates enabled: %d reason: %{public}@", block, 0x1Cu);
        }

        v34 = +[NSDate date];
        sub_1003D6300(AppDefaultsManager, v34);

        v30 = [[_TtC9appstored18PerformUpdatesTask alloc] initWithOrderedBundleIDs:0 context:v25 bag:v57];
        v35 = *(v62 + 72);
        if (v35)
        {
          [*(v35 + 8) addOperation:v30];
        }
      }

      else if (v31)
      {
        v39 = [v25 logKey];
        v40 = [v25 humanReadableReason];
        *block = 138412802;
        *&block[4] = v39;
        *&block[12] = 1024;
        *&block[14] = v28;
        *&block[18] = 2114;
        *&block[20] = v40;
        _os_log_impl(&_mh_execute_header, &v30->super.super.super.super, OS_LOG_TYPE_DEFAULT, "[%@] Not purchasing updates with auto updates enabled: %d reason: %{public}@", block, 0x1Cu);
      }

      v36 = [v25 humanReadableReason];
      v41 = [NSString stringWithFormat:@"Updates merged in with load reason %@", v36];
      sub_10032158C(v62, v41, v25);
    }

    if (((v27 == v24) & ((v55 | v56) ^ 1)) == 0)
    {
      v42 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v25 logKey];
        v44 = [v25 humanReadableReason];
        *block = 138413058;
        *&block[4] = v43;
        *&block[12] = 2048;
        *&block[14] = v27;
        *&block[22] = 2048;
        *&block[24] = v24;
        LOWORD(v107) = 2114;
        *(&v107 + 2) = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Notify updates changed with count: %ld mergeCount: %ld reason: %{public}@", block, 0x2Au);
      }

      v45 = [v25 humanReadableReason];
      sub_100322ED4(v62, v45, v25);
    }

    if ([v25 isBackgroundRequest])
    {
      v46 = +[NSDate date];
      sub_1003D6364(AppDefaultsManager, v46);

      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1003270BC;
      v63[3] = &unk_10051B348;
      v64 = v25;
      v47 = v63;
      v92[0] = 0;
      v92[1] = v92;
      v92[2] = 0x2020000000;
      v93 = 0;
      v48 = sub_1002BB3F0();
      v87 = _NSConcreteStackBlock;
      v88 = 3221225472;
      v89 = sub_10032689C;
      v90 = &unk_1005234C8;
      v91 = v92;
      [v48 modifyUsingTransaction:&v87];

      v49 = *(v62 + 24);
      *block = _NSConcreteStackBlock;
      *&block[8] = 3221225472;
      *&block[16] = sub_100326908;
      *&block[24] = &unk_10051E4B0;
      v50 = v47;
      *&v107 = v50;
      *(&v107 + 1) = v92;
      dispatch_async(v49, block);

      _Block_object_dispose(v92, 8);
    }

    if (os_variant_has_internal_content())
    {
      v51 = objc_opt_new();
      v52 = +[NSDate date];
      [v51 setPollTime:v52];

      if ([v25 reason] == 1)
      {
        [v51 setReason:@"Auto"];
      }

      else
      {
        v53 = [v25 humanReadableReason];
        [v51 setReason:v53];
      }

      [v51 setBundleIDs:v80[5]];
      v54 = objc_opt_new();
      [v54 addPoll:v51];
    }

    sub_100322390(v62, v25);

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v79, 8);

    _Block_object_dispose(v85, 8);
  }
}

void sub_100329730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_1003297B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = sub_10032990C(v3);
  v6 = [v4 connection];

  v7 = sub_1002D4220(AppUpdateEntity, @"ROWID", v5, v6);

  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Current update count is: %ld", &v10, 0xCu);
  }
}

id sub_10032990C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1003274F8(a1);
    v2 = [SQLiteContainsPredicate containsPredicateWithProperty:@"update_state" values:&off_100549560];
    v7 = v2;
    v3 = [NSArray arrayWithObjects:&v7 count:1];
    v4 = [v1 arrayByAddingObjectsFromArray:v3];

    v5 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100329A10(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_10032990C(*(a1 + 32));
  v5 = sub_1002D3F5C(AppUpdateEntity, v3, v4);

  v9 = @"bundle_id";
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100329B4C;
  v7[3] = &unk_10051B038;
  v8 = *(a1 + 40);
  [v5 enumerateMemoryEntitiesWithProperties:v6 usingBlock:v7];
}

void sub_100329B4C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleID];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleID];
    [v4 addObject:v5];
  }
}

void sub_100329BC8(uint64_t a1)
{
  v2 = [[UISApplicationState alloc] initWithBundleIdentifier:@"com.apple.AppStore"];
  v3 = [v2 badgeValue];
  v4 = v3;
  if (v3)
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = [v4 integerValue];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3 == *(a1 + 48))
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) logKey];
      v7 = *(a1 + 48);
      v8 = sub_1003D5FC8();
      v9 = *(a1 + 40);
      v15 = 138413314;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      v19 = 2114;
      v20 = v4;
      v21 = 1024;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v10 = "[%@] Leaving badge count at: %ld badgeValue: %{public}@ auto enabled: %d reason: %{public}@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v10, &v15, 0x30u);
    }
  }

  else
  {
    v11 = [NSNumber numberWithInteger:?];
    [v2 setBadgeValue:v11];

    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) logKey];
      v12 = *(a1 + 48);
      v13 = sub_1003D5FC8();
      v14 = *(a1 + 40);
      v15 = 138413314;
      v16 = v6;
      v17 = 2048;
      v18 = v12;
      v19 = 2114;
      v20 = v4;
      v21 = 1024;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      v10 = "[%@] Updated badge count to: %ld previous badgeValue: %{public}@ auto enabled: %d reason: %{public}@";
      goto LABEL_11;
    }
  }
}

void sub_100329E10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 88);
  if (v5 < 1 || v5 == sub_1003D0F1C(v3))
  {
    v6 = [*(a1 + 32) logKey];
    v7 = sub_1003D11A0(v4, v6);

    if ((v7 & 1) == 0)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) logKey];
        v17 = sub_1003D0F60(v4);
        v49 = 138412546;
        v50 = v16;
        v51 = 2114;
        v52 = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Skipping ineligible app: %{public}@", &v49, 0x16u);
      }

      goto LABEL_40;
    }

    v8 = *(a1 + 40);
    v9 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v4)];
    v10 = [v8 objectForKey:v9];

    v11 = [v10 evid];
    v12 = [v11 longLongValue];

    if ((*(a1 + 96) & 1) == 0)
    {
      v14 = sub_1003D2888(v4, v13);
      if ([v14 deviceBasedVPP])
      {
      }

      else
      {
        v18 = sub_1003D2888(v4, v15);
        v19 = [v18 isB2BCustomApp];

        if ((v19 & 1) == 0)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v44 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [*(a1 + 32) logKey];
            v46 = sub_1003D0F60(v4);
            v49 = 138412546;
            v50 = v45;
            v51 = 2114;
            v52 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] ├ DRP { %{public}@ }", &v49, 0x16u);
          }

          v43 = sub_1002BB3F0();
          v47 = sub_1003D0F60(v4);
          v48 = [*(a1 + 32) logKey];
          sub_1002BBE74(v43, v47, v48);

          goto LABEL_39;
        }
      }
    }

    if (v12)
    {
      if ((*(a1 + 97) & 1) == 0)
      {
        if (*(a1 + 48) && (sub_10023E0F8(v10, @"timestamp"), v20 = objc_claimAutoreleasedReturnValue(), [v20 timeIntervalSinceNow], v22 = v21, v20, v22 < -1209600.0))
        {
          [*(a1 + 56) addObject:v10];
          v12 = sub_1003D2F7C(v4);
          v23 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 32) logKey];
            v49 = 138412546;
            v50 = v24;
            v51 = 2114;
            v52 = v10;
            v25 = "[%@] ├ REL %{public}@";
LABEL_24:
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v49, 0x16u);
          }
        }

        else
        {
          v23 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 32) logKey];
            v49 = 138412546;
            v50 = v24;
            v51 = 2114;
            v52 = v10;
            v25 = "[%@] ├ PRE %{public}@";
            goto LABEL_24;
          }
        }

        goto LABEL_26;
      }
    }

    else if ((*(a1 + 97) & 1) == 0)
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 32) logKey];
        v30 = sub_1003D0F60(v4);
        v49 = 138412802;
        v50 = v29;
        v51 = 2114;
        v52 = v30;
        v53 = 2048;
        v54 = sub_1003D2F7C(v4);
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] ├ NEW { %{public}@ evid: %lld }", &v49, 0x20u);
      }

      goto LABEL_21;
    }

    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(a1 + 32) logKey];
      v28 = sub_1003D0F60(v4);
      v49 = 138413058;
      v50 = v27;
      v51 = 2114;
      v52 = v28;
      v53 = 2048;
      v54 = sub_1003D2F7C(v4);
      v55 = 2048;
      v56 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] ├ FRC { %{public}@ evid: %lld currentEvid: %lld }", &v49, 0x2Au);
    }

LABEL_21:

    v12 = sub_1003D2F7C(v4);
LABEL_26:
    if (v12 < 1)
    {
LABEL_40:

      goto LABEL_41;
    }

    if (v4)
    {
      v31 = [v4[15] codeSignatureVersion];
    }

    else
    {
      v31 = 0;
    }

    if (v31 < kMISFutureMinSupportedSignatureVersion)
    {
      if ([*(a1 + 64) isUnrepairableAppWithItemID:sub_1003D0F1C(v4) externalVersionID:v12])
      {
        v32 = &off_100548058;
      }

      else
      {
        v32 = [NSNumber numberWithLongLong:sub_1003D2F7C(v4)];
        v12 = 0;
      }

      v33 = *(a1 + 72);
      v34 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v4)];
      [v33 setObject:v32 forKeyedSubscript:v34];
    }

    v35 = sub_10023E0F8(v10, @"update_state");
    v36 = [v35 integerValue];

    if (v36 == 5)
    {
      v37 = [v10 evid];
      v12 = [v37 longLongValue];

      v38 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [*(a1 + 32) logKey];
        v40 = sub_1003D0F1C(v4);
        v49 = 138412802;
        v50 = v39;
        v51 = 2048;
        v52 = v40;
        v53 = 2048;
        v54 = v12;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%@] Only checking for newer updates (%lld -> %lld) due to the current update being marked as blocked.", &v49, 0x20u);
      }
    }

    v41 = [UpdatableApp alloc];
    v42 = [NSNumber numberWithLongLong:v12];
    v43 = sub_100307D1C(v41, v4, v42);

    [*(a1 + 80) addObject:v43];
LABEL_39:

    goto LABEL_40;
  }

LABEL_41:
}

void sub_10032A54C(id a1)
{
  v1 = sub_1002BB3F0();
  [v1 modifyUsingTransaction:&stru_100523740];
}

BOOL sub_10032A59C(id a1, AppUpdatesDatabaseTransaction *a2)
{
  v2 = a2;
  v3 = [SQLiteContainsPredicate containsPredicateWithProperty:@"update_state" values:&off_100549578];
  v4 = [(AppUpdatesDatabaseSession *)v2 connection];
  v5 = sub_1002D3F5C(AppUpdateEntity, v4, v3);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032A69C;
  v8[3] = &unk_10051D840;
  v9 = v2;
  v6 = v2;
  [v5 enumeratePersistentIDsUsingBlock:v8];

  return 1;
}

void sub_10032A69C(uint64_t a1, uint64_t a2)
{
  v4 = [AppUpdateEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  [(SQLiteEntity *)v6 setValue:&off_100547FF8 forProperty:@"update_state"];
  v7 = sub_100340328(v6, @"bundle_id");
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting update state to available on startup: %@", &v9, 0xCu);
  }
}

id *sub_10032A860(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = PurchaseHistoryItemsRequest;
    v14 = objc_msgSendSuper2(&v16, "init");
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a4);
      objc_storeWeak(a1 + 6, v11);
      objc_storeStrong(a1 + 3, a5);
    }
  }

  return a1;
}

void sub_10032A93C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4 && *(v4 + 8))
    {
      v5 = [*(a1 + 8) URLForKey:@"purchase-daap/base-url"];
      if (v5 && (v6 = v5, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"databases/%ld/items", [*(a1 + 8) integerForKey:@"purchase-daap/database-id" defaultValue:101]), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "URLByAppendingPathComponent:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
      {
        v9 = 0;
      }

      else
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v37 = objc_opt_class();
          v38 = 2114;
          v39 = 0;
          v33 = v37;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Failed to construct request URL error: %{public}@", buf, 0x16u);
        }

        v9 = sub_1002358D4(2, 0);
        v8 = 0;
      }

      v11 = v9;
      if (!v8)
      {
        v19 = sub_1002358D4(2, v11);
        v3[2](v3, 0, v19);
LABEL_31:

        goto LABEL_32;
      }

      v13 = [PurchaseHistoryItemsDAAPRequestEncoder alloc];
      Property = *(a1 + 16);
      if (Property)
      {
        Property = objc_getProperty(Property, v12, 32, 1);
      }

      v16 = Property;
      v17 = *(a1 + 16);
      if (v17)
      {
        v17 = objc_getProperty(v17, v15, 40, 1);
      }

      v18 = v17;
      v19 = sub_10021FB4C(&v13->super.isa, v16, v18, *(a1 + 24));

      v20 = sub_100363298([DAAPURLRequest alloc], v19, v8);
      v22 = v20;
      if (v20)
      {
        *(v20 + 24) = 1;
      }

      v23 = *(a1 + 16);
      if (v23)
      {
        v23 = objc_getProperty(v23, v21, 16, 1);
      }

      v25 = v23;
      if (v22)
      {
        objc_setProperty_atomic(v22, v24, v25, 32);
      }

      v27 = *(a1 + 16);
      if (v27)
      {
        v28 = v27[1];
        if (!v22)
        {
LABEL_24:
          if (v27)
          {
            v27 = objc_getProperty(v27, v26, 24, 1);
          }

          v30 = v27;
          if (v22)
          {
            objc_setProperty_atomic(v22, v29, v30, 48);
          }

          v31 = *(a1 + 8);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_10032ACD8;
          v34[3] = &unk_10051DCA0;
          v34[4] = a1;
          v35 = v3;
          sub_10036368C(v22, a1, v31, v34);

          goto LABEL_31;
        }
      }

      else
      {
        v28 = 0;
        if (!v22)
        {
          goto LABEL_24;
        }
      }

      v22[5] = v28;
      v27 = *(a1 + 16);
      goto LABEL_24;
    }

    v32 = sub_1002358D4(4, 0);
    v3[2](v3, 0, v32);
  }

LABEL_32:
}

void sub_10032ACD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if ((*(*(a1 + 32) + 44) & 1) != 0 || [v6 code] != 301 || (objc_msgSend(v7, "userInfo"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", AMSErrorUserInfoKeyStatusCode), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "integerValue"), v11, v10, v12 != 401))
    {
      v20 = *(a1 + 40);
      v8 = sub_1002358D4(0, v7);
      (*(v20 + 16))(v20, 0, v8);
      goto LABEL_16;
    }

    *(*(a1 + 32) + 44) = 1;
    v8 = objc_alloc_init(AMSAuthenticateOptions);
    [v8 setAuthenticationType:0];
    v13 = *(*(a1 + 32) + 16);
    if (!v13 || *(v13 + 48) != 1)
    {
      [v8 setAuthenticationType:1];
    }

    v15 = [AMSAuthenticateRequest alloc];
    Property = *(*(a1 + 32) + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v14, 16, 1);
    }

    v17 = Property;
    v18 = [v15 initWithAccount:v17 options:v8];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10032AF28;
    v21[3] = &unk_10051E040;
    v19 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v19;
    sub_100312610(InteractiveRequestPresenter, v18, v21);

LABEL_15:
    goto LABEL_16;
  }

  v8 = [v5 data];
  v9 = *(a1 + 40);
  if (!v8)
  {
    v18 = sub_1002358D4(0, 0);
    (*(v9 + 16))(v9, 0, v18);
    goto LABEL_15;
  }

  (*(v9 + 16))(v9, v8, 0);
LABEL_16:
}

void sub_10032AF28(uint64_t a1, void *a2, void *a3)
{
  v25 = a3;
  v5 = [a2 account];
  v6 = v5;
  if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    Property = *(*(a1 + 32) + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 32, 1);
    }

    v11 = Property;
    v12 = *(*(a1 + 32) + 16);
    if (v12)
    {
      v12 = objc_getProperty(v12, v10, 40, 1);
    }

    v14 = v12;
    v15 = *(*(a1 + 32) + 16);
    if (v15)
    {
      v16 = v15[1];
      v15 = objc_getProperty(v15, v13, 24, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v15;
    v18 = *(*(a1 + 32) + 16);
    if (v18)
    {
      v19 = *(v18 + 48);
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_1002289D8(PurchaseHistoryItemsRequestContext, v11, v14, v16, v6, v17, v19);

    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    *(v21 + 16) = v20;
    v23 = v20;

    sub_10032A93C(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    v24 = *(a1 + 40);
    v23 = sub_1002358D4(4, v25);
    (*(v24 + 16))(v24, 0, v23);
  }
}

void sub_10032B3D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Property = *(*(a1 + 32) + 16);
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 16, 1);
      }

      v15 = Property;
      v16 = [v15 hashedDescription];
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Errored out for auth challenge to:%{public}@ with error:%@", &v17, 0x16u);
    }
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(*(a1 + 32) + 16);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 16, 1);
    }

    v12 = v11;
    v13 = [v12 hashedDescription];
    v17 = 138543362;
    v18 = v13;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received response to authentication challenge for %{public}@", &v17, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}