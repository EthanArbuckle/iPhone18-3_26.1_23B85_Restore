void sub_100143440(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = +[PDDatabase registeredEntities];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&OBJC_PROTOCOL___PDSyncableItem, v12}])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 sortedArrayUsingComparator:&stru_1002060F0];
  v11 = qword_10024DBD0;
  qword_10024DBD0 = v10;

  objc_autoreleasePoolPop(v1);
}

int64_t sub_1001435CC(id a1, Class a2, Class a3)
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)a2 syncOrder];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(objc_class *)a3 syncOrder];
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

void sub_1001436F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) syncableEntities];
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = qword_10024DBE0;
  qword_10024DBE0 = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = qword_10024DBE0;
        v13 = [v11 recordType];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100143F64(uint64_t a1)
{
  v2 = [*(a1 + 32) select:objc_opt_class() where:0 bindings:0];
  v5 = v2;
  if (v2)
  {
    v3 = *(v2 + 9);
    v4 = *(a1 + 40);
    if (v3)
    {
      [v4 progressZone];

      [*(a1 + 40) teacherZone];
      [*(a1 + 40) assetZone];

      [*(a1 + 40) surveyAnswerZone];
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(a1 + 40);
  }

  [v4 markAsFinished];
LABEL_6:
}

id sub_1001444DC(id *a1)
{
  v2 = [a1[4] syncMetadataForRecord:a1[5]];
  v3 = a1[5];
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v3 encodeSystemFieldsWithCoder:v4];

  [v4 finishEncoding];
  v5 = [v4 encodedData];

  sub_10008122C(v2, v5);
  v6 = [a1[6] insertOrUpdateObject:v2];

  return v6;
}

id CKRecordFromMetadata(void *a1)
{
  v1 = a1;
  v5 = 0;
  v2 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v1 error:&v5];

  v3 = 0;
  if (!v5)
  {
    v3 = [[CKRecord alloc] initWithCoder:v2];
  }

  return v3;
}

void sub_100144A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100144A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkTriggerNow];
}

void *sub_100145108(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PDDashboardAppRegisterState;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[2] = 0;
    }
  }

  return a1;
}

BOOL sub_100145440(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 length])
    {
      v6 = [a1 select:objc_opt_class() identity:v4];
      CLSInitLog();
      v7 = CLSLogDefault;
      v8 = os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        if (v8)
        {
          v10 = v6[2];
          v11 = 138412546;
          v12 = v4;
          v13 = 2048;
          v14 = v10;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Register record for dashboard app: %@ state: %ld", &v11, 0x16u);
        }

        v5 = v6[2] == 0;
      }

      else
      {
        if (v8)
        {
          v11 = 138412290;
          v12 = v4;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "No register record for dashboard app: %@.", &v11, 0xCu);
        }

        v6 = sub_100145108([PDDashboardAppRegisterState alloc], v4);
        [a1 insertObject:v6];
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t sub_100145E58(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v21 = PBReaderReadString();
            v22 = 80;
            goto LABEL_55;
          }

          if (v13 == 2)
          {
            v23 = objc_alloc_init(PDDPDate);
            v24 = 56;
            goto LABEL_50;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v23 = objc_alloc_init(PDDPDate);
              v24 = 64;
LABEL_50:
              objc_storeStrong((a1 + v24), v23);
              v28 = 0;
              v29 = 0;
              if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v23, a2))
              {
LABEL_65:

                return 0;
              }

LABEL_52:
              PBReaderRecallMark();

              goto LABEL_56;
            case 4:
              v21 = PBReaderReadString();
              v22 = 72;
              goto LABEL_55;
            case 5:
              v21 = PBReaderReadString();
              v22 = 88;
LABEL_55:
              v25 = *(a1 + v22);
              *(a1 + v22) = v21;

              goto LABEL_56;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_55;
          case 0xA:
            v23 = objc_alloc_init(PDDPDate);
            v24 = 24;
            goto LABEL_50;
          case 0x64:
            v23 = objc_alloc_init(PDDPMapEntry);
            [a1 addContentMetadata:v23];
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !sub_10011D2D0(v23, a2))
            {
              goto LABEL_65;
            }

            goto LABEL_52;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v21 = PBReaderReadString();
            v22 = 32;
            goto LABEL_55;
          case 7:
            v21 = PBReaderReadString();
            v22 = 48;
            goto LABEL_55;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 96) |= 1u;
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
                goto LABEL_63;
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

LABEL_63:
            *(a1 + 8) = v20;
            goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100147AF4(uint64_t a1, void *a2)
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
        v22 = PBReaderReadData();
        v23 = 8;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(PDDPAdminRequestRequestor);
      objc_storeStrong((a1 + 24), v21);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000B301C(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 32;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 16) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_10014A850(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectID];
  v6 = [v3 parentObjectID];
  v7 = [v3 identifierPath];
  if (![v7 count])
  {
    CLSInitLog();
    v8 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = v5;
      v9 = "Migrating CLSContext(1): Rejecting CLSContext with objectID: %@, path is nil or empty";
      goto LABEL_11;
    }

LABEL_12:
    [*(a1 + 32) addObject:{v5, *v14}];
    goto LABEL_21;
  }

  if (v6 && [*(a1 + 32) containsObject:v6])
  {
    CLSInitLog();
    v8 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = v5;
      v9 = "Migrating CLSContext(1): Rejecting CLSContext with objectID: %@, parent has been rejected";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, v14, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v10 = [CLSContext objectIDForIdentifierPath:v7];
  if ([v5 isEqualToString:v10])
  {
    v11 = [CLSContext stableObjectIDForIdentifierPath:v7];
    if ([v11 length])
    {
      [*(a1 + 40) setObject:v11 forKey:v5];
    }

    else
    {
      CLSInitLog();
      v13 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *v14 = 138412290;
        *&v14[4] = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Migrating CLSContext(1): Rejecting CLSContext with objectID: %@, stableObjectID cannot be nil", v14, 0xCu);
      }

      [*(a1 + 32) addObject:v5];
    }
  }

  else
  {
    CLSInitLog();
    v12 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Migrating CLSContext(1): Rejecting CLSContext with objectID: %@, has Peace-incompatible objectID", v14, 0xCu);
    }

    [*(a1 + 32) addObject:v5];
  }

LABEL_21:
  objc_autoreleasePoolPop(v4);
}

void sub_10014AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014AF40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014AF58(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v2)
  {
    v3 = *v23;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        v7 = *(*(*(a1 + 48) + 8) + 40);
        if (v7)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
          v8 = *(*(*(a1 + 48) + 8) + 40);
          v26[0] = v5;
          v26[1] = v8;
          v9 = [NSArray arrayWithObjects:v26 count:2];
          v10 = @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID = ? limit 1";
        }

        else
        {
          v27 = v5;
          v9 = [NSArray arrayWithObjects:&v27 count:1];
          v10 = @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID is null limit 1";
        }

        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = sub_10014AF40;
        v20 = sub_10014AF50;
        v21 = 0;
        v11 = *(a1 + 40);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10014B228;
        v14[3] = &unk_1002020A0;
        v14[4] = &v16;
        v15 = *(a1 + 64);
        if ((sub_1000B9298(v11, v10, 1, v9, v14) & 1) == 0 || (v12 = v17[5]) == 0)
        {
          _Block_object_dispose(&v16, 8);

          objc_autoreleasePoolPop(v6);
          goto LABEL_15;
        }

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
        ++*(*(*(a1 + 80) + 8) + 24);
        _Block_object_dispose(&v16, 8);

        objc_autoreleasePoolPop(v6);
      }

      v2 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_10014B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014B228(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_10016D778(v5, @"statusID");
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = sub_10016D778(v5, @"deniedCount");
  *(*(a1[5] + 8) + 24) = [v9 integerValue];

  v10 = sub_10016D778(v5, @"authorizedCount");

  *(*(a1[6] + 8) + 24) = [v10 integerValue];
  *a3 = 1;
}

uint64_t sub_10014B2E8(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
        v10 = +[NSUUID UUID];
        v11 = [v10 UUIDString];

        v24[0] = v8;
        v12 = *(*(*(a1 + 48) + 8) + 40);
        v13 = v12;
        if (!v12)
        {
          v1 = +[NSNull null];
          v13 = v1;
        }

        v24[1] = v13;
        v24[2] = v11;
        v14 = [NSArray arrayWithObjects:v24 count:3];
        if (!v12)
        {
        }

        v15 = sub_1000B9298(*(a1 + 40), @"insert into AuthStatus (identifier, parentStatusID, statusID) values(?,?,?)", 1, v14, 0);
        v16 = *(*(a1 + 56) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v11;

        objc_autoreleasePoolPop(v9);
        if (!v15)
        {
          v18 = 0;
          goto LABEL_15;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  return v18;
}

id sub_10014B4D4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_10;
  }

  if ((a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    CLSInitLog();
    v6 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = NSStringFromAuthorizationStatus();
      v9 = NSStringFromAuthorizationStatus();
      v10 = NSStringFromAuthorizationStatus();
      *buf = 138412802;
      *&buf[4] = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempted to set authorization status: '%@'; only are: ['%@', '%@'] are allowed;", buf, 0x20u);
    }

    goto LABEL_5;
  }

  v24 = 0;
  *buf = 0;
  v23 = 0;
  v12 = [a1 _statusID:&v23 deniedCount:&v24 authCount:buf forContextPath:v5];
  v13 = v23;
  v14 = v13;
  if (v12)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10014B6CC;
    v17[3] = &unk_100206190;
    v20 = a2;
    v21 = v24;
    v15 = v13;
    v22 = *buf;
    v18 = v15;
    v19 = a1;
    v11 = [a1 performTransaction:v17 forWriting:1];
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  return v11;
}

uint64_t sub_10014B6CC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v3 = [NSNumber numberWithInteger:*(a1 + 64) + 1];
    v9 = v3;
    v4 = @"update AuthStatus set authorizedCount = ? where statusID = ?";
    v5 = &v9;
  }

  else
  {
    if (v2 != 2)
    {
      return 0;
    }

    v3 = [NSNumber numberWithInteger:*(a1 + 56) + 1];
    v10 = v3;
    v4 = @"update AuthStatus set deniedCount = ? where statusID = ?";
    v5 = &v10;
  }

  v5[1] = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  v7 = sub_1000B9298(*(a1 + 40), v4, 1, v6, 0);
  return v7;
}

id sub_10014B7E8(id a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if ((a2 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v11 = [a1 _statusID:&v37 deniedCount:&v38 authCount:&v39 forContextPath:v5];
    v12 = v37;
    v13 = v12;
    if (v11)
    {
      if (a2 == 2)
      {
        if (v38)
        {
          v14 = 0;
          v38 = 0;
          v15 = v39;
LABEL_12:
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10014BC74;
          v28[3] = &unk_100202168;
          v31 = v14;
          v32 = v15;
          v29 = v12;
          v30 = a1;
          a1 = [a1 performTransaction:v28 forWriting:1];

LABEL_21:
          goto LABEL_22;
        }

        CLSInitLog();
        v16 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
        {
          v17 = v16;
          v18 = NSStringFromAuthorizationStatus();
          v19 = [v5 componentsJoinedByString:{@"', '"}];
          v20 = NSStringFromAuthorizationStatus();
          *buf = 138412802;
          v41 = v18;
          v42 = 2112;
          v43 = v19;
          v44 = 2112;
          v45 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "tried remove '%@' for context path: ['%@']; which is not %@';", buf, 0x20u);
        }

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10014BC5C;
        v35[3] = &unk_100202140;
        v35[4] = a1;
        v36 = v13;
        [a1 performTransaction:v35 forWriting:1];
        v21 = v36;
      }

      else
      {
        if (v39)
        {
          v15 = --v39;
          v14 = v38;
          goto LABEL_12;
        }

        CLSInitLog();
        v22 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          v24 = NSStringFromAuthorizationStatus();
          v25 = [v5 componentsJoinedByString:{@"', '"}];
          v26 = NSStringFromAuthorizationStatus();
          *buf = 138412802;
          v41 = v24;
          v42 = 2112;
          v43 = v25;
          v44 = 2112;
          v45 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "tried remove '%@' for context path: ['%@']; which is not %@';", buf, 0x20u);
        }

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10014BC68;
        v33[3] = &unk_100202140;
        v33[4] = a1;
        v34 = v13;
        [a1 performTransaction:v33 forWriting:1];
        v21 = v34;
      }
    }

    a1 = 0;
    goto LABEL_21;
  }

  CLSInitLog();
  v6 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = NSStringFromAuthorizationStatus();
    v9 = NSStringFromAuthorizationStatus();
    v10 = NSStringFromAuthorizationStatus();
    *buf = 138412802;
    v41 = v8;
    v42 = 2112;
    v43 = v9;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempted to set authorization status: '%@'; only are: ['%@', '%@'] are allowed;", buf, 0x20u);
  }

  a1 = 0;
LABEL_22:

  return a1;
}

id sub_10014BC74(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(a1 + 48)];
  v3 = [NSNumber numberWithInteger:*(a1 + 56), v2];
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];

  if (sub_1000B9298(*(a1 + 40), @"update AuthStatus set deniedCount = ?, authorizedCount = ? where statusID = ?", 1, v5, 0))
  {
    v6 = [*(a1 + 40) _pruneAuthTreeAtNodeWithContextStatusID:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10014BFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v6 - 160), 8);
  _Block_object_dispose((v6 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10014C04C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_10016D778(v5, @"authorizedCount");
  *(*(a1[4] + 8) + 24) = [v6 integerValue];

  v7 = sub_10016D778(v5, @"deniedCount");
  *(*(a1[5] + 8) + 24) = [v7 integerValue];

  v8 = sub_10016D778(v5, @"parentStatusID");

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a3 = 1;
}

void sub_10014C10C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"count");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue] == 0;
}

uint64_t sub_10014C17C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 count];
    if (v5)
    {
      v6 = v5;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 2;
      *buf = 0;
      v16 = buf;
      v17 = 0x3032000000;
      v18 = sub_10014AF40;
      v19 = sub_10014AF50;
      v20 = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10014C34C;
      v9[3] = &unk_1002061B8;
      v10 = v4;
      v11 = a1;
      v12 = buf;
      v13 = &v21;
      v14 = v6;
      if (sub_10010BE68(a1, v9))
      {
        a1 = v22[3];
      }

      else
      {
        a1 = 2;
        v22[3] = 2;
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v21, 8);
    }

    else
    {
      CLSInitLog();
      v7 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        a1 = 2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "tried to query authorization status for empty context path", buf, 2u);
      }

      else
      {
        a1 = 2;
      }
    }
  }

  return a1;
}

void sub_10014C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10014C34C(uint64_t a1)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v2)
  {
    v20 = 0;
    v19 = 0;
    v22 = *v31;
LABEL_3:
    v3 = 0;
    while (1)
    {
      if (*v31 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v30 + 1) + 8 * v3);
      v5 = objc_autoreleasePoolPush();
      v6 = [[NSMutableString alloc] initWithString:{@"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID"}];
      v7 = v6;
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        [v6 appendString:@" = ? limit 1"];
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v34[0] = v4;
        v34[1] = v8;
        [NSArray arrayWithObjects:v34 count:2];
      }

      else
      {
        [v6 appendString:@" is null limit 1"];
        v35 = v4;
        [NSArray arrayWithObjects:&v35 count:1];
      }
      v9 = ;
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = sub_10014AF40;
      v28 = sub_10014AF50;
      v29 = 0;
      v10 = *(a1 + 40);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10014C6DC;
      v23[3] = &unk_100202050;
      v23[4] = *(a1 + 56);
      v23[5] = &v24;
      if ((sub_1000B9298(v10, v7, 1, v9, v23) & 1) == 0 || (v11 = *(*(*(a1 + 56) + 8) + 24), v11 == 2))
      {
        v15 = 0;
        v14 = 1;
      }

      else
      {
        if (v11 == 1)
        {
          v12 = v19;
          if ((v19 & 1) == 0)
          {
            v12 = 1;
          }

          v19 = v12;
        }

        v13 = v25[5];
        if (v13)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v13);
          v14 = 0;
          ++v20;
          v15 = 1;
        }

        else
        {
          v15 = 0;
          v14 = 2;
        }
      }

      _Block_object_dispose(&v24, 8);

      objc_autoreleasePoolPop(v5);
      if (!v15)
      {
        break;
      }

      if (v2 == ++v3)
      {
        v16 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        v2 = v16;
        if (!v16)
        {

          goto LABEL_25;
        }

        goto LABEL_3;
      }
    }

    if ((v14 | 2) != 2)
    {
      return;
    }

LABEL_25:
    if (v19)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    v17 = v20;
  }

  else
  {

    v17 = 0;
  }

  if (v17 < *(a1 + 64))
  {
    v18 = *(*(a1 + 56) + 8);
    if (!*(v18 + 24))
    {
      *(v18 + 24) = 2;
    }
  }
}

void sub_10014C6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014C6DC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = sub_10016D778(v12, @"deniedCount");
  v4 = [v3 integerValue];

  if (v4 >= 1)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = 2;
LABEL_5:
    *(v5 + 24) = v6;
    goto LABEL_6;
  }

  v7 = sub_10016D778(v12, @"authorizedCount");
  v8 = [v7 integerValue];

  v5 = *(*(a1 + 32) + 8);
  if (v8 >= 1)
  {
    v6 = 1;
    goto LABEL_5;
  }

  *(v5 + 24) = 0;
LABEL_6:
  v9 = sub_10016D778(v12, @"statusID");
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

id sub_10014C7CC(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10014C8F4;
    v10[3] = &unk_1002028D0;
    v11 = v6;
    v12 = v5;
    v13 = a1;
    v8 = v7;
    v14 = v8;
    if (sub_10010BE68(a1, v10))
    {
      a1 = v8;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_10014C8F4(id *a1)
{
  v2 = a1[4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      v7 = 0;
      v8 = v2;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * v7);
        v10 = objc_autoreleasePoolPush();
        v11 = [[NSMutableString alloc] initWithString:@"identifier = ? and parentObjectID"];
        v12 = [[NSMutableArray alloc] initWithObjects:{v9, 0}];
        if (v8)
        {
          [v11 appendString:@" = ?"];
          v13 = [v8 objectID];
          [v12 addObject:v13];
        }

        else
        {
          [v11 appendString:@" is null"];
        }

        v2 = [a1[6] select:objc_opt_class() where:v11 bindings:v12];

        if (!v2)
        {

          objc_autoreleasePoolPop(v10);
          goto LABEL_14;
        }

        [a1[7] addObject:v2];

        objc_autoreleasePoolPop(v10);
        v7 = v7 + 1;
        v8 = v2;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

id sub_10014CAF0(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10014AF40;
    v20 = sub_10014AF50;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10014CD08;
    v6[3] = &unk_100202248;
    v7 = v3;
    v8 = a1;
    v9 = &stru_1002061D8;
    v10 = &v12;
    v11 = &v16;
    sub_10010BE68(a1, v6);
    if (v13[3])
    {
      a1 = v17[5];
    }

    else
    {
      a1 = 0;
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  return a1;
}

void sub_10014CC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

int64_t sub_10014CC78(id a1, PDDatabaseRow *a2)
{
  v2 = a2;
  v3 = sub_10016D778(v2, @"deniedCount");
  v4 = [v3 integerValue];

  if (v4 <= 0)
  {
    v6 = sub_10016D778(v2, @"authorizedCount");
    v7 = [v6 integerValue];

    v5 = v7 > 0;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

void sub_10014CD08(uint64_t a1)
{
  v26 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v26 count:1];
  v3 = objc_opt_new();
  v4 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10014CF9C;
  v20[3] = &unk_1002021F8;
  v5 = v3;
  v21 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v23 = v6;
  v24 = v7;
  v22 = *(a1 + 32);
  *(*(*(a1 + 56) + 8) + 24) = sub_1000B9298(v4, @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID is null limit 1", 1, v2, v20);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    while ([v5 count])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 lastObject];
      [v5 removeLastObject];
      v25 = v9;
      v10 = [NSArray arrayWithObjects:&v25 count:1];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10014D054;
      v15[3] = &unk_100202220;
      v11 = *(a1 + 40);
      v18 = *(a1 + 48);
      v12 = v5;
      v19 = *(a1 + 64);
      v16 = v12;
      v17 = v9;
      v13 = v9;
      *(*(*(a1 + 56) + 8) + 24) = sub_1000B9298(v11, @"select identifier, statusID, deniedCount, authorizedCount from AuthStatus where parentStatusID = ?", 1, v10, v15);
      v14 = *(*(*(a1 + 56) + 8) + 24);

      objc_autoreleasePoolPop(v8);
      v2 = v10;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = v2;
LABEL_6:
}

void sub_10014CF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = sub_10016D778(v3, @"statusID");
  [*(a1 + 32) addObject:v8];
  v4 = (*(*(a1 + 48) + 16))();

  v5 = [[CLSAuthTree alloc] initWithStatus:v4 statusID:v8 identifier:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10014D054(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = (*(*(a1 + 48) + 16))();
  v4 = sub_10016D778(v6, @"statusID");
  if (v3 != 2)
  {
    [*(a1 + 32) addObject:v4];
  }

  v5 = sub_10016D778(v6, @"identifier");
  [*(*(*(a1 + 56) + 8) + 40) setAuthStatus:v3 forIdentifier:v5 statusID:v4 parentStatusID:*(a1 + 40)];
}

uint64_t sub_10014F664(uint64_t a1, void *a2)
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
      LOBYTE(v38) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v38 & 0x7F) << v5;
      if ((v38 & 0x80) == 0)
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
      case 0u:
        v13 = 0;
        while (1)
        {
          LOBYTE(v38) = 0;
          v14 = [a2 position] + 1;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 1, v15 <= objc_msgSend(a2, "length")))
          {
            v16 = [a2 data];
            [v16 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v38 & 0x80000000) == 0)
          {
            break;
          }

          if (v13++ > 8)
          {
            goto LABEL_69;
          }
        }

        [a2 hasError];
        goto LABEL_69;
      case 1u:
        v18 = PBReaderReadString();
        v19 = 56;
        goto LABEL_68;
      case 2u:
        v18 = PBReaderReadString();
        v19 = 80;
        goto LABEL_68;
      case 3u:
        v18 = PBReaderReadString();
        v19 = 40;
        goto LABEL_68;
      case 4u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v38 & 0x7F) << v21;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_74;
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

LABEL_74:
        v36 = 64;
        goto LABEL_80;
      case 5u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 128) |= 1u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v38 & 0x7F) << v28;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_79:
        v36 = 48;
LABEL_80:
        *(a1 + v36) = v27;
        goto LABEL_69;
      case 6u:
        v18 = PBReaderReadString();
        v19 = 96;
        goto LABEL_68;
      case 7u:
        v18 = PBReaderReadString();
        v19 = 88;
        goto LABEL_68;
      case 8u:
        v18 = PBReaderReadString();
        v19 = 32;
        goto LABEL_68;
      case 9u:
        v18 = PBReaderReadString();
        v19 = 72;
        goto LABEL_68;
      case 0xAu:
        [a1 clearOneofValuesForProgressInfo];
        *(a1 + 128) |= 4u;
        *(a1 + 104) = 1;
        v20 = objc_alloc_init(PDDPActivityReportItem);
        objc_storeStrong((a1 + 24), v20);
        v38 = 0;
        v39 = 0;
        if (PBReaderPlaceMark() && sub_100098958(v20, a2))
        {
          goto LABEL_66;
        }

        goto LABEL_82;
      case 0xBu:
        [a1 clearOneofValuesForProgressInfo];
        *(a1 + 128) |= 4u;
        *(a1 + 104) = 2;
        v20 = objc_alloc_init(PDDPRange);
        objc_storeStrong((a1 + 112), v20);
        v38 = 0;
        v39 = 0;
        if (!PBReaderPlaceMark() || !sub_10013B5E0(v20, a2))
        {
          goto LABEL_82;
        }

        goto LABEL_66;
      case 0xCu:
        [a1 clearOneofValuesForProgressInfo];
        *(a1 + 128) |= 4u;
        *(a1 + 104) = 3;
        v20 = objc_alloc_init(PDDPTimeIntervalInfo);
        objc_storeStrong((a1 + 120), v20);
        v38 = 0;
        v39 = 0;
        if (!PBReaderPlaceMark() || !sub_100116EA4(v20, a2))
        {
          goto LABEL_82;
        }

        goto LABEL_66;
      case 0xDu:
        [a1 clearOneofValuesForProgressInfo];
        *(a1 + 128) |= 4u;
        *(a1 + 104) = 4;
        v20 = objc_alloc_init(PDDPActivityInfo);
        objc_storeStrong((a1 + 16), v20);
        v38 = 0;
        v39 = 0;
        if (PBReaderPlaceMark() && sub_1000B6B88(v20, a2))
        {
LABEL_66:
          PBReaderRecallMark();

LABEL_69:
          v35 = [a2 position];
          if (v35 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_82:

        return 0;
      default:
        if ((v12 >> 3) == 100)
        {
          v18 = PBReaderReadString();
          v19 = 8;
LABEL_68:
          v34 = *(a1 + v19);
          *(a1 + v19) = v18;
        }

        else if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_69;
    }
  }
}

uint64_t sub_100151EF4(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(PDDPMapEntry);
            [a1 addExtraInfo:v14];
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !sub_10011D2D0(v14, a2))
            {
LABEL_89:

              return 0;
            }

            goto LABEL_74;
          }

          if (v13 == 6)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v39 & 0x7F) << v18;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_80;
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

LABEL_80:
            v36 = 36;
            goto LABEL_86;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              [a1 clearOneofValuesForEventDetails];
              *(a1 + 80) |= 1u;
              *(a1 + 32) = 1;
              v14 = objc_alloc_init(PDDPHandoutEventDetails);
              objc_storeStrong((a1 + 56), v14);
              v39 = 0;
              v40 = 0;
              if (!PBReaderPlaceMark() || !sub_1000C7470(v14, a2))
              {
                goto LABEL_89;
              }

              goto LABEL_74;
            case 8:
              [a1 clearOneofValuesForEventDetails];
              *(a1 + 80) |= 1u;
              *(a1 + 32) = 2;
              v14 = objc_alloc_init(PDDPAttachmentEventDetails);
              objc_storeStrong((a1 + 8), v14);
              v39 = 0;
              v40 = 0;
              if (!PBReaderPlaceMark() || !sub_10003903C(v14, a2))
              {
                goto LABEL_89;
              }

              goto LABEL_74;
            case 9:
              [a1 clearOneofValuesForEventDetails];
              *(a1 + 80) |= 1u;
              *(a1 + 32) = 3;
              v14 = objc_alloc_init(PDDPProgressEventDetails);
              objc_storeStrong((a1 + 72), v14);
              v39 = 0;
              v40 = 0;
              if (!PBReaderPlaceMark() || !sub_10014F664(v14, a2))
              {
                goto LABEL_89;
              }

              goto LABEL_74;
          }
        }
      }

      else if (v13 <= 1)
      {
        if (!v13)
        {
          v25 = 0;
          while (1)
          {
            LOBYTE(v39) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v39 & 0x80000000) == 0)
            {
              break;
            }

            if (v25++ > 8)
            {
              goto LABEL_87;
            }
          }

          [a2 hasError];
          goto LABEL_87;
        }

        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v17 = *(a1 + 64);
          *(a1 + 64) = v16;

          goto LABEL_87;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v39 & 0x7F) << v30;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v32;
            }

LABEL_85:
            v36 = 40;
LABEL_86:
            *(a1 + v36) = v24;
            goto LABEL_87;
          case 3:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 16;
LABEL_69:
            objc_storeStrong((a1 + v15), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {
              goto LABEL_89;
            }

LABEL_74:
            PBReaderRecallMark();

            goto LABEL_87;
          case 4:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 24;
            goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_87:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10015367C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 314);
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

uint64_t sub_100154054(uint64_t a1, void *a2)
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
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
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
        if (v13 > 105)
        {
          if (v13 == 106)
          {
            *(a1 + 64) |= 1u;
            v50[0] = 0;
            v44 = [a2 position] + 8;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v50[0];
            goto LABEL_93;
          }

          if (v13 == 108)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v50[0] & 0x7F) << v29;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v35) = 0;
                goto LABEL_90;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_90:
            *(a1 + 60) = v35;
            goto LABEL_93;
          }
        }

        else
        {
          if (v13 == 102)
          {
            v28 = objc_alloc_init(PDDPDate);
            objc_storeStrong((a1 + 24), v28);
            v50[0] = 0;
            v50[1] = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v28, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_69;
          }

          if (v13 == 104)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v50[0] & 0x7F) << v21;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_88;
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

LABEL_88:
            *(a1 + 16) = v27;
            goto LABEL_93;
          }
        }
      }

      else if (v13 > 99)
      {
        if (v13 == 100)
        {
          v42 = PBReaderReadString();
          v43 = *(a1 + 48);
          *(a1 + 48) = v42;

          goto LABEL_93;
        }

        if (v13 == 101)
        {
          v28 = PBReaderReadString();
          if (v28)
          {
            [a1 addStringListValue:v28];
          }

LABEL_69:

          goto LABEL_93;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v50[0] & 0x7F) << v36;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v38;
          }

LABEL_79:
          v46 = 56;
          goto LABEL_84;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50[0] & 0x7F) << v14;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_83;
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

LABEL_83:
          v46 = 32;
LABEL_84:
          *(a1 + v46) = v20;
          goto LABEL_93;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100156484(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 32;
LABEL_33:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_33;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(PDDPDate);
            v17 = 8;
LABEL_29:
            objc_storeStrong((a1 + v17), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {
LABEL_40:

              return 0;
            }

            goto LABEL_31;
          case 4:
            v14 = objc_alloc_init(PDDPDate);
            v17 = 16;
            goto LABEL_29;
          case 6:
            v14 = objc_alloc_init(PDDPEntityMeta);
            objc_storeStrong((a1 + 24), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_1000B408C(v14, a2))
            {
              goto LABEL_40;
            }

LABEL_31:
            PBReaderRecallMark();
            goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100157370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100157388(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v13 syncItem];
  v20 = [v13 syncableItem];
  v21 = [v19 entity];
  v53 = v14;
  [v14 addObject:v13];
  if (([*(a1 + 32) _shouldSkipGeneratingPayload:v20] & 1) == 0)
  {
    v55 = v15;
    v52 = v13;
    [v21 payloadsForObject:v20 withSyncItem:v19 database:v18];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v64 = 0u;
    v22 = v18;
    v59 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v59)
    {
      v24 = *v62;
      *&v23 = 138543874;
      v50 = v23;
      v57 = v20;
      v58 = v19;
      v54 = v16;
      do
      {
        v25 = 0;
        do
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v61 + 1) + 8 * v25);
          context = objc_autoreleasePoolPush();
          if ([v26 type] == 25)
          {
            v27 = [v26 survey];
            v28 = [v27 objectId];
            v29 = [v55 objectForKey:v28];

            if (v29)
            {
              objc_autoreleasePoolPop(context);
              v16 = v54;
              v20 = v57;
              v19 = v58;
              goto LABEL_28;
            }

            v30 = [v26 survey];
            v31 = [v30 objectId];
            [v55 setObject:&off_10021B7B0 forKeyedSubscript:v31];

            v16 = v54;
          }

          [v16 addPayload:{v26, v50}];
          [v16 writeTo:v17];
          [v16 clearPayloads];
          v32 = [v17 data];
          v33 = [v32 length];
          v34 = [*(a1 + 32) stats];
          if (v34)
          {
            v34[10] = v33;
          }

          v35 = [*(a1 + 32) stats];
          if (v35)
          {
            ++v35[14];
          }

          CLSInitLog();
          v36 = [*(a1 + 32) logSubsystem];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v45 = *(a1 + 32);
            v46 = objc_opt_class();
            v47 = *(*(*(a1 + 40) + 8) + 40);
            v51 = v46;
            v48 = [v26 dictionaryRepresentation];
            *buf = v50;
            v66 = v46;
            v67 = 2114;
            v68 = v47;
            v69 = 2112;
            v70 = v48;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
          }

          v37 = *(a1 + 32);
          v38 = [v37 stats];
          v39 = v38;
          if (v38)
          {
            v40 = *(v38 + 80);
          }

          else
          {
            v40 = 0;
          }

          v41 = [*(a1 + 32) stats];
          v42 = v41;
          if (v41)
          {
            v43 = *(v41 + 112);
          }

          else
          {
            v43 = 0;
          }

          v44 = [v37 hasReachedRequestPayloadLimitBytes:v40 count:v43];

          objc_autoreleasePoolPop(context);
          v20 = v57;
          v19 = v58;
          if (v44)
          {
            goto LABEL_28;
          }

          v25 = v25 + 1;
        }

        while (v59 != v25);
        v49 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
        v59 = v49;
      }

      while (v49);
    }

LABEL_28:

    v18 = v22;
    v13 = v52;
    v15 = v55;
  }
}

void sub_100157FC8(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 entity];
  v4 = [objc_opt_class() entityName];
  if (!v4)
  {
    v2 = [objc_opt_class() entityName];
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  [v13 entity];
  v5 = [objc_opt_class() entityName];
  if (!v5)
  {
LABEL_9:
    if (!v4)
    {
    }

    goto LABEL_13;
  }

  v6 = v5;
  v7 = [objc_opt_class() entityName];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  [v13 entity];
  v9 = [objc_opt_class() entityName];
  v10 = [objc_opt_class() entityName];
  v11 = [v9 isEqualToString:v10];

  if (!v4)
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v11)
  {
LABEL_12:
    v12 = *(a1 + 32);
    v4 = [v13 entityIdentity];
    [v12 addObject:v4];
LABEL_13:
  }

LABEL_14:
}

void sub_100158360(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 entityIdentity];
  v23 = v6;
  v7 = [NSArray arrayWithObjects:&v23 count:1];
  [v3 deleteAll:v5 where:@"objectID = ?" bindings:v7];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 entityIdentity];
  v22 = v10;
  v11 = [NSArray arrayWithObjects:&v22 count:1];
  [v8 deleteAll:v9 where:@"objectID = ?" bindings:v11];

  v12 = *(a1 + 32);
  v13 = objc_opt_class();
  v14 = [v4 entityIdentity];
  v21 = v14;
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  [v12 deleteAll:v13 where:@"objectID = ?" bindings:v15];

  v16 = *(a1 + 32);
  v17 = objc_opt_class();
  v18 = [v4 entityIdentity];

  v20 = v18;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [v16 deleteAll:v17 where:@"objectID = ?" bindings:v19];
}

void sub_100158B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entity];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v6 = [v3 entityIdentity];
    v7 = [v5 select:v4 identity:v6];

    if (v7 || [v3 state] == 3)
    {
      v8 = objc_opt_new();
      [v8 setSyncItem:v3];
      [v8 setSyncableItem:v7];
      v9 = objc_opt_self();
      v10 = [v4 isSubclassOfClass:v9];

      if (!v10)
      {
        [*(*(a1 + 32) + 251) addObject:v8];
        CLSInitLog();
        v18 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = [v4 entityName];
          v21 = [v3 entityIdentity];
          v29 = 138412546;
          v30 = v20;
          v31 = 2112;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges: insert %@ (%@) into _toBePushedSyncableOtherItems", &v29, 0x16u);
        }

        goto LABEL_15;
      }

      if ([v3 state] == 1)
      {
        [*(*(a1 + 32) + 243) addObject:v8];
        CLSInitLog();
        v11 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [v3 entityIdentity];
          v29 = 138412290;
          v30 = v13;
          v14 = "PDPushLocalClassChanges: insert CLSAsset (%@) into _toBePushedSyncableNewCLSAssetItems";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v29, 0xCu);
        }
      }

      else
      {
        [*(a1 + 56) addObject:v8];
        CLSInitLog();
        v22 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v22;
          v13 = [v3 entityIdentity];
          v29 = 138412290;
          v30 = v13;
          v14 = "PDPushLocalClassChanges: insert CLSAsset (%@) into toBePushedSyncableOtherCLSAssetItems";
          goto LABEL_14;
        }
      }

LABEL_15:

      goto LABEL_16;
    }

    v23 = *(a1 + 48);
    v24 = [v3 identityValue];
    [v23 addObject:v24];

    CLSInitLog();
    v25 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [v4 entityName];
      v28 = [v3 entityIdentity];
      v29 = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges: Found orphaned sync item %@ (%@)", &v29, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    CLSInitLog();
    v7 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v3 entityIdentity];
      v29 = 138543618;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "entityClass: %{public}@: %{public}@ does not respond to sync selector", &v29, 0x16u);
    }
  }

LABEL_16:
}

char *sub_1001596A4(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PDCollaborationStateChangePublish;
    v7 = objc_msgSendSuper2(&v14, "initWithDatabase:", a2);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 235), a3);
      v9 = objc_opt_new();
      v10 = *(v8 + 251);
      *(v8 + 251) = v9;

      v11 = *(v8 + 243);
      *(v8 + 243) = 0;

      v12 = *(v8 + 259);
      *(v8 + 259) = 0;

      *(v8 + 227) = [*(v8 + 235) count];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10015A2B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = *(a1 + 40);
  v6 = [v4 objectID];

  [v5 addObject:v6];
}

id sub_10015B35C(uint64_t a1)
{
  if (a1)
  {
    v2 = [a1 operationError];
    if ([*(a1 + 243) count])
    {
      v3 = objc_opt_new();
      v4 = [a1 operationError];

      if (v4)
      {
        v5 = [a1 operationError];
        [v3 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];

        v6 = [a1 operationError];
        v10 = v6;
        v7 = [NSArray arrayWithObjects:&v10 count:1];
        [v3 setObject:v7 forKeyedSubscript:CLSErrorUnderlyingErrorsKey];
      }

      [v3 setObject:*(a1 + 243) forKeyedSubscript:CLSErrorObjectKey];
      [v3 setObject:@"Failed CollaborationStates can be found under CLSErrorObjectKey." forKeyedSubscript:NSLocalizedDescriptionKey];
      v8 = [[NSError alloc] initWithDomain:CLSErrorCodeDomain code:9 userInfo:v3];

      v2 = v8;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10015C8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015C8CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10015C8E4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 objectID];
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = +[CLSAsset entityName];
  v24[0] = v10;
  v24[1] = v7;
  v11 = [NSArray arrayWithObjects:v24 count:2];
  v12 = [v8 count:v9 where:@"entity = ? AND entityIdentity = ?" bindings:v11];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [NSNumber numberWithInteger:v13];
  v23[0] = v14;
  v23[1] = v7;
  v15 = [NSArray arrayWithObjects:v23 count:2];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = @"update CLSAsset set schoolworkSyncStatus=? where objectID=?";

  *(*(*(a1 + 48) + 8) + 24) = sub_1000B9298(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 0, v15, 0);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    CLSInitLog();
    v18 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to migrate CLSAsset(2): Could not update CLSAsset set schoolworkSyncStatus=%@ where objectID=%@", &v19, 0x16u);
    }

    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

id sub_10015CD74(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 select:objc_opt_class() identity:v3];

    if (v4)
    {
      v5 = [v4 parentObjectID];

      if (v5)
      {
        v6 = [v4 parentEntityType];
        if (v6 > 3)
        {
          switch(v6)
          {
            case 4:
              v7 = [v4 parentObjectID];
              v8 = sub_10010EA58(v2, v7);
              goto LABEL_18;
            case 5:
              v7 = [v4 parentObjectID];
              v8 = sub_1000C61BC(v2, v7);
              goto LABEL_18;
            case 6:
              v7 = [v4 parentObjectID];
              v8 = sub_100164010(v2, v7);
              goto LABEL_18;
          }
        }

        else
        {
          switch(v6)
          {
            case 1:
              v7 = [v4 parentObjectID];
              v8 = sub_100175C6C(v2, v7);
              goto LABEL_18;
            case 2:
              v7 = [v4 parentObjectID];
              v8 = sub_10016022C(v2, v7);
              goto LABEL_18;
            case 3:
              v7 = [v4 parentObjectID];
              v8 = sub_10006FEFC(v2, v7);
LABEL_18:
              v2 = v8;

              goto LABEL_19;
          }
        }
      }
    }

    v2 = objc_opt_new();
LABEL_19:
  }

  return v2;
}

BOOL sub_10015CF38(_BOOL8 a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 select:objc_opt_class() identity:v3];

    v2 = [v4 schoolworkSyncStatus] != 2;
  }

  return v2;
}

void sub_10015CFB0(id a1, NSArray *a2, NSArray *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  CLSInitLog();
  v9 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = 134218498;
    v12 = [(NSArray *)v6 count];
    v13 = 2048;
    v14 = [(NSArray *)v7 count];
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "deleteFromCloudKitContentStore: operationCompletionBlock - #savedRecords: %lu, #deletedRecordIDs:%lu, error: %@", &v11, 0x20u);
  }
}

void sub_10015D0C8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v10 = @"schoolworkSyncStatus";
    v7 = [NSNumber numberWithInteger:a3];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    v9 = [PDDatabase whereSQLForArray:v5 prefix:@"objectID in "];
    [a1 updateAll:objc_opt_class() set:v8 where:v9 bindings:v5];

    objc_autoreleasePoolPop(v6);
  }
}

id sub_10015D1E8(id a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_10015D2A8;
    v7 = &unk_1002029E8;
    v8 = a1;
    v9 = objc_opt_new();
    v2 = v9;
    sub_10010BE68(v1, &v4);
    v1 = [v2 copy];
  }

  return v1;
}

void sub_10015D2A8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10015D340;
  v2[3] = &unk_1002031B0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1000B9298(v1, @"SELECT * FROM (\n SELECT * FROM CLSAsset WHERE parentObjectID is NULL\n UNION\n SELECT * from CLSAsset WHERE parentEntityType=1 AND NOT EXISTS (SELECT objectID FROM CLSHandout WHERE CLSAsset.parentObjectID = CLSHandout.objectID)\n UNION\n SELECT * from CLSAsset WHERE parentEntityType=2 AND NOT EXISTS (SELECT objectID FROM CLSHandoutAttachment WHERE CLSAsset.parentObjectID = CLSHandoutAttachment.objectID)\n UNION\n SELECT * from CLSAsset WHERE parentEntityType=3 AND NOT EXISTS (SELECT objectID FROM CLSQuestionStep WHERE CLSAsset.parentObjectID = CLSQuestionStep.objectID)\n UNION\n SELECT * from CLSAsset WHERE parentEntityType=4 AND NOT EXISTS (SELECT objectID FROM CLSSurveyAnswerItem WHERE CLSAsset.parentObjectID = CLSSurveyAnswerItem.objectID)\n UNION\n SELECT * from CLSAsset WHERE parentEntityType=5 AND NOT EXISTS (SELECT objectID FROM CLSMultipleChoiceAnswerItem WHERE CLSAsset.parentObjectID = CLSMultipleChoiceAnswerItem.objectID)\n UNION\n SELECT * from CLSAsset WHERE parentEntityType=6 AND NOT EXISTS (SELECT objectID FROM CLSCollaborationState WHERE CLSAsset.parentObjectID = CLSCollaborationState.objectID)\n)", 0, 0, v2);
}

void sub_10015D340(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [[CLSAsset alloc] initWithDatabaseRow:v5];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

BOOL sub_10015D3C8(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 parentEntityType] == 1)
    {
      v5 = [v4 parentObjectID];
      v6 = sub_10017659C(a1, v5);
    }

    else if ([v4 parentEntityType] == 2)
    {
      v5 = [v4 parentObjectID];
      v6 = sub_100160F98(a1, v5);
    }

    else if ([v4 parentEntityType] == 3)
    {
      v5 = [v4 parentObjectID];
      v6 = sub_100070754(a1, v5);
    }

    else if ([v4 parentEntityType] == 4)
    {
      v5 = [v4 parentObjectID];
      v6 = sub_10010EC9C(a1, v5);
    }

    else if ([v4 parentEntityType] == 5)
    {
      v5 = [v4 parentObjectID];
      v6 = sub_1000C6400(a1, v5);
    }

    else
    {
      if ([v4 parentEntityType] != 6)
      {
        a1 = 0;
        goto LABEL_15;
      }

      v5 = [v4 parentObjectID];
      v6 = sub_100164254(a1, v5);
    }

    v7 = v6;

    a1 = v7 == 2;
LABEL_15:
    objc_opt_self();
  }

  return a1;
}

void *sub_10015E198(void *result)
{
  if (result)
  {
    return sub_10016A160(result, @"classKitCatalogEnvironment");
  }

  return result;
}

id sub_10015E1AC(id result, int64_t a2)
{
  if (result)
  {
    v3 = result;
    [result lock];
    if (sub_10016A160(v3, @"classKitCatalogEnvironment") != a2)
    {
      sub_10016A0C8(v3, a2, @"classKitCatalogEnvironment");
      [CLSUtil postNotification:CLSClassKitCatalogEnvironmentChangedDarwinNotificationName];
    }

    return [v3 unlock];
  }

  return result;
}

uint64_t sub_10015E7E4(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 8) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
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
            v20 = v23;
          }

LABEL_52:
          v35 = 20;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
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

LABEL_60:
          v35 = 16;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10016022C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001607C0;
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

uint64_t sub_10016032C(void *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 select:objc_opt_class() identity:v5];
    if (v6)
    {
      v7 = sub_100160444(a1, v6, a3);
    }

    else
    {
      CLSInitLog();
      v8 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Can't update authorization - could not find attachment with objectID: %{public}@.", &v10, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100160444(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 objectID];
    if ([v6 type] == 1)
    {
      v8 = [v6 contextPath];
      v9 = [v8 count];

      if (!v9)
      {
        a1 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v10 = [@"isAuthorized" stringByAppendingString:v7];
    v11 = sub_100169FD0(a1, v10);
    v12 = v11;
    if ((v11 & 1) != 0 || !a3)
    {
      v15 = @"Left as is";
      if (v11 && (a3 & 1) == 0)
      {
        if ([v6 type] == 1)
        {
          v16 = [v6 contextPath];
          v17 = sub_10014B7E8(a1, 1, v16);
        }

        else
        {
          v16 = [v6 objectID];
          v17 = sub_1000160C4(a1, 2, v16);
        }

        v20 = v17;

        if ((v20 & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = 0;
        v15 = @"Removed";
      }
    }

    else if ([v6 type] == 1)
    {
      v13 = [v6 contextPath];
      v12 = 1;
      v14 = sub_10014B4D4(a1, 1, v13);

      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = @"Added";
    }

    else
    {
      v18 = [v6 objectID];
      v19 = sub_1000160C4(a1, 1, v18);

      if (!v19)
      {
        goto LABEL_22;
      }

      v15 = @"Added";
      v12 = 1;
    }

    if (sub_100169F38(a1, v12, v10))
    {
      CLSInitLog();
      v21 = CLSLogDatabase;
      a1 = 1;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        [v6 type];
        v23 = NSStringFromHandoutAttachmentType();
        v24 = [v6 contextPath];
        v30 = 138413058;
        v31 = v15;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v24;
        v36 = 2114;
        v37 = v7;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ authorization for handout attachment type '%@' with context at path %@ from attachment %{public}@.", &v30, 0x2Au);
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_22:
    CLSInitLog();
    v25 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      [v6 type];
      v27 = NSStringFromHandoutAttachmentType();
      v28 = [v6 contextPath];
      v30 = 138412802;
      v31 = v27;
      v32 = 2112;
      v33 = v28;
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Failed to change authorization for handout attachment type '%@' with context at path %@ from attachment %{public}@.", &v30, 0x20u);
    }

    a1 = 0;
    goto LABEL_25;
  }

LABEL_27:

  return a1;
}

void sub_1001607C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001608B8;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSHandoutRecipient as R join CLSHandoutAttachment as A on R.parentObjectID = A.parentObjectID and A.objectID = ?", 1, v3, v4);
}

void sub_1001608B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

id sub_10016091C(void *a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 objectID];
          v24 = v11;
          v12 = [NSArray arrayWithObjects:&v24 count:1];

          v13 = objc_opt_class();
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100160B28;
          v17[3] = &unk_1002064F0;
          v17[4] = a1;
          v18 = v5;
          v19 = v10;
          [a1 selectAll:v13 where:@"parentObjectID = ?" bindings:v12 block:v17];
        }

        v7 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100160B28(uint64_t a1, void *a2, _BYTE *a3)
{
  result = sub_100160B68(*(a1 + 32), a2);
  if ((result & 1) == 0)
  {
    result = [*(a1 + 40) addObject:*(a1 + 48)];
    *a3 = 1;
  }

  return result;
}

id sub_100160B68(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_class();
    v5 = [v3 objectID];
    v15[0] = v5;
    v15[1] = &off_10021B7C8;
    v6 = [NSArray arrayWithObjects:v15 count:2];
    v7 = [a1 select:v4 where:@"parentObjectID = ? AND domain = ?" bindings:v6];

    if (v7)
    {
      v8 = [v7 isCompletedActivity];
    }

    else
    {
      CLSInitLog();
      v9 = CLSLogDefault;
      v8 = 0;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v3 objectID];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDHandoutPastDueSummaryNotificationTrigger: collaboration state for handout attachemnt with id: %{public}@ not available.", &v13, 0xCu);

        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100160CEC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (a1)
  {
    if (v5)
    {
      v7 = [v5 objectID];

      if (v7)
      {
        v8 = objc_opt_class();
        v9 = [v6 objectID];
        v18 = v9;
        v10 = [NSArray arrayWithObjects:&v18 count:1];
        v11 = [a1 select:v8 where:@"parentObjectID = ? and domain = 1" bindings:v10];

        if (v11)
        {
          v7 = [v11 isAskedToTryAgain];
LABEL_11:

          goto LABEL_12;
        }

        CLSInitLog();
        v12 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          v14 = [v6 objectID];
          v16 = 138543362;
          v17 = v14;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Collaboration state for handout attachemnt with id: %{public}@ not available.", &v16, 0xCu);

          if (a3)
          {
            goto LABEL_8;
          }
        }

        else if (a3)
        {
LABEL_8:
          [NSError cls_createErrorWithCode:100 description:@"No collab states found"];
          *a3 = v7 = 0;
          goto LABEL_11;
        }

        v7 = 0;
        goto LABEL_11;
      }
    }
  }

LABEL_12:

  return v7;
}

id sub_100160EB4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 type] == 1 && (objc_msgSend(v4, "contextPath"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [v4 contextPath];
      v7 = [CLSContext objectIDForIdentifierPath:v6];

      if (v7)
      {
        a1 = [a1 select:objc_opt_class() identity:v7];
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void *sub_100160F98(void *a1, void *a2)
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
    v6[2] = sub_100161084;
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

void sub_10016106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100161084(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100161170;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select CS.state from CLSCollaborationState as CS join CLSHandoutAttachment as HA on HA.parentObjectID = CS.parentObjectID and HA.objectID = ?", 1, v3, v4);
}

void sub_100161170(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"state");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

id sub_100163860(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_opt_new();
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100163968;
    v13 = &unk_1002028D0;
    v14 = a1;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v8 = v7;
    sub_10010BE68(a1, &v10);
    a1 = [v8 copy];
  }

  return a1;
}

void sub_100163968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 48);
  v8[0] = *(a1 + 40);
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100163A74;
  v6[3] = &unk_100204398;
  v7 = *(a1 + 56);
  [v2 selectAll:v3 where:@"parentObjectID = ? and ownerPersonID = ?" bindings:v5 block:v6];
}

id sub_100163A80(id a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = objc_opt_new();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100163B98;
    v12[3] = &unk_100206518;
    v12[4] = a1;
    v13 = v8;
    v16 = a4;
    v14 = v7;
    v15 = v9;
    v10 = v9;
    sub_10010BE68(a1, v12);
    a1 = [v10 copy];
  }

  return a1;
}

void sub_100163B98(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v15[0] = *(a1 + 40);
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v15[1] = v4;
  v5 = [NSArray arrayWithObjects:v15 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100163D98;
  v13[3] = &unk_1002031B0;
  v14 = v2;
  v6 = v2;
  sub_1000B9298(v3, @"select distinct personID from CLSClassMember where parentObjectID = ? and (roles & ? > 0)", 1, v5, v13);

  v7 = [PDDatabase whereSQLForArray:v6 prefix:@"parentObjectID = ? and ownerPersonID in "];
  v8 = objc_opt_new();
  [v8 addObject:*(a1 + 48)];
  [v8 addObjectsFromArray:v6];
  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100163DFC;
  v11[3] = &unk_100204398;
  v12 = *(a1 + 56);
  [v9 selectAll:v10 where:v7 bindings:v8 block:v11];
}

void sub_100163D98(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"personID");
  [v2 addObject:v3];
}

id sub_100163E08(id a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100163F64;
    v20 = sub_100163F74;
    v21 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100163F7C;
    v10[3] = &unk_100206540;
    v11 = v7;
    v14 = &v16;
    v15 = a4;
    v12 = v8;
    v13 = a1;
    sub_10010BE68(a1, v10);
    a1 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  return a1;
}

void sub_100163F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100163F64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100163F7C(uint64_t a1)
{
  v5 = [CLSCollaborationState identifierForTargetObjectID:*(a1 + 32) ownerPersonID:*(a1 + 40) domain:*(a1 + 64)];
  v2 = [*(a1 + 48) select:objc_opt_class() identity:v5];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100164010(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001640F8;
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

void sub_1001640F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001641F0;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSCollaborationState where objectID = ?", 1, v3, v4);
}

void sub_1001641F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

void *sub_100164254(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v2 select:objc_opt_class() identity:v3];

    v5 = [v4 parentObjectID];
    v6 = sub_100160F98(v2, v5);

    return v6;
  }

  return result;
}

uint64_t sub_1001657C8(uint64_t a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 148) |= 2u;
        while (1)
        {
          LOBYTE(v39) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v39 & 0x7F) << v13;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_98:
            v37 = 80;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_98;
      case 2u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 148) |= 1u;
        while (1)
        {
          LOBYTE(v39) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v32;
        }

LABEL_102:
        v37 = 8;
        goto LABEL_103;
      case 3u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 148) |= 4u;
        while (1)
        {
          LOBYTE(v39) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v39 & 0x7F) << v24;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v26;
        }

LABEL_94:
        v37 = 144;
LABEL_103:
        *(a1 + v37) = v19;
        goto LABEL_89;
      case 4u:
        v20 = objc_alloc_init(PDDPStatus);
        objc_storeStrong((a1 + 120), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 5u:
        v20 = objc_alloc_init(PDDPEERequestZone);
        objc_storeStrong((a1 + 96), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_100147AF4(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 6u:
        v20 = objc_alloc_init(PDDPEEResponseZone);
        objc_storeStrong((a1 + 104), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_1000DE994(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 7u:
        v20 = objc_alloc_init(PDDPLocation);
        objc_storeStrong((a1 + 64), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_100156484(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 8u:
        v20 = objc_alloc_init(PDDPPerson);
        objc_storeStrong((a1 + 88), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_1000EDA70(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 9u:
        v20 = objc_alloc_init(PDDPClass);
        objc_storeStrong((a1 + 32), v20);
        v39 = 0;
        v40 = 0;
        if (PBReaderPlaceMark() && sub_10010724C(v20, a2))
        {
          goto LABEL_88;
        }

        goto LABEL_105;
      case 0xAu:
        v20 = objc_alloc_init(PDDPClassMember);
        objc_storeStrong((a1 + 40), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_100041C1C(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 0xBu:
        v20 = objc_alloc_init(PDDPRole);
        objc_storeStrong((a1 + 112), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_100114D48(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 0xCu:
        v21 = PBReaderReadString();
        v22 = 128;
        goto LABEL_38;
      case 0xDu:
        v21 = PBReaderReadString();
        v22 = 136;
LABEL_38:
        v23 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_89;
      case 0xEu:
        v20 = objc_alloc_init(PDDPOrganization);
        objc_storeStrong((a1 + 72), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1224(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 0xFu:
        v20 = objc_alloc_init(PDDPAdminRequestDetails);
        objc_storeStrong((a1 + 16), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_10003B9B8(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 0x10u:
        v20 = objc_alloc_init(PDDPAdminRequestAccount);
        objc_storeStrong((a1 + 24), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_10013E23C(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 0x11u:
        v20 = objc_alloc_init(PDDPGroup);
        objc_storeStrong((a1 + 48), v20);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !sub_1000C0C9C(v20, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      case 0x12u:
        v20 = objc_alloc_init(PDDPGroupMember);
        objc_storeStrong((a1 + 56), v20);
        v39 = 0;
        v40 = 0;
        if (PBReaderPlaceMark() && sub_10006D4BC(v20, a2))
        {
LABEL_88:
          PBReaderRecallMark();

LABEL_89:
          v36 = [a2 position];
          if (v36 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_105:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_89;
    }
  }
}

uint64_t sub_100167D6C(uint64_t a1, void *a2)
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
        LOBYTE(v42) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v23 = objc_alloc_init(PDDPActivityReport);
              objc_storeStrong((a1 + 56), v23);
              goto LABEL_72;
            case 0xB:
              v23 = objc_alloc_init(PDDPActivityReport);
              [a1 addAdditionalReports:v23];
LABEL_72:
              v42 = 0;
              v43 = 0;
              if (!PBReaderPlaceMark() || !sub_1000C3E18(v23, a2))
              {
LABEL_90:

                return 0;
              }

LABEL_74:
              PBReaderRecallMark();

              goto LABEL_88;
            case 0xC:
              v14 = PBReaderReadString();
              v15 = 64;
              goto LABEL_70;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v23 = objc_alloc_init(PDDPDate);
              v24 = 32;
              goto LABEL_54;
            case 8:
              v14 = PBReaderReadString();
              v15 = 16;
              goto LABEL_70;
            case 9:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 96) |= 4u;
              while (1)
              {
                LOBYTE(v42) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v42 & 0x7F) << v16;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_78;
                }
              }

              v22 = (v18 != 0) & ~[a2 hasError];
LABEL_78:
              *(a1 + 92) = v22;
              goto LABEL_88;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 80;
            goto LABEL_70;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_70;
          case 6:
            v23 = objc_alloc_init(PDDPDate);
            v24 = 72;
LABEL_54:
            objc_storeStrong((a1 + v24), v23);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v23, a2))
            {
              goto LABEL_90;
            }

            goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              LOBYTE(v42) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v42 & 0x7F) << v25;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_82:
            v39 = 88;
            goto LABEL_87;
          case 2:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v42) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v42 & 0x7F) << v32;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v34;
            }

LABEL_86:
            v39 = 40;
LABEL_87:
            *(a1 + v39) = v31;
            goto LABEL_88;
          case 3:
            v14 = PBReaderReadString();
            v15 = 48;
LABEL_70:
            v38 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_88;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_88:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100169F38(id result, BOOL a2, void *a3)
{
  if (result)
  {
    v5 = result;
    v6 = a3;
    v7 = objc_alloc_init(PDBoolProperty);
    sub_10008120C(v7, v6);

    if (v7)
    {
      v7->_value = a2;
    }

    v8 = [v5 insertOrUpdateObject:v7];

    return v8;
  }

  return result;
}

uint64_t sub_100169FD0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v5 = objc_opt_class();
    v10 = v4;
    v6 = [NSArray arrayWithObjects:&v10 count:1];

    v7 = [v3 select:v5 where:@"name = ?" bindings:v6];

    if (v7)
    {
      v8 = v7[16];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id sub_10016A0C8(id result, int64_t a2, void *a3)
{
  if (result)
  {
    v5 = result;
    v6 = a3;
    v7 = objc_alloc_init(PDIntegerProperty);
    sub_10008120C(v7, v6);

    if (v7)
    {
      v7->_value = a2;
    }

    v8 = [v5 insertOrUpdateObject:v7];

    return v8;
  }

  return result;
}

uint64_t sub_10016A160(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  v10 = v4;
  v6 = [NSArray arrayWithObjects:&v10 count:1];

  v7 = [v3 select:v5 where:@"name = ?" bindings:v6];

  if (v7)
  {
    v8 = v7[2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10016A258(id result, void *a2, double a3)
{
  if (result)
  {
    v5 = result;
    v6 = a2;
    v7 = objc_alloc_init(PDDoubleProperty);
    sub_10008120C(v7, v6);

    if (v7)
    {
      v7->_value = a3;
    }

    v8 = [v5 insertOrUpdateObject:v7];

    return v8;
  }

  return result;
}

double sub_10016A2F0(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  v10 = v4;
  v6 = [NSArray arrayWithObjects:&v10 count:1];

  v7 = [v3 select:v5 where:@"name = ?" bindings:v6];

  if (v7)
  {
    v8 = v7[2];
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

id sub_10016A3F0(id result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    v6 = a3;
    v7 = a2;
    v8 = objc_alloc_init(PDStringProperty);
    sub_10008120C(v8, v6);

    if (v8)
    {
      objc_storeStrong(&v8->_value, a2);
    }

    v9 = [v5 insertOrUpdateObject:v8];
    return v9;
  }

  return result;
}

id sub_10016A49C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v5 = objc_opt_class();
    v11 = v4;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [v3 select:v5 where:@"name = ?" bindings:v6];

    if (v7)
    {
      v8 = v7[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10016A5AC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    v7 = a3;
    v8 = objc_alloc_init(PDDateProperty);
    sub_10008120C(v8, v7);

    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v9, v5, 16);
    }

    v10 = [v6 insertOrUpdateObject:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10016A65C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v5 = objc_opt_class();
    v11 = v4;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [v3 select:v5 where:@"name = ?" bindings:v6];

    if (v7)
    {
      v8 = v7[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10016A76C(id result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    v6 = a3;
    v7 = a2;
    v8 = objc_alloc_init(PDGenericProperty);
    sub_10008120C(v8, v6);

    v9 = v7;
    if (v8)
    {
      objc_storeStrong(&v8->_value, a2);
      data = v8->_data;
      v8->_data = 0;
    }

    v11 = [v5 insertOrUpdateObject:v8];
    return v11;
  }

  return result;
}

id sub_10016A838(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = a3;
    v7 = a2;
    v8 = objc_opt_class();
    v17 = v7;
    v9 = [NSArray arrayWithObjects:&v17 count:1];

    v10 = [v5 select:v8 where:@"name = ?" bindings:v9];

    v11 = v6;
    if (v10)
    {
      if (*(v10 + 16))
      {
        v12 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:?];
        v13 = *(v10 + 24);
        *(v10 + 24) = v12;

        v14 = *(v10 + 16);
        *(v10 + 16) = 0;
      }

      v15 = *(v10 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_10016B94C(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 92) |= 1u;
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
                goto LABEL_63;
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

LABEL_63:
            *(a1 + 88) = v24;
            goto LABEL_56;
          }

          if (v13 == 2)
          {
            v16 = PBReaderReadString();
            v17 = 48;
LABEL_50:
            v25 = *(a1 + v17);
            *(a1 + v17) = v16;

            goto LABEL_56;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v16 = PBReaderReadString();
              v17 = 56;
              goto LABEL_50;
            case 4:
              v14 = objc_alloc_init(PDDPDate);
              v15 = 24;
              goto LABEL_52;
            case 5:
              v14 = objc_alloc_init(PDDPDate);
              v15 = 32;
              goto LABEL_52;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 72;
LABEL_52:
            objc_storeStrong((a1 + v15), v14);
            v28[0] = 0;
            v28[1] = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_55;
          case 0xA:
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_50;
          case 0x64:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addClassIds:v14];
            }

LABEL_55:

            goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_50;
          case 7:
            v16 = PBReaderReadString();
            v17 = 16;
            goto LABEL_50;
          case 8:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 64;
            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10016CC98(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10016D13C(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___PDDPButtonInfo__url;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___PDDPButtonInfo__title;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id sub_10016D6F0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = PDSQLiteColumnWithName([a1 SQLiteRow], v3);
    if (v4 == -1)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_100073D94([a1 SQLiteRow], v4);
    }
  }

  return a1;
}

uint64_t *sub_10016D778(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = PDSQLiteColumnWithName(a1[2], v3);
    if (v4 == -1)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_100073E30(a1[2], v4);
    }
  }

  return a1;
}

uint64_t sub_10016E410(char *a1, void *a2)
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
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v16 = objc_alloc_init(PDDPDate);
            v17 = 16;
            goto LABEL_39;
          }

          if (v13 == 8)
          {
            v16 = objc_alloc_init(PDDPStateChangePayload);
            [a1 addStateChangePayloads:v16];
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_1000B7C44(v16, a2))
            {
LABEL_48:

              return 0;
            }

LABEL_41:
            PBReaderRecallMark();
LABEL_42:

            goto LABEL_43;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_37;
          }

          if (v13 == 6)
          {
            v16 = objc_alloc_init(PDDPDate);
            v17 = 8;
LABEL_39:
            objc_storeStrong(&a1[v17], v16);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
            {
              goto LABEL_48;
            }

            goto LABEL_41;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_37;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_37;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 56;
LABEL_37:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
          goto LABEL_42;
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

void *sub_10016FBE8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PDRolePrivilege;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      v9 = [v6 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

uint64_t sub_100171D60(uint64_t a1, void *a2)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_44;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 12) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100172568(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10024DBF8;
  qword_10024DBF8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_100172D44(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 8) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
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
            v20 = v23;
          }

LABEL_52:
          v35 = 20;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
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

LABEL_60:
          v35 = 16;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id *sub_100173C88(id *a1, void *a2, objc_class *a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = PDDeletedEntityID;
    v10 = objc_msgSendSuper2(&v16, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      v11 = +[NSDate date];
      v12 = a1[2];
      a1[2] = v11;

      v13 = NSStringFromClass(a3);
      v14 = a1[1];
      a1[1] = v13;

      objc_storeStrong(a1 + 4, a4);
    }
  }

  return a1;
}

void sub_100173FF8(void *a1)
{
  if (a1)
  {
    v2 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
    v3 = objc_opt_class();
    v5 = v2;
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [a1 deleteAll:v3 where:@"deletedAtDate < ?" bindings:v4];
  }
}

id sub_1001740C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100174254;
    v13 = sub_100174264;
    v14 = 0;
    v15 = v3;
    v6 = [NSArray arrayWithObjects:&v15 count:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10017426C;
    v8[3] = &unk_100202190;
    v8[4] = &v9;
    sub_1000B9298(a1, @"select S.objectID from CLSSurvey as S join CLSSurveyAnswerItem as AI on AI.surveyID = S.objectID and AI.objectID = ?", 1, v6, v8);

    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

void sub_100174234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100174254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10017426C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"objectID");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

uint64_t sub_100174704(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 48) |= 1u;
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
          *(a1 + 16) = v24;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_27;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_27;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_27:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100175C6C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100175DF0;
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

BOOL sub_100175D74(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 dueDate];
  if (v1)
  {
    v2 = +[NSDate date];
    v3 = [v1 compare:v2] == -1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100175DF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100175EE8;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSHandoutRecipient where parentObjectID = ?", 1, v3, v4);
}

void sub_100175EE8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

id sub_100175F4C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v12 = a2;
    v3 = a2;
    v4 = [NSArray arrayWithObjects:&v12 count:1];
    v5 = objc_opt_new();
    v6 = objc_opt_class();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001760A0;
    v10[3] = &unk_100203D98;
    v10[4] = v2;
    v7 = v5;
    v11 = v7;
    [v2 selectAll:v6 where:@"dueDate NOT NULL AND dueDate < ?" bindings:v4 block:v10];
    v8 = v11;
    v2 = v7;
  }

  return v2;
}

void sub_1001760A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isIncompleteHandout:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

BOOL sub_100176270(_BOOL8 result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = objc_opt_class();
    v7[0] = v3;
    v7[1] = &off_10021B7F8;
    v5 = [NSArray arrayWithObjects:v7 count:2];

    v6 = [v2 count:v4 where:@"parentObjectID = ? AND type=?" bindings:v5];
    return v6 != 0;
  }

  return result;
}

id sub_100176340(id a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = objc_opt_new();
    v8 = objc_opt_class();
    v16 = v6;
    v9 = [NSArray arrayWithObjects:&v16 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001764B4;
    v13[3] = &unk_1002064F0;
    v13[4] = a1;
    v14 = v5;
    v10 = v7;
    v15 = v10;
    [a1 selectAll:v8 where:@"parentObjectID = ?" bindings:v9 block:v13];

    v11 = v15;
    a1 = v10;
  }

  return a1;
}

void sub_1001764B4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v10 objectID];
  v6 = sub_100163E08(v4, v5, *(a1 + 40), 1);

  if (v6)
  {
    v7 = [v6 state];
    objc_opt_self();
    if (v7 == 2)
    {
      v8 = *(a1 + 48);
      v9 = [v10 objectID];
      [v8 addObject:v9];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void *sub_10017659C(void *a1, void *a2)
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
    v6[2] = sub_100176688;
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

void sub_100176670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100176688(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100176774;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select CS.state from CLSCollaborationState as CS join CLSHandout as H on H.objectID = CS.parentObjectID and H.objectID = ?", 1, v3, v4);
}

void sub_100176774(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"state");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

uint64_t sub_1001782F4(uint64_t a1, void *a2)
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
      LOBYTE(v91) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v91 & 0x7F) << v5;
      if ((v91 & 0x80) == 0)
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
        v14 = 72;
        goto LABEL_134;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_134;
      case 3u:
        v15 = objc_alloc_init(PDDPDate);
        v37 = 48;
        goto LABEL_59;
      case 4u:
        v15 = objc_alloc_init(PDDPDate);
        v37 = 56;
LABEL_59:
        objc_storeStrong((a1 + v37), v15);
        v91 = 0;
        v92 = 0;
        if (PBReaderPlaceMark() && PDDPDateReadFrom(v15, a2))
        {
          goto LABEL_61;
        }

        goto LABEL_184;
      case 5u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 168) |= 0x400u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v91 & 0x7F) << v18;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_140;
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

LABEL_140:
        v84 = 160;
        goto LABEL_175;
      case 6u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 168) |= 0x200u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v91 & 0x7F) << v51;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_158;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v53;
        }

LABEL_158:
        v84 = 156;
        goto LABEL_175;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 120;
        goto LABEL_134;
      case 8u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v91 & 0x7F) << v38;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_152;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v40;
        }

LABEL_152:
        v84 = 64;
        goto LABEL_175;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 24;
        goto LABEL_134;
      case 0xAu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v91 & 0x7F) << v31;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v33;
        }

LABEL_148:
        v84 = 32;
        goto LABEL_175;
      case 0xBu:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v91 & 0x7F) << v71;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v11 = v72++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_170;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v73;
        }

LABEL_170:
        v84 = 68;
        goto LABEL_175;
      case 0xCu:
        v15 = objc_alloc_init(PDDPMultipleChoiceOptionItem);
        [a1 addOptionItems:v15];
        v91 = 0;
        v92 = 0;
        if (PBReaderPlaceMark() && sub_10013A984(v15, a2))
        {
LABEL_61:
          PBReaderRecallMark();
LABEL_62:

LABEL_176:
          v85 = [a2 position];
          if (v85 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_184:

        return 0;
      case 0xDu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 168) |= 0x100u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v91 & 0x7F) << v25;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_144;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_144:
        v84 = 152;
        goto LABEL_175;
      case 0xEu:
        *(a1 + 168) |= 2u;
        v91 = 0;
        v63 = [a2 position] + 8;
        if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 8, v64 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:&v91 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v91;
        v88 = 16;
        goto LABEL_182;
      case 0xFu:
        *(a1 + 168) |= 1u;
        v91 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:&v91 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v91;
        v88 = 8;
LABEL_182:
        *(a1 + v88) = v87;
        goto LABEL_176;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_134;
      case 0x11u:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_134;
      case 0x12u:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_134;
      case 0x13u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 168) |= 0x80u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v91 & 0x7F) << v65;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_166;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v67;
        }

LABEL_166:
        v84 = 96;
        goto LABEL_175;
      case 0x14u:
        v13 = PBReaderReadString();
        v14 = 88;
LABEL_134:
        v83 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_176;
      case 0x15u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 168) |= 0x800u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v91 & 0x7F) << v44;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            LOBYTE(v50) = 0;
            goto LABEL_154;
          }
        }

        v50 = (v46 != 0) & ~[a2 hasError];
LABEL_154:
        *(a1 + 164) = v50;
        goto LABEL_176;
      case 0x16u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 168) |= 0x40u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v91 & 0x7F) << v57;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_162;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v59;
        }

LABEL_162:
        v84 = 84;
        goto LABEL_175;
      case 0x17u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 168) |= 0x20u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v91 & 0x7F) << v77;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_174;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v79;
        }

LABEL_174:
        v84 = 80;
LABEL_175:
        *(a1 + v84) = v24;
        goto LABEL_176;
      default:
        if ((v12 >> 3) == 100)
        {
          v15 = PBReaderReadString();
          if (v15)
          {
            [a1 addClassIds:v15];
          }

          goto LABEL_62;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_176;
    }
  }
}

id *sub_10017BC18(id *a1, void *a2, objc_class *a3, void *a4, objc_class *a5)
{
  v10 = a2;
  v11 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PDMissingEntityReference;
    v12 = objc_msgSendSuper2(&v18, "init");
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 3, a2);
      v13 = NSStringFromClass(a3);
      v14 = a1[1];
      a1[1] = v13;

      if (v11)
      {
        objc_storeStrong(a1 + 4, a4);
        v15 = NSStringFromClass(a5);
        v16 = a1[2];
        a1[2] = v15;
      }
    }
  }

  return a1;
}

NSString **sub_10017BCF8(NSString **a1)
{
  if (a1)
  {
    a1 = NSClassFromString(a1[1]);
    v1 = vars8;
  }

  return a1;
}

PDASMSearchOperation *sub_10017BFC4(PDASMSearchOperation *a1, void *a2, void *a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v4 = [[PDASMSearchOperation alloc] initWithDatabase:v4 rosterQuery:v9 enumerationBlock:v8 finishBlock:v7];
  }

  return v4;
}

BOOL sub_10017C060(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 groupID];

    if (v7)
    {
      v8 = [a1 groupExpansionPredicate:v5];
      if (!v8)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_11:
      v13 = objc_opt_class();
      sub_1000429A0(a1, v13, v8, &__NSArray0__struct, 0, 0, v6);
      goto LABEL_12;
    }

    if ([v5 rosterSearchOptions])
    {
      v9 = [a1 personSearchPredicate:v5];
      v10 = objc_opt_class();
      sub_1000429A0(a1, v10, v9, &__NSArray0__struct, 0, 0, v6);
    }

    if (([v5 rosterSearchOptions] & 4) != 0)
    {
      v11 = [a1 groupSearchPredicate:v5];
      v12 = objc_opt_class();
      sub_1000429A0(a1, v12, v11, &__NSArray0__struct, 0, 0, v6);
    }

    if (([v5 rosterSearchOptions] & 2) != 0)
    {
      v8 = [a1 groupSearchPredicate:v5];
      goto LABEL_11;
    }
  }

LABEL_13:

  return a1 != 0;
}

void sub_10017C4E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) groupID];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017C5F8;
  v6[3] = &unk_1002031B0;
  v7 = *(a1 + 56);
  sub_1000B9298(v2, v3, 1, v5, v6);
}

void sub_10017C5F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"personID");
  [*(a1 + 32) addObject:v3];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}