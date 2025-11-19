uint64_t sub_10010724C(uint64_t a1, void *a2)
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
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 7)
        {
          if (v13 == 8)
          {
            v16 = objc_alloc_init(PDDPEntityMeta);
            objc_storeStrong((a1 + 48), v16);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_1000B408C(v16, a2))
            {
LABEL_48:

              return 0;
            }

LABEL_41:
            PBReaderRecallMark();
LABEL_42:

            goto LABEL_43;
          }

          if (v13 == 10)
          {
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_34;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_34;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_34;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(PDDPDate);
          v17 = 24;
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(PDDPDate);
          v17 = 32;
LABEL_36:
          objc_storeStrong((a1 + v17), v16);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 8;
LABEL_34:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100109204(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v27;
          }

LABEL_52:
          v31 = 28;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        if (v13 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          v31 = 24;
          goto LABEL_53;
        }

        v21 = PBReaderReadString();
        v22 = 16;
      }

      v24 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10010A850(void *a1)
{
  v1 = a1;
  CLSInitLog();
  v2 = CLSLogConnection;
  if (os_log_type_enabled(CLSLogConnection, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, ">>> ClassKit Daemon transaction begin: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = sub_10010A9F8;
  v13 = sub_10010AA08;
  v14 = 0;
  v3 = sub_10010AA10();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010AA64;
  v7[3] = &unk_100205570;
  v8 = v1;
  p_buf = &buf;
  v4 = v1;
  dispatch_sync(v3, v7);

  v5 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v5;
}

uint64_t sub_10010A9F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10010AA10()
{
  if (qword_10024DB38 != -1)
  {
    dispatch_once(&qword_10024DB38, &stru_1002055B0);
  }

  v1 = qword_10024DB30;

  return v1;
}

void sub_10010AA64(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v2 = os_transaction_create();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = sub_10010AAE0();
  [v5 addObject:*(*(*(a1 + 40) + 8) + 40)];
}

id sub_10010AAE0()
{
  if (qword_10024DB48 != -1)
  {
    dispatch_once(&qword_10024DB48, &stru_1002055D0);
  }

  v1 = qword_10024DB40;

  return v1;
}

void sub_10010AB34(void *a1)
{
  v1 = a1;
  CLSInitLog();
  v2 = CLSLogConnection;
  if (v1)
  {
    if (os_log_type_enabled(CLSLogConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "<<< ClassKit Daemon transaction end: %@", buf, 0xCu);
    }

    v3 = sub_10010AA10();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010AC98;
    block[3] = &unk_100202D40;
    v5 = v1;
    dispatch_sync(v3, block);
  }

  else if (os_log_type_enabled(CLSLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Cannot end a nil transaction", buf, 2u);
  }
}

void sub_10010AC98(uint64_t a1)
{
  v2 = sub_10010AAE0();
  if ([v2 containsObject:*(a1 + 32)])
  {
    [v2 removeObject:*(a1 + 32)];
  }

  else
  {
    CLSInitLog();
    v3 = CLSLogConnection;
    if (os_log_type_enabled(CLSLogConnection, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "*** Ending non-existent os_transaction: %@", &v5, 0xCu);
    }
  }
}

id sub_10010AD7C(void *a1, void *a2)
{
  v3 = CLSProgressdBundleIdentifier;
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v7;
  v9 = @".";
  v10 = &stru_100206880;
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v9 = &stru_100206880;
  }

  v11 = [NSString stringWithFormat:@"%@.%@%@%@.%p", v3, v7, v9, v10, v5];

  v12 = [v11 UTF8String];
  return v12;
}

uint64_t sub_10010AE4C()
{
  objc_opt_self();
  result = objc_opt_class();
  if (result)
  {
    v1 = +[UMUserManager sharedManager];
    v2 = [v1 isSharedIPad];

    return v2;
  }

  return result;
}

id sub_10010AE9C()
{
  objc_opt_self();
  if (qword_10024DB28 != -1)
  {
    dispatch_once(&qword_10024DB28, &stru_100205590);
  }

  v0 = qword_10024DB20;

  return v0;
}

void sub_10010AEF4(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = qword_10024DB20;
  qword_10024DB20 = v1;

  if (![qword_10024DB20 length])
  {
    objc_storeStrong(&qword_10024DB20, CLSProgressdBundleIdentifier);
  }
}

uint64_t sub_10010AF7C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (+[CLSUtil isAppleInternalInstall])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 stringForKey:v2];

    if (v4)
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

_DWORD *sub_10010B018(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [NSPropertyListSerialization dataWithPropertyList:a1 format:200 options:0 error:0];
  v2 = [v1 length];
  v3 = malloc_type_calloc(1uLL, v2 + 200, 0x1000040BEF03554uLL);
  *v3 = 1;
  v3[1] = v2;
  memcpy(v3 + 50, [v1 bytes], v2);

  return v3;
}

void sub_10010B0C0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.lock", attr, v2);
  v4 = qword_10024DB30;
  qword_10024DB30 = v3;
}

void sub_10010B160(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10024DB40;
  qword_10024DB40 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10010B23C(id a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && v4)
  {
    v18.receiver = a1;
    v18.super_class = PDDatabase;
    v6 = objc_msgSendSuper2(&v18, "init");
    v7 = v6;
    if (v6)
    {
      v8 = sub_10010AD7C(v6, @"db");
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create(v8, v9);
      v11 = *(v7 + 1);
      *(v7 + 1) = v10;

      dispatch_queue_set_specific(*(v7 + 1), off_10024BDD8, v7, 0);
      objc_storeStrong(v7 + 7, a2);
      v12 = [@"db" stringByAppendingFormat:@"%p", v7];
      v13 = *(v7 + 3);
      *(v7 + 3) = v12;

      *(v7 + 16) = 0;
      *(v7 + 6) = 0;
      v14 = sub_100073110([PDPool alloc], @"db", 2, v7);
      v15 = *(v7 + 4);
      *(v7 + 4) = v14;
    }

    a1 = v7;
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id sub_10010B4D8(uint64_t a1)
{
  if (a1)
  {
    v5 = @"PDDatabaseStatsPathKey";
    v1 = *(a1 + 56);
    v2 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v1 fileSystemRepresentation]);
    v6 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10010B5B8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 lock];
    *(v1 + 16) = 1;
    sub_1000734F4(v1[4]);
    [v1 unlock];
  }
}

id sub_10010B658(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  CLSInitLog();
  v2 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to truncate database", &v11, 2u);
  }

  [v1 currentDB];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[PDDatabase truncate]", "PDDatabase.m", 174, "strongSelf.currentDB == nil");
  }

  [v1 lock];
  sub_1000734F4(v1[4]);
  v3 = sub_1000731E4(v1[4]);
  v4 = v3;
  if (v3)
  {
    [v3 truncate];
    v5 = [v4 totalChangesCount];
    sub_100073330(v1[4], v4);
    v6 = sub_10010B858(v1);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_1000734F4(v1[4]);
  [v1 cleanupAssociatedObjects];
  [v1 unlock];
  v7 = +[NSDate date];
  [v1 _notifyOfDataChange:&__NSArray0__struct changeTime:v7 changedRowCount:v5];

  CLSInitLog();
  v8 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"unsuccessful";
    if (v6)
    {
      v9 = @"successful";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Database truncate %@", &v11, 0xCu);
  }

  return v6;
}

id sub_10010B858(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  [v1 lock];
  v2 = sub_1000731E4(v1[4]);
  v16 = 0;
  v3 = [v2 disableForeignKeys:&v16];
  v4 = v16;
  if (v3)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10010BCA4;
    v14[3] = &unk_100205618;
    v14[4] = v1;
    v5 = v2;
    v15 = v5;
    v6 = [v5 performTransactionWithType:2 error:0 usingBlock:v14];
    sub_100073330(v1[4], v5);
    if ((v6 & 1) == 0)
    {
      CLSInitLog();
      v7 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "migration failed", buf, 2u);
      }
    }

    v13 = v4;
    v8 = [v5 enableForeignKeys:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      CLSInitLog();
      v10 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Failed to turn on foreign_keys support; %{public}@", buf, 0xCu);
      }
    }

    [v1 unlock];
  }

  else
  {
    CLSInitLog();
    v11 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Failed to turn off foreign_keys support; %{public}@", buf, 0xCu);
    }

    [v1 unlock];
    v6 = 0;
    v9 = v4;
  }

  return v6;
}

id sub_10010BCA4(uint64_t a1)
{
  [*(a1 + 32) setCurrentDB:*(a1 + 40)];
  if ([*(a1 + 32) migrate])
  {
    v2 = [*(a1 + 32) performFrameworkMigrationIfNeeded];
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) setCurrentDB:0];
  return v2;
}

id sub_10010BE68(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010BF0C;
    v6[3] = &unk_100205640;
    v7 = v3;
    a1 = [a1 performTransaction:v6 forWriting:0];
  }

  return a1;
}

void sub_10010C3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010C41C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10010C434(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v3 = [*(a1[4] + 40) containsObject:v3];
    v4 = v8;
    if (v3)
    {
      ++*(*(a1[5] + 8) + 24);
      v3 = [*(*(a1[6] + 8) + 40) containsObject:v8];
      v4 = v8;
      if ((v3 & 1) == 0)
      {
        v5 = *(*(a1[6] + 8) + 40);
        v6 = [v8 copy];
        [v5 addObject:v6];

        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10010C4F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  return v3;
}

void sub_10010C538(void *a1, void *a2, int a3)
{
  v10 = a2;
  if (a1)
  {
    v5 = a1;
    [v5 lock];
    v6 = v5[5];
    if (v6)
    {
      v7 = a3 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [v6 setByAddingObjectsFromArray:v10];
    }

    else
    {
      [NSSet setWithArray:v10];
    }
    v8 = ;
    v9 = v5[5];
    v5[5] = v8;

    [v5 unlock];
  }
}

id sub_10010C5DC(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
    [v3 lock];
    v5 = [v3[5] containsObject:v4];

    [v3 unlock];
    return v5;
  }

  return result;
}

void sub_10010C80C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PDDataWrittenNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10010D8E8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  sub_10004B118(a2, 1, v4);

  v5 = *(a1 + 32);

  return sub_10004B118(a2, 2, v5);
}

id sub_10010EA58(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10010EB40;
    v7[3] = &unk_1002031D8;
    v7[4] = a1;
    v8 = v3;
    v9 = v4;
    v5 = v4;
    sub_10010BE68(a1, v7);
    a1 = [v5 copy];
  }

  return a1;
}

void sub_10010EB40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010EC38;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSHandoutRecipient as R join CLSHandoutAttachment as A on R.parentObjectID = A.parentObjectID join CLSSurvey as S on S.parentObjectID = A.objectID join CLSSurveyAnswerItem as SAI on SAI.surveyID = S.objectID and SAI.objectID = ?", 1, v3, v4);
}

void sub_10010EC38(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

void *sub_10010EC9C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010ED88;
    v6[3] = &unk_100203410;
    v6[4] = a1;
    v7 = v3;
    v8 = &v9;
    sub_10010BE68(a1, v6);
    a1 = v10[3];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_10010ED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010ED88(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010EE74;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select CS.state from CLSCollaborationState as CS join CLSHandoutAttachment as HA on HA.parentObjectID = CS.parentObjectID join CLSSurvey as S on S.parentObjectID = HA.objectID join CLSSurveyAnswerItem as SA on SA.surveyID = S.objectID and SA.objectID = ?", 1, v3, v4);
}

void sub_10010EE74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"state");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

uint64_t sub_10010F800(uint64_t a1, void *a2)
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
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v12 >> 3) > 101)
      {
        if (v13 > 300)
        {
          if (v13 <= 302)
          {
            if (v13 == 301)
            {
              v16 = objc_alloc_init(PDDPAsset);
              v17 = 40;
            }

            else
            {
              v16 = objc_alloc_init(PDDPAsset);
              v17 = 120;
            }

            goto LABEL_76;
          }

          if (v13 == 303)
          {
            v16 = objc_alloc_init(PDDPAsset);
            v17 = 16;
            goto LABEL_76;
          }

          if (v13 == 401)
          {
            v16 = objc_alloc_init(PDDPAsset);
            [a1 addInstructionAssets:v16];
            goto LABEL_77;
          }
        }

        else if (v13 > 200)
        {
          if (v13 == 201)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_65;
          }

          if (v13 == 300)
          {
            v16 = objc_alloc_init(PDDPAsset);
            v17 = 32;
LABEL_76:
            objc_storeStrong((a1 + v17), v16);
LABEL_77:
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !sub_100145E58(v16, a2))
            {
              goto LABEL_93;
            }

LABEL_79:
            PBReaderRecallMark();

            goto LABEL_80;
          }
        }

        else
        {
          if (v13 == 102)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 132) |= 2u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v39 & 0x7F) << v21;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_87:
            *(a1 + 24) = v27;
            goto LABEL_80;
          }

          if (v13 == 200)
          {
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_65;
          }
        }
      }

      else if (v13 > 4)
      {
        if (v13 > 99)
        {
          if (v13 == 100)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 132) |= 4u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v39 & 0x7F) << v29;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v35) = 0;
                goto LABEL_89;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_89:
            *(a1 + 128) = v35;
            goto LABEL_80;
          }

          if (v13 == 101)
          {
            *(a1 + 132) |= 1u;
            v39 = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v39;
            goto LABEL_80;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 96;
            goto LABEL_65;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 80;
            goto LABEL_65;
          }
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v16 = objc_alloc_init(PDDPDate);
            v18 = 64;
          }

          else
          {
            v16 = objc_alloc_init(PDDPDate);
            v18 = 72;
          }

          objc_storeStrong((a1 + v18), v16);
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
          {
LABEL_93:

            return 0;
          }

          goto LABEL_79;
        }

        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 104;
          goto LABEL_65;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 112;
LABEL_65:
          v28 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id *sub_1001111CC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PDSchoolworkCollaborationStateChangeManager;
    v8 = objc_msgSendSuper2(&v14, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v9 = objc_opt_new();
      v10 = a1[3];
      a1[3] = v9;

      v11 = objc_opt_new();
      v12 = a1[4];
      a1[4] = v11;
    }
  }

  return a1;
}

void sub_100111334(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 _buildStateChangeForAttachment:v5 ownerPersonID:v6];
    CLSInitLog();
    v8 = CLSLogHandout;
    v9 = os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v9)
      {
        v13 = a1[1];
        v14 = v13;
        v15 = v8;
        v16 = [v5 objectID];
        v19 = 138412802;
        v20 = v13;
        v21 = 2112;
        v22 = v16;
        v23 = 2112;
        v24 = v7;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): attachment: %@ new states: %@", &v19, 0x20u);
      }

      v10 = [a1 pendingStatesChanges];
      [v10 addObject:v7];

      v11 = [a1 _buildEventForAttachment:v5 recipientPersonID:v6];
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = [a1 pendingAttachmentEvents];
      [v12 addObject:v11];
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v17 = a1[1];
      v12 = v17;
      v11 = v8;
      v18 = [v5 objectID];
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): No collab state change required. Skipping attachment: %@", &v19, 0x16u);
    }

LABEL_8:
LABEL_10:
  }
}

id sub_100111548(void *a1)
{
  if (a1)
  {
    a1 = [a1 pendingStatesChanges];
    v1 = vars8;
  }

  return a1;
}

void sub_100111578(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 pendingStatesChanges];
    sub_1000ACA3C(PDSchoolworkCollaborationStateAdaptor, v7, v5);

    if (v5)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * v12);
            v14 = objc_autoreleasePoolPush();
            v15 = [v13 parentObjectID];
            v16 = [v13 ownerPersonID];
            [a1 _saveEventsForHandoutAttachmentID:v15 recipientPersonID:v16];

            objc_autoreleasePoolPop(v14);
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }
  }
}

id *sub_1001123FC(id *a1, void *a2, int a3)
{
  v6 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = PDURLResponse;
    v7 = objc_msgSendSuper2(&v16, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 8, a2);
      *(a1 + 48) = 0;
      a1[9] = 0;
      if (a3)
      {
        v8 = [a1 createResponseFileURL];
        v9 = [a1 createFileHandleForURL:v8];
        v10 = v9;
        if (v8 && v9)
        {
          objc_storeStrong(a1 + 3, v8);
          objc_storeStrong(a1 + 4, v10);
        }
      }

      else
      {
        v11 = a1[3];
        a1[3] = 0;

        v8 = a1[4];
        a1[4] = 0;
      }

      v12 = a1[7];
      a1[7] = 0;

      v13 = a1[10];
      a1[10] = 0;

      v14 = a1[1];
      a1[1] = 0;
    }
  }

  return a1;
}

id *sub_10011250C(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = PDURLResponse;
    v8 = objc_msgSendSuper2(&v19, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 8, a2);
      *(a1 + 48) = 0;
      a1[9] = 0;
      objc_storeStrong(a1 + 5, a3);
      v9 = [a1 createResponseFileURL];
      v10 = [a1 createFileHandleForURL:v9];
      v11 = v10;
      if (v9 && v10)
      {
        objc_storeStrong(a1 + 3, v9);
        v12 = v11;
        v13 = a1[4];
        a1[4] = v12;
      }

      else
      {
        v14 = a1[3];
        a1[3] = 0;

        v13 = a1[4];
        a1[4] = 0;
      }

      v15 = a1[7];
      a1[7] = 0;

      v16 = a1[10];
      a1[10] = 0;

      v17 = a1[1];
      a1[1] = 0;
    }
  }

  return a1;
}

void *sub_1001126F0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[8];
    result[8] = 0;

    v3 = v1[7];
    v1[7] = 0;

    v4 = v1[10];
    v1[10] = 0;

    v5 = v1[1];
    v1[1] = 0;

    return [v1 cleanupFileResources];
  }

  return result;
}

uint64_t sub_10011275C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_26;
  }

  a1[9] += [v5 length];
  v7 = a1[4];
  if (!v7)
  {
    v15 = a1[1];
    if (!v15)
    {
      v16 = objc_opt_new();
      v17 = a1[1];
      a1[1] = v16;

      v15 = a1[1];
    }

    [v15 appendData:v6];
    goto LABEL_13;
  }

  v32 = 0;
  [v7 writeData:v6 error:&v32];
  v8 = v32;
  if (!v8)
  {
LABEL_13:
    v14 = a1[5];
    if (!v14)
    {
      goto LABEL_22;
    }

    v12 = 1;
LABEL_15:
    v31 = 0;
    [v14 writeData:v6 error:&v31];
    v18 = v31;
    if (v18)
    {
      v19 = v18;
      if (a3)
      {
        v20 = v18;
        *a3 = v19;
      }

      CLSInitLog();
      v21 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[8];
        *buf = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v19;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ PDURLResponse appendData returnFileHandle: writeData error:%{public}@", buf, 0x16u);
      }

      goto LABEL_26;
    }

    if (v12)
    {
LABEL_22:
      v22 = +[PDUserDefaults sharedDefaults];
      v23 = [v22 enableVerboseLogging];

      if (v23)
      {
        CLSInitLog();
        v24 = CLSLogOperations;
        if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
        {
          v28 = a1[8];
          v29 = v24;
          v30 = [v6 length];
          *buf = 138543618;
          v34 = v28;
          v35 = 2048;
          v36 = v30;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}@ PDURLResponse appended %ld bytes", buf, 0x16u);
        }
      }

      v13 = 1;
      goto LABEL_27;
    }

LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  v9 = v8;
  if (a3)
  {
    v10 = v8;
    *a3 = v9;
  }

  CLSInitLog();
  v11 = CLSLogOperations;
  if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
  {
    v26 = a1[8];
    *buf = 138543618;
    v34 = v26;
    v35 = 2114;
    v36 = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ PDURLResponse appendData: writeData error:%{public}@", buf, 0x16u);
  }

  v12 = 0;
  v13 = 0;
  v14 = a1[5];
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_27:

  return v13;
}

uint64_t sub_100112A30(uint64_t result, void *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = 1;
  *(result + 48) = 1;
  v5 = objc_autoreleasePoolPush();
  v6 = *(v3 + 32);
  if (v6)
  {
    v13 = 0;
    v4 = [v6 closeAndReturnError:&v13];
    v7 = v13;
    if (v7)
    {
      CLSInitLog();
      v8 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
      {
        v12 = *(v3 + 64);
        *buf = 138543618;
        v16 = v12;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ PDURLResponse didCompleteWithError: error:%{public}@", buf, 0x16u);
        if (a2)
        {
          goto LABEL_6;
        }
      }

      else if (a2)
      {
LABEL_6:
        v9 = v7;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v10 = *(v3 + 32);
      *(v3 + 32) = 0;
    }

    v9 = 0;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v5);
  if (a2)
  {
    v11 = v9;
    *a2 = v9;
  }

  v14 = v4;

  return v14;
}

uint64_t sub_100112B90(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_9;
  }

  v5 = a1[7];
  v10 = v4;
  if (v5)
  {
    v6 = [v5 statusCode];
    v4 = v10;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6 = -1;
  if (v4)
  {
LABEL_4:
    v4[12] = v6;
    v4[11] = a1[9];
  }

LABEL_5:
  v3 = a1[10];
  if (v3)
  {
    v7 = [v3 taskInterval];
    [v7 duration];
    if (v10)
    {
      v10[8] = v8;
    }

    v4 = v10;
  }

LABEL_9:

  return _objc_release_x1(v3, v4);
}

char *sub_100112C30(char *a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1[48] != 1)
    {
      a1 = 0;
      goto LABEL_16;
    }

    if (*(a1 + 3))
    {
      v3 = (a1 + 16);
      v2 = *(a1 + 2);
      if (v2)
      {
LABEL_15:
        a1 = v2;
        goto LABEL_16;
      }

      v17 = 0;
      v4 = [NSData dataWithContentsOfURL:"dataWithContentsOfURL:options:error:" options:? error:?];
      v5 = v17;
      v6 = *v3;
      *v3 = v4;

      if (v5)
      {
        CLSInitLog();
        v7 = CLSLogOperations;
        if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
        {
          v8 = *(v1 + 8);
          *buf = 138543618;
          v19 = v8;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ responseData fileMappingError:%{public}@", buf, 0x16u);
        }
      }

      else
      {
        v9 = +[PDUserDefaults sharedDefaults];
        v10 = [v9 enableVerboseLogging];

        if (v10)
        {
          CLSInitLog();
          v11 = CLSLogOperations;
          if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(v1 + 8);
            v14 = *(v1 + 3);
            v15 = v11;
            v16 = [v14 path];
            *buf = 138543618;
            v19 = v13;
            v20 = 2114;
            v21 = v16;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@ responseData filePath:%{public}@", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      v3 = (a1 + 8);
    }

    v2 = *v3;
    goto LABEL_15;
  }

LABEL_16:

  return a1;
}

void *sub_100112E38(void *a1)
{
  if (a1)
  {
    a1 = a1[7];
    if (a1)
    {
      a1 = [a1 allHeaderFields];
      v1 = vars8;
    }
  }

  return a1;
}

id sub_100112E70(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_100112E38(a1);
    v5 = v4;
    if (v4)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v4 allKeys];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            if (!(v3 | v10))
            {
              v10 = 0;
LABEL_17:
              v7 = [v5 objectForKeyedSubscript:v10];
              goto LABEL_18;
            }

            if (v3 && v10 && ![v3 caseInsensitiveCompare:*(*(&v12 + 1) + 8 * i)])
            {
              goto LABEL_17;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100113FB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100113FD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  CLSInitLog();
  if (WeakRetained)
  {
    v3 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received account changed notification", v5, 2u);
    }

    [*(a1 + 32) resetTriggers];
  }

  else
  {
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDUserNotificationManager instance was released during registerForAccountChangedDarwinNotification", buf, 2u);
    }
  }
}

void sub_100114410(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    CLSInitLog();
    v3 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 description];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error with user notification. Error: %@", &v6, 0xCu);
    }
  }
}

uint64_t sub_100114D48(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
          v21 = objc_alloc_init(PDDPPrivilege);
          [a1 addPrivileges:v21];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !sub_1000CE300(v21, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(PDDPEntityMeta);
          objc_storeStrong((a1 + 8), v21);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !sub_1000B408C(v21, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 24);
          *(a1 + 24) = v22;

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v26 & 0x7F) << v14;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_43;
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

LABEL_43:
          *(a1 + 32) = v20;
          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100116240(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(PDDPSearchQuery);
        [a1 addContents:v21];
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !sub_100116240(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(PDDPSearchCriteria);
    objc_storeStrong((a1 + 16), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !sub_100120184(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100116EA4(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PDDPDate);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  sub_10006A124();
  v1 = [[PDDaemon alloc] initWithMachServiceName:@"com.apple.progressd"];
  [(PDDaemon *)v1 start];
  objc_autoreleasePoolPop(v0);
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];

  return 0;
}

uint64_t sub_100118928(uint64_t a1, void *a2)
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
        LOBYTE(v46) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v28 = PBReaderReadString();
            v29 = 16;
            goto LABEL_56;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            v29 = 24;
LABEL_56:
            v30 = *(a1 + v29);
            *(a1 + v29) = v28;

            goto LABEL_92;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 60) |= 8u;
              while (1)
              {
                LOBYTE(v46) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v46 & 0x7F) << v31;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_84;
                }
              }

              v20 = (v33 != 0) & ~[a2 hasError];
LABEL_84:
              v43 = 59;
              goto LABEL_91;
            case 9:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 60) |= 4u;
              while (1)
              {
                LOBYTE(v46) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v46 & 0x7F) << v37;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_90;
                }
              }

              v20 = (v39 != 0) & ~[a2 hasError];
LABEL_90:
              v43 = 58;
              goto LABEL_91;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 60) |= 1u;
              while (1)
              {
                LOBYTE(v46) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v46 & 0x7F) << v21;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_88;
                }
              }

              v20 = (v23 != 0) & ~[a2 hasError];
LABEL_88:
              v43 = 56;
              goto LABEL_91;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v27 = objc_alloc_init(PDDPUserInfo);
          objc_storeStrong((a1 + 48), v27);
          v46 = 0;
          v47 = 0;
          if (!PBReaderPlaceMark() || !sub_1000A6D88(v27, a2))
          {
LABEL_94:

            return 0;
          }

          goto LABEL_71;
        }

        if (v13 == 2)
        {
          v27 = objc_alloc_init(PDDPPrivilege);
          [a1 addPrivileges:v27];
          v46 = 0;
          v47 = 0;
          if (!PBReaderPlaceMark() || !sub_1000CE300(v27, a2))
          {
            goto LABEL_94;
          }

          goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v27 = objc_alloc_init(PDDPRole);
            [a1 addRoles:v27];
            v46 = 0;
            v47 = 0;
            if (!PBReaderPlaceMark() || !sub_100114D48(v27, a2))
            {
              goto LABEL_94;
            }

            goto LABEL_71;
          case 4:
            v27 = objc_alloc_init(PDDPLocation);
            [a1 addLocations:v27];
            v46 = 0;
            v47 = 0;
            if (!PBReaderPlaceMark() || !sub_100156484(v27, a2))
            {
              goto LABEL_94;
            }

LABEL_71:
            PBReaderRecallMark();

            goto LABEL_92;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v46) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_86;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_86:
            v43 = 57;
LABEL_91:
            *(a1 + v43) = v20;
            goto LABEL_92;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_92:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10011A690(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v42 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v42 & 0x7F) << v30;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_64;
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

LABEL_64:
          *(a1 + 8) = v36;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_65;
          }

          v21 = PBReaderReadString();
          v22 = *(a1 + 24);
          *(a1 + 24) = v21;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v41 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v41 & 0x7F) << v24;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v26;
          }

LABEL_59:
          v37 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v40 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v40 & 0x7F) << v14;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_55;
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

LABEL_55:
          v37 = 32;
        }

        *(a1 + v37) = v20;
      }

LABEL_65:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10011B0F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = objc_opt_class();
    v79 = a1;
    v10 = [a1 parentObjectID];
    v105 = v10;
    v11 = [NSArray arrayWithObjects:&v105 count:1];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10011B9D8;
    v98[3] = &unk_1002057F8;
    v12 = v8;
    v99 = v12;
    [v5 selectAll:v9 where:@"parentObjectID = ?" bindings:v11 block:v98];

    v13 = objc_opt_new();
    if ([v12 count])
    {
      v14 = [PDDatabase whereSQLForArray:v12 prefix:@"parentObjectID in "];
      v15 = objc_opt_class();
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_10011BA30;
      v95[3] = &unk_100205820;
      v97 = v6;
      v96 = v13;
      [v5 selectAll:v15 where:v14 bindings:v12 block:v95];
    }

    v72 = v13;
    v73 = v12;
    [v7 setTime:v13];
    v16 = objc_opt_new();
    v17 = objc_opt_class();
    v18 = [v79 objectID];
    v104 = v18;
    v19 = [NSArray arrayWithObjects:&v104 count:1];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_10011BAD4;
    v92[3] = &unk_100205848;
    v76 = v6;
    v94 = v76;
    v20 = v16;
    v93 = v20;
    [v5 selectAll:v17 where:@"parentObjectID = ?" bindings:v19 block:v92];

    v21 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v22 = [CLSRange compressOverlappingRanges:v20];
    v23 = [v22 countByEnumeratingWithState:&v88 objects:v103 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v89;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v89 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v88 + 1) + 8 * i) delta];
          v28 = v27;
          [v21 value];
          [v21 setValue:v28 + v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v88 objects:v103 count:16];
      }

      while (v24);
    }

    [v21 setTotalSampleCount:{objc_msgSend(v20, "count")}];
    [v7 setProgress:v21];
    v30 = objc_opt_class();
    v31 = v79;
    v32 = [v79 parentObjectID];
    v33 = [v5 select:v30 identity:v32];

    v78 = v5;
    v74 = v6;
    v75 = v7;
    if (v33)
    {
      [v7 setContextType:{objc_msgSend(v33, "type", v33, v21, v20)}];
      v34 = [v33 topic];
      [v7 setContextTopic:v34];

      v35 = [v33 title];
      [v7 setContextTitle:v35];

      v36 = [v33 appIdentifier];
      [v7 setContextAppBundleIdentifier:v36];

      v37 = [v33 objectID];
      [v7 setContextID:v37];

      v38 = [v33 stableObjectID];
      [v7 setContextStableObjectID:v38];

      v39 = [v33 stableObjectID];
      [v7 setHandoutAuthorizedObjectID:v39];

      [v7 setHandoutAttachmentType:1];
    }

    else
    {
      v40 = objc_opt_class();
      v41 = [v79 parentObjectID];
      v42 = [v5 select:v40 identity:v41];

      v43 = [v42 objectID];
      [v7 setHandoutAuthorizedObjectID:v43];

      [v7 setHandoutAttachmentType:{objc_msgSend(v42, "type")}];
    }

    v44 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v45 = 0;
    v102[2] = objc_opt_class();
    do
    {
      v46 = v102[v45];
      v47 = [v31 objectID];
      v101 = v47;
      v48 = [NSArray arrayWithObjects:&v101 count:1];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_10011BB44;
      v85[3] = &unk_100205870;
      v87 = v76;
      v49 = v44;
      v86 = v49;
      [v5 selectAll:v46 where:@"parentObjectID = ?" bindings:v48 block:v85];

      v31 = v79;
      ++v45;
    }

    while (v45 != 3);
    v50 = [v79 primaryActivityItemIdentifier];
    if (v50)
    {
      v51 = [v49 objectForKey:v50];
      v52 = [v51 generateReportFromDataInDatabase:v5];
      [v75 setPrimaryReportItem:v52];

      [v49 removeObjectForKey:v51];
    }

    v77 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v53 = v49;
    v54 = [v53 countByEnumeratingWithState:&v81 objects:v100 count:16];
    v80 = v50;
    if (v54)
    {
      v55 = v54;
      v56 = *v82;
      do
      {
        for (j = 0; j != v55; j = j + 1)
        {
          if (*v82 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v81 + 1) + 8 * j);
          v59 = objc_autoreleasePoolPush();
          v60 = [v53 objectForKey:v58];
          v61 = [v60 identifier];
          if (v50 | v61)
          {
            v62 = v61;
            v63 = [v60 identifier];
            v64 = v63;
            if (!v50 || !v63)
            {

LABEL_29:
              v67 = [v60 generateReportFromDataInDatabase:v78];
              [v77 addObject:v67];

              v50 = v80;
              goto LABEL_30;
            }

            v65 = [v60 identifier];
            v66 = [v65 isEqualToString:v80];

            v50 = v80;
            if ((v66 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_30:

          objc_autoreleasePoolPop(v59);
        }

        v55 = [v53 countByEnumeratingWithState:&v81 objects:v100 count:16];
      }

      while (v55);
    }

    a1 = v75;
    if ([v77 count])
    {
      [v75 setAdditionalReportItems:v77];
    }

    v5 = v78;
    v6 = v74;
  }

  return a1;
}

void sub_10011B9D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

id sub_10011BA30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v6 = *(a1 + 32);
  [v5 length];
  v8 = v7;

  [v6 value];
  [v6 setValue:v8 + v9];
  v10 = *(a1 + 32);
  v11 = [v10 totalSampleCount] + 1;

  return [v10 setTotalSampleCount:v11];
}

void sub_10011BAD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) addObject:v5];
}

void sub_10011BB44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  [v6 setObject:v5 forKey:v7];
}

void sub_10011CCF8(id a1)
{
  v1 = NSStringFromSelector("isFinished");
  v2 = qword_10024DB50;
  qword_10024DB50 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10011D2D0(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PDDPTypedValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !sub_100154054(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id sub_10011E700(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10011E7CC;
    v8[3] = &unk_1002038B0;
    v9 = v5;
    v10 = a1;
    v11 = v6;
    a1 = [a1 performTransaction:v8 forWriting:1];
  }

  return a1;
}

uint64_t sub_10011E7CC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = +[PDPersonRoleLocation entityName];
  v5 = [*(a1 + 32) identityValue];
  v28 = v5;
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  LOBYTE(v3) = sub_1000B9714(v3, v4, @"personID = ?", v6);

  if ((v3 & 1) == 0)
  {
    CLSInitLog();
    v12 = CLSLogDatabase;
    if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    v14 = v12;
    v15 = [v13 identityValue];
    *buf = 138543362;
    v27 = v15;
    v16 = "Failed to delete PDPersonRoleLocations for Person with objectID: %{public}@.";
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);

    goto LABEL_12;
  }

  if (*(a1 + 48))
  {
    [v2 addObjectsFromArray:?];
  }

  if (([*(a1 + 40) insertOrUpdateObjects:v2] & 1) == 0)
  {
    CLSInitLog();
    v17 = CLSLogDatabase;
    if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = *(a1 + 32);
    v14 = v17;
    v15 = [v23 identityValue];
    *buf = 138543362;
    v27 = v15;
    v16 = "Failed to save Person and PersonRoleLocations for Person with objectID: %{public}@.";
    goto LABEL_16;
  }

  v7 = *(a1 + 40);
  v8 = objc_opt_class();
  v9 = [*(a1 + 32) objectID];
  v25 = v9;
  v10 = [NSArray arrayWithObjects:&v25 count:1];
  LODWORD(v7) = [v7 deleteAll:v8 where:@"entityID = ?" bindings:v10];

  if (!v7)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if ([*(a1 + 32) isProgressTrackingAllowed] && (sub_100071750(*(a1 + 40)) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = objc_opt_class();
    v21 = [*(a1 + 32) objectID];
    v24 = v21;
    v22 = [NSArray arrayWithObjects:&v24 count:1];
    v11 = [v19 deleteAll:v20 where:@"studentID = ?" bindings:v22];
  }

LABEL_13:

  return v11;
}

uint64_t sub_10011EEF8(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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

      switch(v13)
      {
        case 3:
          v21 = PBReaderReadData();
          v22 = 8;
LABEL_44:
          v29 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_52;
        case 4:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v35 & 0x7F) << v23;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_48;
            }
          }

          v20 = (v25 != 0) & ~[a2 hasError];
LABEL_48:
          v31 = 33;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_50;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_50:
          v31 = 32;
          break;
        default:
          goto LABEL_45;
      }

      *(a1 + v31) = v20;
LABEL_52:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 24;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_45:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_52;
      }

      v21 = PBReaderReadString();
      v22 = 16;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100120184(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v33[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33[0] & 0x7F) << v21;
            if ((v33[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_53:
          v30 = 8;
          goto LABEL_54;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v29 = objc_alloc_init(PDDPTypedValue);
      objc_storeStrong((a1 + 32), v29);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100154054(v29, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v27 = PBReaderReadString();
      v28 = *(a1 + 16);
      *(a1 + 16) = v27;

      goto LABEL_55;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_49;
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

LABEL_49:
      v30 = 24;
LABEL_54:
      *(a1 + v30) = v20;
      goto LABEL_55;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

id sub_100120F3C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_new();
    v5 = objc_opt_class();
    v11 = v3;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100121090;
    v9[3] = &unk_1002047F8;
    v10 = v4;
    v7 = v4;
    [v2 selectAll:v5 where:@"parentObjectID = ?" bindings:v6 block:v9];

    v2 = [v7 copy];
  }

  return v2;
}

id sub_10012109C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v2 = [v2 select:objc_opt_class() identity:v3];
  }

  return v2;
}

id sub_100121110()
{
  objc_opt_self();

  return +[PDURLRequestOperation reset];
}

id sub_100121140(id result)
{
  if (result)
  {
    v1 = result;
    [result setInvalidated:1];
    [v1 stopListeningToPushNotifications];
    sub_10012119C(v1);
    [*(v1 + 8) cancelAllOperations];
    v2 = *(v1 + 16);

    return [v2 cancelAllOperations];
  }

  return result;
}

void sub_10012119C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10006DCEC();
    sub_10006DEB8(v1, @"com.apple.progressd.fetch");

    v2 = sub_10006DCEC();
    sub_10006DEB8(v2, @"com.apple.progressd.pruneIDs");
  }
}

id *sub_1001212BC(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = PDOperationsManager;
    v4 = objc_msgSendSuper2(&v17, "init");
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 11, v3);
      v5 = a1[3];
      a1[3] = 0;

      v6 = objc_alloc_init(NSOperationQueue);
      v7 = a1[1];
      a1[1] = v6;

      [a1[1] setQualityOfService:25];
      [a1[1] setMaxConcurrentOperationCount:1];
      v8 = sub_1001214FC();
      [a1[1] setUnderlyingQueue:v8];

      v9 = [NSString stringWithUTF8String:sub_10010AD7C(a1, @"sync")];
      [a1[1] setName:v9];

      [a1[1] addObserver:a1 forKeyPath:@"operationCount" options:0 context:&off_10024BFC0];
      v10 = objc_alloc_init(NSOperationQueue);
      v11 = a1[2];
      a1[2] = v10;

      [a1[2] setQualityOfService:33];
      [a1[2] setMaxConcurrentOperationCount:1];
      if (qword_10024DB78 != -1)
      {
        dispatch_once(&qword_10024DB78, &stru_100205BD0);
      }

      [a1[2] setUnderlyingQueue:qword_10024DB70];
      v12 = [NSString stringWithUTF8String:sub_10010AD7C(a1, @"interactive")];
      [a1[2] setName:v12];

      [a1[2] addObserver:a1 forKeyPath:@"operationCount" options:0 context:&off_10024BFC8];
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:a1 selector:"databaseDataChanged:" name:@"PDSyncableDataWrittenNotification" object:v3];
      v14 = sub_1000B065C([PDRing alloc], 20);
      v15 = a1[12];
      a1[12] = v14;
    }
  }

  return a1;
}

id sub_1001214FC()
{
  if (qword_10024DB68 != -1)
  {
    dispatch_once(&qword_10024DB68, &stru_100205BB0);
  }

  v1 = qword_10024DB60;

  return v1;
}

void sub_100121684(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (sub_100121714(a1))
    {
      [a1 registerCloudContainer];
      [a1 registerForLockStateChangedDarwinNotification];
      [a1 registerPushTopics];
    }

    [a1 registerPeriodicTasksOnQueue:v3];
    if (sub_100121714(a1))
    {
      sub_10012175C(a1, 0);
    }
  }
}

BOOL sub_100121714(_BOOL8 result)
{
  if (result)
  {
    v1 = sub_10003E1B4();
    v2 = sub_10004054C(v1);

    return v2;
  }

  return result;
}

void sub_10012175C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (sub_100121714(a1))
    {
      v4 = a1;
      objc_sync_enter(v4);
      if (!v4[8])
      {
        objc_initWeak(&location, v4);
        v5 = [PDRetry alloc];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100122CA4;
        v12[3] = &unk_100205948;
        objc_copyWeak(&v13, &location);
        v6 = sub_100046408(v5, @"fetchRemoteChanges", 6, v12);
        v7 = v4[8];
        v4[8] = v6;

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      objc_sync_exit(v4);

      objc_initWeak(&location, v4);
      v8 = v4[8];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100123070;
      v9[3] = &unk_100205A10;
      v10 = v3;
      objc_copyWeak(&v11, &location);
      sub_10004656C(v8, v9);
      objc_destroyWeak(&v11);

      objc_destroyWeak(&location);
    }

    else if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_100121914(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100121C2C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 operationError];
  if ([v4 isAborted] && !v3)
  {
    v3 = [NSError cls_createErrorWithCode:101 format:@"operation %@ aborted", v4];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100121CCC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (sub_100121714(a1))
    {
      v4 = a1;
      objc_sync_enter(v4);
      if (!v4[6])
      {
        objc_initWeak(&location, v4);
        v5 = [PDRetry alloc];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100121E88;
        v11[3] = &unk_100205948;
        objc_copyWeak(&v12, &location);
        v6 = sub_100046408(v5, @"bootstrap", 1, v11);
        v7 = v4[6];
        v4[6] = v6;

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      objc_sync_exit(v4);

      v8 = v4[6];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10012258C;
      v9[3] = &unk_100203320;
      v10 = v3;
      sub_10004656C(v8, v9);
    }

    else if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_100121E5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100121E88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ![WeakRetained isInvalidated])
  {
    v6 = objc_loadWeakRetained(v5 + 11);
    v7 = [(PDURLRequestOperation *)[PDASMBootstrapOperation alloc] initWithDatabase:v6];
    [(PDASMBootstrapOperation *)v7 setQualityOfService:25];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = sub_1001221D4;
    v35[4] = sub_1001221E4;
    v36 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1001221D4;
    v29[4] = sub_1001221E4;
    v30 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001221EC;
    v21[3] = &unk_100205920;
    v23 = v39;
    v24 = v37;
    v25 = v35;
    v26 = v31;
    v27 = v33;
    v28 = v29;
    v8 = v3;
    v22 = v8;
    [(PDOperation *)v7 addOnFinishBlock:v21];
    v9 = [(PDURLRequestOperation *)[PDOrionBootstrapOperation alloc] initWithDatabase:v6];
    [(PDOrionBootstrapOperation *)v9 setQualityOfService:25];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1001223BC;
    v13 = &unk_100205920;
    v15 = v31;
    v16 = v33;
    v17 = v29;
    v18 = v39;
    v19 = v37;
    v20 = v35;
    v14 = v8;
    [(PDOperation *)v9 addOnFinishBlock:&v10];
    [v5 addOperation:{v7, v10, v11, v12, v13}];
    [v5 addOperation:v9];

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v39, 8);
  }

  else
  {
    (*(v3 + 2))(v3, 1, 0);
  }
}

void sub_10012217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Block_object_dispose((v37 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001221D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001221EC(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 24) = 1;
  v3 = a2;
  *(*(a1[6] + 8) + 24) = [v3 isAborted] ^ 1;
  v4 = [v3 operationError];

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[8] + 8) + 24) == 1)
  {
    CLSInitLog();
    v7 = CLSLogSetup;
    if (os_log_type_enabled(CLSLogSetup, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1[6] + 8) + 24);
      v11 = *(*(a1[9] + 8) + 24);
      v12 = *(*(a1[7] + 8) + 40);
      v13 = *(*(a1[10] + 8) + 40);
      v14[0] = 67109890;
      v14[1] = v10;
      v15 = 1024;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "DualBootstrap complete (ASM): asmDone: %d, orionDone: %d asmErr: %{public}@, orionErr: %{public}@ ", v14, 0x22u);
    }

    if (*(*(a1[6] + 8) + 24) == 1)
    {
      v8 = *(*(a1[9] + 8) + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(*(a1[7] + 8) + 40);
    if (!v9)
    {
      v9 = *(*(a1[10] + 8) + 40);
    }

    (*(a1[4] + 16))(a1[4], v8 & 1, v9);
  }
}

void sub_1001223BC(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 24) = 1;
  v3 = a2;
  *(*(a1[6] + 8) + 24) = [v3 isAborted] ^ 1;
  v4 = [v3 operationError];

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(a1[8] + 8) + 24) == 1 && *(*(a1[5] + 8) + 24) == 1)
  {
    CLSInitLog();
    v7 = CLSLogSetup;
    if (os_log_type_enabled(CLSLogSetup, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1[9] + 8) + 24);
      v11 = *(*(a1[6] + 8) + 24);
      v12 = *(*(a1[10] + 8) + 40);
      v13 = *(*(a1[7] + 8) + 40);
      v14[0] = 67109890;
      v14[1] = v10;
      v15 = 1024;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "DualBootstrap complete (Orion): asmDone: %d, orionDone: %d asmErr: %{public}@, orionErr: %{public}@ ", v14, 0x22u);
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v8 = *(*(a1[6] + 8) + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(*(a1[10] + 8) + 40);
    if (!v9)
    {
      v9 = *(*(a1[7] + 8) + 40);
    }

    (*(a1[4] + 16))(a1[4], v8 & 1, v9);
  }
}

uint64_t sub_10012258C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_10012269C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1001226B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_8;
    }

    v7 = v3;
    v4 = (*(v4 + 16))();
  }

  else
  {
    v7 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  v3 = v7;
LABEL_8:

  return _objc_release_x1(v4, v3);
}

void sub_100122748(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (sub_100121714(a1))
    {
      v4 = a1;
      objc_sync_enter(v4);
      if (!v4[7])
      {
        objc_initWeak(&location, v4);
        v5 = [PDRetry alloc];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100122908;
        v11[3] = &unk_1002059C0;
        objc_copyWeak(&v12, &location);
        v11[4] = v4;
        v6 = sub_100046408(v5, @"pushLocalChanges", 6, v11);
        v7 = v4[7];
        v4[7] = v6;

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      objc_sync_exit(v4);

      v8 = v4[7];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100122C88;
      v9[3] = &unk_100203320;
      v10 = v3;
      sub_10004656C(v8, v9);
    }

    else if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1001228DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 56));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100122908(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && ![WeakRetained isInvalidated])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100122A40;
    v8[3] = &unk_100202970;
    v9 = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100122A58;
    v6[3] = &unk_100205998;
    v6[4] = *(a1 + 32);
    v7 = v9;
    [v5 afterBootstrapWithErrorCompletion:v8 doBlock:v6];
  }

  else
  {
    (*(v3 + 2))(v3, 1, 0);
  }
}

void sub_100122A58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 issueCKBootstrapWithDependency:0];
  v5 = [v3 issuePushToCKWithDependency:v4];
  v6 = [v3 isEDUMAID];
  v7 = v5;
  if (v6)
  {
    v8 = [v3 issueIngestWithDependency:v5];
    v9 = [v3 issuePushClassChangesWithDependency:v8];

    v10 = *(a1 + 32);
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 88));
    }

    else
    {
      WeakRetained = 0;
    }

    v12 = [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:WeakRetained];

    v7 = v9;
    if (v12)
    {
      v7 = [v3 issueUploadEventsWithDependency:v9];
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100122C08;
  v14[3] = &unk_1002058F8;
  v15 = *(a1 + 40);
  [v7 addOnFinishBlock:v14];
  if (v6)
  {
    v13 = [v3 issueRegisterWithDependency:0];
  }
}

void sub_100122C08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isAborted];
  v5 = [v3 operationError];

  (*(v2 + 16))(v2, v4 ^ 1, v5);
}

uint64_t sub_100122C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_100122CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ![WeakRetained isInvalidated])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100122DCC;
    v8[3] = &unk_100202970;
    v9 = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100122DE4;
    v6[3] = &unk_1002059E8;
    v7 = v9;
    [v5 afterBootstrapWithErrorCompletion:v8 doBlock:v6];
  }

  else
  {
    (*(v3 + 2))(v3, 1, 0);
  }
}

void sub_100122DE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 issueCKBootstrapWithDependency:0];
  v5 = [v3 issuePushToCKWithDependency:v4];
  v6 = [v3 isEDUMAID];
  v7 = v5;
  if (v6)
  {
    v8 = [v3 issueIngestWithDependency:v5];
    v9 = [v3 issueUploadEventsWithDependency:v8];
    v7 = [v3 issuePushClassChangesWithDependency:v9];
  }

  v10 = [v3 issueASMSyncWithDependency:v7];

  v11 = v10;
  if (v6)
  {
    v11 = [v3 issueFetchHandoutChangesWithDependency:v10];
  }

  v12 = [v3 issueASMFetchMissingWithDependency:v11];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(v3 + 11);
  }

  else
  {
    WeakRetained = 0;
  }

  v14 = sub_100169FD0(WeakRetained, @"initialASMSyncComplete");

  v15 = v12;
  if ((v14 & 1) == 0)
  {
    v15 = [v3 issueASMSyncWithDependency:v12];
  }

  v16 = [v3 issueFetchFromCKWithDependency:v15];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100122FF0;
  v17[3] = &unk_1002058F8;
  v18 = *(a1 + 32);
  [v16 addOnFinishBlock:v17];
}

void sub_100122FF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isAborted];
  v5 = [v3 operationError];

  (*(v2 + 16))(v2, v4 ^ 1, v5);
}

void sub_100123070(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 11);
    sub_10012F1EC(v8);
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDOperationsManager instance was released during fetchRemoteChanges", v10, 2u);
    }
  }
}

void sub_100123138(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1;
    objc_sync_enter(v7);
    v8 = [PDFetchReportsOperation alloc];
    WeakRetained = objc_loadWeakRetained(v7 + 11);
    v10 = sub_10008ED10(v8, v5, WeakRetained);

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100123260;
    v11[3] = &unk_1002058F8;
    v12 = v6;
    [v10 addOnFinishBlock:v11];
    sub_1001232E0(v7, v10);

    objc_sync_exit(v7);
  }
}

void sub_100123260(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isAborted];
  v5 = [v3 operationError];

  (*(v2 + 16))(v2, v4 ^ 1, v5);
}

void sub_1001232E0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100123B8C;
    v7[3] = &unk_100202998;
    v8 = v3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100123B98;
    v5[3] = &unk_100205A38;
    v6 = v8;
    [a1 afterBootstrapWithErrorCompletion:v7 doBlock:v5];
  }
}

void sub_100123A84(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100123B74;
    v7[3] = &unk_100202998;
    v8 = v3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100123B80;
    v5[3] = &unk_100205A38;
    v6 = v8;
    [a1 afterBootstrapWithErrorCompletion:v7 doBlock:v5];
  }
}

void sub_100123E7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100123E98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001214FC();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100123F5C;
  v6[3] = &unk_1002029C0;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

uint64_t sub_100123F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    WeakRetained = [WeakRetained isInvalidated];
    v3 = v8;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [*(a1 + 32) operationError];
      if (v4 || ([*(a1 + 32) isAborted] & 1) != 0)
      {

LABEL_6:
        v5 = [*(a1 + 32) statusReport];
        v6 = [v8 ring];
        sub_1000B072C(v6, v5);

        v3 = v8;
        goto LABEL_7;
      }

      WeakRetained = [*(a1 + 32) isCancelled];
      v3 = v8;
      if (WeakRetained)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:

  return _objc_release_x1(WeakRetained, v3);
}

void sub_1001247AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_sync_exit(v1);
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1001247D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ![WeakRetained isInvalidated])
  {
    CLSInitLog();
    v6 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "trying to fetch iCloudUserID", buf, 2u);
    }

    v7 = +[NSDate date];
    v8 = [v5 cloudContainer];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10012496C;
    v10[3] = &unk_100205A88;
    v9 = v7;
    v11 = v9;
    objc_copyWeak(&v13, (a1 + 32));
    v12 = v3;
    [v8 fetchUserRecordIDWithCompletionHandler:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    (*(v3 + 2))(v3, 1, 0);
  }
}

void sub_10012496C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  CLSInitLog();
  v7 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
  {
    v13 = v7;
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 32)];
    v16 = 134217984;
    v17 = v15;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "iCloudUserID fetch took: %.2f", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = objc_loadWeakRetained(WeakRetained + 11);
      v11 = [v5 recordName];
      sub_10016A3F0(v10, v11, @"PDCK_iCloudUserID");
    }

    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    v12 = *(*(a1 + 40) + 16);
  }

  v12();
}

void sub_100124AF8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    CLSInitLog();
    v6 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "loading iCloudUserID failed: %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v9[80] = 0;
    objc_sync_exit(v9);

    if (a2)
    {
      sub_100122748(v9, 0);
    }
  }
}

void sub_100124EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 40));
  objc_destroyWeak((v14 - 96));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100124F20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && ![WeakRetained isInvalidated])
  {
    v6 = sub_10003E1B4();
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[PDOperationsManager apsEnvironmentString]", buf, 2u);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      v8 = v6[9];
LABEL_7:
      v9 = v8;
      v11 = *(a1 + 32);
      v10 = v3;
      CLSPerformWithPersona();

      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_7;
  }

  (*(v3 + 2))(v3, 1, 0);
LABEL_8:
}

void sub_10012508C(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[PDOperationsManager apsEnvironmentString]", buf, 2u);
  }

  v3 = +[PDUserDefaults sharedDefaults];
  v4 = [v3 enableVerboseLogging];

  if (v4)
  {
    CLSLogDebugCurrentPersona();
  }

  v5 = [*(a1 + 32) cloudContainer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001251BC;
  v8[3] = &unk_100205AF8;
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  [v5 serverPreferredPushEnvironmentWithCompletionHandler:v8];
}

void sub_1001251BC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v7)
    {
      CLSInitLog();
      v10 = CLSLogPush;
      if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v8;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error getting server APS preferred push environment: %{public}@", &v11, 0xCu);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

id sub_100125AF0(void *a1)
{
  if (!a1 || (sub_1000B280C() & 1) == 0 && !sub_1000B2988() || !sub_100140F84())
  {
    return 0;
  }

  return [a1 isEDUMAID];
}

id sub_100125C10()
{
  if (qword_10024DB88 != -1)
  {
    dispatch_once(&qword_10024DB88, &stru_100205BF0);
  }

  v1 = qword_10024DB80;

  return v1;
}

void sub_100125C64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained apsConnection];
    v4 = sub_10010AE9C();
    v5 = [@"com.apple.icloud-container." stringByAppendingString:v4];
    v6 = sub_100125AF0(v2);
    if (v6)
    {
      v17 = v5;
      v7 = [NSArray arrayWithObjects:&v17 count:1];
      [v3 _setEnabledTopics:v7];

      [v3 _setOpportunisticTopics:0];
    }

    else
    {
      [v3 _setEnabledTopics:0];
      v16 = v5;
      v9 = [NSArray arrayWithObjects:&v16 count:1];
      [v3 _setOpportunisticTopics:v9];
    }

    CLSInitLog();
    v10 = CLSLogPush;
    if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"opportunistic";
      if (v6)
      {
        v11 = @"enabled";
      }

      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v11;
    }
  }

  else
  {
    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDOperationsManager instance was released during registerPushTopics", &v12, 2u);
    }
  }
}

void sub_100125F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100125F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained registerPushTopics];
  }

  else
  {
    CLSInitLog();
    v3 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDOperationsManager instance was released during registerForLockStateChangedDarwinNotification", v4, 2u);
    }
  }
}

void sub_10012610C(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogPush;
  if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "APS Push stopped listening.", v5, 2u);
  }

  v3 = [*(a1 + 32) apsConnection];
  [v3 _setEnabledTopics:0];

  v4 = [*(a1 + 32) apsConnection];
  [v4 _setOpportunisticTopics:0];
}

id *sub_1001261B8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 11);
    v3 = [PDCKBootstrap alloc];
    v4 = [v1 cloudContainer];
    v5 = [(PDCKOperation *)v3 initWithDatabase:WeakRetained container:v4];

    v1 = (sub_1000D2654(v5) ^ 1);
  }

  return v1;
}

id *sub_100126240(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithBool:sub_1001261B8(v1)];
    [v2 setObject:v3 forKeyedSubscript:@"bootstrapped"];

    v4 = [NSNumber numberWithBool:sub_100121714(v1)];
    [v2 setObject:v4 forKeyedSubscript:@"hasValidUser"];

    v5 = sub_1001214FC();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100126638;
    block[3] = &unk_1002029E8;
    block[4] = v1;
    v6 = v2;
    v35 = v6;
    dispatch_sync(v5, block);

    [v1[1] setSuspended:1];
    [v1[2] setSuspended:1];
    v7 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [v1[1] operations];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 statusReport];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v10);
    }

    v15 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [v1[2] operations];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v21 statusReport];
            [v15 addObject:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v18);
    }

    v23 = [[NSString alloc] initWithFormat:@"%ld pending operations", objc_msgSend(v7, "count")];
    [v6 setObject:v7 forKeyedSubscript:v23];
    v24 = [[NSString alloc] initWithFormat:@"%ld pending ui operations", objc_msgSend(v15, "count")];

    [v6 setObject:v15 forKeyedSubscript:v24];
    [v1[1] setSuspended:0];
    [v1[2] setSuspended:0];
    v1 = v6;
  }

  return v1;
}

void sub_100126638(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = [*(v2 + 8) count];
  }

  else
  {
    v3 = 0;
  }

  v5 = [[NSString alloc] initWithFormat:@"Last %ld executed operations with errors", v3];
  v4 = sub_1000B09A4(*(*(a1 + 32) + 96));
  [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
}

id *sub_1001266DC(id *a1)
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 11);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001267B4;
    v6[3] = &unk_1002029E8;
    v6[4] = v1;
    v3 = objc_alloc_init(NSMutableDictionary);
    v7 = v3;
    sub_10010BE68(WeakRetained, v6);
    v4 = v7;
    v1 = v3;
  }

  return v1;
}

void sub_1001267B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 88));
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [PDCKBootstrap alloc];
  v4 = [*(a1 + 32) cloudContainer];
  v5 = [(PDCKOperation *)v3 initWithDatabase:WeakRetained container:v4];

  v50 = v5;
  v6 = [NSNumber numberWithInt:sub_1000D2654(v5) ^ 1];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"bootstrapped"];

  v7 = [NSNumber numberWithBool:sub_100169FD0(WeakRetained, @"initialASMSyncComplete")];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:@"initialASMSyncComplete"];

  v8 = [NSNumber numberWithBool:sub_100169FD0(WeakRetained, @"initialOrionSyncComplete")];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:@"initialOrionSyncComplete"];

  v9 = [NSNumber numberWithBool:sub_100169FD0(WeakRetained, @"initialiCloudDriveSyncComplete")];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:@"initialiCloudDriveSyncComplete"];

  v10 = [NSNumber numberWithBool:sub_100169FD0(WeakRetained, @"initialASMSyncRequired")];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"initialASMSyncRequired"];

  v11 = [NSNumber numberWithInteger:sub_10016A160(WeakRetained, @"initialASMSyncRoundTripCount")];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:@"initialASMSyncRoundTripCount"];

  v12 = [NSNumber numberWithInteger:sub_10016A160(WeakRetained, @"initialOrionSyncRoundTripCount")];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"initialOrionSyncRoundTripCount"];

  v13 = [NSNumber numberWithBool:sub_100169FD0(WeakRetained, @"asmRefreshRequested")];
  [*(a1 + 40) setObject:v13 forKeyedSubscript:@"asmRefreshRequested"];

  v14 = CLSSyncInitialRosterSyncDateKey;
  v15 = sub_10016A65C(WeakRetained, CLSSyncInitialRosterSyncDateKey);
  [*(a1 + 40) setObject:v15 forKeyedSubscript:v14];

  v16 = CLSSyncInitialHandoutSyncDateKey;
  v17 = sub_10016A65C(WeakRetained, CLSSyncInitialHandoutSyncDateKey);
  [*(a1 + 40) setObject:v17 forKeyedSubscript:v16];

  v18 = CLSSyncLatestRosterSyncDateKey;
  v19 = sub_10016A65C(WeakRetained, CLSSyncLatestRosterSyncDateKey);
  [*(a1 + 40) setObject:v19 forKeyedSubscript:v18];

  v20 = CLSSyncLatestHandoutSyncDateKey;
  v59 = WeakRetained;
  v21 = sub_10016A65C(WeakRetained, CLSSyncLatestHandoutSyncDateKey);
  [*(a1 + 40) setObject:v21 forKeyedSubscript:v20];

  v22 = objc_alloc_init(NSMutableArray);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v79[0] = objc_opt_class();
  v79[1] = objc_opt_class();
  obj = [NSArray arrayWithObjects:v79 count:2];
  v23 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v67;
    do
    {
      v26 = 0;
      do
      {
        if (*v67 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = [*(*(&v66 + 1) + 8 * v26) entityName];
        v28 = [@"select distinct entity from " stringByAppendingString:v27];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_100127018;
        v64[3] = &unk_1002031B0;
        v65 = v22;
        sub_1000B9298(v59, v28, 0, 0, v64);

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v24);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v51 = v22;
  v54 = [v51 countByEnumeratingWithState:&v60 objects:v78 count:16];
  if (v54)
  {
    v52 = *v61;
    do
    {
      v29 = 0;
      do
      {
        if (*v61 != v52)
        {
          objc_enumerationMutation(v51);
        }

        v30 = *(*(&v60 + 1) + 8 * v29);
        v31 = objc_opt_class();
        v77[0] = v30;
        v77[1] = &off_10021B768;
        v32 = [NSArray arrayWithObjects:v77 count:2];
        obja = [v59 count:v31 where:? bindings:?];

        v33 = objc_opt_class();
        v76[0] = v30;
        v76[1] = &off_10021B768;
        v34 = [NSArray arrayWithObjects:v76 count:2];
        v56 = [v59 count:v33 where:@"entity = ? and state = ?" bindings:v34];

        v35 = objc_opt_class();
        v75[0] = v30;
        v75[1] = &off_10021B780;
        v36 = [NSArray arrayWithObjects:v75 count:2];
        v55 = [v59 count:v35 where:@"entity = ? and state = ?" bindings:v36];

        v37 = objc_opt_class();
        v74[0] = v30;
        v74[1] = &off_10021B780;
        v38 = [NSArray arrayWithObjects:v74 count:2];
        v39 = [v59 count:v37 where:@"entity = ? and state = ?" bindings:v38];

        v40 = objc_opt_class();
        v73[0] = v30;
        v73[1] = &off_10021B798;
        v41 = [NSArray arrayWithObjects:v73 count:2];
        v42 = [v59 count:v40 where:@"entity = ? and state = ?" bindings:v41];

        v43 = objc_opt_class();
        v72[0] = v30;
        v72[1] = &off_10021B798;
        v44 = [NSArray arrayWithObjects:v72 count:2];
        v45 = [v59 count:v43 where:@"entity = ? and state = ?" bindings:v44];

        v70[0] = @"insert";
        v46 = [NSNumber numberWithInteger:&obja[v56]];
        v71[0] = v46;
        v70[1] = @"updated";
        v47 = [NSNumber numberWithInteger:&v55[v39]];
        v71[1] = v47;
        v70[2] = @"deleted";
        v48 = [NSNumber numberWithInteger:&v42[v45]];
        v71[2] = v48;
        v49 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];
        [*(a1 + 40) setObject:v49 forKeyedSubscript:v30];

        v29 = v29 + 1;
      }

      while (v54 != v29);
      v54 = [v51 countByEnumeratingWithState:&v60 objects:v78 count:16];
    }

    while (v54);
  }
}

void sub_100127018(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"entity");
  [v2 addObject:v3];
}

void sub_100127200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012721C(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = sub_1000BA854(WeakRetained);

    if (v3)
    {
      v4 = sub_1000BA854(WeakRetained);
      if (v4 && (v5 = v4[7], v4, v5))
      {
        objc_initWeak(&location, a1);
        v14 = _NSConcreteStackBlock;
        v15 = 3221225472;
        v16 = sub_1001273D4;
        v17 = &unk_100203000;
        objc_copyWeak(&v18, &location);
        v6 = objc_retainBlock(&v14);
        v7 = [PDTaskSchedulerBlockTask alloc];
        v8 = [(PDTaskSchedulerBlockTask *)v7 initWithIdentifier:@"com.apple.progressd.fetch" queue:*(a1 + 24) block:v6, v14, v15, v16, v17];
        v9 = sub_1000BA854(WeakRetained);
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 56);
        }

        else
        {
          v11 = 0;
        }

        [(PDTaskSchedulerBlockTask *)v8 clampToPredefinedTimePeriod:v11];

        v12 = sub_10006DCEC();
        sub_10006E4A0(v12, v8);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        v13 = sub_10006DCEC();
        sub_10006DEB8(v13, @"com.apple.progressd.fetch");
      }
    }
  }
}

void sub_1001273B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001273D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(WeakRetained + 11);
  }

  else
  {
    v2 = 0;
  }

  sub_1000F5988(v2);

  sub_10012175C(v3, &stru_100205B90);
}

void sub_10012744C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    CLSInitLog();
    v3 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "scheduled fetch failed: %{public}@", &v4, 0xCu);
    }
  }
}

void sub_100127500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 11);
  }

  else
  {
    v3 = 0;
  }

  sub_100173FF8(v3);
}

void sub_100127630(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.operations", attr, v2);
  v4 = qword_10024DB60;
  qword_10024DB60 = v3;
}

void sub_1001276D0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INTERACTIVE, 0);

  v2 = dispatch_get_global_queue(33, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.operations.ui", attr, v2);
  v4 = qword_10024DB70;
  qword_10024DB70 = v3;
}

void sub_100127770(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.operations.aps", attr, v2);
  v4 = qword_10024DB80;
  qword_10024DB80 = v3;
}

void sub_100128488(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, unsigned __int8 a9, void *a10, void *a11, void *a12)
{
  v18 = a2;
  v19 = a3;
  v45 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = v25;
  if (a1)
  {
    v38 = v25;
    v39 = v24;
    v40 = v23;
    v27 = objc_opt_new();
    v43 = v18;
    [v27 setZoneName:v18];
    v42 = v19;
    [v27 setZoneOwnerName:v19];
    v37 = v27;
    v41 = v20;
    [v27 setOrgID:v20];
    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = v21;
    v30 = [v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v47;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v46 + 1) + 8 * i);
          v35 = objc_opt_new();
          [v35 setRecordName:v34];
          [v35 setParentObjectID:v45];
          [v35 setParentEntityType:a5];
          [v35 setAssetFieldNames:v22];
          [v28 addObject:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v31);
    }

    [v37 setRequestItems:v28];
    v36 = [a1 objcClient];
    v23 = v40;
    v26 = v38;
    [v36 fetchRecordsforDownloadingWithIsDraft:a9 request:v37 progressBlock:v40 recordResultBlock:v39 completionBlock:v38];

    v24 = v39;
    v19 = v42;
    v18 = v43;
    v20 = v41;
  }
}

void sub_100128740(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, unsigned __int8 a9, void *a10, void *a11, void *a12)
{
  v18 = a2;
  v19 = a3;
  v45 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = v25;
  if (a1)
  {
    v38 = v25;
    v39 = v24;
    v40 = v23;
    v27 = objc_opt_new();
    v43 = v18;
    [v27 setZoneName:v18];
    v42 = v19;
    [v27 setZoneOwnerName:v19];
    v37 = v27;
    v41 = v20;
    [v27 setOrgID:v20];
    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = v21;
    v30 = [v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v47;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v46 + 1) + 8 * i);
          v35 = objc_opt_new();
          [v35 setRecordName:v34];
          [v35 setParentObjectID:v45];
          [v35 setParentEntityType:a5];
          [v35 setAssetFieldNames:v22];
          [v28 addObject:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v31);
    }

    [v37 setRequestItems:v28];
    v36 = [a1 objcClient];
    v23 = v40;
    v26 = v38;
    [v36 fetchRecordsforStreamingWithIsDraft:a9 request:v37 progressBlock:v40 recordResultBlock:v39 completionBlock:v38];

    v24 = v39;
    v19 = v42;
    v18 = v43;
    v20 = v41;
  }
}

uint64_t sub_1001298C8(uint64_t a1, void *a2)
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
        LOBYTE(v58[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58[0] & 0x7F) << v5;
        if ((v58[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 99)
      {
        switch(v13)
        {
          case 1:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 212) |= 0x10u;
            while (1)
            {
              LOBYTE(v58[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58[0] & 0x7F) << v14;
              if ((v58[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_109;
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

LABEL_109:
            v55 = 192;
            goto LABEL_118;
          case 2:
            v37 = PBReaderReadString();
            v38 = 144;
            goto LABEL_83;
          case 3:
            v37 = PBReaderReadString();
            v38 = 176;
            goto LABEL_83;
          case 4:
            v37 = PBReaderReadString();
            v38 = 72;
            goto LABEL_83;
          case 5:
            v37 = PBReaderReadString();
            v38 = 32;
            goto LABEL_83;
          case 6:
            v37 = PBReaderReadString();
            v38 = 64;
            goto LABEL_83;
          case 7:
            v37 = PBReaderReadString();
            v38 = 128;
            goto LABEL_83;
          case 8:
            v37 = PBReaderReadString();
            v38 = 136;
            goto LABEL_83;
          case 9:
            v37 = PBReaderReadString();
            v38 = 112;
            goto LABEL_83;
          case 10:
            v37 = PBReaderReadString();
            v38 = 24;
            goto LABEL_83;
          case 11:
            v37 = PBReaderReadString();
            v38 = 160;
            goto LABEL_83;
          case 12:
            v37 = PBReaderReadString();
            v38 = 56;
            goto LABEL_83;
          case 13:
            v37 = PBReaderReadString();
            v38 = 40;
            goto LABEL_83;
          case 14:
            v37 = PBReaderReadString();
            v38 = 48;
            goto LABEL_83;
          case 15:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 212) |= 0x20u;
            while (1)
            {
              LOBYTE(v58[0]) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v58[0] & 0x7F) << v30;
              if ((v58[0] & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_105;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_105:
            *(a1 + 208) = v36;
            goto LABEL_84;
          case 16:
            v37 = PBReaderReadString();
            v38 = 184;
            goto LABEL_83;
          case 17:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 212) |= 2u;
            while (1)
            {
              LOBYTE(v58[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v58[0] & 0x7F) << v23;
              if ((v58[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_103:
            *(a1 + 16) = v29;
            goto LABEL_84;
          case 18:
            v37 = PBReaderReadString();
            v38 = 120;
            goto LABEL_83;
          case 19:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 212) |= 4u;
            while (1)
            {
              LOBYTE(v58[0]) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v58[0] & 0x7F) << v39;
              if ((v58[0] & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_113;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v41;
            }

LABEL_113:
            v55 = 104;
            goto LABEL_118;
          case 20:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 212) |= 8u;
            break;
          case 21:
            v37 = PBReaderReadString();
            v38 = 200;
            goto LABEL_83;
          case 22:
            v37 = PBReaderReadString();
            v38 = 152;
LABEL_83:
            v45 = *(a1 + v38);
            *(a1 + v38) = v37;

            goto LABEL_84;
          case 23:
            *(a1 + 212) |= 1u;
            v58[0] = 0;
            v47 = [a2 position] + 8;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:v58 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v58[0];
            goto LABEL_84;
          default:
            goto LABEL_98;
        }

        while (1)
        {
          LOBYTE(v58[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v58[0] & 0x7F) << v49;
          if ((v58[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v51;
        }

LABEL_117:
        v55 = 168;
LABEL_118:
        *(a1 + v55) = v20;
        goto LABEL_84;
      }

      if (v13 == 100)
      {
        break;
      }

      if (v13 == 200)
      {
        v21 = objc_alloc_init(PDDPDate);
        v22 = 88;
        goto LABEL_55;
      }

      if (v13 == 201)
      {
        v21 = objc_alloc_init(PDDPDate);
        v22 = 96;
LABEL_55:
        objc_storeStrong((a1 + v22), v21);
        v58[0] = 0;
        v58[1] = 0;
        if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
LABEL_58:

        goto LABEL_84;
      }

LABEL_98:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = PBReaderReadString();
    if (v21)
    {
      [a1 addClassIds:v21];
    }

    goto LABEL_58;
  }

  return [a2 hasError] ^ 1;
}

char *sub_10012BEB8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PDHandoutPublish;
    v6 = objc_msgSendSuper2(&v12, "initWithDatabase:", a2);
    if (v6)
    {
      v7 = [v5 copy];
      v8 = *(v6 + 235);
      *(v6 + 235) = v7;

      v9 = objc_opt_new();
      v10 = *(v6 + 227);
      *(v6 + 227) = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10012D028(uint64_t a1, uint64_t a2)
{
  objc_opt_self();

  return [PDFileSyncAgent ubiquitousContainerURL:a2];
}

id sub_10012D068(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = sub_10003E1B4();
  v7 = 0;
  v4 = sub_1000E0F2C(PDFileManager, v3, &v7);
  v5 = v7;
  if (a2)
  {
    *a2 = v5;
  }

  return v4;
}

id sub_10012D100(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = sub_10003E1B4();
  v19 = 0;
  v4 = sub_1000E0F2C(PDFileManager, v3, &v19);
  v5 = v19;
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [v4 URLByAppendingPathComponent:v7];

  v9 = [v8 URLByAppendingPathExtension:@"archive"];

  v10 = [v9 URLByAppendingPathExtension:@"aar"];

  if (v5)
  {
    v11 = v5;
    v12 = 0;
    if (a2)
    {
      *a2 = v5;
    }
  }

  else
  {
    v18 = 0;
    v13 = [FPSandboxingURLWrapper wrapperWithURL:v10 readonly:0 error:&v18];
    v14 = v18;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      v12 = 0;
      if (a2)
      {
        *a2 = v15;
      }
    }

    else
    {
      v12 = v13;
    }
  }

  return v12;
}

void sub_10012D2E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10024DB90;
  qword_10024DB90 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10012D378(id a1)
{
  v1 = +[NSMapTable strongToStrongObjectsMapTable];
  v2 = qword_10024DBA0;
  qword_10024DBA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10012D40C(id a1)
{
  v1 = +[NSMapTable strongToStrongObjectsMapTable];
  v2 = qword_10024DBB0;
  qword_10024DBB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10012D788(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  objc_sync_enter(v5);
  if (a3)
  {
    [v5 countedUploadAgentByAssetID];
  }

  else
  {
    [v5 countedDownloadAgentByAssetID];
  }
  v6 = ;
  v7 = [v4 objectID];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [v8 agent];
    v10 = [v8 decrementCounter];
    if (v10 == 1)
    {
      CLSInitLog();
      v11 = CLSLogAsset;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v4 objectID];
        v14 = v13;
        v15 = "DN";
        v19 = 134218754;
        v20 = v9;
        v21 = 2048;
        if (a3)
        {
          v15 = "UP";
        }

        v22 = 1;
        v23 = 2112;
        v24 = v13;
        v25 = 2080;
        v26 = v15;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "---- PDFileSyncAgent: %p [%ld] :: %@ :: %s", &v19, 0x2Au);
      }

      v12 = [v4 objectID];
      [v6 removeObjectForKey:v12];
    }

    else
    {
      CLSInitLog();
      v12 = CLSLogAsset;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v4 objectID];
        v17 = v16;
        v18 = "DN";
        v19 = 134218754;
        v21 = 2048;
        v20 = v9;
        if (a3)
        {
          v18 = "UP";
        }

        v22 = v10;
        v23 = 2112;
        v24 = v16;
        v25 = 2080;
        v26 = v18;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "vvvv PDFileSyncAgent: %p [%ld] :: %@ :: %s", &v19, 0x2Au);
      }
    }
  }

  objc_sync_exit(v5);
}

void sub_10012DA68(uint64_t a1, void *a2, uint64_t a3, _OWORD *a4, void *a5, void *a6, void *a7)
{
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a2;
  v16 = [objc_opt_self() agentForAsset:v15 database:v14 forUpload:1];

  [v16 addUploadObserver:v12];
  v17 = a4[1];
  v19[0] = *a4;
  v19[1] = v17;
  v18 = [v16 uploadAfterValidatingURLWithAuditToken:v19 createThumbnailIfNeeded:a3];
  if (v18)
  {
    [v16 removeUploadObserver:v12];
  }

  v13[2](v13, v18);
}

void sub_10012DB64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = [[PDFileSyncAgent alloc] initWithAsset:v6 database:v7];
  v11 = [v9 agentCache];
  objc_initWeak(&location, v10);
  [v11 addObject:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012DCD8;
  v14[3] = &unk_100205CD0;
  v12 = v8;
  v16 = v12;
  objc_copyWeak(&v17, &location);
  v13 = v11;
  v15 = v13;
  [(PDFileSyncAgent *)v10 deleteBackingStoreWithCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_10012DCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10012DCD8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) removeObject:WeakRetained];
  }

  return _objc_release_x1();
}

void sub_10012DD44(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = [objc_opt_self() agentForAsset:v11 database:v10 forUpload:0];

  if (v8)
  {
    [v12 addDownloadObserver:v8];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012DE50;
  v14[3] = &unk_100202948;
  v15 = v9;
  v13 = v9;
  [v12 downloadCloudKitPrimaryFileWithCompletion:v14];
}

void sub_10012DE50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = 0;
    v3 = [FPSandboxingURLWrapper wrapperWithURL:a2 readonly:0 error:&v7];
    v4 = v7;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void sub_10012DF04(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = [objc_opt_self() agentForAsset:v11 database:v10 forUpload:0];

  if (v8)
  {
    [v12 addDownloadObserver:v8];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012E010;
  v14[3] = &unk_100202948;
  v15 = v9;
  v13 = v9;
  [v12 downloadCloudKitThumbnailWithCompletion:v14];
}

void sub_10012E010(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = 0;
    v3 = [FPSandboxingURLWrapper wrapperWithURL:a2 readonly:0 error:&v7];
    v4 = v7;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void sub_10012E0C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = a2;
  v11 = [objc_opt_self() agentForAsset:v10 database:v9 forUpload:0];

  if (v12)
  {
    [v11 addDownloadObserver:v12];
  }

  [v11 fetchCloudKitStreamingURLWithCompletion:v8];
}

void sub_10012E18C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  sub_10012E220(v5, v6, v4);
  if ([v6 fileSizeInBytes] <= 9999999)
  {
    sub_10012E350(v5, v6, v4);
  }
}

void sub_10012E220(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [v4 fileUTType];
  v8 = [v7 conformsToType:UTTypeAudio];

  if ((v8 & 1) == 0)
  {
    v9 = sub_10012E480();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10012E4D4;
    v11[3] = &unk_100203200;
    v14 = v6;
    v12 = v4;
    v13 = v5;
    v10 = [NSBlockOperation blockOperationWithBlock:v11];
    [v9 addOperation:v10];
  }
}

void sub_10012E350(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [v4 fileUTType];
  v8 = [v7 conformsToType:UTTypeAudiovisualContent];

  if ((v8 & 1) == 0)
  {
    v9 = sub_10012E480();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10012E79C;
    v11[3] = &unk_100203200;
    v14 = v6;
    v12 = v4;
    v13 = v5;
    v10 = [NSBlockOperation blockOperationWithBlock:v11];
    [v9 addOperation:v10];
  }
}

id sub_10012E480()
{
  if (qword_10024DBC8 != -1)
  {
    dispatch_once(&qword_10024DBC8, &stru_100205D80);
  }

  v1 = qword_10024DBC0;

  return v1;
}

void sub_10012E4D4(uint64_t a1)
{
  v2 = sub_10003E1B4();
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  CLSPerformWithPersona();
}

void sub_10012E5B8(uint64_t a1)
{
  v2 = dispatch_block_create(0, &stru_100205CF0);
  v3 = *(a1 + 32);
  v6 = a1 + 40;
  v4 = *(a1 + 40);
  v5 = *(v6 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012E698;
  v8[3] = &unk_100205D18;
  v9 = v3;
  v10 = v2;
  v7 = v2;
  sub_10012DF04(v5, v9, 0, v4, v8);
  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10012E698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    CLSInitLog();
    v5 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 objectID];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to prefetch thumbnail for asset '%@', error: '%@'", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10012E79C(uint64_t a1)
{
  v2 = sub_10003E1B4();
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  CLSPerformWithPersona();
}

void sub_10012E880(uint64_t a1)
{
  v2 = dispatch_block_create(0, &stru_100205D38);
  v3 = *(a1 + 32);
  v6 = a1 + 40;
  v4 = *(a1 + 40);
  v5 = *(v6 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012E960;
  v8[3] = &unk_100205D18;
  v9 = v3;
  v10 = v2;
  v7 = v2;
  sub_10012DD44(v5, v9, 0, v4, v8);
  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10012E960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    CLSInitLog();
    v5 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 objectID];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to prefetch primary file for asset '%@', error: '%@'", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10012EA64(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10003E1B4();
  v11 = 0;
  v4 = sub_1000E0F2C(PDFileManager, v3, &v11);
  v5 = v11;
  if (v4)
  {
    v6 = [v2 filenameForCKContentStoreCache];
    v7 = [v4 URLByAppendingPathComponent:v6 isDirectory:0];
    [PDFileSyncAgent removeItemAtURL:v7 error:0];
    v8 = [v2 thumbnailFilenameForCKContentStoreCache];
    v9 = [v4 URLByAppendingPathComponent:v8 isDirectory:0];
    [PDFileSyncAgent removeItemAtURL:v9 error:0];
  }

  else
  {
    CLSInitLog();
    v10 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "deleteAllPrefetchedFilesForAsset - failed to get contentStoreCacheDirectoryURL error: %@", buf, 0xCu);
    }
  }
}

id sub_10012EC1C()
{
  v0 = objc_opt_self();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012ED9C;
  v11[3] = &unk_100205D60;
  v1 = objc_opt_new();
  v12 = v1;
  v2 = objc_retainBlock(v11);
  v3 = [v0 agentCache];
  v4 = [v3 objectEnumerator];
  (v2[2])(v2, v4, @"GeneralAgentCache");

  v5 = [v0 countedUploadAgentByAssetID];
  v6 = [v5 objectEnumerator];
  (v2[2])(v2, v6, @"UploadAgentCache");

  v7 = [v0 countedDownloadAgentByAssetID];
  v8 = [v7 objectEnumerator];
  (v2[2])(v2, v8, @"DownloadAgentCache");

  v9 = v1;
  return v1;
}

void sub_10012ED9C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v23 = a3;
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v12 = v10;
        v13 = v12;
        if (isKindOfClass)
        {
          v14 = 1;
        }

        else
        {
          v15 = [v12 agent];
          v16 = [v13 counter];

          v14 = v16;
          v13 = v15;
        }

        v17 = [NSString stringWithFormat:@"<%p> [%ld]", v13, v14];
        v18 = [v13 asset];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 objectID];
        }

        else
        {
          v20 = @"<missing assetID>";
        }

        v29 = v17;
        v30 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [v5 addObject:v21];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    [*(a1 + 32) setObject:v5 forKey:v23];
  }
}

void sub_10012EFDC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10024DBC0;
  qword_10024DBC0 = v1;

  [qword_10024DBC0 setName:@"PDFilePrefetchOperationQueue"];
  [qword_10024DBC0 setQualityOfService:CLSCurrentNSQualityOfService()];
  v3 = qword_10024DBC0;

  [v3 setMaxConcurrentOperationCount:1];
}

id *sub_10012F04C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PDUserNotificationData;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      v10[5] = a2;
      objc_storeStrong(v10 + 1, a3);
      objc_storeStrong(a1 + 2, a4);
    }
  }

  return a1;
}

void sub_10012F1EC(void *a1)
{
  if (a1)
  {
    v12 = +[NSDate date];
    v21 = v12;
    v2 = [NSArray arrayWithObjects:&v21 count:1];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    [NSArray arrayWithObjects:v20 count:6];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if (([a1 deleteAllWithoutTracking:v8 where:@"dateExpires != 0 and dateExpires < ?" bindings:v2] & 1) == 0)
          {
            CLSInitLog();
            v9 = CLSLogOperations;
            if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
            {
              v10 = v9;
              v11 = NSStringFromClass(v8);
              *buf = 138412290;
              v18 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Failed to purge cached %@", buf, 0xCu);
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v5);
    }
  }
}

uint64_t sub_10012F5B4(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(PDDPStatus);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100131A44(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v43) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v43 & 0x7F) << v6;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 212) |= 4u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43 & 0x7F) << v14;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_135:
            v41 = 112;
            goto LABEL_140;
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

        goto LABEL_135;
      case 2u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 212) |= 8u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v43 & 0x7F) << v35;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_139;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_139:
        v41 = 208;
        goto LABEL_140;
      case 3u:
        v21 = objc_alloc_init(PDDPStatus);
        objc_storeStrong((a1 + 168), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 4u:
        v21 = objc_alloc_init(PDDPHandout);
        objc_storeStrong((a1 + 104), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000A3F84(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 5u:
        v21 = objc_alloc_init(PDDPHandoutAttachment);
        objc_storeStrong((a1 + 40), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000678A0(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 6u:
        v21 = objc_alloc_init(PDDPHandoutRecipient);
        objc_storeStrong((a1 + 136), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10013CC78(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 8u:
        v21 = objc_alloc_init(PDDPClass);
        objc_storeStrong((a1 + 56), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10010724C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 9u:
        v21 = objc_alloc_init(PDDPPerson);
        objc_storeStrong((a1 + 120), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000EDA70(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0xAu:
        v21 = objc_alloc_init(PDDPClassMember);
        objc_storeStrong((a1 + 64), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_100041C1C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0xEu:
        v21 = objc_alloc_init(PDDPClassZone);
        objc_storeStrong((a1 + 72), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10011EEF8(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x11u:
        v21 = objc_alloc_init(PDDPAssetReference);
        objc_storeStrong((a1 + 32), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1001298C8(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x13u:
        v21 = objc_alloc_init(PDDPAuthorizationStatus);
        objc_storeStrong((a1 + 48), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000C2BFC(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x14u:
        v21 = objc_alloc_init(PDDPCompletionStatus);
        objc_storeStrong((a1 + 96), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10007216C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x15u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 212) |= 2u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v43 & 0x7F) << v29;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_131:
        v41 = 16;
LABEL_140:
        *(a1 + v41) = v20;
        goto LABEL_123;
      case 0x16u:
        v21 = objc_alloc_init(PDDPStateChange);
        objc_storeStrong((a1 + 160), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10016E410(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x17u:
        v21 = objc_alloc_init(PDDPSchoolworkQueryZone);
        objc_storeStrong((a1 + 128), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000B18A8(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x18u:
        v21 = objc_alloc_init(PDDPCollection);
        objc_storeStrong((a1 + 80), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000F367C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x19u:
        v21 = objc_alloc_init(PDDPCollectionItem);
        objc_storeStrong((a1 + 88), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000CFE0C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x1Au:
        v21 = objc_alloc_init(PDDPSurvey);
        objc_storeStrong((a1 + 176), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10016B94C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x1Bu:
        v21 = objc_alloc_init(PDDPSurveyStep);
        objc_storeStrong((a1 + 184), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1001782F4(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x1Cu:
        v21 = objc_alloc_init(PDDPSurveyStepAnswer);
        objc_storeStrong((a1 + 192), v21);
        v43 = 0;
        v44 = 0;
        if (PBReaderPlaceMark() && sub_100141AC4(v21, a2))
        {
          goto LABEL_122;
        }

        goto LABEL_142;
      case 0x1Du:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 212) |= 1u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v43 & 0x7F) << v22;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_127:
        *(a1 + 8) = v28;
        goto LABEL_123;
      case 0x1Eu:
        v21 = objc_alloc_init(PDDPSchedule);
        objc_storeStrong((a1 + 144), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10010336C(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x1Fu:
        v21 = objc_alloc_init(PDDPScheduledEvent);
        objc_storeStrong((a1 + 152), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_1000ADDD0(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x20u:
        v21 = objc_alloc_init(PDDPAssessment);
        objc_storeStrong((a1 + 24), v21);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_10010F800(v21, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_122;
      case 0x21u:
        v21 = objc_alloc_init(PDDPTakerWork);
        objc_storeStrong((a1 + 200), v21);
        v43 = 0;
        v44 = 0;
        if (PBReaderPlaceMark() && sub_10005D730(v21, a2))
        {
LABEL_122:
          PBReaderRecallMark();

LABEL_123:
          v4 = a2;
          continue;
        }

LABEL_142:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_123;
    }
  }
}

void sub_1001344BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  if (v3)
  {
    v5 = *(v3 + 1);
    [v4 addObject:v5];

    v6 = v11[2];
  }

  else
  {
    [v4 addObject:0];
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v8 = *(a1 + 40);
    if (v11)
    {
      v9 = v11[1];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v8 addObject:v10];
  }
}

void sub_100136064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013608C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001360A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) response];
  v4 = sub_100112C30(v3);
  v5 = [*(a1 + 40) expectedResponseClass];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v2 parseData:v4 expectedClass:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  v8 = +[PDUserDefaults sharedDefaults];
  LODWORD(v3) = [v8 enableVerboseLogging];

  if (v3)
  {
    CLSInitLog();
    v9 = [*(a1 + 40) logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      v14 = v12;
      v15 = [v13 operationID];
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v15;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ streamed response processing complete.", buf, 0x16u);
    }
  }

  return 1;
}

void sub_100136DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100136E10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processPayloadWithinWriteTransaction:v7 error:a3 stop:a4];

  v8 = [WeakRetained stats];
  if (v8)
  {
    ++v8[15];
  }
}

uint64_t sub_100139E0C(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154ActivityDomainState__flags;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154ActivityDomainState__flags;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154ActivityDomainState__domain;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154ActivityDomainState__domain;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 4u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154ActivityDomainState__state;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154ActivityDomainState__state;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10013A984(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 32;
          goto LABEL_39;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v21 = objc_alloc_init(PDDPDate);
        v22 = 8;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            v23 = PBReaderReadString();
            v24 = 40;
LABEL_39:
            v25 = *(a1 + v24);
            *(a1 + v24) = v23;

            goto LABEL_46;
          }

          if (v13 == 5)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v28[0] & 0x7F) << v14;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_45;
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

LABEL_45:
            *(a1 + 24) = v20;
            goto LABEL_46;
          }

LABEL_40:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_46;
        }

        v21 = objc_alloc_init(PDDPDate);
        v22 = 16;
      }

      objc_storeStrong((a1 + v22), v21);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10013B5E0(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___PDDPRange__start;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___PDDPRange__end;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10013C14C(uint64_t a1, void *a2)
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
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v25;
        }

LABEL_46:
        v30 = 16;
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 24) |= 1u;
          v33 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v33;
          goto LABEL_54;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v36 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v14;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        v30 = 20;
      }

      *(a1 + v30) = v20;
LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10013CC78(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_100205FB8[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10013E23C(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 99)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v15 = PBReaderReadString();
            v16 = 8;
            goto LABEL_58;
          }

          if (v13 == 2)
          {
            v15 = PBReaderReadString();
            v16 = 40;
LABEL_58:
            v25 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_59;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(PDDPDate);
              v17 = 24;
              goto LABEL_44;
            case 4:
              v14 = objc_alloc_init(PDDPDate);
              v17 = 32;
LABEL_44:
              objc_storeStrong((a1 + v17), v14);
              v28 = 0;
              v29 = 0;
              if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
              {
LABEL_68:

                return 0;
              }

              goto LABEL_46;
            case 5:
              v14 = objc_alloc_init(PDDPPerson);
              objc_storeStrong((a1 + 48), v14);
              v28 = 0;
              v29 = 0;
              if (!PBReaderPlaceMark() || !sub_1000EDA70(v14, a2))
              {
                goto LABEL_68;
              }

LABEL_46:
              PBReaderRecallMark();
LABEL_47:

              goto LABEL_59;
          }
        }
      }

      else if (v13 > 199)
      {
        switch(v13)
        {
          case 0xC8:
            v15 = PBReaderReadString();
            v16 = 80;
            goto LABEL_58;
          case 0xC9:
            v15 = PBReaderReadString();
            v16 = 88;
            goto LABEL_58;
          case 0xCA:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addConflictingPersonIds:v14];
            }

            goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 'd':
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v28) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v28 & 0x7F) << v18;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_66;
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

LABEL_66:
            *(a1 + 72) = v24;
            goto LABEL_59;
          case 'e':
            v15 = PBReaderReadString();
            v16 = 64;
            goto LABEL_58;
          case 'f':
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addRequestedLocationIds:v14];
            }

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10013FC8C(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100140F84()
{
  v0 = objc_opt_self();
  objc_sync_enter(v0);
  v1 = byte_10024DD20;
  if ((byte_10024DD20 & 1) == 0)
  {
    v1 = MKBDeviceUnlockedSinceBoot() == 1;
    byte_10024DD20 = v1;
  }

  objc_sync_exit(v0);

  return v1;
}

void sub_100140FFC()
{
  objc_opt_self();
  if ((sub_100140F84() & 1) == 0)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = -1;
    v0 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &stru_100206040);
    v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v2 = dispatch_queue_create("com.apple.progressd.wait-unlock", v1);

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001412EC;
    v15[3] = &unk_100206068;
    v3 = v2;
    v16 = v3;
    v4 = v0;
    v17 = v4;
    v5 = objc_retainBlock(v15);
    v6 = kMobileKeyBagLockStatusNotifyToken;
    v7 = v19;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10014135C;
    handler[3] = &unk_100206090;
    v8 = v5;
    v14 = v8;
    v9 = notify_register_dispatch(v6, v7 + 6, v3, handler);
    if (v9 || !notify_is_valid_token(v19[6]))
    {
      CLSInitLog();
      v10 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        v11 = v19[6];
        *buf = 67109376;
        v23 = v9;
        v24 = 1024;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "can't register notifications, status: %d, token: %d", buf, 0xEu);
      }

      v19[6] = -1;
    }

    else
    {
      dispatch_async(v3, v8);
      dispatch_block_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001413B0;
      v12[3] = &unk_100202CD0;
      v12[4] = &v18;
      dispatch_sync(v3, v12);
    }

    _Block_object_dispose(&v18, 8);
  }
}

void sub_1001412C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001412EC(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if (sub_100140F84())
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    syslog(5, "Device is locked - waiting.\n");
  }
}

uint64_t sub_10014135C(uint64_t a1, int val)
{
  result = notify_is_valid_token(val);
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1001413B0(uint64_t a1)
{
  result = notify_is_valid_token(*(*(*(a1 + 32) + 8) + 24));
  if (result)
  {
    result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = -1;
  }

  return result;
}

uint64_t sub_100141AC4(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v21 = PBReaderReadString();
            v22 = 64;
            goto LABEL_65;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadString();
            v22 = 72;
            goto LABEL_65;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v23 = objc_alloc_init(PDDPDate);
              v24 = 40;
LABEL_51:
              objc_storeStrong((a1 + v24), v23);
              v38[0] = 0;
              v38[1] = 0;
              if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v23, a2))
              {

                return 0;
              }

              PBReaderRecallMark();
              goto LABEL_54;
            case 4:
              v23 = objc_alloc_init(PDDPDate);
              v24 = 48;
              goto LABEL_51;
            case 5:
              v21 = PBReaderReadString();
              v22 = 32;
LABEL_65:
              v33 = *(a1 + v22);
              *(a1 + v22) = v21;

              goto LABEL_79;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v21 = PBReaderReadString();
            v22 = 88;
            goto LABEL_65;
          case 0xA:
            *(a1 + 96) |= 1u;
            v38[0] = 0;
            v25 = [a2 position] + 8;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v38 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v38[0];
            goto LABEL_79;
          case 0x64:
            v23 = PBReaderReadString();
            if (v23)
            {
              [a1 addClassIds:v23];
            }

LABEL_54:

            goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v38[0] & 0x7F) << v27;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_75:
            v34 = 16;
            goto LABEL_76;
          case 7:
            v21 = PBReaderReadString();
            v22 = 80;
            goto LABEL_65;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 96) |= 4u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38[0] & 0x7F) << v14;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_71;
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

LABEL_71:
            v34 = 56;
LABEL_76:
            *(a1 + v34) = v20;
            goto LABEL_79;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}