void sub_100003080(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32) atPosition:1];
  [v3 bindString:*(a1 + 40) atPosition:2];
  if (qword_1003D3908 != -1)
  {
    sub_1002C6FB0();
  }

  v4 = qword_1003D38C0;
  if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v13 = 138543874;
    v14 = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting StoreKit promotion order %{public}@ for %{public}@:%{public}@", &v13, 0x20u);
  }

  v8 = [NSNumber numberWithInt:*(a1 + 72)];
  [v3 bindNumber:v8 atPosition:3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_1003D3908 != -1)
    {
      sub_1002C6F20();
    }

    v9 = qword_1003D38C0;
    if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Setting StoreKit promotion visibility %{public}@ for %{public}@:%{public}@", &v13, 0x20u);
    }

    [v3 bindNumber:*(a1 + 56) atPosition:4];
  }
}

void sub_10000325C(void *a1, void *a2)
{
  v3 = a2;
  [v3 bindString:a1[4] atPosition:1];
  [v3 bindString:a1[5] atPosition:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_1003D3908 != -1)
    {
      sub_1002C6FB0();
    }

    v4 = qword_1003D38C0;
    if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_INFO))
    {
      v5 = a1[7];
      v6 = a1[4];
      v7 = a1[5];
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting StoreKit promotion visibility %{public}@ for %{public}@:%{public}@", &v8, 0x20u);
    }

    [v3 bindNumber:a1[6] atPosition:4];
  }
}

void sub_100003638(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAAB0;
  off_1003CAAB0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D38C0;
  qword_1003D38C0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D38C8;
  qword_1003D38C8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D38D0;
  qword_1003D38D0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D38D8;
  qword_1003D38D8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D38E0;
  qword_1003D38E0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D38E8;
  qword_1003D38E8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D38F0;
  qword_1003D38F0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D38F8;
  qword_1003D38F8 = v17;

  qword_1003D3900 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000037C0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100003ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"product_id"];
  v6 = [v4 objectForKeyedSubscript:@"promo_order"];
  v7 = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:@"visibility"];

  v9 = [v8 intValue];
  if (v5)
  {
    v14[0] = v5;
    v13[0] = off_1003CB1A8;
    v13[1] = @"ord";
    v10 = [NSNumber numberWithInteger:v7];
    v14[1] = v10;
    v13[2] = @"vis";
    v11 = [NSNumber numberWithInteger:v9];
    v14[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

    [*(a1 + 32) addObject:v12];
  }
}

void sub_100003EB0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAAB8;
  off_1003CAAB8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3910;
  qword_1003D3910 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3918;
  qword_1003D3918 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3920;
  qword_1003D3920 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3928;
  qword_1003D3928 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3930;
  qword_1003D3930 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3938;
  qword_1003D3938 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3940;
  qword_1003D3940 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3948;
  qword_1003D3948 = v17;

  qword_1003D3950 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

__CFString *sub_100004020(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_10037F780[a1 - 1];
  }
}

uint64_t sub_100004044(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 3);
  }
}

id sub_100004334(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 path];
  v8 = [NSString stringWithFormat:@"%@ for '%@'", v5, v7];

  v9 = ASDErrorWithUnderlyingErrorAndDescription();

  return v9;
}

double sub_1000045E4(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000466C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  Current = CFAbsoluteTimeGetCurrent();
  if (v2)
  {
    v4 = [*(*(a1 + 32) + 16) lastObject];
    [v4 doubleValue];
    v6 = v5;

    if (Current - v6 <= *&qword_1003CAAC0)
    {
      return;
    }

    *(*(a1 + 32) + 48) = *(a1 + 40);
    if (v2 >= 0x78)
    {
      [*(*(a1 + 32) + 16) removeObjectAtIndex:{0, Current - v6}];
      [*(*(a1 + 32) + 24) removeObjectAtIndex:0];
    }
  }

  else
  {
    *(*(a1 + 32) + 48) = *(a1 + 40);
  }

  v7 = *(*(a1 + 32) + 16);
  v8 = [NSNumber numberWithDouble:Current];
  [v7 addObject:v8];

  v9 = *(*(a1 + 32) + 24);
  v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  [v9 addObject:v10];

  v11 = *(a1 + 32);

  [v11 _updateStatisticsFromSnapshots];
}

uint64_t sub_100004DAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000058B0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAAC8;
  off_1003CAAC8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3960;
  qword_1003D3960 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3968;
  qword_1003D3968 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3970;
  qword_1003D3970 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3978;
  qword_1003D3978 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3980;
  qword_1003D3980 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3988;
  qword_1003D3988 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3990;
  qword_1003D3990 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3998;
  qword_1003D3998 = v17;

  qword_1003D39A0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100005C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_get_global_queue(17, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005DAC;
    v7[3] = &unk_10037F868;
    v7[4] = *(a1 + 32);
    v8 = v3;
    dispatch_async(v4, v7);
  }

  else
  {
    if (qword_1003D39F8 != -1)
    {
      sub_1002C725C();
    }

    v5 = qword_1003D39D8;
    if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7270(a1, v5);
    }

    v6 = ASDErrorWithTitleAndMessage();
    [*(a1 + 32) completeWithError:v6];
  }
}

id sub_100005D68()
{
  if (qword_1003D39F8 != -1)
  {
    sub_1002C725C();
  }

  v1 = qword_1003D39D8;

  return v1;
}

void sub_100005DAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 localRevision];
  [v1 _runRequestWithAccount:v2 revision:v3];
}

void sub_1000064AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 processResult:0 error:a3 forAccount:v5];
  }

  else
  {
    v6 = [*(a1 + 48) dataTaskPromiseWithRequest:a2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006584;
    v8[3] = &unk_10037F8B8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v6 resultWithCompletion:v8];
  }
}

void sub_100006584(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [SecureClock synchronizeWithURLResult:v6];
  }

  [*(a1 + 32) processResult:v6 error:v5 forAccount:*(a1 + 40)];
}

void sub_100007084(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAAD0;
  off_1003CAAD0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D39B0;
  qword_1003D39B0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D39B8;
  qword_1003D39B8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D39C0;
  qword_1003D39C0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D39C8;
  qword_1003D39C8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D39D0;
  qword_1003D39D0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D39D8;
  qword_1003D39D8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D39E0;
  qword_1003D39E0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D39E8;
  qword_1003D39E8 = v17;

  qword_1003D39F0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_1000071F4(id a1)
{

  return a1;
}

void sub_100007220(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t sub_100007240()
{

  return objc_opt_class();
}

void sub_100007270(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindArray:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindDictionary:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_10;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_15:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 bindUUID:v5 atPosition:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 absoluteString];
        [v9 bindString:v6 atPosition:a2];
      }

      else
      {
        v7 = [v5 objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          [v5 doubleValue];
          goto LABEL_15;
        }

        [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
      }
    }
  }

LABEL_10:
}

__CFString *sub_1000074B0(uint64_t a1)
{
  if (a1)
  {
    v2 = [[NSMutableString alloc] initWithCapacity:3 * a1 + 1];
    [v2 appendString:@"?"];
    v3 = a1 - 1;
    if (a1 != 1)
    {
      do
      {
        [v2 appendString:{@", ?"}];
        --v3;
      }

      while (v3);
    }

    v4 = [v2 copy];
  }

  else
  {
    v4 = &stru_10039AA00;
  }

  return v4;
}

void sub_100007E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007E28(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007ED0;
  v7[3] = &unk_10037F940;
  v10 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 48) + 8) + 24);

  return v5;
}

BOOL sub_100007ED0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [SQLiteEntity _insertValues:a3 intoTable:a2 withPersistentID:a1[6] onConnection:a1[4]];
  if (!result)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000081A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseTable];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _deleteRowFromTable:v3 usingColumn:@"ROWID"];

  [objc_opt_class() foreignDatabaseTablesToDelete];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [objc_opt_class() foreignKeyColumnForTable:{v9, v15}];
        if (v10)
        {
          *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _deleteRowFromTable:v9 usingColumn:v10];
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    *(v11 + 8) = 0;

    v13 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_100008374(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5 = @"SQLiteUserInfoKeyPersistentID";
  v3 = [NSNumber numberWithLongLong:*(a1 + 32)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"SQLiteDidDeleteEntityNotification" object:0 userInfo:v4];
}

void sub_100008558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008570(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_10000894C(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a2;
  v8 = [v5 disambiguatedSQLForProperty:v6];
  if (a3)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:v8];
  v7 = [a1[6] joinClauseForProperty:v6];

  if (v7)
  {
    [a1[5] addObject:v7];
  }
}

void sub_100008A00(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008AC8;
  v5[3] = &unk_10037FA50;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateRowsUsingBlock:v5];
}

void sub_100008AC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008BA4;
    v9[3] = &unk_10037FA28;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100008BA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sub_1000611A8(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_100008E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008E20(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyTableClusteredValuesWithValues:*(a1 + 40)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008EE4;
  v7[3] = &unk_10037FAF0;
  v11 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 56) + 8) + 24);

  return v5;
}

void sub_100008EE4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"ROWID";
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v11 = [[NSMutableString alloc] initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100009290;
    v30[3] = &unk_10037F9D8;
    v30[4] = v12;
    v30[5] = &v31;
    [v13 executeQuery:v11 withResults:v30];
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = [[NSMutableString alloc] initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000092F0;
    v24[3] = &unk_10037FAA0;
    v27 = v28;
    v16 = v15;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
    [v16 appendString:@" WHERE "];
    [v16 appendString:v7];
    [v16 appendString:@"."];
    [v16 appendString:v10];
    [v16 appendString:@" = ?;"];
    v18 = *(*(a1 + 40) + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000093A0;
    v21[3] = &unk_10037FAC8;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = [v18 executeStatement:v16 error:0 bindings:v21];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [SQLiteEntity _insertValues:v8 intoTable:v7 withPersistentID:*(*(a1 + 40) + 16) onConnection:*(*(a1 + 40) + 8)];
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void sub_100009290(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_1000092F0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) addObject:v5];
}

void sub_1000093A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        sub_100007270(v3, v10, *(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v11}];
}

void sub_1000098E8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        sub_100007270(v3, v10, v11);

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_100009B28(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v10 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[6] foreignDatabaseColumnForProperty:v10];
    }

    else
    {
      v8 = v10;
      v7 = a1[4];
    }

    v9 = [a1[5] objectForKey:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

void sub_100009FA8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAB38;
  off_1003CAB38 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3A00;
  qword_1003D3A00 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3A08;
  qword_1003D3A08 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3A10;
  qword_1003D3A10 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3A18;
  qword_1003D3A18 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3A20;
  qword_1003D3A20 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3A28;
  qword_1003D3A28 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3A30;
  qword_1003D3A30 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3A38;
  qword_1003D3A38 = v17;

  qword_1003D3A40 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10000A240(id a1)
{
  qword_1003D3A50 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_10000A2C0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.storekit.AMSMetricsQueue", v3);
  v2 = qword_1003D3A60;
  qword_1003D3A60 = v1;
}

void sub_10000AAE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (qword_1003D3AB8 != -1)
    {
      sub_1002C77C0();
    }

    v8 = qword_1003D3A88;
    if (os_log_type_enabled(qword_1003D3A88, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(v9 + 40);
      v11 = v8;
      v12 = [v10 logUUID];
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Purchase completed without a result or error.", &v15, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = ASDErrorWithDescription();
    [v13 finishWithError:v14];
  }
}

void sub_10000ACFC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAB40;
  off_1003CAB40 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3A70;
  qword_1003D3A70 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3A78;
  qword_1003D3A78 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3A80;
  qword_1003D3A80 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3A88;
  qword_1003D3A88 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3A90;
  qword_1003D3A90 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3A98;
  qword_1003D3A98 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3AA0;
  qword_1003D3AA0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3AA8;
  qword_1003D3AA8 = v17;

  qword_1003D3AB0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_10000AF0C(uint64_t a1)
{
  qword_1003D3AC0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000B574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B5A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversDownloadStatusChanged:v3];
}

void sub_10000C74C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAB48;
  off_1003CAB48 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3AD0;
  qword_1003D3AD0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3AD8;
  qword_1003D3AD8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3AE0;
  qword_1003D3AE0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3AE8;
  qword_1003D3AE8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3AF0;
  qword_1003D3AF0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3AF8;
  qword_1003D3AF8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3B00;
  qword_1003D3B00 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3B08;
  qword_1003D3B08 = v17;

  qword_1003D3B10 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10000D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D1CC(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:1];

  *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  if (qword_1003D3B68 != -1)
  {
    sub_1002C79E0();
  }

  v5 = qword_1003D3B20;
  if (os_log_type_enabled(qword_1003D3B20, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v4;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote action received for privacy prompt operation %{public}@", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 48));
}

void sub_10000D57C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CABB0;
  off_1003CABB0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3B20;
  qword_1003D3B20 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3B28;
  qword_1003D3B28 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3B30;
  qword_1003D3B30 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3B38;
  qword_1003D3B38 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3B40;
  qword_1003D3B40 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3B48;
  qword_1003D3B48 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3B50;
  qword_1003D3B50 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3B58;
  qword_1003D3B58 = v17;

  qword_1003D3B60 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10000DFDC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CABB8;
  off_1003CABB8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3B70;
  qword_1003D3B70 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3B78;
  qword_1003D3B78 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3B80;
  qword_1003D3B80 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3B88;
  qword_1003D3B88 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3B90;
  qword_1003D3B90 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3B98;
  qword_1003D3B98 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3BA0;
  qword_1003D3BA0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3BA8;
  qword_1003D3BA8 = v17;

  qword_1003D3BB0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10000E14C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000E1B8(id a1)
{
  v1 = objc_alloc_init(TaskQueue);
  v2 = qword_1003D3BC0;
  qword_1003D3BC0 = v1;

  v3 = qword_1003D3BC0;

  [v3 setName:@"com.apple.storekit.TaskQueue.networkQueue"];
}

void sub_10000E428(id a1)
{
  v1 = +[NSMapTable strongToWeakObjectsMapTable];
  v2 = qword_1003D3BD0;
  qword_1003D3BD0 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("Receipt managers queue", v5);
  v4 = qword_1003D3BD8;
  qword_1003D3BD8 = v3;
}

uint64_t sub_10000E4AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E4C4(uint64_t a1)
{
  v2 = qword_1003D3BD0;
  v3 = [*(a1 + 32) requestBundleID];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [[ReceiptManager alloc] initWithClient:*(a1 + 32)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = qword_1003D3BD0;
    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [v11 requestBundleID];
    [v10 setObject:v12 forKey:v13];
  }
}

id sub_10000E7DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v4 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing app receipt for %{public}@", &v9, 0x16u);
  }

  v7 = [v3 removeAppTransactionForBundleID:*(a1 + 32)];

  return v7;
}

id sub_10000EB64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v4 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing transactions, subscription statuses, and app receipt for %{public}@", &v9, 0x16u);
  }

  if ([v3 removeReceiptsForBundleID:*(a1 + 32)] && objc_msgSend(v3, "removeStatusesForBundleID:", *(a1 + 32)))
  {
    v7 = [v3 removeAppTransactionForBundleID:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10000EC7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v4 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing legacy pending transactions for %{public}@", &v9, 0x16u);
  }

  if ([v3 clearLegacyTransactionsLastUpdatedForBundleID:*(a1 + 32)])
  {
    v7 = [v3 removeCachedLegacyTransactionsForBundleID:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10000EF2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v4 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing legacy pending transactions for %{public}@", &v9, 0x16u);
  }

  if ([v3 clearLegacyTransactionsLastUpdatedForBundleID:*(a1 + 32)])
  {
    v7 = [v3 removeCachedLegacyTransactionsForBundleID:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10000F76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_10000F7A0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = a1[4];
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [WeakRetained error];
        v10 = v9 == 0;

        if (v10)
        {
          v11 = [WeakRetained appTransaction];
          (*(v8 + 16))(v8, v11, 0);
        }

        else
        {
          v11 = [WeakRetained error];
          (*(v8 + 16))(v8, 0, v11);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [a1[5] setAppTransactionReadOperation:0];
  objc_sync_exit(v3);
}

void sub_10000FB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FC4C;
    block[3] = &unk_10037FDC8;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v8 = v6;
    v9 = *(a1 + 48);
    dispatch_async(v5, block);
  }
}

uint64_t sub_10000FFE4(uint64_t a1)
{
  [*(a1 + 32) readCurrentTransactionsForProductID:*(a1 + 40) usingBlock:*(a1 + 64) productIDLog:*(a1 + 48) logKey:*(a1 + 56)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

void sub_100010034(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[7];
  v5 = a1[8];
  v7 = a1[6];
  v8 = a2;
  [v3 readCurrentTransactionsForProductID:v4 usingBlock:v5 productIDLog:v7 logKey:v6];
  (*(a1[9] + 16))();
}

void sub_1000102D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000102F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 client];
  v7 = [v6 requestBundleID];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000103DC;
  v10[3] = &unk_10037FE68;
  v9 = *(a1 + 48);
  v8 = v9;
  v11 = v9;
  [v5 enumerateCurrentReceiptsForProductID:v3 bundleID:v7 usingBlock:v10];
}

uint64_t sub_100010710(uint64_t a1)
{
  [*(a1 + 32) readAllTransactionsForProductID:*(a1 + 40) usingBlock:*(a1 + 64) productIDLog:*(a1 + 48) logKey:*(a1 + 56)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

void sub_100010760(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[7];
  v5 = a1[8];
  v7 = a1[6];
  v8 = a2;
  [v3 readAllTransactionsForProductID:v4 usingBlock:v5 productIDLog:v7 logKey:v6];
  (*(a1[9] + 16))();
}

void sub_100010A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010A24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 client];
  v7 = [v6 requestBundleID];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100010B08;
  v10[3] = &unk_10037FE68;
  v9 = *(a1 + 48);
  v8 = v9;
  v11 = v9;
  [v5 enumerateReceiptsForProductID:v3 bundleID:v7 usingBlock:v10];
}

uint64_t sub_100010D98(uint64_t a1)
{
  [*(a1 + 32) readUnfinishedTransactionsUsingBlock:*(a1 + 48) logKey:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_100010DE8(void *a1, void *a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = a1[4];
  v6 = a2;
  [v5 readUnfinishedTransactionsUsingBlock:v3 logKey:v4];
  (*(a1[7] + 16))();
}

void sub_100011034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011058(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100011130;
  v9[3] = &unk_10037FE68;
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [v4 enumerateUnfinishedTransactionReceiptsForBundleID:v6 usingBlock:v9];
}

void sub_1000112A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000112B8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v10 = [v4 client];
  v6 = [v10 requestBundleID];
  v7 = [v5 transactionForID:v3 bundleID:v6];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1000115C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v4 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = v4;
      v8 = [v5 client];
      v9 = [v8 requestBundleID];
      v10 = *(a1 + 48);
      *buf = 138544130;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v62 = v10;
      LOWORD(v63) = 2114;
      *(&v63 + 2) = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error syncing transactions while checking introductory offer eligibility for %{public}@/%{public}@. Result is based on last known data. %{public}@", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v62 = sub_10000E4AC;
  *&v63 = sub_10000E4BC;
  *(&v63 + 1) = 0;
  v11 = [*(a1 + 40) databaseStore];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100011B88;
  v49[3] = &unk_10037FF30;
  v52 = buf;
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v50 = v12;
  v51 = v13;
  [v11 readUsingSession:v49];

  v14 = [IntroOfferEligibilityCheck alloc];
  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) client];
  v17 = [v16 requestBundleID];
  v18 = [(IntroOfferEligibilityCheck *)v14 initForGroupID:v15 bundleID:v17 storefrontID:*(a1 + 56) logKey:*(a1 + 32)];
  v19 = [v18 eligibilityBasedOnStatus:*(*&buf[8] + 40)];

  if (!v19)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v20 = qword_1003D3C10;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      v26 = [*(a1 + 40) client];
      v27 = [v26 requestBundleID];
      v28 = *(a1 + 48);
      *v53 = 138544130;
      v54 = v25;
      v55 = 2114;
      v56 = v27;
      v57 = 2114;
      v58 = v28;
      v59 = 1026;
      v60 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@/%{public}@ introductory offer eligibility: %{public}d", v53, 0x26u);
    }

    goto LABEL_16;
  }

  if (v19 == 1)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v20 = qword_1003D3C10;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) client];
      v23 = [v22 requestBundleID];
      v24 = *(a1 + 48);
      *v53 = 138544130;
      v54 = v21;
      v55 = 2114;
      v56 = v23;
      v57 = 2114;
      v58 = v24;
      v59 = 1026;
      v60 = 1;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@/%{public}@ introductory offer eligibility: %{public}d", v53, 0x26u);
    }

LABEL_16:

    (*(*(a1 + 64) + 16))();
    goto LABEL_22;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v29 = [*(a1 + 40) databaseStore];
  v38 = _NSConcreteStackBlock;
  v39 = 3221225472;
  v40 = sub_100011C28;
  v41 = &unk_10037FF30;
  v44 = &v45;
  v30 = *(a1 + 48);
  v31 = *(a1 + 40);
  v42 = v30;
  v43 = v31;
  [v29 readUsingSession:&v38];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v32 = qword_1003D3C10;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = *(a1 + 32);
    v34 = [*(a1 + 40) client];
    v35 = [v34 requestBundleID];
    v36 = *(a1 + 48);
    v37 = *(v46 + 24);
    *v53 = 138544130;
    v54 = v33;
    v55 = 2114;
    v56 = v35;
    v57 = 2114;
    v58 = v36;
    v59 = 1026;
    v60 = v37;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@/%{public}@ introductory offer eligibility: %{public}d", v53, 0x26u);
  }

  (*(*(a1 + 64) + 16))();
  _Block_object_dispose(&v45, 8);
LABEL_22:

  _Block_object_dispose(buf, 8);
}

void sub_100011B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100011B88(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v10 = [v4 client];
  v6 = [v10 requestBundleID];
  v7 = [v5 subscriptionStatusForSubscriptionGroupID:v3 bundleID:v6];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100011C28(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v7 = [v4 client];
  v6 = [v7 requestBundleID];
  LOBYTE(v3) = [v5 hasTransactionWithSubscriptionOfferType:1 forSubscriptionGroupID:v3 bundleID:v6];

  *(*(a1[6] + 8) + 24) = v3;
}

void sub_100011DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011DC0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v7 = [v4 client];
  v6 = [v7 requestBundleID];
  LOBYTE(v3) = [v5 isTransactionFinishedForID:v3 bundleID:v6];

  *(*(a1[6] + 8) + 24) = v3;
}

void sub_100011F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011F70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 client];
  v5 = [v9 requestBundleID];
  v6 = [v4 lastUpdatedForBundleID:v5];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_1000120D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 removeCachedLegacyTransactionWithID:v2 forBundleID:v6];

  return v7;
}

void sub_100012458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained receiptString];
  v4 = [WeakRetained error];

  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = [WeakRetained error];
    (*(v5 + 16))(v5, v6);
LABEL_13:

    goto LABEL_14;
  }

  if ([v3 length])
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
    v7 = [*(a1 + 48) objectForKeyedSubscript:@"customURL"];
    if (v7)
    {
      v8 = *(a1 + 32);
      v21 = 0;
      [WriteReceipt writeReceiptData:v6 toURL:v7 logKey:v8 error:&v21];
      v9 = v21;
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v16 = [*(a1 + 40) client];
      v17 = [v16 callerBundleURL];
      v18 = *(a1 + 32);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100012740;
      v19[3] = &unk_10037FFD0;
      v20 = *(a1 + 56);
      [WriteReceipt writeReceiptData:v6 forBundleURL:v17 logKey:v18 completionHandler:v19];

      v9 = v20;
    }

    goto LABEL_13;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v10 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = [v11 client];
    v15 = [v14 requestBundleID];
    *buf = 138543618;
    v23 = v12;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished requesting unified receipt for %{public}@ with no error and no receipt data", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:
}

id sub_1000128B0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 client];
  v7 = [v6 requestBundleID];
  v8 = [v5 setFinishedForTransactionID:v3 bundleID:v7 logKey:a1[6]];

  return v8;
}

id sub_100012930(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 removeCachedLegacyTransactionWithID:v2 forBundleID:v6];

  return v7;
}

void sub_100012B24(uint64_t a1)
{
  v2 = [*(a1 + 32) readSubscriptionStatusForSubscriptionGroupID:*(a1 + 40)];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v3 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = v3;
    v7 = [v4 client];
    v8 = [v7 requestBundleID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished retrieving status for group ID %{public}@ for %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100012C58(id *a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000E4AC;
  v26 = sub_10000E4BC;
  v27 = 0;
  v4 = [a1[4] readSubscriptionStatusForSubscriptionGroupID:a1[5]];
  v5 = v23[5];
  v23[5] = v4;

  if ([a1[4] _needsSubscriptionStatusSyncForStatusDictionary:v23[5] logKey:a1[6]])
  {
    v6 = a1[4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100012EFC;
    v18[3] = &unk_100380048;
    v7 = a1[6];
    v8 = a1[5];
    v21 = &v22;
    v17 = a1[4];
    v9 = a1[7];
    *&v10 = v17;
    *(&v10 + 1) = v9;
    *&v11 = v7;
    *(&v11 + 1) = v8;
    v19 = v11;
    v20 = v10;
    [v6 _syncSubscriptionStatusWithReason:3 logKey:v7 completionHandler:v18];
  }

  else
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v12 = qword_1003D3C10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[5];
      v14 = a1[6];
      v15 = [a1[4] client];
      v16 = [v15 requestBundleID];
      *buf = 138543874;
      v29 = v14;
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished retrieving status for group ID %{public}@ for %{public}@", buf, 0x20u);
    }

    (*(a1[7] + 2))();
  }

  _Block_object_dispose(&v22, 8);
}

void sub_100012ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v4 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v17 = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error syncing subscription status for %{public}@. Returning last known status. %{public}@", &v17, 0x20u);
    }
  }

  v7 = [*(a1 + 48) readSubscriptionStatusForSubscriptionGroupID:*(a1 + 40)];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v10 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = v10;
    v15 = [v13 client];
    v16 = [v15 requestBundleID];
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished retrieving status for group ID %{public}@ for %{public}@", &v17, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100013200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013218(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v10 = [v4 client];
  v6 = [v10 requestBundleID];
  v7 = [v5 subscriptionStatusForSubscriptionGroupID:v3 bundleID:v6];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_10001343C(uint64_t a1)
{
  v2 = [*(a1 + 32) _readSubscriptionStatusForTransactionID:*(a1 + 40)];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v3 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = v3;
    v7 = [v4 client];
    v8 = [v7 requestBundleID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished retrieving status for transaction ID %{public}@ for %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100013570(id *a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000E4AC;
  v26 = sub_10000E4BC;
  v27 = 0;
  v4 = [a1[4] _readSubscriptionStatusForTransactionID:a1[5]];
  v5 = v23[5];
  v23[5] = v4;

  if ([a1[4] _needsSubscriptionStatusSyncForStatusDictionary:v23[5] logKey:a1[6]])
  {
    v6 = a1[4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100013814;
    v18[3] = &unk_100380048;
    v7 = a1[6];
    v8 = a1[5];
    v21 = &v22;
    v17 = a1[4];
    v9 = a1[7];
    *&v10 = v17;
    *(&v10 + 1) = v9;
    *&v11 = v7;
    *(&v11 + 1) = v8;
    v19 = v11;
    v20 = v10;
    [v6 _syncSubscriptionStatusWithReason:3 logKey:v7 completionHandler:v18];
  }

  else
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v12 = qword_1003D3C10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[5];
      v14 = a1[6];
      v15 = [a1[4] client];
      v16 = [v15 requestBundleID];
      *buf = 138543874;
      v29 = v14;
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished retrieving status for transaction ID %{public}@ for %{public}@", buf, 0x20u);
    }

    (*(a1[7] + 2))();
  }

  _Block_object_dispose(&v22, 8);
}

void sub_1000137EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013814(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v4 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v17 = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error syncing subscription status for %{public}@. Returning last known status. %{public}@", &v17, 0x20u);
    }
  }

  v7 = [*(a1 + 48) _readSubscriptionStatusForTransactionID:*(a1 + 40)];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v10 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = v10;
    v15 = [v13 client];
    v16 = [v15 requestBundleID];
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished retrieving status for transaction ID %{public}@ for %{public}@", &v17, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100013B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013B30(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v10 = [v4 client];
  v6 = [v10 requestBundleID];
  v7 = [v5 subscriptionStatusForTransactionID:v3 bundleID:v6];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t sub_100013DA4(uint64_t a1)
{
  [*(a1 + 32) readSubscriptionStatusUsingBlock:*(a1 + 40) statusCount:*(*(a1 + 56) + 8) + 24];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v2 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 56) + 8) + 24);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 client];
    v7 = [v6 requestBundleID];
    v9 = 134218242;
    v10 = v3;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished enumerating %li statuses for %{public}@", &v9, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100013EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v4 = *(a1 + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000141BC;
  v21[3] = &unk_1003800C0;
  v24 = &v25;
  v21[4] = v4;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  [v4 readSubscriptionStatusUsingBlock:v21 statusCount:*(*(a1 + 64) + 8) + 24];
  if (*(v26 + 24) == 1)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v5 = qword_1003D3C10;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 64) + 8) + 24);
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) client];
      v9 = [v8 requestBundleID];
      *buf = 138543874;
      v30 = v7;
      v31 = 2048;
      v32 = v6;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li statuses for %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001425C;
    v16[3] = &unk_1003800E8;
    v12 = v10;
    v13 = *(a1 + 32);
    v17 = v12;
    v18 = v13;
    v19 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = v15;
    v20 = v15;
    [v11 _syncSubscriptionStatusWithReason:3 logKey:v12 completionHandler:v16];
  }

  _Block_object_dispose(&v25, 8);
}

void sub_1000141BC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    if ([*(a1 + 32) _needsSubscriptionStatusSyncForStatusDictionary:v5 logKey:*(a1 + 40)])
    {
      *a3 = 1;
      goto LABEL_6;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  (*(*(a1 + 48) + 16))();
LABEL_6:
}

void sub_10001425C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v4 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = v4;
      v8 = [v5 client];
      v9 = [v8 requestBundleID];
      v17 = 138543874;
      v18 = v6;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error syncing subscription status for %{public}@. Returning last known status. %{public}@", &v17, 0x20u);
    }
  }

  [*(a1 + 40) readSubscriptionStatusUsingBlock:*(a1 + 48) statusCount:*(*(a1 + 64) + 8) + 24];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v10 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 64) + 8) + 24);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = [v12 client];
    v16 = [v15 requestBundleID];
    v17 = 138543874;
    v18 = v13;
    v19 = 2048;
    v20 = v11;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li statuses for %{public}@", &v17, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100014520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000145F8;
  v9[3] = &unk_100380110;
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [v4 enumerateSubscriptionStatusForBundleID:v6 usingBlock:v9];
}

void sub_100014748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 client];
  v5 = [v7 requestBundleID];
  v6 = [v4 cacheIncludesFinishedConsumablesForBundleID:v5];

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_1000148B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001497C;
  v7[3] = &unk_100380160;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_10001497C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100014A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014B28;
  v7[3] = &unk_100380160;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_100014B28(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100014D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014D54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100014E58;
  v10 = &unk_100380188;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v5 = objc_retainBlock(&v7);
  if ([WeakRetained needsSync])
  {
    [*(a1 + 40) _syncTransactionsAndSubscriptionStatusWithReason:objc_msgSend(WeakRetained logKey:"reason") completionHandler:{*(a1 + 48), v5}];
  }

  else
  {
    v6 = [WeakRetained error];
    (v5[2])(v5, v6);
  }
}

void sub_100014E58(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = *(a1 + 32);
  objc_sync_enter(v9);
  [*(a1 + 40) setValidateTask:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 40) readQueue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100015040;
        v11[3] = &unk_100380160;
        v13 = v7;
        v12 = v3;
        [v8 addOperationWithBlock:v11];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) removeAllObjects];
  objc_sync_exit(v9);
}

void sub_1000152C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000152E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 removeCachedLegacyTransactionsForBundleID:v6];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1000155E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015600(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 client];
  v5 = [v7 requestBundleID];
  v6 = [v4 cacheIncludesFinishedConsumablesForBundleID:v5];

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_10001589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000158CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 transactionHashesForBundleID:v6 totalCount:*(*(a1 + 48) + 8) + 24];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v14 = [*(a1 + 32) client];
  v10 = [v14 requestBundleID];
  v11 = [v4 statusHashesForBundleID:v10];

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1000159BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100015A74;
    v4[3] = &unk_100380228;
    v4[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    [(AnalyticsEvent *)_TtC9storekitd22ManualSyncSuccessEvent sendLazy:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100015CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100015D00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 transactionHashesForBundleID:v6 totalCount:*(*(a1 + 48) + 8) + 24];
  v8 = [v7 mutableCopy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v16 = [*(a1 + 32) client];
  v11 = [v16 requestBundleID];
  v12 = [v4 statusHashesForBundleID:v11];

  v13 = [v12 mutableCopy];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void sub_10001607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000160A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 clearLegacyTransactionsLastUpdatedForBundleID:v6];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1000162AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000162C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) client];
  v7 = [v6 requestBundleID];
  *(*(*(a1 + 72) + 8) + 24) = [v3 setTransactionInfo:v4 unfinishedIDs:v5 forBundleID:v7 logKey:*(a1 + 56) containsSubscriptions:*(a1 + 80)];

  v8 = [*(a1 + 48) client];
  v9 = [v8 currentAccountToken];

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v21 = qword_1003D3C10;
    if (!os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 56);
    v22 = *(a1 + 64);
    v24 = *(a1 + 48);
    v25 = v21;
    v26 = [v24 client];
    v27 = [v26 requestBundleID];
    v36 = 138543874;
    v37 = v23;
    v38 = 2114;
    v39 = v22;
    v40 = 2114;
    v41 = v27;
    v28 = "[%{public}@] Not setting transaction revision to %{public}@ for %{public}@ because write was unsuccessful.";
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v28, &v36, 0x20u);

    goto LABEL_21;
  }

  if (![*(a1 + 64) length])
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v29 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7C20((a1 + 56), (a1 + 48), v29);
    }

    goto LABEL_21;
  }

  if ([v9 length])
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v10 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = *(a1 + 48);
      v14 = v10;
      v15 = [v13 client];
      v16 = [v15 requestBundleID];
      v36 = 138543874;
      v37 = v12;
      v38 = 2114;
      v39 = v11;
      v40 = 2114;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting transaction revision to %{public}@ for %{public}@", &v36, 0x20u);
    }

    v17 = *(a1 + 64);
    v18 = *(a1 + 88);
    v19 = [*(a1 + 48) client];
    v20 = [v19 requestBundleID];
    *(*(*(a1 + 72) + 8) + 24) &= [v3 setRevision:v17 includesFinishedConsumables:v18 token:v9 forBundleID:v20];

    goto LABEL_21;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v30 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
  {
    v34 = *(a1 + 56);
    v33 = *(a1 + 64);
    v35 = *(a1 + 48);
    v25 = v30;
    v26 = [v35 client];
    v27 = [v26 requestBundleID];
    v36 = 138543874;
    v37 = v34;
    v38 = 2114;
    v39 = v33;
    v40 = 2114;
    v41 = v27;
    v28 = "[%{public}@] Not setting transaction revision to %{public}@ for %{public}@ because accountToken is empty";
    goto LABEL_13;
  }

LABEL_21:
  v31 = *(*(*(a1 + 72) + 8) + 24);

  return v31;
}

id sub_100016754(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 client];
  v7 = [v6 requestBundleID];
  v8 = [v5 reconcileUnfinishedTransactionIDs:v3 forBundleID:v7 logKey:a1[6]];

  return v8;
}

void sub_100016F7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 client];
  v5 = [v9 requestBundleID];
  v6 = [v4 currentRevisionForBundleID:v5];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10001702C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v1 = [WeakRetained error];

  if (!v1)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [WeakRetained statuses];
    v5 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v5)
    {
      v43 = *v60;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v60 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v59 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"subscriptionGroupIdentifier"];
          v9 = [v7 objectForKeyedSubscript:@"lastTransactions"];
          v10 = [v7 objectForKeyedSubscript:@"gracePeriodExpiresDate"];
          v11 = [*(a1 + 40) databaseStore];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100017684;
          v54[3] = &unk_1003802A0;
          v55 = v9;
          *v44 = *(a1 + 32);
          v12 = v44[0];
          v56 = vextq_s8(*v44, *v44, 8uLL);
          v57 = v8;
          v58 = v10;
          v13 = v10;
          v14 = v8;
          v15 = v9;
          [v11 modifyUsingTransaction:v54];

          v16 = *(a1 + 40);
          v17 = [v16 client];
          [v16 _clearOfferEligibilityCacheForSubscriptionGroupID:v14 client:v17 logKey:*(a1 + 32)];
        }

        v5 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v5);
    }

    v18 = [*(a1 + 40) client];
    v19 = [StoreKitServiceConnection connectionForClient:v18];

    if (v19)
    {
      v20 = [WeakRetained statuses];
      v21 = [v20 count] == 0;

      if (!v21)
      {
        if (qword_1003D3C30 != -1)
        {
          sub_1002C7BF8();
        }

        v22 = qword_1003D3C10;
        if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 32);
          v24 = v22;
          v25 = [WeakRetained statuses];
          v26 = [v25 count];
          *buf = 138543874;
          v65 = v23;
          v66 = 2048;
          v67 = v26;
          v68 = 2114;
          v69 = v19;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending %ld statuses to %{public}@", buf, 0x20u);
        }

        v27 = [v19 remoteObject];
        v28 = [WeakRetained statuses];
        [v27 receivedStatuses:v28];
      }
    }

    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v29 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      v32 = v29;
      v33 = [v31 client];
      v34 = [v33 requestBundleID];
      *buf = 138543618;
      v65 = v30;
      v66 = 2114;
      v67 = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated subscription status for %{public}@", buf, 0x16u);
    }

    v2 = 0;
    goto LABEL_25;
  }

  v2 = [WeakRetained error];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v3 = qword_1003D3C10;
  v4 = a1;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
  {
    sub_1002C7CF0(a1, v3, v2);
LABEL_25:
    v4 = a1;
  }

  v45 = *(*(v4 + 40) + 32);
  objc_sync_enter(v45);
  [*(v4 + 40) setSubscriptionStatusSyncOperation:0];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = *(*(v4 + 40) + 32);
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v36)
  {
    v37 = *v51;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = *(*(&v50 + 1) + 8 * j);
        v40 = [*(a1 + 40) readQueue];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100017854;
        v47[3] = &unk_100380160;
        v49 = v39;
        v48 = v2;
        [v40 addOperationWithBlock:v47];
      }

      v36 = [v35 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v36);
  }

  [*(*(a1 + 40) + 32) removeAllObjects];
  objc_sync_exit(v45);
}

id sub_100017684(uint64_t a1, void *a2)
{
  v18 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * v7) objectForKeyedSubscript:@"signedTransactionInfo"];
        v9 = v8;
        if (v8)
        {
          v23 = v8;
          v10 = [NSArray arrayWithObjects:&v23 count:1];
          v11 = [*(a1 + 40) client];
          v12 = [v11 requestBundleID];
          [v18 setTransactionInfo:v10 unfinishedIDs:0 forBundleID:v12 logKey:*(a1 + 48) containsSubscriptions:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v15 = [*(*(a1 + 40) + 56) requestBundleID];
  v16 = [v18 setSubscriptionRenewalInfo:v14 forGroupID:v13 bundleID:v15 gracePeriodExpirationDate:*(a1 + 64) logKey:*(a1 + 48)];

  return v16;
}

void sub_100017D84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 client];
  v5 = [v9 requestBundleID];
  v6 = [v4 currentRevisionForBundleID:v5];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_100017E20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = [*(a1 + 32) _setTransactionInfo:v9 unfinishedIDs:a3 includesFinishedConsumables:*(a1 + 56) forRevision:a4 logKey:*(a1 + 40) containsSubscriptions:a5];
  v11 = *(a1 + 48);
  v12 = v11 > 6;
  v13 = (1 << v11) & 0x4C;
  if (!v12 && v13 != 0)
  {
    v15 = [*(a1 + 32) client];
    v16 = [StoreKitServiceConnection connectionForClient:v15];

    if (v16 && [v9 count])
    {
      if (qword_1003D3C30 != -1)
      {
        sub_1002C7BE4();
      }

      v17 = qword_1003D3C10;
      if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = v17;
        v22 = 138543874;
        v23 = v18;
        v24 = 2048;
        v25 = [v9 count];
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending %ld receipts to %{public}@", &v22, 0x20u);
      }

      v20 = [v16 remoteObject];
      [v20 receivedTransactions:v9];
    }
  }

  return v10;
}

void sub_100017FD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  if (v3)
  {
    v3 = [WeakRetained error];
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BE4();
    }

    v4 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7DC0(a1, v4, v3);
    }
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000182DC;
  v24[3] = &unk_1003802F0;
  v24[4] = *(a1 + 40);
  v5 = objc_retainBlock(v24);
  if ([WeakRetained containedSubscriptions])
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v6 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v6;
      v10 = [v7 client];
      v11 = [v10 requestBundleID];
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transaction sync contained subscriptions. Syncing subscription status for %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 56);
    v15 = a1 + 32;
    v13 = *(a1 + 32);
    v14 = *(v15 + 8);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000184E4;
    v22[3] = &unk_10037FFD0;
    v23 = v5;
    [v14 _syncSubscriptionStatusWithReason:v12 logKey:v13 completionHandler:v22];
  }

  else
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v16 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = v16;
      v20 = [v17 client];
      v21 = [v20 requestBundleID];
      *buf = 138543618;
      v26 = v18;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transaction sync did not contain subscriptions for %{public}@", buf, 0x16u);
    }

    (v5[2])(v5, v3);
  }
}

void sub_1000182DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = *(*(a1 + 32) + 40);
  objc_sync_enter(v9);
  [*(a1 + 32) setTransactionSyncOperation:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 32) + 40);
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 32) readQueue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000184D0;
        v11[3] = &unk_100380160;
        v13 = v7;
        v12 = v3;
        [v8 addOperationWithBlock:v11];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  objc_sync_exit(v9);
}

void sub_10001861C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CABC0;
  off_1003CABC0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3BE8;
  qword_1003D3BE8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3BF0;
  qword_1003D3BF0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3BF8;
  qword_1003D3BF8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3C00;
  qword_1003D3C00 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3C08;
  qword_1003D3C08 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3C10;
  qword_1003D3C10 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3C18;
  qword_1003D3C18 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3C20;
  qword_1003D3C20 = v17;

  qword_1003D3C28 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100018A48(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    if (qword_1003D3C80 != -1)
    {
      sub_1002C7E8C();
    }

    v8 = qword_1003D3C60;
    if (os_log_type_enabled(qword_1003D3C60, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7EA0(a1, v8, v7);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v6 integerValue];
  }

  if (qword_1003D3C80 != -1)
  {
    sub_1002C7F9C();
  }

  v10 = qword_1003D3C60;
  if (os_log_type_enabled(qword_1003D3C60, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = v10;
    v13 = [v11 logKey];
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2050;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] App transaction revision %{public}ld", buf, 0x16u);
  }

  if ([*(a1 + 32) ignoreCache])
  {
    goto LABEL_20;
  }

  v14 = [*(a1 + 32) client];
  v15 = [v14 currentAccountToken];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = sub_100018E04;
  v36 = sub_100018E14;
  v37 = 0;
  v16 = [*(a1 + 32) store];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100018E1C;
  v25 = &unk_100380360;
  v28 = buf;
  v29 = v9;
  v26 = *(a1 + 32);
  v17 = v15;
  v27 = v17;
  [v16 readUsingSession:&v22];

  if (![*(*&buf[8] + 40) length])
  {

    _Block_object_dispose(buf, 8);
LABEL_20:
    [*(a1 + 32) _appTransactionSyncWithRevision:v9 forceAuth:{objc_msgSend(*(a1 + 32), "ignoreCache")}];
    goto LABEL_21;
  }

  if (qword_1003D3C80 != -1)
  {
    sub_1002C7F9C();
  }

  v18 = qword_1003D3C60;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [*(a1 + 32) logKey];
    v20 = [*(a1 + 32) client];
    v21 = [v20 requestBundleID];
    *v30 = 138543618;
    v31 = v19;
    v32 = 2114;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Found cached app transaction for %{public}@", v30, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 90), *(*&buf[8] + 40));
  [*(a1 + 32) completeWithSuccess];

  _Block_object_dispose(buf, 8);
LABEL_21:
}

void sub_100018DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018E04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100018E1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  v12 = [v4 client];
  v6 = [v12 requestBundleID];
  v7 = [*(a1 + 32) client];
  v8 = [v7 requestBundleVersion];
  v9 = [v5 appTransactionWithRevision:v3 forBundleID:v6 bundleVersion:v8 accountToken:*(a1 + 40)];

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1000191CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000191FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained receiptString];
  v4 = [v3 length];
  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = [*(a1 + 32) client];
    v8 = [v7 currentAccountToken];

    if ([v8 length])
    {
      if (qword_1003D3C80 != -1)
      {
        sub_1002C7E8C();
      }

      v9 = qword_1003D3C60;
      if (os_log_type_enabled(qword_1003D3C60, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = v9;
        v12 = [v10 logKey];
        v13 = *(a1 + 48);
        v14 = [*(a1 + 32) client];
        v15 = [v14 requestBundleID];
        *buf = 138543874;
        v27 = v12;
        v28 = 2048;
        v29 = v13;
        v30 = 2114;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Caching app transaction revision %ld for %{public}@", buf, 0x20u);
      }

      v16 = [*(a1 + 32) store];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000194A4;
      v21[3] = &unk_1003803B0;
      v17 = v3;
      v25 = *(a1 + 48);
      v18 = *(a1 + 32);
      v22 = v17;
      v23 = v18;
      v24 = v8;
      [v16 modifyUsingTransaction:v21];
    }

    else
    {
      if (qword_1003D3C80 != -1)
      {
        sub_1002C7E8C();
      }

      v20 = qword_1003D3C60;
      if (os_log_type_enabled(qword_1003D3C60, OS_LOG_TYPE_ERROR))
      {
        sub_1002C7FC4(v5, v20);
      }
    }

    objc_storeStrong((*v5 + 90), v3);
    [*v5 completeWithSuccess];
  }

  else
  {
    v19 = [WeakRetained error];
    [v6 completeWithError:v19];
  }
}

id sub_1000194A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 client];
  v8 = [v7 requestBundleID];
  v9 = [*(a1 + 40) client];
  v10 = [v9 requestBundleVersion];
  v11 = [v6 setAppTransaction:v4 revision:v3 forBundleID:v8 bundleVersion:v10 token:*(a1 + 48)];

  return v11;
}

void sub_100019690(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CABC8;
  off_1003CABC8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3C38;
  qword_1003D3C38 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3C40;
  qword_1003D3C40 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3C48;
  qword_1003D3C48 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3C50;
  qword_1003D3C50 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3C58;
  qword_1003D3C58 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3C60;
  qword_1003D3C60 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3C68;
  qword_1003D3C68 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3C70;
  qword_1003D3C70 = v17;

  qword_1003D3C78 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_100019800(sqlite3 *a1, void *a2)
{
  v3 = a2;
  sqlite3_extended_result_codes(a1, 1);
  v4 = [v3 encryptionKeyId];

  if (v4)
  {
    [v3 encryptionKeyId];
  }

  v5 = sqlite3_exec(a1, "PRAGMA journal_mode=WAL", 0, 0, 0);
  if (!v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"PRAGMA cache_size=%ld", objc_msgSend(v3, "cacheSize")];
    v5 = sqlite3_exec(a1, [v6 UTF8String], 0, 0, 0);
  }

  return v5;
}

id sub_1000198F8(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSFileManager);
  v3 = sub_1000199A8(v1, 0);
  [v2 removeItemAtPath:v3 error:0];

  v4 = sub_1000199A8(v1, 1);
  [v2 removeItemAtPath:v4 error:0];

  v5 = [v2 removeItemAtPath:v1 error:0];
  return v5;
}

id sub_1000199A8(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"-wal";
  }

  else
  {
    v6 = @"-shm";
  }

  v2 = [v4 stringByAppendingString:v6];
LABEL_6:

  return v2;
}

id sub_100019A20(sqlite3 *a1)
{
  v2 = sqlite3_errcode(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sqlite3_errmsg(a1);
    if (v4)
    {
      v5 = [[NSString alloc] initWithUTF8String:v4];
      v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v5, NSLocalizedDescriptionKey, 0}];
    }

    v6 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:v3 userInfo:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100019AF8(sqlite3 **a1, void *a2)
{
  v3 = a2;
  ppDb = 0;
  v4 = [v3 databasePath];
  if ([v3 isReadOnly])
  {
    v5 = 2;
  }

  else
  {
    v6 = objc_alloc_init(NSFileManager);
    v7 = [v4 stringByDeletingLastPathComponent];
    [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v5 = 6;
  }

  v8 = [v3 protectionType];
  v9 = v8;
  if (v8)
  {
    v5 |= sub_100019C24(v8);
  }

  v10 = sqlite3_open_v2([v4 fileSystemRepresentation], &ppDb, v5, 0);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_100019800(ppDb, v3);
    if (!v11)
    {
      *a1 = ppDb;
      goto LABEL_12;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

LABEL_12:

  return v11;
}

uint64_t sub_100019C24(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:NSFileProtectionNone])
    {
      v3 = 0x400000;
    }

    else if ([v2 isEqualToString:NSFileProtectionComplete])
    {
      v3 = 0x100000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v3 = 0x200000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v3 = 3145728;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100019CF8(void *a1)
{
  ppDb = 0;
  if (sqlite3_open_v2([a1 fileSystemRepresentation], &ppDb, 2, 0))
  {
    return 0;
  }

  v3 = 129;
  v1 = sqlite3_file_control(ppDb, 0, 101, &v3) == 0;
  sqlite3_close(ppDb);
  return v1;
}

id sub_10001A118()
{
  if (qword_1003D3CD0 != -1)
  {
    sub_1002C80A8();
  }

  v1 = qword_1003D3CA0;

  return v1;
}

void sub_10001A15C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[42];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A20C;
  v7[3] = &unk_100380470;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v4 buyParams:v5 completionHandler:v7];
}

void sub_10001A20C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) client];
  v5 = [v4 objc_clientType];

  if (v5 == 3)
  {
    [*(a1 + 32) _performWithAccount:0 originatingStorefront:*(a1 + 40) buyParams:v3];
  }

  else
  {
    v6 = [*(a1 + 32) client];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001A31C;
    v7[3] = &unk_100380448;
    v7[4] = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 40);
    [_TtC9storekitd19objc_AccountManager accountWithClient:v6 completionHandler:v7];
  }
}

void sub_10001A31C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 _performWithAccount:a2 originatingStorefront:v3 buyParams:v4];
  }

  else
  {
    v6 = [*(a1 + 32) client];
    v7 = [*(a1 + 32) dialogContext];
    v8 = [*(a1 + 32) logKey];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001A460;
    v10[3] = &unk_100380420;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    v12 = *(a1 + 48);
    [_TtC9storekitd19objc_AccountManager authenticateWithClient:v6 reason:@"In App" dialogContext:v7 logKey:v8 completionHandler:v10];
  }
}

void sub_10001A460(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) completeWithError:a3];
  }

  else
  {
    [*(a1 + 40) setParameter:&__kCFBooleanTrue forKey:AMSBuyParamPropertyHasBeenAuthedForBuy];
    [*(a1 + 32) _performWithAccount:v5 originatingStorefront:*(a1 + 48) buyParams:*(a1 + 40)];
  }
}

void sub_10001A5EC(uint64_t a1)
{
  v149 = (a1 + 32);
  v1 = [*(a1 + 32) client];
  v141 = [v1 bag];

  v2 = v149;
  if (*(a1 + 40) && [*v149 privacyAcknowledgementRequired] && (objc_msgSend(*v149, "client"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "objc_clientType"), v3, v2 = v149, v4 == 1) && (v5 = -[AcknowledgePrivacyTask initWithAccount:]([AcknowledgePrivacyTask alloc], "initWithAccount:", *(a1 + 40)), v6 = *(a1 + 32), v161 = 0, objc_msgSend(v6, "runSubTask:returningError:", v5, &v161), v7 = v161, v5, v2 = v149, v7))
  {
    v140 = 0;
    v142 = 0;
  }

  else
  {
    *v175 = 0;
    *&v175[8] = v175;
    *&v175[16] = 0x2020000000;
    v176 = 1;
    if (*(a1 + 48))
    {
      v8 = [*v2 paymentDelegate];
      v9 = v8 == 0;

      v2 = v149;
      if (!v9)
      {
        v10 = [*(a1 + 40) ams_storefront];
        if (v10 && ([*(a1 + 48) isEqualToString:v10] & 1) == 0)
        {
          v11 = dispatch_semaphore_create(0);
          v12 = [*v149 paymentDelegate];
          v13 = *(a1 + 48);
          v158[0] = _NSConcreteStackBlock;
          v158[1] = 3221225472;
          v158[2] = sub_10001BBBC;
          v158[3] = &unk_1003804C0;
          v160 = v175;
          v14 = v11;
          v159 = v14;
          [v12 shouldContinueTransactionWithNewStorefront:v13 replyBlock:v158];

          v15 = dispatch_time(0, 1000000000);
          if (dispatch_semaphore_wait(v14, v15) >= 1)
          {
            if (qword_1003D3CD0 != -1)
            {
              sub_1002C80BC();
            }

            v16 = qword_1003D3CA0;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v133 = [*v149 logKey];
              v134 = [*v149 client];
              v135 = [v134 requestBundleID];
              *buf = 138543618;
              v164 = v133;
              v165 = 2114;
              v166 = v135;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] shouldContinueTransaction timed out for bundle ID: %{public}@. Not continuing transaction.", buf, 0x16u);
            }

            *(*&v175[8] + 24) = 0;
          }
        }

        v2 = v149;
      }
    }

    if (*(*&v175[8] + 24))
    {
      v17 = [*v2 siwaAuthorizationInfo];
      v18 = v17 == 0;

      if (v18)
      {
        v26 = v149;
        v19 = [[AMSPurchase alloc] initWithPurchaseType:3 buyParams:*(a1 + 56)];
      }

      else
      {
        v19 = [[AMSPurchaseSIWA alloc] initWithPurchaseType:3 buyParams:*(a1 + 56)];
        v20 = [*v149 siwaAuthorizationInfo];
        v21 = [v20 teamID];
        [v19 setTeamID:v21];

        v22 = [*v149 siwaAuthorizationInfo];
        v23 = [v22 clientID];
        [v19 setBundleID:v23];

        v24 = [*v149 siwaAuthorizationInfo];
        v25 = [v24 serviceID];
        [v19 setServiceID:v25];

        v26 = v149;
      }

      [v19 setAccount:*(a1 + 40)];
      v27 = [*v26 client];
      v28 = [v27 processInfo];
      [v19 setClientInfo:v28];

      [v19 setUserInitiated:1];
      [v19 setSendBlindedData:1];
      v29 = [*v149 logKey];
      [v19 setLogUUID:v29];

      v30 = [*v149 presentingSceneID];

      if (v30)
      {
        v31 = [*v149 presentingSceneID];
        [v19 setPresentingSceneIdentifier:v31];
      }

      v32 = v149;
      if ([*v149 apiVersion] != 1)
      {
        v173 = @"X-Apple-Client-StoreKit-Version";
        v33 = sub_100028E54([*v149 apiVersion]);
        v174 = v33;
        v34 = [NSDictionary dictionaryWithObjects:&v174 forKeys:&v173 count:1];
        [v19 setAdditionalHeaders:v34];

        v32 = v149;
      }

      v35 = [*v32 _generateMetricsOverlay];
      [v19 setMetricsOverlay:v35];

      [v19 setPerformanceMetricsOverlay:&off_1003A1318];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [[AMSPurchaseSIWATask alloc] initWithPurchaseSIWA:v19 bag:v141];
        [v36 setDelegate:*v149];
        if (qword_1003D3CD0 != -1)
        {
          sub_1002C80BC();
        }

        v37 = qword_1003D3CA0;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v147 = [*v149 logKey];
          v145 = [*v149 productIdentifier];
          v38 = [*v149 siwaAuthorizationInfo];
          v39 = [v38 teamID];
          v40 = [*v149 siwaAuthorizationInfo];
          v41 = [v40 clientID];
          v42 = [*v149 siwaAuthorizationInfo];
          v43 = [v42 serviceID];
          *buf = 138544386;
          v164 = v147;
          v165 = 2114;
          v166 = v145;
          v167 = 2114;
          v168 = v39;
          v169 = 2114;
          v170 = v41;
          v171 = 2114;
          v172 = v43;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running auth payment for %{public}@ with teamID: %{public}@ clientID: %{public}@ serviceID: %{public}@", buf, 0x34u);
        }

        v44 = [v36 performPurchaseSIWA];
        v157 = 0;
        v45 = [v44 resultWithError:&v157];
        v7 = v157;

        v142 = [v45 authorizationResult];
        v140 = [v45 purchaseResult];
        if (!v142)
        {
          if (qword_1003D3CD0 != -1)
          {
            sub_1002C80BC();
          }

          v46 = qword_1003D3CA0;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = [*v149 logKey];
            v48 = [*v149 productIdentifier];
            sub_1002C80E4(v47, v48, buf, v46);
          }
        }
      }

      else
      {
        v45 = [[AMSPurchaseTask alloc] initWithPurchase:v19 bag:v141];
        [v45 setDelegate:*v149];
        if (qword_1003D3CD0 != -1)
        {
          sub_1002C80BC();
        }

        v49 = qword_1003D3CA0;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [*v149 logKey];
          v51 = [*v149 productIdentifier];
          *buf = 138543618;
          v164 = v50;
          v165 = 2112;
          v166 = v51;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running payment for %@", buf, 0x16u);
        }

        v36 = [v45 performPurchase];
        v156 = 0;
        v140 = [v36 resultWithError:&v156];
        v7 = v156;
        v142 = 0;
      }

      v2 = v149;
    }

    else
    {
      v7 = ASDErrorWithDescription();
      v142 = 0;
      v140 = 0;
    }

    _Block_object_dispose(v175, 8);
    if (!v7)
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80BC();
        v2 = v149;
      }

      v54 = qword_1003D3CA0;
      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *v2;
        v56 = v54;
        v57 = [v55 logKey];
        *v175 = 138543362;
        *&v175[4] = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@] Payment complete", v175, 0xCu);

        v2 = v149;
      }

      v146 = [*v2 _processPurchaseResult:v140 authorizationResult:v142];
      goto LABEL_137;
    }
  }

  v146 = v7;
  if (qword_1003D3CD0 != -1)
  {
    sub_1002C80BC();
  }

  v52 = qword_1003D3CA0;
  if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
  {
    sub_1002C8154(v149, v52);
  }

  if (([v7 isCancelledError] & 1) == 0)
  {
    [*v149 clearTransactionCache];
  }

  v53 = [v7 userInfo];
  v138 = [v53 tcr_numberForKey:AMSErrorUserInfoKeyServerErrorCode];

  if (v138)
  {
    v139 = [v138 integerValue];
  }

  else
  {
    v139 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v58 = [v7 userInfo];
  v143 = [v58 tcr_dictionaryForKey:AMSErrorUserInfoKeyServerPayload];

  if (v143)
  {
    if ([v143 tcr_BOOLForKey:@"trigger-download"])
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80BC();
      }

      v59 = qword_1003D3CA0;
      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *v149;
        v61 = v59;
        v62 = [v60 logKey];
        *v175 = 138543362;
        *&v175[4] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed payment had a trigger queue check.", v175, 0xCu);
      }

      v63 = +[ASDPurchaseManager sharedManager];
      [v63 checkPendingQueue];
    }

    if (v139 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v64 = [v143 tcr_stringForKey:@"failureType"];
      v65 = v64;
      if (v64)
      {
        v139 = [v64 integerValue];
      }

      else
      {
        v139 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v66 = [v7 domain];
    if ([v66 isEqualToString:AMSErrorDomain])
    {
      v67 = [v7 code] == 511;

      if (v67)
      {
        goto LABEL_129;
      }
    }

    else
    {
    }

    v68 = [*v149 client];
    v69 = [v68 objc_clientType] == 3;

    if (v69)
    {
      if (v139 == 3705)
      {
        if (qword_1003D3CD0 != -1)
        {
          sub_1002C80BC();
        }

        v110 = qword_1003D3CA0;
        if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
        {
          v111 = *v149;
          v112 = v110;
          v113 = [v111 logKey];
          *v175 = 138543618;
          *&v175[4] = v113;
          *&v175[12] = 2114;
          *&v175[14] = v7;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mapping Xcode error to ask to buy: %{public}@", v175, 0x16u);
        }

        v74 = ASDErrorWithUnderlyingErrorAndDescription();
        v75 = 3705;
      }

      else
      {
        if (v139 != 3038)
        {
          if (qword_1003D3CD0 != -1)
          {
            sub_1002C80BC();
          }

          v114 = qword_1003D3CA0;
          if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
          {
            v115 = *v149;
            v116 = v114;
            v117 = [v115 logKey];
            *v175 = 138543618;
            *&v175[4] = v117;
            *&v175[12] = 2114;
            *&v175[14] = v7;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mapping Xcode error to StoreKit error: %{public}@", v175, 0x16u);
          }

          v74 = ASDErrorWithUnderlyingErrorAndDescription();
          goto LABEL_120;
        }

        if (qword_1003D3CD0 != -1)
        {
          sub_1002C80BC();
        }

        v70 = qword_1003D3CA0;
        if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *v149;
          v72 = v70;
          v73 = [v71 logKey];
          *v175 = 138543618;
          *&v175[4] = v73;
          *&v175[12] = 2114;
          *&v175[14] = v7;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mapping Xcode error to interrupted: %{public}@", v175, 0x16u);
        }

        v74 = ASDErrorWithUnderlyingErrorAndDescription();
        v75 = 3038;
      }

      v139 = v75;
LABEL_120:
      v86 = v7;
      v146 = v74;
      goto LABEL_128;
    }

    v76 = [v143 valueForKeyPath:off_1003CAF48];
    if (v76)
    {
      v77 = [v143 valueForKeyPath:off_1003CAF50];
      v78 = v77 == 0;

      if (!v78)
      {
        if (qword_1003D3CD0 != -1)
        {
          sub_1002C80BC();
        }

        v79 = qword_1003D3CA0;
        if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *v149;
          v81 = v79;
          v82 = [v80 logKey];
          *v175 = 138543362;
          *&v175[4] = v82;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received invalid payment request.", v175, 0xCu);
        }

        v83 = [v143 tcr_integerValueForKeyPath:off_1003CAF48 missingValue:0];
        v84 = [NSDictionary alloc];
        v85 = [v143 tcr_stringForKeyPath:off_1003CAF50];
        v86 = [v84 initWithObjectsAndKeys:{v85, NSLocalizedDescriptionKey, 0}];

        v87 = [NSError alloc];
        v88 = +[_TtC9storekitd25InvalidRequestServerError domain];
        v89 = [v87 initWithDomain:v88 code:v83 userInfo:v86];

        v146 = v89;
        goto LABEL_128;
      }
    }

    v137 = [v143 tcr_urlForKeyPath:@"dialog.okButtonAction.url"];
    v86 = v137;
    if (!v137)
    {
LABEL_128:

      goto LABEL_129;
    }

    v90 = [NSURLComponents componentsWithURL:v137 resolvingAgainstBaseURL:0];
    v136 = v90;
    if (!v90)
    {
LABEL_127:

      v86 = v137;
      goto LABEL_128;
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v91 = [v90 queryItems];
    v92 = [v91 countByEnumeratingWithState:&v152 objects:v162 count:16];
    if (v92)
    {
      v93 = 0;
      v148 = 0;
      v94 = 0;
      v95 = *v153;
      do
      {
        for (i = 0; i != v92; i = i + 1)
        {
          if (*v153 != v95)
          {
            objc_enumerationMutation(v91);
          }

          v97 = *(*(&v152 + 1) + 8 * i);
          v98 = [v97 name];
          v99 = [v98 isEqualToString:@"offerName"];

          if (v99)
          {
            v93 = 1;
          }

          else
          {
            v100 = [v97 name];
            v101 = [v100 isEqualToString:@"pricingParameters"];

            if (v101)
            {
              v148 = 1;
            }

            else
            {
              v102 = [v97 name];
              v103 = [v102 isEqualToString:@"productType"];

              v94 |= v103;
            }
          }
        }

        v92 = [v91 countByEnumeratingWithState:&v152 objects:v162 count:16];
      }

      while (v92);

      if ((v93 & v148 & v94 & 1) == 0)
      {
        goto LABEL_126;
      }

      v104 = [v146 isCancelledError];
      v105 = sub_10001A118();
      v106 = os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
      if (v104)
      {
        if (v106)
        {
          v107 = [*v149 logKey];
          v108 = [v137 absoluteString];
          *v175 = 138543618;
          *&v175[4] = v107;
          *&v175[12] = 2114;
          *&v175[14] = v108;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%{public}@] The request was cancelled for URL: %{public}@", v175, 0x16u);
        }

        v109 = ASDErrorWithUnderlyingErrorAndInfo();
      }

      else
      {
        if (v106)
        {
          v118 = [*v149 logKey];
          *v175 = 138543618;
          *&v175[4] = v118;
          *&v175[12] = 2114;
          *&v175[14] = v146;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mapping error to interrupted: %{public}@", v175, 0x16u);
        }

        v109 = ASDErrorWithUnderlyingErrorAndDescription();
      }

      v91 = v146;
      v146 = v109;
    }

LABEL_126:
    v90 = v136;
    goto LABEL_127;
  }

LABEL_129:
  if ([*v149 apiVersion] != 1 && v139 == 3532)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v119 = qword_1003D3CA0;
    v120 = os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT);
    v121 = v149;
    if (v120)
    {
      v122 = *v149;
      v123 = v119;
      v124 = [v122 logKey];
      *v175 = 138543618;
      *&v175[4] = v124;
      *&v175[12] = 2114;
      *&v175[14] = v146;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchased already subscribed subscription: %{public}@", v175, 0x16u);

      v121 = v149;
    }

    v125 = *v121;
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_10001BBD0;
    v150[3] = &unk_1003804E8;
    v150[4] = v125;
    v151 = v146;
    v126 = v146;
    [v125 _latestTransactionWithCompletion:v150];

    goto LABEL_146;
  }

LABEL_137:
  v127 = *v149;
  if (v146)
  {
    [v127 completeWithError:?];
  }

  else
  {
    if ([v127 shouldInstallParentAppWithBuyParams:*(a1 + 56)])
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80BC();
      }

      v128 = qword_1003D3CA0;
      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
      {
        v129 = *v149;
        v130 = v128;
        v131 = [v129 logKey];
        *v175 = 138543362;
        *&v175[4] = v131;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pinging AppStoreDaemon to start parent app install", v175, 0xCu);
      }

      v132 = +[ASDPurchaseManager sharedManager];
      [v132 checkPendingQueue];
    }

    [*v149 completeWithSuccess];
  }

LABEL_146:
}

void sub_10001BBD0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9 = off_1003CB110;
    v10 = a2;
    v4 = a2;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [*(a1 + 32) setTransaction:v5];

    [*(a1 + 32) completeWithSuccess];
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 0;
    [v7 completeWithError:v6];
  }
}

void sub_10001C830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 client];
  v5 = [v9 requestBundleID];
  v6 = [v4 pendingLegacyTransactionsAccountTokenForBundleID:v5];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_10001C8FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [*(a1 + 32) transaction];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [*(a1 + 32) logKey];
  v10 = [v4 cacheLegacyTransactionsForBundleID:v6 transactions:v8 logKey:v9];

  return v10;
}

void sub_10001CBF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) lastUpdated];
    [v4 timeIntervalSinceNow];
    v6 = v5;

    if (v6 <= -60.0)
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80A8();
      }

      v8 = qword_1003D3CA0;
      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
      {
        sub_1002C873C(a1, v8);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001CDC0;
      v13[3] = &unk_1003805D8;
      v11 = *(a1 + 32);
      v9 = v11.i64[0];
      v14 = vextq_s8(v11, v11, 8uLL);
      v12 = *(a1 + 48);
      v10 = v12;
      v15 = v12;
      [v9 syncReceiptsWithReason:1 completionHandler:v13];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80A8();
      }

      v7 = qword_1003D3CA0;
      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
      {
        sub_1002C87D8(a1, v7);
      }
    }
  }
}

void sub_10001CDC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80A8();
    }

    v4 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8874(a1, v4);
    }
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) productIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001CF14;
  v12[3] = &unk_100380588;
  v7 = *(a1 + 48);
  v13 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001CF4C;
  v9[3] = &unk_1003805B0;
  v8 = *(a1 + 32);
  v11 = v13;
  v9[4] = v8;
  v10 = v7;
  [v5 enumerateReceiptsForProductID:v6 skipTransactionSync:0 usingBlock:v12 completionHandler:v9];
}

void sub_10001CF4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || !*(*(*(a1 + 48) + 8) + 40))
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80A8();
    }

    v4 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8910(a1, v4);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001D704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D738(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80A8();
    }

    v8 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8B6C(a1, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001DF24(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CABD0;
  off_1003CABD0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3C88;
  qword_1003D3C88 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3C90;
  qword_1003D3C90 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3C98;
  qword_1003D3C98 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3CA0;
  qword_1003D3CA0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3CA8;
  qword_1003D3CA8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3CB0;
  qword_1003D3CB0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3CB8;
  qword_1003D3CB8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3CC0;
  qword_1003D3CC0 = v17;

  qword_1003D3CC8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10001E0D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10001E128(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t sub_10001E3D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E3F0(uint64_t a1)
{
  v2 = +[AMSKeybag sharedInstance];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 fairplayContextWithError:&obj];
  objc_storeStrong((v3 + 40), obj);

  if (v4)
  {
    [*(a1 + 32) bytes];
    [*(a1 + 32) length];
    sub_100260B04();
    if (v5 && (v6 = v5, (v7 = *(*(a1 + 40) + 8)) != 0))
    {
      sub_10024FD3C(v7);
      *(*(a1 + 40) + 8) = 0;
      v8 = ASDErrorDomain;
      v15 = NSDebugDescriptionErrorKey;
      v9 = [NSString stringWithFormat:@"Session creation failed (error: %d)", v6];
      v16 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [NSError errorWithDomain:v8 code:500 userInfo:v10];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void sub_10001E6E8(uint64_t a1)
{
  if (qword_1003D3D20 != -1)
  {
    sub_1002C8C08();
  }

  v2 = os_signpost_id_generate(off_1003CAC38);
  if (qword_1003D3D20 != -1)
  {
    sub_1002C8C08();
  }

  v3 = off_1003CAC38;
  v4 = v3;
  v5 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Download::Decrypt/Prepare", "", &buf, 2u);
  }

  if (*(*(a1 + 32) + 72))
  {
    v6 = *(a1 + 40);
    if (!v6 || ![v6 length])
    {
      (*(*(a1 + 48) + 16))();
      return;
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = *(a1 + 40);
      v49 = 0;
      v10 = [v8 verifyData:v9 error:&v49];
      v11 = v49;
      if (!v10)
      {
        v27 = *(a1 + 48);
        (*(v27 + 16))(v27, v11, 0);
        goto LABEL_16;
      }

      v7 = *(a1 + 32);
    }

    else
    {
      v11 = 0;
    }

    v13 = *(v7 + 24);
    v14 = [*(a1 + 40) length];
    v15 = *(a1 + 32);
    if ((v14 + v13) >> 15)
    {
      v16 = *(v15 + 24);
      v17 = [*(a1 + 40) length] + v16;
      v18 = malloc_type_malloc(v17, 0x100004077774924uLL);
      v19 = v18;
      v20 = *(a1 + 32);
      v21 = *(v20 + 24);
      if (v21)
      {
        memcpy(v18, *(v20 + 16), v21);
        v22 = *(a1 + 40);
        v23 = *(*(a1 + 32) + 24);
        v24 = [v22 length];
        v25 = v19 + v23;
        v26 = v22;
      }

      else
      {
        v28 = *(a1 + 40);
        v24 = [v28 length];
        v26 = v28;
        v25 = v19;
      }

      [v26 getBytes:v25 length:v24];
      if (qword_1003D3D20 != -1)
      {
        sub_1002C8C1C();
      }

      v29 = off_1003CAC38;
      v30 = v29;
      if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        buf = 134349056;
        *buf_4 = v17;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v2, "Download::Decrypt/Prepare", " bytes=%{public, signpost.description:attribute}lu ", &buf, 0xCu);
      }

      if (qword_1003D3D20 != -1)
      {
        sub_1002C8C1C();
      }

      v31 = off_1003CAC38;
      v32 = v31;
      if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Download::Decrypt/Process", "", &buf, 2u);
      }

      [*(a1 + 32) _resizeSampleSizeArray:(v17 >> 15)];
      v33 = *(*(a1 + 32) + 48);
      *buf_4 = 0;
      *&buf_4[4] = v33;
      buf = v17 >> 15;
      v34 = buf << 15;
      v54 = v19;
      v55 = v34;
      sub_10025AF14();
      if (!v35)
      {
        v48 = v19;
        if (qword_1003D3D20 != -1)
        {
          sub_1002C8C1C();
        }

        v38 = off_1003CAC38;
        v39 = v38;
        if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *v50 = 134349056;
          v51 = (v17 >> 15);
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v2, "Download::Decrypt/Process", " blocks=%{public, signpost.description:attribute}lu ", v50, 0xCu);
        }

        if (qword_1003D3D20 != -1)
        {
          sub_1002C8C1C();
        }

        v40 = off_1003CAC38;
        v41 = v40;
        if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          *v50 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Download::Decrypt/Final", "", v50, 2u);
        }

        if (v17 == v34)
        {
          *(*(a1 + 32) + 24) = 0;
        }

        else
        {
          *(*(a1 + 32) + 24) = v17 - v34;
          v42 = *(a1 + 32);
          v43 = *(v42 + 24);
          if (v43 > 0x8000)
          {
            *(v42 + 24) = 0;
            v44 = ASDErrorWithDescription();

            sub_1002AA34C(v48);
            (*(*(a1 + 48) + 16))();
            v11 = v44;
            goto LABEL_16;
          }

          memcpy(*(v42 + 16), (v48 + v34), v43);
          v17 = (v17 >> 15) << 15;
        }

        v45 = sub_10001ED64();
        v46 = v45;
        if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          *v50 = 134349056;
          v51 = v17;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, v2, "Download::Decrypt/Final", " bytes=%{public, signpost.description:attribute}lu ", v50, 0xCu);
        }

        v47 = [[NSData alloc] initWithBytesNoCopy:v48 length:v17 freeWhenDone:1];
        [*(*(a1 + 32) + 72) consumeData:v47 withCompletionHandler:*(a1 + 48)];

        goto LABEL_16;
      }

      v36 = [NSString stringWithFormat:@"Decryption failed (error: %d)", v35];
      v37 = ASDErrorWithDescription();

      sub_1002AA34C(v19);
      (*(*(a1 + 48) + 16))();

      v11 = v37;
    }

    else
    {
      memcpy((*(v15 + 16) + *(v15 + 24)), [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"));
      *(*(a1 + 32) + 24) += [*(a1 + 40) length];
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, 0);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v11 = ASDErrorWithDescription();
    (*(v12 + 16))(v12, v11, 0);
  }

LABEL_16:
}

id sub_10001ED64()
{
  if (qword_1003D3D20 != -1)
  {
    sub_1002C8C08();
  }

  v1 = off_1003CAC38;

  return v1;
}

void sub_10001EE40(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    v5 = *(a1 + 40);
    v12 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v12);
LABEL_6:

    return;
  }

  if (v2[3])
  {
    sub_10025AA98();
    if (!v3)
    {
      v8 = [[NSData alloc] initWithBytes:*(*(a1 + 32) + 16) length:*(*(a1 + 32) + 24)];
      *(*(a1 + 32) + 24) = 0;
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = *(v10 + 72);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001F028;
      v13[3] = &unk_1003806E8;
      v13[4] = v10;
      v14 = v9;
      [v11 consumeData:v8 andWaitWithCompletionHandler:v13];

      return;
    }

    v12 = [NSString stringWithFormat:@"Decryption failed (error: %d)", v3];
    v4 = ASDErrorWithDescription();
    (*(*(a1 + 40) + 16))();

    goto LABEL_6;
  }

  [v2 _resetDecryptionBufferAndDigestVerifier];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 72);

  [v7 finishWithCompletionHandler:v6];
}

void sub_10001F028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001F0F0;
    v5[3] = &unk_1003806C0;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 finishWithCompletionHandler:v5];
  }

  else
  {
    [*(a1 + 32) finishWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_10001F19C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001F298;
    v5[3] = &unk_100380738;
    v5[4] = v1;
    v6 = *(a1 + 40);
    [v2 prepareWithCompletionHandler:v5];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = ASDErrorWithDescription();
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_10001F298(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (*(*(a1 + 32) + 64))
  {
    v5 = [[DigestVerifier alloc] initWithChunkedDigest:*(*(a1 + 32) + 64) resumptionOffset:a2];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001F3C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9])
  {
    [v2 _resetDecryptionBufferAndDigestVerifier];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);

    [v4 resetWithCompletionHandler:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v6);
  }
}

void sub_10001F510(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9])
  {
    [v2 _resetDecryptionBufferAndDigestVerifier];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);

    [v4 suspendWithCompletionHandler:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v6);
  }
}

void sub_10001F658(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9])
  {
    [v2 _resetDecryptionBufferAndDigestVerifier];
    if (objc_opt_respondsToSelector())
    {
      v3 = *(*(a1 + 32) + 72);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10001F7A4;
      v7[3] = &unk_10037FFD0;
      v8 = *(a1 + 40);
      [v3 truncateWithCompletionHandler:v7];
    }

    else
    {
      v5 = *(*(a1 + 40) + 16);

      v5();
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = ASDErrorWithDescription();
    (*(v4 + 16))(v4, v6);
  }
}

void sub_10001F848(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAC38;
  off_1003CAC38 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3CD8;
  qword_1003D3CD8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3CE0;
  qword_1003D3CE0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3CE8;
  qword_1003D3CE8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3CF0;
  qword_1003D3CF0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3CF8;
  qword_1003D3CF8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3D00;
  qword_1003D3D00 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3D08;
  qword_1003D3D08 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3D10;
  qword_1003D3D10 = v17;

  qword_1003D3D18 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_10001FA58(uint64_t a1)
{
  qword_1003D3D28 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10001FBD4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2 <= 0)
  {
    v3 = +[ASOctaneServer shared];
    *(*(a1 + 32) + 8) = [v3 activePort];

    v2 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_10001FEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FEFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001FF14(uint64_t a1)
{
  v7 = +[ASOctaneServer shared];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleID];
  v4 = [v7 buyProductWithID:v2 bundleID:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000201B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000201D8(uint64_t a1)
{
  v8 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) transactionID];
  v4 = [*(a1 + 32) bundleID];
  v5 = [v8 changeAutoRenewStatus:v2 transactionID:v3 bundleID:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100020484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000204A4(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 clearOverridesForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100020720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020744(uint64_t a1)
{
  v8 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) transactionID];
  v4 = [*(a1 + 32) bundleID];
  v5 = [v8 completeAskToBuyRequestWithResponse:v2 transactionID:v3 forBundleID:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100020990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000209B0(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 deleteAllTransactionsForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100020EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020EC4(uint64_t a1)
{
  v8 = +[ASOctaneServer shared];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) bundleID];
  v5 = [v8 expireOrRenewSubscriptionWithIdentifier:v3 expire:v2 forBundleID:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10002106C(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 getStorefrontForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100021200(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 getTransactionDataForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000215C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000215E4(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v4 = +[ASOctaneServer shared];
        v24 = [*(a1 + 32) transactionID];
        v6 = [*(a1 + 32) bundleID];
        v10 = [v4 resolveIssueForTransactionWithIdentifier:v24 forBundleID:v6];
        goto LABEL_23;
      }

      v4 = +[ASOctaneServer shared];
      v12 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      v13 = v4;
      v14 = v12;
      v15 = v6;
      v16 = 0;
    }

    else
    {
      if (v2 != 6)
      {
        if (v2 == 7)
        {
          v4 = +[ASOctaneServer shared];
          v5 = [*(a1 + 32) transactionID];
          v6 = [*(a1 + 32) bundleID];
          v7 = v4;
          v8 = 1;
          goto LABEL_22;
        }

        if (v2 == 8)
        {
          v4 = +[ASOctaneServer shared];
          v5 = [*(a1 + 32) transactionID];
          v6 = [*(a1 + 32) bundleID];
          v7 = v4;
          v8 = 0;
LABEL_22:
          v10 = [v7 completePriceConsentRequestWithResponse:v8 transactionIdentifier:v5 forBundleID:v6];
          goto LABEL_23;
        }

        goto LABEL_30;
      }

      v4 = +[ASOctaneServer shared];
      v23 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      v13 = v4;
      v14 = v23;
      v15 = v6;
      v16 = 1;
    }

    v10 = [v13 startPriceIncreaseForTransactionID:v14 bundleID:v15 needsConsent:v16];
LABEL_23:
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v10;

    goto LABEL_24;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = +[ASOctaneServer shared];
      v22 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      [v4 deleteTransactionWithIdentifier:v22 forBundleID:v6];
    }

    else
    {
      v4 = +[ASOctaneServer shared];
      v11 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      [v4 refundTransactionWithIdentifier:v11 forBundleID:v6];
    }
    v10 = ;
    goto LABEL_23;
  }

  if (v2)
  {
    if (v2 != 1)
    {
LABEL_30:
      v28 = ASDErrorDomain;
      v18 = [NSString stringWithFormat:@"Invalid action (action: %ld)", v2, NSDebugDescriptionErrorKey];
      v34 = v18;
      v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v30 = [NSError errorWithDomain:v28 code:951 userInfo:v29];
      v31 = *(*(a1 + 40) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      goto LABEL_31;
    }

    v4 = +[ASOctaneServer shared];
    v9 = [*(a1 + 32) transactionID];
    v6 = [*(a1 + 32) bundleID];
    v10 = [v4 cancelTransactionWithIdentifier:v9 forBundleID:v6];
    goto LABEL_23;
  }

  v17 = ASDErrorDomain;
  v35 = NSDebugDescriptionErrorKey;
  v36 = @"Unknown action request";
  v18 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v19 = [NSError errorWithDomain:v17 code:951 userInfo:v18];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

LABEL_31:
LABEL_24:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v27 = qword_1003D3D70;
    if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8CF4(a1, v27, v3);
    }
  }
}

void sub_100021F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021F30(uint64_t a1)
{
  v7 = +[ASOctaneServer shared];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleID];
  v4 = [v7 setStorefront:v2 forBundleID:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000220D8(void *a1)
{
  v5 = +[ASOctaneServer shared];
  v2 = [v5 registerForEventOfType:a1[6] withFilterData:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000221E4(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  [v2 unregisterForEventWithIdentifier:*(a1 + 32)];
}

void sub_1000222FC(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  [v2 useConfigurationDirectory:*(a1 + 32) forBundleID:*(a1 + 40)];
}

void sub_100022508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022528(uint64_t a1)
{
  v5 = +[ASOctaneServer shared];
  v2 = [v5 generateSKANPostbackSignature:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000227C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000227E4(uint64_t a1)
{
  v10 = +[ASOctaneServer shared];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) bundleID];
  v7 = [v10 validateSKAdNetworkSignature:v2 withPublicKey:v3 source:v4 andParameters:v5 forBundleID:v6];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100022964(void *a1)
{
  v2 = +[ASOctaneServer shared];
  *(*(a1[5] + 8) + 24) = [v2 storeKitErrorForCategory:a1[6] bundleID:a1[4]];
}

void sub_100022A78(void *a1)
{
  v2 = +[ASOctaneServer shared];
  [v2 setStoreKitError:a1[5] forCategory:a1[6] bundleID:a1[4]];
}

void sub_100022CA8(uint64_t a1)
{
  v4 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) bundleID];
  *(*(*(a1 + 40) + 8) + 24) = [v4 getIntegerValueForIdentifier:v2 forBundleID:v3];
}

void sub_100022F24(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) bundleID];
  v6 = [v2 setIntegerValue:v3 forIdentifier:v4 forBundleID:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8EF4();
    }

    v9 = qword_1003D3D70;
    if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 logKey];
      v14 = *(a1 + 48);
      v13 = *(a1 + 56);
      v15 = *(*(*(a1 + 40) + 8) + 40);
      v16 = 138544130;
      v17 = v12;
      v18 = 2048;
      v19 = v14;
      v20 = 2048;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set value to %ld for key %lu: %{public}@", &v16, 0x2Au);
    }
  }
}

void sub_100023294(uint64_t a1)
{
  v7 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) bundleID];
  v4 = [v7 getStringValueForIdentifier:v2 forBundleID:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100023538(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleID];
  v6 = [v2 setStringValue:v4 forIdentifier:v3 forBundleID:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8EF4();
    }

    v9 = qword_1003D3D70;
    if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 logKey];
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = 138544130;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set value to %ld for key %lu: %{public}@", &v16, 0x2Au);
    }
  }
}

void sub_1000239C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8EF4();
    }

    v4 = qword_1003D3D70;
    if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8F80(a1, v3, v4);
    }
  }

  else
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8EF4();
    }

    v5 = qword_1003D3D70;
    if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully refreshed receipt", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100023AE4(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAC68;
  off_1003CAC68 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3D38;
  qword_1003D3D38 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3D40;
  qword_1003D3D40 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3D48;
  qword_1003D3D48 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3D50;
  qword_1003D3D50 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3D58;
  qword_1003D3D58 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3D60;
  qword_1003D3D60 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3D68;
  qword_1003D3D68 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3D70;
  qword_1003D3D70 = v17;

  qword_1003D3D78 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_100023C6C(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2114;
  *(a4 + 14) = v4;
  return result;
}

void sub_100023C84(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_100023EC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && *(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 24) = 0;
    objc_storeStrong((*(a1 + 32) + 16), a3);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100024C88(id a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = qword_1003D3D90;
  v10 = qword_1003D3D90;
  if (!qword_1003D3D90)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002519C;
    v6[3] = &unk_100380A10;
    v6[4] = &v7;
    sub_10002519C(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = [v1 sharedScheduler];
  v4 = [sub_100024DC0() groupWithName:@"com.apple.storekit.connectionPool.apps" maxConcurrent:4];
  [v3 createActivityGroup:v4];

  v5 = [sub_100024DC0() groupWithName:@"com.apple.storekit.connectionPool.odr" maxConcurrent:3];
  [v3 createActivityGroup:v5];
}

void sub_100024DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100024DC0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1003D3DA0;
  v7 = qword_1003D3DA0;
  if (!qword_1003D3DA0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100025364;
    v3[3] = &unk_100380A10;
    v3[4] = &v4;
    sub_100025364(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100024E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002519C(uint64_t a1)
{
  sub_1000251F4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DASScheduler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1003D3D90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1002C90F8();
    sub_1000251F4();
  }
}

void sub_1000251F4()
{
  v1[0] = 0;
  if (!qword_1003D3D98)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000252F0;
    v1[4] = &unk_10037F9B0;
    v1[5] = v1;
    v2 = off_100380A30;
    v3 = 0;
    qword_1003D3D98 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1003D3D98)
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

uint64_t sub_1000252F0()
{
  result = _sl_dlopen();
  qword_1003D3D98 = result;
  return result;
}

void sub_100025364(uint64_t a1)
{
  sub_1000251F4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DASActivityGroup");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1003D3DA0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1002C9120();
    sub_1000253BC(v2);
  }
}

void sub_1000253BC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAC70;
  off_1003CAC70 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3DA8;
  qword_1003D3DA8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3DB0;
  qword_1003D3DB0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3DB8;
  qword_1003D3DB8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3DC0;
  qword_1003D3DC0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3DC8;
  qword_1003D3DC8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3DD0;
  qword_1003D3DD0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3DD8;
  qword_1003D3DD8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3DE0;
  qword_1003D3DE0 = v17;

  qword_1003D3DE8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_10002564C(unsigned int a1)
{
  if (qword_1003D3DF8 != -1)
  {
    sub_1002C9148();
  }

  v2 = *(&off_1003CAC78 + a1);

  return v2;
}

void sub_100026260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026278(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_1000263F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100026408(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v4 name];
  v6 = [*(a1 + 40) argumentCount];
  v7 = [*(a1 + 40) flags];
  v8 = [v4 implementation];
  v9 = [v4 xFunc];
  xDestroy = [v4 xDestroy];

  result = sqlite3_create_function_v2(v3, v5, v6, v7, v8, v9, 0, 0, xDestroy);
  *(*(*(a1 + 48) + 8) + 24) = result == 0;
  return result;
}

void sub_100026C24(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100026ED4(sqlite3_context *a1)
{
  +[NSDate timeIntervalSinceReferenceDate];

  sqlite3_result_int64(a1, v2);
}

void sub_100027150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100027168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027180(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (sub_100019CDC(v2))
  {
    v3 = [SQLiteStatement alloc];
    v4 = [(SQLiteStatement *)v3 initWithStatement:ppStmt onConnection:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

void sub_100027868(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAC78;
  off_1003CAC78 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003CAC80;
  qword_1003CAC80 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003CAC88;
  qword_1003CAC88 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003CAC90;
  qword_1003CAC90 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003CAC98;
  qword_1003CAC98 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003CACA0;
  qword_1003CACA0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003CACA8;
  qword_1003CACA8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003CACB0;
  qword_1003CACB0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003CACB8;
  qword_1003CACB8 = v17;

  qword_1003CACC0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000279E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id sub_100027A0C(void *a1)
{
  v6 = 0;
  v1 = sub_100027B30(a1, &v6);
  v2 = v6;
  if (v2)
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C97C0();
    }

    if (os_log_type_enabled(qword_1003D3E28, OS_LOG_TYPE_ERROR))
    {
      sub_1002C97E8();
    }

    v3 = 0;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:@"gracePeriodExpiresDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 longLongValue] / 1000.0);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id sub_100027B30(void *a1, uint64_t a2)
{
  v3 = [a1 componentsSeparatedByString:@"."];
  if ([v3 count] == 3)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

    v7 = [v6 length] & 3;
    if (v7)
    {
      v8 = [v6 stringByPaddingToLength:objc_msgSend(v6 withString:"length") - v7 + 4 startingAtIndex:{@"=", 0}];

      v6 = v8;
    }

    v9 = [[NSData alloc] initWithBase64EncodedString:v6 options:0];
    v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:a2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_100027C7C(void *a1, uint64_t a2)
{
  v2 = sub_100027B30(a1, a2);
  v3 = [v2 objectForKeyedSubscript:@"revocationDate"];
  if (v3)
  {
    v4 = v3;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = [v2 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (([v4 isEqualToString:@"Non-Consumable"] & 1) == 0)
  {
    if (![v4 isEqualToString:@"Auto-Renewable Subscription"])
    {
      goto LABEL_9;
    }

    v6 = [v2 objectForKeyedSubscript:@"isUpgraded"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }

    v4 = [v2 objectForKeyedSubscript:@"expiresDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      v10 = [NSDate dateWithTimeIntervalSince1970:v9 / 1000.0];
      if ((v7 & 1) == 0)
      {
LABEL_14:
        v11 = +[NSDate date];
        v5 = [v10 compare:v11] == 1;

LABEL_17:
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = 0;
    goto LABEL_17;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

id sub_100027E30(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6, unsigned int a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v43 = a5;
  v47 = sub_1000284A4(v13, v43);
  if (v47)
  {
    if (v15)
    {
      [WriteReceipt writeReceiptData:v47 toURL:v15 logKey:v43 error:0];
    }

    else
    {
      v16 = [v14 callerBundleURL];

      if (v16)
      {
        v17 = [v14 callerBundleURL];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100028600;
        v54[3] = &unk_1003802F0;
        v55 = v43;
        [WriteReceipt writeReceiptData:v47 forBundleURL:v17 logKey:v55 completionHandler:v54];
      }

      else
      {
        if (qword_1003D3E48 != -1)
        {
          sub_1002C9850();
        }

        if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
        {
          sub_1002C9864();
        }
      }
    }
  }

  else if (a4 == 1)
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C9850();
    }

    if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
    {
      sub_1002C98CC();
    }
  }

  v18 = sub_10002867C(v13);
  if (qword_1003D3E48 != -1)
  {
    sub_1002C97C0();
  }

  v19 = qword_1003D3E18;
  if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v18 count];
    *buf = 138543618;
    v59 = v43;
    v60 = 2048;
    v61 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] %ld transactions in response", buf, 0x16u);
  }

  v45 = [ReceiptManager managerForClient:v14];
  v46 = +[NSMutableSet set];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v22 = v18;
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v23)
  {
    v24 = v23;
    v44 = a4;
    v39 = __PAIR64__(a7, a6);
    v40 = v15;
    v41 = v14;
    v42 = v13;
    v25 = 0;
    v26 = *v51;
    do
    {
      v27 = 0;
      do
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v50 + 1) + 8 * v27);
        v29 = [v28 tcr_stringForKey:{off_1003CB110, v39, v40, v41, v42}];
        if ([v29 length])
        {
          v56 = v29;
          v25 = 1;
          v30 = [NSArray arrayWithObjects:&v56 count:1];
          [v45 setTransactionInfo:v30 unfinishedIDs:0 forRevision:0];
        }

        else if (v44 == 2)
        {
          if (qword_1003D3E48 != -1)
          {
            sub_1002C97C0();
          }

          v31 = qword_1003D3E18;
          if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v59 = v43;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{public}@] No transaction receipt in response", buf, 0xCu);
          }
        }

        v32 = [v28 tcr_stringForKey:off_1003CB1A8];
        if (v32)
        {
          v33 = [v46 containsObject:v32];
          if (v47)
          {
            if ((v33 & 1) == 0)
            {
              sub_100028B0C(v47, v32, v43);
              [v46 addObject:v32];
            }
          }
        }

        v27 = v27 + 1;
      }

      while (v24 != v27);
      v24 = [v22 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v24);

    v14 = v41;
    v13 = v42;
    v15 = v40;
    a6 = v39;
    a7 = HIDWORD(v39);
    if (v25)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v34 = [v45 lastUpdated];

  if (!v34)
  {
    goto LABEL_54;
  }

  if (qword_1003D3E48 != -1)
  {
    sub_1002C97C0();
  }

  v35 = qword_1003D3E18;
  if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v43;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing server transaction sync for legacy purchase", buf, 0xCu);
  }

LABEL_45:
  if (a6)
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C97C0();
    }

    v36 = qword_1003D3E18;
    if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = v43;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Syncing server transactions", buf, 0xCu);
    }

    if (a7)
    {
      v37 = 6;
    }

    else
    {
      v37 = 1;
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100028D48;
    v48[3] = &unk_1003802F0;
    v49 = v43;
    [v45 syncReceiptsWithReason:v37 completionHandler:v48];
  }

LABEL_54:

  return v22;
}

id sub_1000284A4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"receipt-data"];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];
    if (v5)
    {
      goto LABEL_15;
    }

    if (qword_1003D3E48 != -1)
    {
      sub_1002C9850();
    }

    if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
    {
      sub_1002C99A8();
    }
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      goto LABEL_15;
    }

    if (v4)
    {
      if (qword_1003D3E48 != -1)
      {
        sub_1002C9850();
      }

      if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
      {
        sub_1002C9934();
      }
    }
  }

  v5 = 0;
LABEL_15:

  return v5;
}

void sub_100028600(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C9850();
    }

    if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
    {
      sub_1002C9A1C();
    }
  }
}

id sub_10002867C(void *a1)
{
  v1 = a1;
  v29 = objc_alloc_init(NSMutableArray);
  v2 = [v1 objectForKeyedSubscript:@"app-list"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v2;
    v27 = v1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v2;
    v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v31)
    {
      goto LABEL_24;
    }

    v30 = *v33;
    while (1)
    {
      v3 = 0;
      do
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * v3);
        v5 = [v4 objectForKeyedSubscript:{@"offer-name", v26, v27}];
        if (v5)
        {
        }

        else
        {
          v6 = [v4 objectForKeyedSubscript:@"item-id"];

          if (!v6)
          {
            goto LABEL_20;
          }
        }

        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = [v4 tcr_stringForKey:@"offer-name"];
        if (v8 || ([v4 tcr_stringForKey:@"item-id"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = v8;
        }

        else
        {
          v23 = [v4 tcr_numberForKey:@"item-id"];
          v9 = [v23 stringValue];
        }

        [v7 setObject:v9 forKeyedSubscript:off_1003CB1A8];
        v10 = [v4 tcr_numberForKey:@"item-id"];
        [v7 setObject:v10 forKeyedSubscript:off_1003CAFC8];

        v11 = [v4 tcr_numberForKey:@"quantity"];
        [v7 setObject:v11 forKeyedSubscript:off_1003CB1B0];

        v12 = [v4 tcr_dataForKey:@"request-data"];
        [v7 setObject:v12 forKeyedSubscript:off_1003CB1B8];

        v13 = [v4 tcr_dataForKey:@"receipt-data"];
        [v7 setObject:v13 forKeyedSubscript:@"rcpt"];

        v14 = [v4 tcr_dateForKey:@"purchase-date"];
        [v7 setObject:v14 forKeyedSubscript:@"odate"];
        v15 = [v4 tcr_dateForKey:@"original-purchase-date"];
        v16 = v15;
        if (v14 && ([v15 isEqual:v9] & 1) == 0)
        {
          [v7 setObject:v16 forKeyedSubscript:@"date"];
        }

        v17 = [v4 tcr_stringForKey:@"transaction-id"];
        [v7 setObject:v17 forKeyedSubscript:@"tid"];
        v18 = [v4 tcr_stringForKey:@"original-transaction-id"];
        v19 = v18;
        if (v17 && ([v18 isEqual:v17] & 1) == 0)
        {
          [v7 setObject:v19 forKeyedSubscript:@"otid"];
        }

        v20 = [v4 tcr_arrayForKey:@"assetList"];
        [v7 setObject:v20 forKeyedSubscript:@"assets"];

        v21 = [v4 tcr_stringForKey:@"transaction-receipt"];
        [v7 setObject:v21 forKeyedSubscript:off_1003CB110];

        v22 = [v7 copy];
        [v29 addObject:v22];

LABEL_20:
        v3 = v3 + 1;
      }

      while (v31 != v3);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v31 = v24;
      if (!v24)
      {
LABEL_24:

        v2 = v26;
        v1 = v27;
        break;
      }
    }
  }

  return v29;
}

BOOL sub_100028B0C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v22 = a3;
  v7 = +[NSMutableArray array];
  v23 = v5;
  v8 = [ASFReceipt receiptWithData:v5];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 iaps];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 productID];
        v16 = [v6 isEqual:v15];

        if (v16)
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v11);
  }

  if (qword_1003D3E48 != -1)
  {
    sub_1002C97C0();
  }

  v17 = qword_1003D3E18;
  if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v7 count];
    *buf = 138543874;
    v29 = v22;
    v30 = 2048;
    v31 = v19;
    v32 = 2114;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Found %ld products in receipt with ID %{public}@", buf, 0x20u);
  }

  v20 = [v7 count] != 0;

  return v20;
}

void sub_100028D48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C9850();
    }

    if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_ERROR))
    {
      sub_1002C9A88();
    }
  }

  else
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C9850();
    }

    v4 = qword_1003D3E18;
    if (os_log_type_enabled(qword_1003D3E18, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished syncing server transactions", &v6, 0xCu);
    }
  }
}

const __CFString *sub_100028E54(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"1.0";
  }

  else
  {
    return @"2.0";
  }
}

__CFString *sub_100028E70(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100380D88[a1];
  }
}

id sub_100028E90(void *a1, void *a2)
{
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
  v13 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v3 error:&v13];
  v9 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v9)
  {
    v11 = v8;
    goto LABEL_13;
  }

  if (!a2)
  {
    if (qword_1003D3E48 != -1)
    {
      sub_1002C97C0();
    }

    if (os_log_type_enabled(qword_1003D3E28, OS_LOG_TYPE_ERROR))
    {
      sub_1002C9AF4();
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = 0;
  *a2 = v9;
LABEL_13:

LABEL_14:

  return v11;
}

void sub_100029034(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CACC8;
  off_1003CACC8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3E00;
  qword_1003D3E00 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3E08;
  qword_1003D3E08 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3E10;
  qword_1003D3E10 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3E18;
  qword_1003D3E18 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3E20;
  qword_1003D3E20 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3E28;
  qword_1003D3E28 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3E30;
  qword_1003D3E30 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3E38;
  qword_1003D3E38 = v17;

  qword_1003D3E40 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000297B4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  if (qword_1003D3E98 != -1)
  {
    sub_1002C9B84();
  }

  v3 = qword_1003D3E50;
  if (os_log_type_enabled(qword_1003D3E50, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = v2;
    v5 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Recovered %{public}@ bytes", &v6, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000299A8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CACD0;
  off_1003CACD0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3E50;
  qword_1003D3E50 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3E58;
  qword_1003D3E58 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3E60;
  qword_1003D3E60 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3E68;
  qword_1003D3E68 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3E70;
  qword_1003D3E70 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3E78;
  qword_1003D3E78 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3E80;
  qword_1003D3E80 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3E88;
  qword_1003D3E88 = v17;

  qword_1003D3E90 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10002A1C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 90), a2);
    [*(a1 + 32) completeWithSuccess];
  }

  else
  {
    IsEqual = ASDErrorIsEqual();
    v9 = *(a1 + 32);
    if (IsEqual)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10002A2C4;
      v10[3] = &unk_100380E10;
      v10[4] = v9;
      [v9 _authenticateAndRequestReceiptWithCompletionHandler:v10];
    }

    else
    {
      [v9 completeWithError:v7];
    }
  }
}

void sub_10002A2C4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    [v6 completeWithError:a3];
  }

  else
  {
    objc_storeStrong((v6 + 90), a2);
    [*(a1 + 32) completeWithSuccess];
  }
}

id sub_10002A348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 completeWithError:?];
  }

  else
  {
    return [v4 _requestReceiptStringWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_10002A468(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) dialogContext];

    if (v4)
    {
      if (qword_1003D3EE8 != -1)
      {
        sub_1002C9D00();
      }

      v5 = qword_1003D3EC8;
      if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = v5;
        v8 = [v6 logKey];
        v9 = [*(a1 + 32) client];
        v10 = [v9 requestBundleID];
        *buf = 138543618;
        v23 = v8;
        v24 = 2114;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Sending authentication request for receipt renewal", buf, 0x16u);
      }

      v11 = [*(a1 + 32) client];
      v12 = [*(a1 + 32) dialogContext];
      v13 = [*(a1 + 32) logKey];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10002A770;
      v20[3] = &unk_100380E38;
      v14 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      v21 = v14;
      [_TtC9storekitd19objc_AccountManager authenticateWithClient:v11 reason:@"Receipt renewal" dialogContext:v12 logKey:v13 completionHandler:v20];
    }

    else
    {
      if (qword_1003D3EE8 != -1)
      {
        sub_1002C9D00();
      }

      v15 = qword_1003D3EC8;
      if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = v15;
        v18 = [v16 logKey];
        *buf = 138543362;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] No context available to handle authentication request", buf, 0xCu);
      }

      v19 = ASDErrorWithDescription();
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_10002A770(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v7 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_ERROR))
    {
      sub_1002C9D3C(a1, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002AB6C;
    v7[3] = &unk_100380E88;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 _requestReceiptStringWithCompletionHandler:v7];
  }
}

void sub_10002AC44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) client];
    v7 = [v6 urlSession];

    [v7 setDelegate:*(a1 + 32)];
    v8 = [v7 dataTaskPromiseWithRequest:v5];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002AD54;
    v10[3] = &unk_100380ED8;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 resultWithCompletion:v10];
  }
}

void sub_10002AD54(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = [a2 object];
    v6 = [*(a1 + 32) apiVersion];
    if (v6 == 1)
    {
      v7 = @"status";
    }

    else
    {
      v7 = @"errorCode";
    }

    if (v6 == 1)
    {
      v8 = @"receipt";
    }

    else
    {
      v8 = @"signedReceipt";
    }

    v9 = [v5 objectForKeyedSubscript:v7];
    v10 = [v5 objectForKeyedSubscript:v8];
    if (v9 && [v9 integerValue])
    {
      if (qword_1003D3EE8 != -1)
      {
        sub_1002C9D00();
      }

      v11 = qword_1003D3EC8;
      if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_ERROR))
      {
        sub_1002C9E14((a1 + 32), v11);
      }

      [v9 integerValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v10 base64EncodedStringWithOptions:0];
        v13 = *(*(a1 + 40) + 16);
LABEL_27:
        v13();

        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        (*(*(a1 + 40) + 16))();
LABEL_28:

        return;
      }

      if (qword_1003D3EE8 != -1)
      {
        sub_1002C9D00();
      }

      v14 = qword_1003D3EC8;
      if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_ERROR))
      {
        sub_1002C9EEC((a1 + 32), v14);
      }
    }

    v12 = ASDErrorWithTitleAndMessage();
    v13 = *(*(a1 + 40) + 16);
    goto LABEL_27;
  }

  v4 = *(*(a1 + 40) + 16);

  v4();
}

void sub_10002B564(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([*(a1 + 32) _useVPPBagURL])
    {
      if (qword_1003D3EE8 != -1)
      {
        sub_1002C9D00();
      }

      v6 = qword_1003D3EC8;
      if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 logKey];
        v10 = [*(a1 + 32) client];
        v11 = [v10 requestBundleID];
        *buf = 138543618;
        v34 = v9;
        v35 = 2114;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Fetching vpp app receipt", buf, 0x16u);
      }

      v12 = *(a1 + 40);
      v13 = +[_TtC9storekitd6BagKey createVPPReceiptURL];
    }

    else
    {
      if (qword_1003D3EE8 != -1)
      {
        sub_1002C9D00();
      }

      v14 = qword_1003D3EC8;
      if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = v14;
        v17 = [v15 logKey];
        v18 = [*(a1 + 32) client];
        v19 = [v18 requestBundleID];
        *buf = 138543618;
        v34 = v17;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Fetching app receipt", buf, 0x16u);
      }

      v12 = *(a1 + 40);
      v13 = +[_TtC9storekitd6BagKey createAppReceiptURL];
    }

    v20 = v13;
    v21 = [v12 URLForKey:v13];

    v22 = [AMSURLRequestEncoder alloc];
    v23 = [*(a1 + 32) client];
    v24 = [v23 bag];
    v25 = [v22 initWithBag:v24];

    [v25 setAccount:v5];
    v26 = [*(a1 + 32) client];
    v27 = [v26 processInfo];
    [v25 setClientInfo:v27];

    v28 = [*(a1 + 32) _requestBodyWithAccount:v5];
    v29 = [v25 requestWithMethod:4 bagURL:v21 parameters:v28];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002B8D8;
    v31[3] = &unk_100380F00;
    v30 = *(a1 + 48);
    v31[4] = *(a1 + 32);
    v32 = v30;
    [v29 resultWithCompletion:v31];
  }
}

void sub_10002B8D8(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if ([*(a1 + 32) apiVersion] != 1)
    {
      v6 = sub_100028E54([*(a1 + 32) apiVersion]);
      [v10 setValue:v6 forHTTPHeaderField:@"X-Apple-Client-StoreKit-Version"];
    }

    v7 = [*(a1 + 32) client];
    v8 = [v7 callerBundleID];
    v9 = [v8 isEqualToString:@"com.apple.news"];

    if (v9)
    {
      [v10 setValue:@"News" forHTTPHeaderField:AMSHTTPHeaderClientApplication];
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

void sub_10002C5D0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CACD8;
  off_1003CACD8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3EA0;
  qword_1003D3EA0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3EA8;
  qword_1003D3EA8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3EB0;
  qword_1003D3EB0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3EB8;
  qword_1003D3EB8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3EC0;
  qword_1003D3EC0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3EC8;
  qword_1003D3EC8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3ED0;
  qword_1003D3ED0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3ED8;
  qword_1003D3ED8 = v17;

  qword_1003D3EE0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10002C8E8(id a1)
{
  qword_1003D3EF0 = objc_alloc_init(StoreKitTestingService);

  _objc_release_x1();
}

void sub_10002ECD8(uint64_t a1)
{
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CA570();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [[_TtC9storekitd6Client alloc] initWithBundleIdentifier:*(*(&v9 + 1) + 8 * i)];
        if (!v6)
        {
          if (qword_1003D3F48 != -1)
          {
            sub_1002CA238();
          }

          if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
          {
            sub_1002CA5E8();
          }

          goto LABEL_18;
        }

        v7 = v6;
        [*(*(a1 + 48) + 24) receivedPushAction:? client:? completionHandler:?];
      }

      v3 = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

void sub_10002EEE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4 == 36)
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA224();
      }

      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
      {
        sub_1002CA650();
      }
    }

    else if (v4 == 37)
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA224();
      }

      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
      {
        sub_1002CA6C0();
      }
    }
  }
}

void sub_100030208(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_100030238(uint64_t a1)
{
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v2 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ad network service interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _adNetworkServiceInvalidated];
}

void sub_1000302CC(uint64_t a1)
{
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v2 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ad network service invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _adNetworkServiceInvalidated];
}

void sub_1000307AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v4 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ad network service error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10003088C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000308A4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_100030A78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v4 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ad network service error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100030CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v4 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ad network service error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100030EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v4 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ad network service error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10003129C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v4 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ad network service error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000314E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v4 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ad network service error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100031834(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAE60;
  off_1003CAE60 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3F00;
  qword_1003D3F00 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3F08;
  qword_1003D3F08 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3F10;
  qword_1003D3F10 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3F18;
  qword_1003D3F18 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3F20;
  qword_1003D3F20 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3F28;
  qword_1003D3F28 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3F30;
  qword_1003D3F30 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3F38;
  qword_1003D3F38 = v17;

  qword_1003D3F40 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100031B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031BA8(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031C40;
  v5[3] = &unk_100381048;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void sub_100031C40(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

void sub_100031D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031D78(uint64_t a1, void *a2)
{
  result = [a2 firstInt64Value];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100031E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031EA0(uint64_t a1)
{
  v2 = [[SQLiteSchemaMigration alloc] initWithConnection:*(*(a1 + 32) + 8)];
  if (qword_1003D3F98 != -1)
  {
    sub_1002CA844();
  }

  v3 = qword_1003D3F80;
  if (os_log_type_enabled(qword_1003D3F80, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = v3;
    v6 = [v4 options];
    v7 = [v6 databasePath];
    v8 = *(a1 + 56);
    v12 = 138543618;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migrating %{public}@ to %llu", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = [(SQLiteSchemaMigration *)v2 success];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _setUserVersion:*(a1 + 56)];
  }

  else
  {
    if (qword_1003D3F98 != -1)
    {
      sub_1002CA858();
    }

    v9 = qword_1003D3F80;
    if (os_log_type_enabled(qword_1003D3F80, OS_LOG_TYPE_ERROR))
    {
      sub_1002CA880(a1 + 32, v9, a1);
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);

  return v10;
}

void sub_100032160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032178(uint64_t a1, void *a2)
{
  result = [a2 hasRows];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100032224(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAE68;
  off_1003CAE68 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3F50;
  qword_1003D3F50 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3F58;
  qword_1003D3F58 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3F60;
  qword_1003D3F60 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3F68;
  qword_1003D3F68 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3F70;
  qword_1003D3F70 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3F78;
  qword_1003D3F78 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3F80;
  qword_1003D3F80 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3F88;
  qword_1003D3F88 = v17;

  qword_1003D3F90 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000332E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_100033370()
{
  if (qword_1003D3FE8 != -1)
  {
    sub_1002CA958();
  }

  v1 = qword_1003D3FC8;

  return v1;
}

uint64_t sub_1000333B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000333CC(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) requestBundleID];
  v4 = [v14 lastUpdatedForBundleID:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) requestBundleID];
  v8 = [v14 accountTokenForBundleID:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) requestBundleID];
  *(*(*(a1 + 56) + 8) + 24) = [v14 cacheIncludesFinishedConsumablesForBundleID:v11];

  v12 = *(*(*(a1 + 40) + 8) + 40);
  if (v12)
  {
    v13 = [*(a1 + 32) requestBundleID];
    *(*(*(a1 + 64) + 8) + 24) = [v14 hasSubscriptionExpiredSince:v12 forBundleID:v13];
  }
}

void sub_1000335C8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAE70;
  off_1003CAE70 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3FA0;
  qword_1003D3FA0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3FA8;
  qword_1003D3FA8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D3FB0;
  qword_1003D3FB0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D3FB8;
  qword_1003D3FB8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D3FC0;
  qword_1003D3FC0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D3FC8;
  qword_1003D3FC8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D3FD0;
  qword_1003D3FD0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D3FD8;
  qword_1003D3FD8 = v17;

  qword_1003D3FE0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100033EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100033EC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100033ED8(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = [a3 objectForKeyedSubscript:@"receipt"];

  return _objc_release_x1();
}

void sub_1000344E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"product_id"];
  v6 = [v4 objectForKeyedSubscript:@"receipt"];

  v22 = 0;
  v7 = sub_100027B30(v6, &v22);
  v8 = v22;
  if (v8)
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAA0C();
    }

    goto LABEL_13;
  }

  v9 = [v7 objectForKeyedSubscript:@"revocationDate"];
  if (!v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"revocationReason"];

    if (v10)
    {
      goto LABEL_9;
    }

    v11 = [v7 tcr_numberForKey:@"expiresDate"];
    v12 = v11;
    if (v11)
    {
      [v11 doubleValue];
      v14 = [NSDate dateWithTimeIntervalSince1970:v13 / 1000.0];
      if ([v14 compare:*(a1 + 32)] == -1)
      {
        if (qword_1003D4038 != -1)
        {
          sub_1002CA9E4();
        }

        if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
        {
          sub_1002CAAB8();
        }

        goto LABEL_36;
      }
    }

    v15 = [v7 objectForKeyedSubscript:{@"advancedCommerceInfo", v12}];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v17 = [v7 objectForKeyedSubscript:@"chargeDetailDictionary"];
      v16 = v17 != 0;
    }

    v18 = [v7 objectForKeyedSubscript:@"type"];
    v19 = [v18 isEqualToString:@"Auto-Renewable Subscription"];

    v14 = [v7 objectForKeyedSubscript:@"transactionId"];
    if (v5 && [v6 length])
    {
      if ((v16 | v19))
      {
        v12 = v21;
        if (([*(a1 + 40) containsObject:v14] & 1) == 0)
        {
          v20 = [v7 objectForKeyedSubscript:@"advancedCommerceInfo"];
          if (!v20 || [*(a1 + 48) _isActiveItemPresentInPayload:v20])
          {
            [*(a1 + 40) addObject:v14];
            (*(*(a1 + 64) + 16))();
          }
        }
      }

      else
      {
        v12 = v21;
        if (([*(a1 + 56) containsObject:v5] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v14) & 1) == 0)
        {
          [*(a1 + 56) addObject:v5];
          [*(a1 + 40) addObject:v14];
          (*(*(a1 + 64) + 16))();
        }
      }
    }

    else
    {
      v12 = v21;
    }

LABEL_36:

    goto LABEL_13;
  }

LABEL_9:
  if (qword_1003D4038 != -1)
  {
    sub_1002CA9E4();
  }

  if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
  {
    sub_1002CAA7C();
  }

LABEL_13:
}

void sub_100034878(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v13 = 0;
    v4 = sub_100027B30(v3, &v13);
    v5 = v13;
    if (v5)
    {
      if (qword_1003D4038 != -1)
      {
        sub_1002CA9E4();
      }

      if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
      {
        sub_1002CAA0C();
      }

      goto LABEL_21;
    }

    v6 = [v4 objectForKeyedSubscript:@"advancedCommerceInfo"];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v4 objectForKeyedSubscript:@"chargeDetailDictionary"];
      v7 = v8 != 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"type"];
    v10 = [v9 isEqualToString:@"Auto-Renewable Subscription"];

    v11 = [v4 objectForKeyedSubscript:@"transactionId"];
    if (v7 || v10)
    {
      if ([*(a1 + 32) containsObject:v11])
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v12 = [v4 objectForKeyedSubscript:@"advancedCommerceInfo"];
      if (v12 && ([*(a1 + 40) _isActiveItemPresentInPayload:v12] & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v12 = [v4 objectForKeyedSubscript:@"productId"];
      if ([*(a1 + 48) containsObject:v12] & 1) != 0 || (objc_msgSend(*(a1 + 32), "containsObject:", v11))
      {
        goto LABEL_19;
      }

      [*(a1 + 48) addObject:v12];
    }

    [*(a1 + 32) addObject:v11];
    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

LABEL_22:
}

void sub_100034CFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"receipt"];
  if ([v4 length])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100034F10(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v4 = [v30 objectForKeyedSubscript:@"renewal_info"];
  v39 = 0;
  v5 = sub_100028E90(v4, &v39);
  v6 = v39;
  if (v6)
  {
    v7 = v6;
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAAF4();
    }
  }

  else if (v5)
  {
    v8 = +[SecureClock now];
    v9 = &_s10Foundation3URLVSEAAMc_ptr;
    if (!v8)
    {
      if (qword_1003D4038 != -1)
      {
        sub_1002CA9E4();
      }

      if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
      {
        sub_1002CA9A8();
      }

      v8 = +[NSDate now];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v5;
    v33 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v33)
    {
      v31 = a1;
      v27 = v5;
      v28 = v4;
      v11 = 0;
      v12 = *v36;
      v29 = v8;
      v32 = *v36;
      do
      {
        v13 = 0;
        do
        {
          v14 = v11;
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * v13);
          v16 = [v15 objectForKeyedSubscript:{@"signedRenewalInfo", v27, v28}];
          v34 = v11;
          v17 = sub_100027B30(v16, &v34);
          v11 = v34;

          if (v11)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17 == 0;
          }

          if (v18)
          {
            if (qword_1003D4038 != -1)
            {
              sub_1002CA9E4();
            }

            v19 = qword_1003D4018;
            if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
            {
              v20 = *(v31 + 32);
              *buf = 138543618;
              v41 = v20;
              v42 = 2114;
              v43 = v11;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to parse renewal info payload when checking for billing grace period for %{public}@: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v21 = [v17 objectForKeyedSubscript:@"gracePeriodExpiresDate"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v23 = v10;
              v24 = [v9[156] dateWithTimeIntervalSince1970:{objc_msgSend(v21, "longLongValue") / 1000.0}];
              if ([v8 compare:v24] == -1)
              {
                v25 = [v30 objectForKeyedSubscript:@"subscription_group_id"];
                v26 = [*(v31 + 40) _latestTransactionReceiptForUnarchivedRenewalInfo:v15 subscriptionGroupID:v25 bundleID:*(v31 + 32)];
                if (v26)
                {
                  (*(*(v31 + 48) + 16))();
                }

                v9 = &_s10Foundation3URLVSEAAMc_ptr;
                v8 = v29;
              }

              v10 = v23;
              v12 = v32;
            }
          }

          v13 = v13 + 1;
        }

        while (v33 != v13);
        v33 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v33);

      v5 = v27;
      v4 = v28;
    }
  }

  else
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAB64();
    }
  }
}

void sub_1000355B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"receipt"];
  if ([v4 length])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100035D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035D68(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (qword_1003D4038 != -1)
  {
    sub_1002CA994();
  }

  v7 = qword_1003D4018;
  if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found intro offer transaction for %{public}@: %{public}@", &v9, 0x16u);
  }

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100035FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000362FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100036324(void *a1, void *a2, _BYTE *a3)
{
  v27 = a2;
  v3 = [v27 objectForKeyedSubscript:?];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    *&v5 = 138543618;
    v25 = v5;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:{@"signedRenewalInfo", v25}];
        v30 = 0;
        v11 = sub_100027B30(v10, &v30);
        v12 = v30;
        if (v12)
        {
          if (qword_1003D4038 != -1)
          {
            sub_1002CA9E4();
          }

          v13 = qword_1003D4018;
          if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
          {
            v14 = a1[4];
            v15 = a1[5];
            *buf = v25;
            v39 = v14;
            v40 = 2114;
            v41 = v15;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to parse JWS when getting renewal info original transaction ID for transaction ID status query %{public}@: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v16 = [v11 objectForKeyedSubscript:@"originalTransactionId"];
          if ([v16 isEqualToString:a1[4]])
          {
            v36[0] = @"subscriptionGroupIdentifier";
            v17 = v7;
            v18 = v3;
            v19 = [v27 objectForKeyedSubscript:?];
            v37[0] = v19;
            v36[1] = @"lastUpdated";
            v20 = [v27 objectForKeyedSubscript:?];
            v37[1] = v20;
            v36[2] = @"lastTransactions";
            v35 = v9;
            v21 = [NSArray arrayWithObjects:&v35 count:1];
            v37[2] = v21;
            v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
            v23 = *(a1[6] + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            v3 = v18;
            v7 = v17;
            v6 = v28;

            *a3 = 1;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v6);
  }
}

void sub_100036634(void *a1, void *a2, _BYTE *a3)
{
  v27 = a2;
  v3 = [v27 objectForKeyedSubscript:?];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    *&v5 = 138543618;
    v25 = v5;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:{@"signedRenewalInfo", v25}];
        v30 = 0;
        v11 = sub_100027B30(v10, &v30);
        v12 = v30;
        if (v12)
        {
          if (qword_1003D4038 != -1)
          {
            sub_1002CA9E4();
          }

          v13 = qword_1003D4018;
          if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
          {
            v14 = a1[4];
            v15 = a1[5];
            *buf = v25;
            v39 = v14;
            v40 = 2114;
            v41 = v15;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to parse JWS when getting renewal info original transaction ID for transaction ID status query %{public}@: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v16 = [v11 objectForKeyedSubscript:@"originalTransactionId"];
          if ([v16 isEqualToString:a1[6]])
          {
            v36[0] = @"subscriptionGroupIdentifier";
            v17 = v7;
            v18 = v3;
            v19 = [v27 objectForKeyedSubscript:?];
            v37[0] = v19;
            v36[1] = @"lastUpdated";
            v20 = [v27 objectForKeyedSubscript:?];
            v37[1] = v20;
            v36[2] = @"lastTransactions";
            v35 = v9;
            v21 = [NSArray arrayWithObjects:&v35 count:1];
            v37[2] = v21;
            v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
            v23 = *(a1[7] + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            v3 = v18;
            v7 = v17;
            v6 = v28;

            *a3 = 1;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v6);
  }
}

void sub_100036C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100036F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100036F38(uint64_t a1, uint64_t a2, void *a3)
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
        sub_1002CACB4();
      }
    }

    else
    {
      [v5 setObject:v23 forKeyedSubscript:@"assets"];
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}