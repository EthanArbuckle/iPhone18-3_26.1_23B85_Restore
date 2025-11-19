id sub_100087BE8(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_class();
    v7[0] = &off_10021B660;
    v7[1] = v3;
    v5 = [NSArray arrayWithObjects:v7 count:2];

    v2 = [v2 select:v4 where:@"starting = ? AND bundleIdentifier = ?" bindings:v5];
  }

  return v2;
}

id sub_100087CC8(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100087B60;
    v13 = sub_100087B70;
    v14 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100087DF8;
    v6[3] = &unk_100203410;
    v6[4] = a1;
    v7 = v3;
    v8 = &v9;
    sub_10010BE68(a1, v6);
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_100087DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100087DF8(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100087EE4;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select distinct A.objectID from CLSHandoutAttachment as A join CLSHandoutAssignedItem as AI on AI.parentObjectID = A.objectID join CLSActivity as AT on AT.parentObjectID = AI.objectID join PDAppUsage as AU on AU.activityID = AT.objectID and AU.objectID = ?", 1, v3, v4);
}

uint64_t sub_100087EE4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"objectID");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

id sub_100087F3C(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100087B60;
    v13 = sub_100087B70;
    v14 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008806C;
    v6[3] = &unk_100203410;
    v6[4] = a1;
    v7 = v3;
    v8 = &v9;
    sub_10010BE68(a1, v6);
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_100088054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008806C(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100088158;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select AU.objectID from CLSHandoutAttachment as A join CLSHandoutAssignedItem as AI on AI.parentObjectID = A.objectID join CLSActivity as AT on AT.parentObjectID = AI.objectID join PDAppUsage as AU on AU.activityID = AT.objectID and A.objectID = ?", 1, v3, v4);
}

uint64_t sub_100088158(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"objectID");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

BOOL sub_1000881B0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [a1 select:objc_opt_class() identity:v3];
    [v6 timeExpectation];
    if (v7 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      v18 = 0;
      v8 = sub_100160CEC(a1, v6, &v18);
      v9 = v18;
      if (v8)
      {
        v10 = objc_opt_class();
        v11 = [v6 objectID];
        v19 = v11;
        v12 = [NSArray arrayWithObjects:&v19 count:1];
        v13 = [a1 select:v10 where:@"parentObjectID = ? and domain = 1" bindings:v12];

        v14 = [v13 dateLastModified];
        v15 = sub_100088364(a1, v4, v14);
      }

      else
      {
        v15 = sub_100088364(a1, v4, 0);
      }

      [v6 timeExpectation];
      v5 = v15 < v16;
    }
  }

  return v5;
}

double sub_100088364(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000885F4;
    v27[3] = &unk_1002031D8;
    v27[4] = a1;
    v28 = v5;
    v9 = v7;
    v29 = v9;
    sub_10010BE68(a1, v27);
    if ([v9 count])
    {
      [PDDatabase whereSQLForArray:v9 prefix:@" where parentObjectID in "];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100088750;
      v23 = v22[3] = &unk_1002028D0;
      v24 = a1;
      v25 = v9;
      v26 = v8;
      v10 = v23;
      sub_10010BE68(a1, v22);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v15 = v15 + sub_1000A7A40(a1, *(*(&v18 + 1) + 8 * i), v6);
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

void sub_1000885F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000886EC;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select objectID from CLSHandoutAssignedItem where parentObjectID = ?", 1, v3, v4);
}

void sub_1000886EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"objectID");
  [v2 addObject:v3];
}

void sub_100088750(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"select objectID  from CLSActivity %@", *(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008881C;
  v5[3] = &unk_1002031B0;
  v6 = *(a1 + 56);
  sub_1000B9298(v3, v2, 1, v4, v5);
}

void sub_10008881C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"objectID");
  [v2 addObject:v3];
}

id sub_100088880(id result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1000888F8;
    v1[3] = &unk_100203160;
    v1[4] = result;
    return [result performTransaction:v1 forWriting:1];
  }

  return result;
}

void sub_10008C8E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 criteriaForFieldName:@"role_locations" andValues:a2 withFormat:@"*#%@"];
  [v5 setType:3];
  [v5 setCriteria:v6];
}

void sub_10008C970(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v14 = objc_alloc_init(PDDPSearchQuery);
    v10 = objc_alloc_init(PDDPSearchQuery);
    (*(*(a1 + 40) + 16))();

    v11 = *(a1 + 32);
    v12 = [NSString stringWithFormat:@"%@#*", v9];

    v13 = [v11 criteriaForFieldName:@"role_locations" andValue:v12];

    [(PDDPSearchQuery *)v10 setType:3];
    [(PDDPSearchQuery *)v10 setCriteria:v13];
    [v7 setType:1];
    [v7 addContents:v10];
    [v7 addContents:v14];
  }
}

id *sub_10008DCC0(id *result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a3;
    objc_storeWeak(v4 + 1, a2);
    v6 = objc_retainBlock(v5);

    v7 = v4[2];
    v4[2] = v6;

    return [v4 supportsStreamedParsing];
  }

  return result;
}

void *sub_10008E290(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = PDCKUploadAssetsOperation;
    a1 = objc_msgSendSuper2(&v22, "init");
    if (a1)
    {
      v4 = [CKContainer containerIDForContainerIdentifier:@"com.apple.orion"];
      v5 = objc_alloc_init(CKContainerOptions);
      v6 = sub_10003E1B4();
      v7 = v6;
      if (v6)
      {
        v8 = *(v6 + 24);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [v9 identifier];
      if (v10)
      {
        v11 = [[CKAccountOverrideInfo alloc] initWithAccountID:v10];
        [v5 setAccountOverrideInfo:v11];
      }

      [v5 setApplicationBundleIdentifierOverrideForNetworkAttribution:@"com.apple.progressd"];
      v12 = [[CKContainer alloc] initWithContainerID:v4 options:v5];
      v13 = a1[2];
      a1[2] = v12;
      v14 = v12;

      v15 = [v14 organizationCloudDatabase];
      v16 = a1[1];
      a1[1] = v15;

      v17 = sub_10016A49C(v3, @"PDCK_iCloudUserID");
      v18 = [[NSString alloc] initWithFormat:@"U%@%@", v17, @"_Asset"];
      v19 = [[CKRecordZoneID alloc] initWithZoneName:v18 ownerName:CKCurrentUserDefaultName];
      v20 = a1[3];
      a1[3] = v19;
    }
  }

  return a1;
}

void sub_10008E480(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v5 recordIDsToDelete:v6];
    [v7 setSavePolicy:1];
    CLSInitLog();
    v8 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 134218496;
      v18 = [v5 count];
      v19 = 2048;
      v20 = [v6 count];
      v21 = 2048;
      v22 = [v7 savePolicy];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "About to save records: save count: %ld, records to delete count: %ld; save policy: %ld", buf, 0x20u);
    }

    objc_initWeak(buf, a1);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008E760;
    v15[3] = &unk_100203738;
    objc_copyWeak(&v16, buf);
    [v7 setPerRecordProgressBlock:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008E8D4;
    v13[3] = &unk_100203E88;
    objc_copyWeak(&v14, buf);
    [v7 setPerRecordSaveBlock:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008EAE8;
    v11[3] = &unk_100203EB0;
    objc_copyWeak(&v12, buf);
    [v7 setModifyRecordsCompletionBlock:v11];
    v10 = a1[1];
    [v10 addOperation:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void sub_10008E718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E760(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  CLSInitLog();
  v7 = CLSLogSync;
  if (WeakRetained)
  {
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v5 recordID];
      v10 = [v9 recordName];
      v11 = 138412546;
      v12 = v10;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Progress called on recordID: %@, progress: %f", &v11, 0x16u);
    }

    (*(WeakRetained[4] + 16))(a3);
  }

  else if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PDCKUploadAssetsOperation.perRecordProgressBlock strongSelf is nil", &v11, 2u);
  }
}

void sub_10008E8D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  CLSInitLog();
  v11 = CLSLogSync;
  if (!v8)
  {
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to save CK record; recordID: %{public}@, per-record error: %{public}@", &v17, 0x16u);
      if (!WeakRetained)
      {
        goto LABEL_9;
      }

LABEL_7:
      (*(WeakRetained[5] + 16))();
      goto LABEL_11;
    }

LABEL_6:
    if (!WeakRetained)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
  {
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [v8 recordID];
  v14 = [v13 recordName];
  v15 = [v9 description];
  v17 = 138412546;
  v18 = v14;
  v19 = 2112;
  v20 = v15;
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Record completion block called on recordID: %@, error: %@", &v17, 0x16u);

  if (WeakRetained)
  {
    goto LABEL_7;
  }

LABEL_9:
  CLSInitLog();
  v16 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "PDCKUploadAssetsOperation.perRecordSaveBlock strongSelf is nil", &v17, 2u);
  }

LABEL_11:
}

void sub_10008EAE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  CLSInitLog();
  v11 = CLSLogSync;
  if (WeakRetained)
  {
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v7 count];
      v14 = [v8 count];
      v15 = [v9 description];
      v16 = 134218498;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "All records completion block called on save record count: %ld, deleted record count: %ld, operationError: %@", &v16, 0x20u);
    }

    (*(WeakRetained[6] + 16))();
  }

  else if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "PDCKUploadAssetsOperation.modifyRecordsCompletionBlock strongSelf is nil", &v16, 2u);
  }
}

char *sub_10008ED10(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PDFetchReportsOperation;
    v7 = objc_msgSendSuper2(&v10, "initWithDatabase:", a3);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 242), a2);
      v8[234] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10008F574(id *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 classID];
  v4 = [a1[4] objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setClassId:v3];
    [a1[5] addRequestItems:v4];
    [a1[4] setObject:v4 forKeyedSubscript:v3];
  }

  v5 = [v6 parentObjectID];
  if (([a1[6] containsObject:v5] & 1) == 0)
  {
    [v4 addHandoutIds:v5];
    [a1[6] addObject:v5];
  }
}

void sub_10008F65C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 parentObjectID];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [v6 personID];
    [v4 addStudentIds:v5];
  }
}

id sub_10008FB9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = v5;
  if (v5)
  {
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___NSFastEnumeration])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v4 addObject:{*(*(&v13 + 1) + 8 * i), v13}];
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    else
    {
      [v4 addObject:v6];
    }
  }

  return v4;
}

void sub_10008FD04(uint64_t a1, void *a2)
{
  v3 = [a2 parentObjectID];
  [*(a1 + 32) addObject:v3];
}

void sub_10008FD5C(uint64_t a1, void *a2)
{
  v3 = [a2 parentObjectID];
  [*(a1 + 32) addObject:v3];
}

uint64_t sub_1000903BC(id *a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [a1[4] reports];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = sub_10001EDB4(*(*(&v16 + 1) + 8 * v6));
        if (v7)
        {
          [a1[5] insertOrUpdateObject:v7];
        }

        else
        {
          v8 = [a1[6] stats];
          if (v8)
          {
            ++v8[16];
          }

          CLSInitLog();
          v9 = [a1[6] logSubsystem];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = a1[6];
            v11 = objc_opt_class();
            v12 = a1[6];
            v13 = v11;
            v14 = [v12 operationID];
            *buf = 138543874;
            v21 = v11;
            v22 = 2114;
            v23 = v14;
            v24 = 2112;
            v25 = 0;
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@:%{public}@ failed to parse payload: %@", buf, 0x20u);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_1000910A8(uint64_t a1, void *a2)
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
            v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154HandoutDomainState__flags;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154HandoutDomainState__flags;
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
            v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154HandoutDomainState__domain;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154HandoutDomainState__domain;
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
        v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154HandoutDomainState__state;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___PDDPStateChangesIOS134MACOS10154HandoutDomainState__state;
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

uint64_t sub_100091D50(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
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
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
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

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100093D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100093D6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100093D84(uint64_t a1)
{
  CLSInitLog();
  v2 = [*(a1 + 32) logSubsystem];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 operationID];
    v8 = [*(a1 + 40) count];
    *buf = 138543874;
    v34 = v4;
    v35 = 2114;
    v36 = v7;
    v37 = 2048;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response with %lu payload items", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        buf[0] = 0;
        v16 = *(a1 + 32);
        v17 = *(*(a1 + 48) + 8);
        obj = *(v17 + 40);
        [v16 processPayloadWithinWriteTransaction:v14 error:&obj stop:buf];
        objc_storeStrong((v17 + 40), obj);
        LOBYTE(v14) = buf[0];
        objc_autoreleasePoolPop(v15);
        if (v14)
        {
          v20 = 0;
          goto LABEL_16;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = +[PDUserDefaults sharedDefaults];
  v19 = [v18 enableVerboseLogging];

  if (!v19)
  {
    return 1;
  }

  CLSInitLog();
  v9 = [*(a1 + 32) logSubsystem];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = objc_opt_class();
    v24 = *(a1 + 32);
    v25 = v23;
    v26 = [v24 operationID];
    *buf = 138543618;
    v34 = v23;
    v35 = 2114;
    v36 = v26;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ response processing complete.", buf, 0x16u);
  }

  v20 = 1;
LABEL_16:

  return v20;
}

uint64_t sub_100095A04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v20 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v20 count:1];
  LODWORD(v2) = [v2 deleteAll:v3 where:@"zoneName = ?" bindings:v4];

  if (!v2)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v19 = *(a1 + 40);
  v7 = 1;
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  LOBYTE(v5) = [v5 deleteAll:v6 where:@"zoneName = ?" bindings:v8];

  if ((v5 & 1) == 0)
  {
LABEL_3:
    CLSInitLog();
    v9 = [*(a1 + 48) logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ failed to delete cached zone: %{public}@", &v15, 0x16u);
    }

    return 0;
  }

  return v7;
}

void sub_1000973FC(id a1)
{
  qword_10024D9A0 = NSStringFromSelector("isExecuting");

  _objc_release_x1();
}

void *sub_1000974F0(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PDDatabaseWhereClause;
    v8 = objc_msgSendSuper2(&v12, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      v9 = [v7 copy];
      v10 = a1[4];
      a1[4] = v9;
    }
  }

  return a1;
}

uint64_t sub_10009758C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  if (!a1[1])
  {
    return 1;
  }

  v71 = [[NSMutableString alloc] initWithCapacity:128];
  v4 = objc_alloc_init(NSMutableArray);
  v69 = objc_alloc_init(NSMutableSet);
  v5 = [[NSMutableArray alloc] initWithObjects:{v2[1], 0}];
  v6 = &sqlite3_bind_blob_ptr;
  objc_opt_class();
  objc_opt_class();
  if (![v5 count])
  {
    goto LABEL_67;
  }

  v64 = a2;
  v66 = v2;
  v72 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v5 lastObject];
    [v5 removeLastObject];
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = [v9 compoundPredicateType];
      v12 = v11;
      v13 = @" and ";
      if (v11 == 2)
      {
        v13 = @" or ";
      }

      if (!v11)
      {
        v13 = @"not ";
      }

      v14 = v13;
      objc_msgSend(v5, "addObject:", @"(");
      if (v12)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v15 = [v9 subpredicates];
        v16 = [v15 countByEnumeratingWithState:&v82 objects:v87 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v83;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v83 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v5 addObject:*(*(&v82 + 1) + 8 * i)];
              [v5 addObject:v14];
            }

            v17 = [v15 countByEnumeratingWithState:&v82 objects:v87 count:16];
          }

          while (v17);
        }

        [v5 removeLastObject];
      }

      else
      {
        [v5 addObject:@"not "];
        v28 = [v9 subpredicates];
        [v5 addObjectsFromArray:v28];
      }

      [v5 addObject:@""]);

      v8 = v10;
      goto LABEL_58;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v71 insertString:v9 atIndex:0];
      goto LABEL_58;
    }

    v70 = v8;
    v81 = v72;
    v20 = [v9 leftKeyPath:&v81];
    v21 = v81;

    if (v21)
    {
      v72 = v21;
      goto LABEL_63;
    }

    v79 = 0;
    v80 = 0;
    v78 = 0;
    v22 = [v9 getRightKeyPath:&v80 orRightContstantValue:&v79 error:&v78];
    v23 = v80;
    v24 = v79;
    v72 = v78;
    if ((v22 & 1) == 0)
    {
      break;
    }

    v25 = v66[4];
    if (v25)
    {
      v26 = [v25 stringByAppendingString:v20];

      if (v23)
      {
        v27 = [v66[4] stringByAppendingString:v23];

        v23 = v27;
      }
    }

    else
    {
      v26 = v20;
    }

    [v69 addObject:v26];
    v68 = v26;
    [v5 addObject:v26];
    v29 = [v9 predicateOperatorType];
    if (!v23)
    {
      v34 = v24;
      v35 = +[NSNull null];
      v36 = [v34 isEqual:v35];

      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34;
      }

      v41 = sub_100097DA0(v29, v37);

      v65 = v41;
      [v5 addObject:v41];
      if (v29 == 10)
      {
        if ([v34 conformsToProtocol:&OBJC_PROTOCOL___NSFastEnumeration])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = [v34 allObjects];

            v34 = v42;
          }

          objc_msgSend(v5, "addObject:", @"(");
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v67 = v34;
          v43 = [v34 reverseObjectEnumerator];
          v44 = [v43 countByEnumeratingWithState:&v73 objects:v86 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v74;
            do
            {
              for (j = 0; j != v45; j = j + 1)
              {
                if (*v74 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v73 + 1) + 8 * j);
                v49 = objc_autoreleasePoolPush();
                v50 = sub_100097E90(v48, 10);
                [v4 addObject:v50];

                [v5 addObject:{@"?, "}];
                objc_autoreleasePoolPop(v49);
              }

              v45 = [v43 countByEnumeratingWithState:&v73 objects:v86 count:16];
            }

            while (v45);

            [v5 replaceObjectAtIndex:objc_msgSend(v5 withObject:{"count") - 1, @"?"}];
            v23 = 0;
          }

          else
          {
          }

          [v5 addObject:@""]);
LABEL_55:
          v40 = 1;
        }

        else
        {
          v77 = v72;
          v67 = v34;
          [NSError cls_assignError:&v77 code:2 format:@"Value, %@, which is on the right side of on IN clause must be a collection that conform to NSFastEnumeration", v34];
          v52 = v77;

          v40 = 0;
          v72 = v52;
        }

        v8 = v70;
        v39 = v65;
        goto LABEL_57;
      }

      [v5 addObject:@"?"];
      v67 = v34;
      v51 = sub_100097E90(v34, v29);
      [v4 addObject:v51];

      goto LABEL_55;
    }

    v30 = v23;
    v31 = +[NSNull null];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30;
    }

    v67 = v24;

    v38 = sub_100097DA0(v29, v33);

    v39 = v38;
    [v5 addObject:v38];
    if (v29 != 10)
    {
      [v69 addObject:v30];
      [v5 addObject:v30];
    }

    v40 = 1;
    v8 = v70;
LABEL_57:

    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_58:

    objc_autoreleasePoolPop(v8);
    if (![v5 count])
    {
      goto LABEL_65;
    }
  }

LABEL_63:
  v8 = v70;
LABEL_64:

  objc_autoreleasePoolPop(v8);
LABEL_65:
  v2 = v66;
  v7 = v64;
  v6 = &sqlite3_bind_blob_ptr;
  v54 = v72;
  if (v72)
  {
    [NSError cls_assignError:v64 fromError:v72];
    v53 = 0;
    goto LABEL_72;
  }

LABEL_67:
  v55 = [v71 length];
  if (v55 && (v56 = v55, v57 = v2[1], v58 = v6[453], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v59 = [v71 substringWithRange:{1, v56 - 2}];
  }

  else
  {
    v59 = v71;
  }

  v60 = v2[3];
  v2[3] = v59;

  v54 = [v4 reverseObjectEnumerator];
  v61 = [v54 allObjects];
  v62 = v2[2];
  v2[2] = v61;

  v53 = 1;
LABEL_72:

  return v53;
}

__CFString *sub_100097DA0(uint64_t a1, uint64_t a2)
{
  if (a1 > 4)
  {
    if ((a1 - 7) < 3)
    {
      v4 = @" like ";
      goto LABEL_23;
    }

    if (a1 != 5)
    {
      if (a1 == 10)
      {
        v4 = @" in ";
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_23;
    }

    v2 = @" != ";
    v3 = @" is not ";
    goto LABEL_20;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = @" > ";
      goto LABEL_23;
    }

    if (a1 == 3)
    {
      v4 = @" >= ";
      goto LABEL_23;
    }

    v2 = @" = ";
    v3 = @" is ";
LABEL_20:
    if (!a2)
    {
      v2 = v3;
    }

    v4 = v2;
    goto LABEL_23;
  }

  v5 = @" <= ";
  if (a1 != 1)
  {
    v5 = 0;
  }

  if (a1)
  {
    v4 = v5;
  }

  else
  {
    v4 = @" < ";
  }

LABEL_23:

  return v4;
}

__CFString *sub_100097E90(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = +[NSNull null];
    goto LABEL_11;
  }

  switch(a2)
  {
    case 9:
      v3 = @"%";
      v6 = v4;
      goto LABEL_9;
    case 8:
      v6 = @"%";
LABEL_9:
      v5 = [(__CFString *)v3 stringByAppendingString:v6];
      break;
    case 7:
      v5 = [[NSString alloc] initWithFormat:@"%%%@%%", v3];
      break;
    default:
      v5 = v3;
      break;
  }

LABEL_11:
  v7 = v5;

  return v7;
}

id *sub_100098260(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PDDatabaseBindings;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
    }
  }

  return a1;
}

void sub_1000982FC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    [*(a1 + 16) addObject:v5];
    v6 = *(a1 + 24);
    if (v8)
    {
      [v6 addObject:v8];
    }

    else
    {
      v7 = +[NSNull null];
      [v6 addObject:v7];
    }
  }
}

void sub_1000983A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          v9 = [*(a1 + 16) indexOfObject:*(*(&v11 + 1) + 8 * v8)];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
            [*(a1 + 16) removeObjectAtIndex:v9];
            [*(a1 + 24) removeObjectAtIndex:v10];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

uint64_t sub_100098958(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v21 = objc_alloc_init(PDDPBinaryValue);
            objc_storeStrong((a1 + 8), v21);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !sub_100171D60(v21, a2))
            {
LABEL_53:

              return 0;
            }

            goto LABEL_46;
          case 5:
            v21 = objc_alloc_init(PDDPQuantityValue);
            objc_storeStrong((a1 + 24), v21);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !sub_1000CCA7C(v21, a2))
            {
              goto LABEL_53;
            }

            goto LABEL_46;
          case 6:
            v21 = objc_alloc_init(PDDPScoreValue);
            objc_storeStrong((a1 + 32), v21);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !sub_10009A0BC(v21, a2))
            {
              goto LABEL_53;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_51;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = PBReaderReadString();
            v23 = 40;
LABEL_43:
            v24 = *(a1 + v23);
            *(a1 + v23) = v22;

            goto LABEL_51;
          case 2:
            v22 = PBReaderReadString();
            v23 = 16;
            goto LABEL_43;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
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
            *(a1 + 48) = v20;
            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10009A0BC(uint64_t a1, void *a2)
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
        v19 = &OBJC_IVAR___PDDPScoreValue__value;
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
    v19 = &OBJC_IVAR___PDDPScoreValue__maxValue;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10009B944(uint64_t a1, void *a2)
{
  v14 = a2;
  if (!sub_10017BCF8(v14) && !objc_opt_class() || sub_10017BCF8(v14) && sub_10017BCF8(v14) && (v3 = sub_10017BCF8(v14), ([v3 isEqual:objc_opt_class()] & 1) != 0))
  {
    v4 = 5;
  }

  else
  {
    if (sub_10017BCF8(v14) || objc_opt_class())
    {
      if (!sub_10017BCF8(v14))
      {
        goto LABEL_23;
      }

      if (!sub_10017BCF8(v14))
      {
        goto LABEL_23;
      }

      v5 = sub_10017BCF8(v14);
      if (![v5 isEqual:objc_opt_class()])
      {
        goto LABEL_23;
      }
    }

    v4 = 6;
  }

  v6 = sub_100084798(v4);
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) missingIDsByClass];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (!v9)
    {
      v9 = objc_opt_new();
      v10 = [*(a1 + 32) missingIDsByClass];
      [v10 setObject:v9 forKeyedSubscript:v7];
    }

    if (([*(a1 + 40) containsObject:v7] & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }

    if ([v9 count] <= 0xC7)
    {
      if (v14)
      {
        v11 = v14[3];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      [v9 addObject:v12];
    }
  }

LABEL_23:

  return _objc_release_x1();
}

id sub_10009D6DC(uint64_t a1)
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = qword_10024D9B0;
  qword_10024D9B0 = v2;

  [qword_10024D9B0 setLocale:*(a1 + 32)];
  v4 = qword_10024D9B0;

  return [v4 setLocalizedDateFormatFromTemplate:@"EMMMMdyyyy"];
}

char *sub_10009E7C0(char *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PDURLOperationStats;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v4 = objc_opt_class();
      v5 = [v3 operationID];
      v6 = [NSString stringWithFormat:@"%@:%@", v4, v5];
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;

      v8 = *(a1 + 7);
      *(a1 + 7) = 0;
      *(a1 + 8) = 0xBFF0000000000000;

      *(a1 + 4) = 0;
      *(a1 + 11) = 0;
      *(a1 + 12) = -1;
      *(a1 + 9) = 0xBFF0000000000000;
      *(a1 + 10) = 0;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      v9 = *(a1 + 3);
      *(a1 + 3) = 0;

      v10 = *(a1 + 4);
      *(a1 + 4) = 0;

      v11 = *(a1 + 5);
      *(a1 + 5) = 0;

      v12 = *(a1 + 6);
      *(a1 + 6) = 0;
    }
  }

  return a1;
}

void sub_10009E98C(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *(a1 + 8) = 1;
    if (a2 >= 0xE)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", a2];
    }

    else
    {
      v5 = off_100204080[a2];
    }

    v12 = v5;
    if (a3)
    {
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = +[NSMutableDictionary dictionary];
        v8 = *(a1 + 24);
        *(a1 + 24) = v7;

        v5 = v12;
        v6 = *(a1 + 24);
      }

      [a1 _incrementCounterForKey:v5 inDictionary:v6];
    }

    else
    {
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = +[NSMutableDictionary dictionary];
        v11 = *(a1 + 32);
        *(a1 + 32) = v10;

        v5 = v12;
        v9 = *(a1 + 32);
      }

      [a1 _incrementCounterForKey:v5 inDictionary:v9];
      ++*(a1 + 128);
    }
  }
}

void sub_10009EB5C(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *(a1 + 9) = 1;
    if (a2 < 0x27 && ((0x7FFFFE91DFuLL >> a2) & 1) != 0)
    {
      v5 = off_1002040F0[a2];
    }

    else
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", a2];
    }

    v12 = v5;
    if (a3)
    {
      v6 = *(a1 + 40);
      if (!v6)
      {
        v7 = +[NSMutableDictionary dictionary];
        v8 = *(a1 + 40);
        *(a1 + 40) = v7;

        v5 = v12;
        v6 = *(a1 + 40);
      }

      [a1 _incrementCounterForKey:v5 inDictionary:v6];
    }

    else
    {
      v9 = *(a1 + 48);
      if (!v9)
      {
        v10 = +[NSMutableDictionary dictionary];
        v11 = *(a1 + 48);
        *(a1 + 48) = v10;

        v5 = v12;
        v9 = *(a1 + 48);
      }

      [a1 _incrementCounterForKey:v5 inDictionary:v9];
      ++*(a1 + 128);
    }
  }
}

uint64_t sub_10009EC7C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = +[NSDate date];
    v3 = *(v1 + 56);
    *(v1 + 56) = v2;

    return _objc_release_x1(v2, v3);
  }

  return result;
}

void sub_10009ECCC(uint64_t a1)
{
  if (a1 && *(a1 + 56))
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSinceDate:*(a1 + 56)];
    *(a1 + 72) = v2;
  }
}

void *sub_10009ED44(void *a1)
{
  if (a1)
  {
    v2 = a1[10];
    a1 = [NSString stringWithFormat:@"id=%@:bytes=%ld:items=%ld", a1[2], v2, a1[14]];
    v1 = vars8;
  }

  return a1;
}

id sub_10009EDA4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = [NSString stringWithFormat:@"id=%@:status=%ld:clsError=%ld:bytes=%ld:items=%ld:failedItems=%ld:rtt=%.2fs:processing=%.2fs", *(a1 + 16), *(a1 + 96), *(a1 + 104), *(a1 + 88), *(a1 + 120), *(a1 + 128), *(a1 + 64), *(a1 + 72)];
    if ((*(a1 + 9) & 1) != 0 || *(a1 + 8) == 1)
    {
      v4 = [a1 successPayloadsCountsDictionary];
      v5 = [a1 failedPayloadsCountsDictionary];
      if ([v4 count])
      {
        v6 = [NSString stringWithFormat:@"%@:itemCounts=%@", v3, v4];

        v3 = v6;
      }

      if ([v5 count])
      {
        v7 = [NSString stringWithFormat:@"%@:failedItemCounts=%@", v3, v5];

        v3 = v7;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double *sub_10009EED8(double *a1)
{
  v1 = a1;
  if (a1)
  {
    *v13 = a1[2];
    v2 = [NSNumber numberWithInteger:*(a1 + 12), @"identifier", @"httpStatusCode"];
    v13[1] = v2;
    v12[2] = @"clsErrorCode";
    v3 = [NSNumber numberWithInteger:*(v1 + 13)];
    v13[2] = v3;
    v12[3] = @"roundtripTime";
    v4 = [NSNumber numberWithDouble:v1[8]];
    v13[3] = v4;
    v12[4] = @"responseProcessingTime";
    v5 = [NSNumber numberWithDouble:v1[9]];
    v13[4] = v5;
    v12[5] = @"requestSizeBytes";
    v6 = [NSNumber numberWithUnsignedInteger:*(v1 + 10)];
    v13[5] = v6;
    v12[6] = @"responseSizeBytes";
    v7 = [NSNumber numberWithUnsignedInteger:*(v1 + 11)];
    v13[6] = v7;
    v12[7] = @"requestItemCount";
    v8 = [NSNumber numberWithInteger:*(v1 + 14)];
    v13[7] = v8;
    v12[8] = @"responseItemCount";
    v9 = [NSNumber numberWithInteger:*(v1 + 15)];
    v13[8] = v9;
    v12[9] = @"failedItemCount";
    v10 = [NSNumber numberWithInteger:*(v1 + 16)];
    v13[9] = v10;
    v1 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:10];
  }

  return v1;
}

uint64_t sub_1000A0660(_WORD *a1, void *a2)
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
      LOBYTE(v83[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v83[0] & 0x7F) << v5;
      if ((v83[0] & 0x80) == 0)
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
        v14 = 24;
        goto LABEL_75;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 12;
LABEL_75:
        v48 = *&a1[v14];
        *&a1[v14] = v13;

        goto LABEL_151;
      case 3u:
        v47 = PBReaderReadString();
        if (v47)
        {
          [a1 addZoneSubscriptions:v47];
        }

        goto LABEL_73;
      case 4u:
        v47 = objc_alloc_init(PDDPMapEntry);
        [a1 addServiceBag:v47];
        v83[0] = 0;
        v83[1] = 0;
        if (PBReaderPlaceMark() && sub_10011D2D0(v47, a2))
        {
          PBReaderRecallMark();
LABEL_73:

LABEL_151:
          v81 = [a2 position];
          if (v81 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 5u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[40] |= 0x100u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v83[0] & 0x7F) << v28;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_126;
          }
        }

        v21 = (v30 != 0) & ~[a2 hasError];
LABEL_126:
        v79 = 76;
        goto LABEL_145;
      case 6u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        a1[40] |= 1u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v83[0] & 0x7F) << v49;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v46 = 0;
            goto LABEL_136;
          }
        }

        if ([a2 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v51;
        }

LABEL_136:
        v80 = 8;
        goto LABEL_150;
      case 7u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        a1[40] |= 0x200u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v83[0] & 0x7F) << v61;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_142;
          }
        }

        v21 = (v63 != 0) & ~[a2 hasError];
LABEL_142:
        v79 = 77;
        goto LABEL_145;
      case 8u:
        v47 = PBReaderReadString();
        if (v47)
        {
          [a1 addDefaultSyncZoneNames:v47];
        }

        goto LABEL_73;
      case 9u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        a1[40] |= 8u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v83[0] & 0x7F) << v73;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
          if (v11)
          {
            v46 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v75;
        }

LABEL_149:
        v80 = 28;
        goto LABEL_150;
      case 0xAu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        a1[40] |= 2u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v83[0] & 0x7F) << v40;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v46 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

LABEL_132:
        v80 = 16;
        goto LABEL_150;
      case 0xBu:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        a1[40] |= 0x20u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v83[0] & 0x7F) << v67;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_144;
          }
        }

        v21 = (v69 != 0) & ~[a2 hasError];
LABEL_144:
        v79 = 73;
        goto LABEL_145;
      case 0xCu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a1[40] |= 0x10u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v83[0] & 0x7F) << v22;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_124;
          }
        }

        v21 = (v24 != 0) & ~[a2 hasError];
LABEL_124:
        v79 = 72;
        goto LABEL_145;
      case 0xDu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        a1[40] |= 0x40u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v83[0] & 0x7F) << v34;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_128;
          }
        }

        v21 = (v36 != 0) & ~[a2 hasError];
LABEL_128:
        v79 = 74;
        goto LABEL_145;
      case 0xEu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        a1[40] |= 4u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v83[0] & 0x7F) << v55;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v46 = 0;
            goto LABEL_140;
          }
        }

        if ([a2 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v57;
        }

LABEL_140:
        v80 = 18;
LABEL_150:
        *&a1[v80] = v46;
        goto LABEL_151;
      case 0xFu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        a1[40] |= 0x80u;
        while (1)
        {
          LOBYTE(v83[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v83[0] & 0x7F) << v15;
          if ((v83[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_122;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_122:
        v79 = 75;
LABEL_145:
        *(a1 + v79) = v21;
        goto LABEL_151;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_151;
    }
  }
}

id sub_1000A3110(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v16 = +[NSMapTable weakToWeakObjectsMapTable];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 values];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v5 objectForKeyedSubscript:v11];
        if (v13 | v14 && (!v13 || ([v13 isEqual:v14] & 1) == 0))
        {
          [v16 setObject:v13 forKeyedSubscript:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v16;
}

uint64_t sub_1000A3F84(uint64_t a1, void *a2)
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
        v14 = 80;
        goto LABEL_32;
      case 2u:
        goto LABEL_22;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_32;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_32;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_32;
      case 6u:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 32;
        goto LABEL_64;
      case 7u:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 40;
        goto LABEL_64;
      case 8u:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 48;
        goto LABEL_64;
      case 9u:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 64;
        goto LABEL_64;
      case 0xAu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 132) |= 0x10u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v54 & 0x7F) << v38;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            LOBYTE(v44) = 0;
            goto LABEL_99;
          }
        }

        v44 = (v40 != 0) & ~[a2 hasError];
LABEL_99:
        *(a1 + 128) = v44;
        goto LABEL_105;
      case 0xBu:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 56;
LABEL_64:
        objc_storeStrong((a1 + v16), v15);
        v54 = 0;
        v55 = 0;
        if (PBReaderPlaceMark() && PDDPDateReadFrom(v15, a2))
        {
          goto LABEL_66;
        }

        goto LABEL_107;
      case 0xCu:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 132) |= 2u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v54 & 0x7F) << v18;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_89;
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

LABEL_89:
        v51 = 96;
        goto LABEL_104;
      case 0xDu:
        v15 = objc_alloc_init(PDDPStatus);
        objc_storeStrong((a1 + 104), v15);
        v54 = 0;
        v55 = 0;
        if (PBReaderPlaceMark() && sub_1000E2FD8(v15, a2))
        {
LABEL_66:
          PBReaderRecallMark();
LABEL_67:

LABEL_105:
          v52 = [a2 position];
          if (v52 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_107:

        return 0;
      case 0xEu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 132) |= 1u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v54 & 0x7F) << v31;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_97:
        *(a1 + 8) = v37;
        goto LABEL_105;
      case 0xFu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 132) |= 4u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v54 & 0x7F) << v25;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_93;
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

LABEL_93:
        v51 = 120;
        goto LABEL_104;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 88;
LABEL_32:
        v17 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_105;
      case 0x11u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 132) |= 8u;
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
            v24 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v47;
        }

LABEL_103:
        v51 = 124;
LABEL_104:
        *(a1 + v51) = v24;
        goto LABEL_105;
      default:
        if ((v12 >> 3) == 100)
        {
          v15 = PBReaderReadString();
          if (v15)
          {
            [a1 addClassIds:v15];
          }

          goto LABEL_67;
        }

LABEL_22:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_105;
    }
  }
}

char *sub_1000A5C10(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PDFetchSurveyAnswerOperation;
    v9 = objc_msgSendSuper2(&v15, "initWithDatabase:", a2);
    if (v9)
    {
      v10 = [v7 copy];
      v11 = *(v9 + 235);
      *(v9 + 235) = v10;

      v12 = [v8 copy];
      v13 = *(v9 + 227);
      *(v9 + 227) = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_1000A6678(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PDASMRecordZone;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[3] = 0;
    }
  }

  return a1;
}

id sub_1000A6A38(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 count])
    {
      v5 = [PDDatabase whereSQLForArray:v4 prefix:@"zoneName in "];
      v9[0] = @"serverChangeToken";
      v6 = objc_opt_new();
      v9[1] = @"status";
      v10[0] = v6;
      v10[1] = &off_10021B690;
      v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

      a1 = [a1 updateAll:objc_opt_class() set:v7 where:v5 bindings:v4];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1000A6D88(id *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(PDDPPerson);
        objc_storeStrong(a1 + 1, v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000EDA70(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    if (v13)
    {
      [a1 addRoles:v13];
    }

LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

double sub_1000A7A40(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = objc_opt_class();
    v18 = v5;
    v8 = [NSArray arrayWithObjects:&v18 count:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A7BCC;
    v11[3] = &unk_100204290;
    v12 = v6;
    v13 = &v14;
    [a1 selectAll:v7 where:@"parentObjectID = ?" bindings:v8 block:v11];

    v9 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

void sub_1000A7BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A7BCC(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!*(a1 + 32) || ([v7 startTime], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "compare:", *(a1 + 32)), v3, v5 = v7, v4 == 1))
  {
    [v7 length];
    v5 = v7;
    *(*(*(a1 + 40) + 8) + 24) = v6 + *(*(*(a1 + 40) + 8) + 24);
  }
}

id sub_1000A7C68(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000A7D98;
    v13 = sub_1000A7DA8;
    v14 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A7DB0;
    v6[3] = &unk_100203410;
    v6[4] = a1;
    v7 = v3;
    v8 = &v9;
    sub_10010BE68(a1, v6);
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_1000A7D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7D98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A7DB0(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A7E9C;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select AT.objectID from CLSHandoutAttachment as A join CLSHandoutAssignedItem as AI on AI.parentObjectID = A.objectID join CLSActivity as AT on AT.parentObjectID = AI.objectID and A.objectID = ?", 1, v3, v4);
}

uint64_t sub_1000A7E9C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"objectID");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_1000A8F28(id a1, BPSCompletion *a2)
{
  v2 = a2;
  v3 = [(BPSCompletion *)v2 state];
  CLSInitLog();
  v4 = CLSLogDefault;
  if (v3)
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(BPSCompletion *)v2 error];
      v7 = [v6 description];
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Biome subscription completed with error: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Biome subscription completed successfully", &v8, 2u);
  }
}

void sub_1000A9054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];

  if (v5)
  {
    v6 = [v3 eventBody];
    v7 = [v6 starting];

    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"closed";
      if (v7)
      {
        v9 = @"launched";
      }

      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ %@", &v15, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = [v3 eventBody];
    v12 = [v11 bundleID];
    v13 = +[NSDate now];
    [v10 updateAppBasedUsageIfNeeded:v12 isStarting:v7 currentTimeStamp:v13];
  }

  else
  {
    CLSInitLog();
    v14 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Receive Biome event with nil bundleID, skip processing", &v15, 2u);
    }
  }
}

id *sub_1000A99E8(id *result, int a2)
{
  if (a2)
  {
    return [result[4] presentAppBasedAssignmentCompletedBanner:result[5]];
  }

  return result;
}

void sub_1000AA000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AA028(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Trigger half way done scheduled task, attachmentID = %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cleanUpScheduledTaskTriggers:1];
  [WeakRetained presentHalfWayCompletedBanner:*(a1 + 32)];
}

void sub_1000AA35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AA384(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    *buf = 138412546;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Trigger mark done scheduled task, attachmentID = %@, time interval duration = %f", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cleanUpScheduledTaskTriggers:2];
  [WeakRetained handleTimeExpectationReached:*(a1 + 32) appUsage:*(a1 + 40) interval:*(a1 + 56)];
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA4D4;
  v7[3] = &unk_100204320;
  v7[4] = WeakRetained;
  v8 = v6;
  [WeakRetained markDone:v8 then:v7];
}

id *sub_1000AA4D4(id *result, int a2)
{
  if (a2)
  {
    return [result[4] presentAppBasedAssignmentCompletedBanner:result[5]];
  }

  return result;
}

void sub_1000AA914(uint64_t a1, void *a2)
{
  v3 = a2;
  CLSInitLog();
  v4 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v8 = v4;
    v9 = [v3 operationID];
    if (v3)
    {
      v10 = *(v3 + 251);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 count];
    if (v3)
    {
      v13 = *(v3 + 259);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v18 = 138412802;
    v19 = v9;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = [v14 count];
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "publishStateChange op: %@ counts server states: %ld, conflicts: %ld", &v18, 0x20u);
  }

  CLSInitLog();
  v5 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
  {
    v15 = v5;
    v16 = [v3 operationID];
    v17 = sub_10015B35C(v3);
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "publishStateChange op %@ errors: %@", &v18, 0x16u);

    if (v3)
    {
      goto LABEL_4;
    }
  }

  else if (v3)
  {
LABEL_4:
    v6 = *(v3 + 259);
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:
  v7 = v6;
  if (![v7 count])
  {
    sub_10015B35C(v3);
  }

  (*(*(a1 + 32) + 16))();
}

id *sub_1000AB6C4(id *result, int a2)
{
  if (a2)
  {
    return [result[4] presentAppBasedAssignmentCompletedBanner:result[5]];
  }

  return result;
}

id *sub_1000AC508(id *result, int a2)
{
  if (a2)
  {
    return [result[4] presentAppBasedAssignmentCompletedBanner:result[5]];
  }

  return result;
}

id sub_1000AC900(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_new();
    v10 = [[CLSCollaborationState alloc] initForObject:v6 ownerPersonID:v7 domain:1 state:1 flags:0];
    v11 = v10;
    if (v8)
    {
      [v10 setClassID:v8];
    }

    [v9 addObject:v11];
    v12 = [[CLSCollaborationState alloc] initForObject:v6 ownerPersonID:v7 domain:3 state:2 flags:0];
    if (v8)
    {
      [v11 setClassID:v8];
    }

    [v9 addObject:v12];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

void sub_1000ACA3C(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v7 = a3;
  objc_opt_self();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v36 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v36)
  {
    v34 = *v57;
    do
    {
      v8 = 0;
      do
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v8;
        v9 = *(*(&v56 + 1) + 8 * v8);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = v35;
        v51 = [v45 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v51)
        {
          v49 = v9;
          v50 = *v53;
          do
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v53 != v50)
              {
                objc_enumerationMutation(v45);
              }

              v11 = *(*(&v52 + 1) + 8 * i);
              v12 = [v11 targetObjectID];
              if (v12 || ([v9 parentObjectID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v4 = [v11 targetObjectID];
                if (!v4)
                {
                  v14 = 0;
                  goto LABEL_40;
                }

                v7 = [v9 parentObjectID];
                if (!v7)
                {
                  goto LABEL_19;
                }

                v13 = [v11 targetObjectID];
                v3 = [v9 parentObjectID];
                v48 = v13;
                if (([v13 isEqualToString:v3] & 1) == 0)
                {

LABEL_19:
                  if (!v12)
                  {
                    v12 = v5;
                  }

LABEL_60:

                  continue;
                }

                v46 = 1;
              }

              else
              {
                v46 = 0;
              }

              v15 = [v11 ownerPersonID];
              if (v15 || ([v9 ownerPersonID], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v16 = v5;
                v17 = [v11 ownerPersonID];
                if (v17)
                {
                  v18 = v17;
                  v40 = v3;
                  v41 = v4;
                  v19 = [v49 ownerPersonID];
                  if (v19)
                  {
                    v20 = v19;
                    v43 = v7;
                    v21 = [v11 ownerPersonID];
                    v22 = [v49 ownerPersonID];
                    v14 = [v21 isEqualToString:v22];

                    if (v15)
                    {
                      v7 = v43;
                      v3 = v40;
LABEL_32:
                      v4 = v41;
LABEL_33:
                      v5 = v16;

                      v9 = v49;
                      goto LABEL_38;
                    }

                    v7 = v43;
                    v3 = v40;
                  }

                  else
                  {

                    v14 = 0;
                    if (v15)
                    {
                      goto LABEL_32;
                    }
                  }

                  v4 = v41;
                }

                else
                {
                  v14 = 0;
                  if (v15)
                  {
                    goto LABEL_33;
                  }
                }

                v5 = v16;
                v9 = v49;
              }

              else
              {
                v39 = 0;
                v14 = 1;
              }

LABEL_38:
              if (v46)
              {
              }

LABEL_40:
              if (!v12)
              {

                if ((v14 & 1) == 0)
                {
                  continue;
                }

LABEL_44:
                v12 = [v11 stateForDomain:{objc_msgSend(v9, "domain")}];
                v23 = [v9 objectID];
                if (!v23)
                {
                  v38 = [v12 objectID];
                  if (!v38)
                  {
                    v38 = 0;
                    goto LABEL_58;
                  }
                }

                v24 = [v9 objectID];
                if (v24)
                {
                  v25 = v24;
                  v47 = v5;
                  v26 = v4;
                  v27 = v3;
                  v28 = [v12 objectID];
                  if (v28)
                  {
                    v29 = v28;
                    v44 = v7;
                    v30 = [v49 objectID];
                    v31 = [v12 objectID];
                    v42 = [v30 isEqualToString:v31];

                    if (v23)
                    {

                      v7 = v44;
                      v3 = v27;
                      v4 = v26;
                      v5 = v47;
                      v9 = v49;
                      if (!v42)
                      {
                        goto LABEL_60;
                      }
                    }

                    else
                    {

                      v7 = v44;
                      v3 = v27;
                      v4 = v26;
                      v5 = v47;
                      v9 = v49;
                      if ((v42 & 1) == 0)
                      {
                        goto LABEL_60;
                      }
                    }

LABEL_58:
                    [v11 removeStateForDomain:{objc_msgSend(v9, "domain")}];
                    CLSInitLog();
                    v32 = CLSLogHandout;
                    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v61 = v12;
                      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Pruning state change:%@", buf, 0xCu);
                    }

                    goto LABEL_60;
                  }

                  v5 = v47;
                  v9 = v49;
                  if (!v23)
                  {
LABEL_52:
                  }
                }

                else if (!v23)
                {
                  goto LABEL_52;
                }

                goto LABEL_60;
              }

              if (v14)
              {
                goto LABEL_44;
              }
            }

            v51 = [v45 countByEnumeratingWithState:&v52 objects:v62 count:16];
          }

          while (v51);
        }

        v8 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v36);
  }
}

uint64_t sub_1000ADDD0(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 40;
LABEL_40:
            v14 = *(a1 + v17);
            *(a1 + v17) = v16;
            goto LABEL_41;
          case 2:
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_40;
          case 3:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 16;
            goto LABEL_35;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 8;
          goto LABEL_40;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(PDDPStatus);
          objc_storeStrong((a1 + 56), v14);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !sub_1000E2FD8(v14, a2))
          {
LABEL_44:

            return 0;
          }

LABEL_37:
          PBReaderRecallMark();
LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(PDDPDate);
          v15 = 24;
          goto LABEL_35;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(PDDPDate);
          v15 = 32;
LABEL_35:
          objc_storeStrong((a1 + v15), v14);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000AEE3C(uint64_t a1, void *a2)
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
        v21 = objc_alloc_init(PDDPSchoolworkSearchQuery);
        [a1 addContents:v21];
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !sub_1000AEE3C(v21, a2))
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

    v21 = objc_alloc_init(PDDPSchoolworkSearchCriteria);
    objc_storeStrong((a1 + 16), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !sub_1000F0C58(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

id sub_1000AF8C4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_class();
    v5 = [a1 parentObjectID];
    v43 = [v3 select:v4 identity:v5];

    v6 = objc_opt_new();
    [v6 setGranularity:3];
    v42 = [v43 dueDate];
    v9 = 0;
    if (v42)
    {
      v7 = +[NSDate date];
      v8 = [v42 compare:v7];

      if (v8 == -1)
      {
        v9 = 1;
      }
    }

    [v6 setType:v9];
    v10 = [a1 parentObjectID];
    [v6 setHandoutID:v10];

    v11 = [a1 objectID];
    [v6 setAttachmentID:v11];

    v12 = sub_1000712CC(v3);
    [v6 setStudentID:v12];

    [v6 setCompleted:{objc_msgSend(a1, "isComplete")}];
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_1000B0040;
    v58 = sub_1000B0050;
    v59 = +[NSDate date];
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_1000B0040;
    v52 = sub_1000B0050;
    v53 = +[NSDate date];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000B0058;
    v47[3] = &unk_1002043E0;
    v47[4] = &v54;
    v47[5] = &v48;
    v41 = objc_retainBlock(v47);
    v13 = [a1 contextPath];
    if ([v13 count])
    {
      v14 = sub_10014C7CC(v3, v13, 0);
      v15 = [v13 count];
      if (v15 == [v14 count])
      {
        v16 = [v14 lastObject];
        v17 = sub_1000B0100(v16, v3, v41);
        [v6 setPrimaryActivityReport:v17];
        v18 = sub_1000B0310(v16, v3, v41);
        [v6 setAdditionalActivityReports:v18];

LABEL_14:
      }
    }

    else
    {
      v19 = [a1 objectID];
      v14 = sub_100017324(v3, v19);

      if (v14)
      {
        v20 = [v14 objectID];
        v21 = v3;
        v22 = v41;
        v61 = 0;
        v62 = &v61;
        v63 = 0x3032000000;
        v64 = sub_1000B0040;
        v65 = sub_1000B0050;
        v66 = 0;
        v23 = objc_opt_class();
        v68 = v20;
        v24 = [NSArray arrayWithObjects:&v68 count:1];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1000B0640;
        v60[3] = &unk_100204430;
        v60[4] = &v61;
        [v21 selectAll:v23 where:@"parentObjectID = ?" orderBy:@"dateCreated DESC" limit:1 offset:0 bindings:v24 block:v60];

        if (v62[5])
        {
          v22[2](v22);
          v16 = sub_10011B0F0(v62[5], v21, v22);
        }

        else
        {
          v16 = 0;
        }

        _Block_object_dispose(&v61, 8);

        [v6 setPrimaryActivityReport:v16];
        goto LABEL_14;
      }
    }

    v25 = [NSString alloc];
    v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 type]);
    v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 granularity]);
    v28 = [a1 objectID];
    v29 = sub_1000712CC(v3);
    v30 = [v25 initWithFormat:@"type:%@; granularity:%@; attachmentID:%@; studentID:%@;", v26, v27, v28, v29];

    v31 = [v30 sha224];
    [v6 setReportID:v31];

    [v6 setStartDate:v55[5]];
    [v6 setEndDate:v49[5]];
    v32 = objc_opt_new();
    v33 = objc_opt_class();
    v34 = [v43 objectID];
    v67 = v34;
    v35 = [NSArray arrayWithObjects:&v67 count:1];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000B05A4;
    v44[3] = &unk_100204408;
    v36 = v6;
    v45 = v36;
    v37 = v32;
    v46 = v37;
    [v3 selectAll:v33 where:@"parentObjectID = ?" bindings:v35 block:v44];

    v38 = v46;
    v39 = v37;

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v54, 8);

    goto LABEL_16;
  }

  v39 = 0;
LABEL_16:

  return v39;
}

void sub_1000AFFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B0040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B0058(uint64_t a1, void *a2)
{
  obj = [a2 dateCreated];
  if ([obj compare:*(*(*(a1 + 32) + 8) + 40)] == -1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  }

  if ([obj compare:*(*(*(a1 + 40) + 8) + 40)] == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  }
}

id sub_1000B0100(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000B0040;
  v18 = sub_1000B0050;
  v19 = 0;
  v8 = objc_opt_class();
  v9 = [v5 objectID];
  v20 = v9;
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B0630;
  v13[3] = &unk_100204430;
  v13[4] = &v14;
  [v6 selectAll:v8 where:@"parentObjectID = ?" orderBy:@"dateCreated DESC" limit:1 offset:0 bindings:v10 block:v13];

  if (v15[5])
  {
    v7[2](v7);
    v11 = sub_10011B0F0(v15[5], v6, v7);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

void sub_1000B02F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B0310(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_class();
  v23 = v5;
  v11 = [v5 objectID];
  v32 = v11;
  v12 = [NSArray arrayWithObjects:&v32 count:1];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B0650;
  v29[3] = &unk_1002022C0;
  v13 = v9;
  v30 = v13;
  [v6 selectAll:v10 where:@"parentObjectID = ?" bindings:v12 block:v29];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v7[2](v7, v18);
        v20 = sub_1000B0100(v18, v6, v7);
        if (v20)
        {
          [v8 addObject:v20];
        }

        v21 = sub_1000B0310(v18, v6, v7);
        [v8 addObjectsFromArray:v21];

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v15);
  }

  return v8;
}

void sub_1000B05A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 copy];
  v5 = [v4 classID];

  [v6 setClassID:v5];
  [*(a1 + 40) addObject:v6];
}

void *sub_1000B065C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = PDRing;
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = v3;
  if (v3)
  {
    v3[3] = a2;
    v5 = [[NSMutableArray alloc] initWithCapacity:v3[3]];
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

id *sub_1000B06DC(id *a1)
{
  if (a1)
  {
    v2 = a1;
    a1 = [a1[1] count];
    if (a1)
    {
      a1 = sub_1000B0834(v2, 0);
    }

    v1 = vars8;
  }

  return a1;
}

void sub_1000B072C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v3 = [*(a1 + 8) count];
    v4 = *(a1 + 8);
    if (v3 >= *(a1 + 24))
    {
      [v4 setObject:v5 atIndexedSubscript:*(a1 + 16)];
    }

    else
    {
      [v4 addObject:v5];
    }

    *(a1 + 16) = [a1 _ringIndexPlusOne:*(a1 + 16)];
  }
}

uint64_t sub_1000B07B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6 = v3;
    v3 = [*(a1 + 8) containsObject:v3];
    v4 = v6;
    if (v3)
    {
      [*(a1 + 8) removeObject:v6];
      v3 = [a1 _ringIndexMinusOne:*(a1 + 16)];
      v4 = v6;
      *(a1 + 16) = v3;
    }
  }

  return _objc_release_x1(v3, v4);
}

id *sub_1000B0834(id *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1[1] objectAtIndexedSubscript:{objc_msgSend(a1, "_ringIndexForIndex:", a2)}];
    v2 = vars8;
  }

  return a1;
}

id sub_1000B09A4(id *a1)
{
  if (a1)
  {
    v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a1[1], "count")}];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = a1;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 addObject:{*(*(&v9 + 1) + 8 * i), v9}];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000B18A8(uint64_t a1, void *a2)
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
        LOBYTE(v32[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32[0] & 0x7F) << v5;
        if ((v32[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = 16;
        goto LABEL_28;
      }

      if (v13 == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v32[0] & 0x7F) << v18;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_52;
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

LABEL_52:
        *(a1 + 8) = v24;
        goto LABEL_54;
      }

      if (v13 != 100)
      {
        goto LABEL_47;
      }

      [a1 clearOneofValuesForZoneInfo];
      *(a1 + 48) |= 2u;
      *(a1 + 32) = 2;
      v14 = objc_alloc_init(PDDPZoneIdentifier);
      objc_storeStrong((a1 + 24), v14);
      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10013FC8C(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_54:
      v30 = [a2 position];
      if (v30 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (!v13)
    {
      v25 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        if ((SLOBYTE(v32[0]) & 0x80000000) == 0)
        {
          break;
        }

        if (v25++ > 8)
        {
          goto LABEL_54;
        }
      }

      [a2 hasError];
      goto LABEL_54;
    }

    if (v13 == 1)
    {
      [a1 clearOneofValuesForZoneInfo];
      *(a1 + 48) |= 2u;
      *(a1 + 32) = 1;
      v15 = PBReaderReadString();
      v16 = 40;
LABEL_28:
      v17 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_54;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

id *sub_1000B2374(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PDClient;
    v11 = objc_msgSendSuper2(&v15, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(a1 + 4, a3);
      objc_storeStrong(a1 + 5, a4);
      *(a1 + 25) = [v10 isInternal];
      *(a1 + 26) = [v10 isDashboardAPIEnabled];
      *(a1 + 27) = [v10 isUIClient];
      *(a1 + 28) = [v10 isSearchAPIEnabled];
      *(a1 + 29) = [v10 isRegisterDashboardEnabled];
      if (*(a1 + 25) & 1) != 0 || (*(a1 + 26) & 1) != 0 || (*(a1 + 28))
      {
        v12 = 1;
      }

      else
      {
        v12 = *(a1 + 27);
      }

      *(a1 + 24) = v12 & 1;
      v13 = a1[2];
      if (v13)
      {
        LOBYTE(v13) = [v13 isEqualToString:@"com.apple.ClassKit.pdtool"];
      }

      *(a1 + 30) = v13;
      *(a1 + 31) = 0;
    }
  }

  return a1;
}

uint64_t sub_1000B24B8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && (![v4 length] || objc_msgSend(*(a1 + 40), "isInternal")))
  {
    objc_storeStrong((a1 + 8), a2);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_1000B2528(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      v2 = a1[2];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

unsigned __int8 *sub_1000B2560(id *a1)
{
  v1 = a1;
  if (a1)
  {
    if ([a1[5] isInDevelopmentEnvironment])
    {
      v2 = @"development";
    }

    else
    {
      v2 = @"production";
    }

    v12[0] = @"Bundle Identifier";
    v3 = sub_1000B2528(v1);
    v4 = v3;
    v5 = @"None";
    if (v3)
    {
      v5 = v3;
    }

    v13[0] = v5;
    v12[1] = @"mayQueryCrossApp";
    v6 = [NSNumber numberWithBool:v1[24]];
    v13[1] = v6;
    v12[2] = @"isInternalClient";
    v7 = [NSNumber numberWithBool:v1[25]];
    v13[2] = v7;
    v12[3] = @"isDashboardClient";
    v8 = [NSNumber numberWithBool:v1[26]];
    v13[3] = v8;
    v12[4] = @"isRegisterDashboardClient";
    v9 = [NSNumber numberWithBool:v1[29]];
    v13[4] = v9;
    v12[5] = @"isUIClient";
    v10 = [NSNumber numberWithBool:v1[27]];
    v12[6] = @"ClassKit Environment";
    v13[5] = v10;
    v13[6] = v2;
    v1 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];
  }

  return v1;
}

id sub_1000B2730()
{
  objc_opt_self();
  v0 = objc_autoreleasePoolPush();
  v1 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.schoolwork.ClassKitApp" allowPlaceholder:0 error:0];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 bundleIdentifier];
    v4 = [v2 shortVersionString];
    v5 = [NSString stringWithFormat:@"<%@/%@>", v3, v4];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v0);

  return v5;
}

id sub_1000B280C()
{
  objc_opt_self();
  v0 = objc_autoreleasePoolPush();
  v1 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.schoolwork.ClassKitApp" allowPlaceholder:0 error:0];
  v2 = [v1 applicationState];
  v3 = [v2 isInstalled];

  objc_autoreleasePoolPop(v0);
  return v3;
}

id sub_1000B2958()
{
  v0 = objc_opt_self();

  return [v0 isSchoolworkAppVersionGreaterThanOrEqualTo:@"2.3"];
}

id sub_1000B2988()
{
  objc_opt_self();
  v0 = objc_autoreleasePoolPush();
  v1 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.classroom" allowPlaceholder:0 error:0];
  v2 = [v1 applicationState];
  v3 = [v2 isInstalled];

  objc_autoreleasePoolPop(v0);
  return v3;
}

uint64_t sub_1000B301C(uint64_t a1, void *a2)
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
        v16 = 40;
        goto LABEL_29;
      }

      if (v13 == 4)
      {
        v15 = PBReaderReadString();
        v16 = 16;
        goto LABEL_29;
      }

      if (v13 != 100)
      {
        goto LABEL_39;
      }

      v14 = objc_alloc_init(PDDPMapEntry);
      [a1 addServerRequestHeaders:v14];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10011D2D0(v14, a2))
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
      *(a1 + 32) = v24;
      goto LABEL_45;
    }

    if (v13 == 2)
    {
      v15 = PBReaderReadString();
      v16 = 8;
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

uint64_t sub_1000B408C(uint64_t a1, void *a2)
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
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_52;
          }
        }

        v27 = (v30 != 0) & ~[a2 hasError];
LABEL_52:
        v35 = 12;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 16) |= 1u;
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
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_57;
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

LABEL_57:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_58;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 16) |= 4u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_50;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_50:
        v35 = 13;
      }

      *(a1 + v35) = v27;
LABEL_58:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000B51E4()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5288;
  block[3] = &unk_100202CA8;
  block[4] = objc_opt_self();
  if (qword_10024D9C8 != -1)
  {
    dispatch_once(&qword_10024D9C8, block);
  }

  v0 = qword_10024D9C0;

  return v0;
}

uint64_t sub_1000B5288(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10024D9C0;
  qword_10024D9C0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000B5314(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10024D9D0;
  qword_10024D9D0 = v1;

  v3 = qword_10024D9D0;

  [v3 setDateFormat:@"yyyy-MM-dd"];
}

id sub_1000B5648(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = [[NSMutableDictionary alloc] initWithCapacity:15];
    v4 = [v3 valueForKey:@"stats"];
    v5 = [v4 valueForKey:@"clsErrorCode"];
    [a1 setValue:v5 forKey:@"clsErrorCode"];

    v6 = [v4 valueForKey:@"failedItemCount"];
    [a1 setValue:v6 forKey:@"failedItemCount"];

    v7 = [v4 valueForKey:@"httpStatusCode"];
    [a1 setValue:v7 forKey:@"httpStatusCode"];

    v8 = [v4 valueForKey:@"requestItemCount"];
    [a1 setValue:v8 forKey:@"requestItemCount"];

    v9 = [v4 valueForKey:@"requestSizeBytes"];
    [a1 setValue:v9 forKey:@"requestSizeBytes"];

    v10 = [v4 valueForKey:@"responseItemCount"];
    [a1 setValue:v10 forKey:@"responseItemCount"];

    v11 = [v4 valueForKey:@"responseSizeBytes"];
    [a1 setValue:v11 forKey:@"responseSizeBytes"];

    v12 = [v4 valueForKey:@"identifier"];
    [a1 setValue:v12 forKey:@"identifier"];

    v13 = [v4 valueForKey:@"roundtripTime"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [NSNumber numberWithDouble:v15 * 1000.0];
    [a1 setValue:v16 forKey:@"roundtripTime"];

    v17 = [v4 valueForKey:@"responseProcessingTime"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [NSNumber numberWithDouble:v19 * 1000.0];
    [a1 setValue:v20 forKey:@"responseProcessingTime"];

    v21 = [v3 valueForKey:@"endpointIdentifier"];
    v22 = [v3 valueForKey:@"operationError"];
    v23 = [v22 isEqual:@"none"];

    v24 = @"Success";
    if ((v23 & 1) == 0)
    {
      v25 = [v4 valueForKey:@"clsErrorCode"];
      if ([v25 isEqual:@"0"])
      {
        v26 = [v4 valueForKey:@"httpStatusCode"];
        v27 = [v26 isEqual:@"200"];

        if (!v27)
        {
          v24 = @"Fail";
        }
      }

      else
      {

        v24 = @"Fail";
      }
    }

    v28 = [NSString stringWithFormat:@"%@%@", v21, v24];
    [a1 setValue:v28 forKey:@"eventType"];

    v29 = [v3 valueForKey:@"URL"];
    [a1 setValue:v29 forKey:@"endpointURL"];

    [a1 setValue:v21 forKey:@"endpointIdentifier"];
  }

  return a1;
}

id sub_1000B5A58(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSMutableDictionary alloc] initWithCapacity:15];
    v8 = sub_10016A65C(v5, @"initialASMSyncStartDate");
    [v6 timeIntervalSinceDate:v8];
    v10 = v9;

    v11 = [NSNumber numberWithDouble:v10 * 1000.0];
    [v7 setValue:v11 forKey:@"duration"];

    v12 = objc_opt_self();
    v13 = [a1 countOf:v12 fromDB:v5];

    v14 = objc_opt_self();
    v15 = [a1 countOf:v14 fromDB:v5];

    v16 = [NSNumber numberWithInteger:v13];
    [v7 setValue:v16 forKey:@"classesCount"];

    v17 = [NSNumber numberWithInteger:v15];
    [v7 setValue:v17 forKey:@"peopleCount"];

    [v7 setValue:@"asmInitialFullSync" forKey:@"eventType"];
    [v7 setValue:@"sync" forKey:@"endpointIdentifier"];
    v18 = sub_10016A160(v5, @"initialASMSyncRoundTripCount");

    v19 = [NSNumber numberWithInteger:v18];
    [v7 setValue:v19 forKey:@"cntHttpRequests"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000B5C7C(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSMutableDictionary alloc] initWithCapacity:15];
    v8 = sub_10016A65C(v5, @"initialOrionSyncStartDate");
    [v6 timeIntervalSinceDate:v8];
    v10 = v9;

    v11 = [NSNumber numberWithDouble:v10 * 1000.0];
    [v7 setValue:v11 forKey:@"duration"];

    v12 = objc_opt_self();
    v13 = [a1 countOf:v12 fromDB:v5];

    v14 = [NSNumber numberWithInteger:v13];
    [v7 setValue:v14 forKey:@"handoutsCount"];

    [v7 setValue:@"orionInitialFullSync" forKey:@"eventType"];
    [v7 setValue:@"getChanges" forKey:@"endpointIdentifier"];
    v15 = sub_10016A160(v5, @"initialOrionSyncRoundTripCount");

    v16 = [NSNumber numberWithInteger:v15];
    [v7 setValue:v16 forKey:@"cntHttpRequests"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000B5E40(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [a1 shouldRecordEvent])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = sub_10004116C();
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 8);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = objc_autoreleasePoolPush();
    v13 = [v11 stringForKey:@"cls-app-metrics-perf-topic-name"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000B5F90;
    v14[3] = &unk_1002044E0;
    v14[4] = a1;
    v15 = v6;
    v16 = v5;
    [v13 valueWithCompletion:v14];

    objc_autoreleasePoolPop(v12);
    objc_autoreleasePoolPop(v7);
  }
}

void sub_1000B5F90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error getting AMSBag value %@", &v21, 0xCu);
    }
  }

  else
  {
    v9 = [[AMSMetricsEvent alloc] initWithTopic:v6];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [NSMutableDictionary alloc];
      v13 = [v10 baseValues];
      v14 = [v12 initWithDictionary:v13];

      v15 = [v10 temporaryUserUUID:v11];
      [v14 setValue:v15 forKey:@"rotatingID"];

      v16 = [v11 select:objc_opt_class() where:0 bindings:0];
      v17 = sub_1000711FC(v11);

      if (v17)
      {
        if (v16)
        {
          if (v16[9])
          {
            v18 = 1;
          }

          else
          {
            v18 = 2;
          }
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = [NSNumber numberWithInteger:v18];
      [v14 setValue:v19 forKey:@"maidAccountType"];
    }

    else
    {
      v14 = 0;
    }

    [v9 addPropertiesWithDictionary:v14];

    [v9 addPropertiesWithDictionary:*(a1 + 48)];
    v20 = [*(a1 + 32) metricsController];
    [v20 enqueueEvent:v9];
  }
}

void sub_1000B61E0(void *a1)
{
  if (a1 && [a1 shouldRecordEvent])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [a1 metricsController];
    if ([v3 eventCount] >= 1)
    {
      v4 = [v3 flush];
      [v4 resultWithCompletion:&stru_100204520];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_1000B6280(id a1, NSNumber *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[PDUserDefaults sharedDefaults];
  v7 = [v6 enableVerboseLogging];

  if (v7)
  {
    CLSInitLog();
    v8 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v11 = 67109120;
      LODWORD(v12) = [(NSNumber *)v4 intValue];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PDAnalytics Count of AMS events flushed: %d", &v11, 8u);
    }

    if (v5)
    {
      CLSInitLog();
      v10 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "ERROR: Error occurred while flushing AMS events %@", &v11, 0xCu);
      }
    }
  }
}

uint64_t sub_1000B6B88(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___PDDPActivityInfo__activityId;
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

    v13 = &OBJC_IVAR___PDDPActivityInfo__primaryItemIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000B7C44(uint64_t a1, void *a2)
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
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v47 & 0x7F) << v24;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_84;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_84:
            *(a1 + 8) = v30;
            goto LABEL_98;
          }

          if (v13 == 7)
          {
            v21 = PBReaderReadString();
            v22 = 48;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = PBReaderReadString();
              v22 = 16;
              goto LABEL_66;
            case 9:
              v23 = objc_alloc_init(PDDPMapEntry);
              [a1 addInfo:v23];
              v47 = 0;
              v48 = 0;
              if (!PBReaderPlaceMark() || !sub_10011D2D0(v23, a2))
              {
LABEL_100:

                return 0;
              }

              goto LABEL_78;
            case 0xA:
              v21 = PBReaderReadString();
              v22 = 56;
LABEL_66:
              v37 = *(a1 + v22);
              *(a1 + v22) = v21;

              goto LABEL_98;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(PDDPStateChangeParticipants);
          objc_storeStrong((a1 + 64), v23);
          v47 = 0;
          v48 = 0;
          if (!PBReaderPlaceMark() || !sub_10007D6FC(v23, a2))
          {
            goto LABEL_100;
          }

          goto LABEL_78;
        }

        if (v13 == 2)
        {
          v23 = objc_alloc_init(PDDPStateChangeMeta);
          objc_storeStrong((a1 + 40), v23);
          v47 = 0;
          v48 = 0;
          if (!PBReaderPlaceMark() || !sub_100044738(v23, a2))
          {
            goto LABEL_100;
          }

LABEL_78:
          PBReaderRecallMark();

          goto LABEL_98;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v47 & 0x7F) << v31;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_88;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v33;
            }

LABEL_88:
            v44 = 24;
            goto LABEL_97;
          case 4:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v47 & 0x7F) << v38;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_96;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v40;
            }

LABEL_96:
            v44 = 28;
            goto LABEL_97;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 76) |= 8u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v14;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_92;
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

LABEL_92:
            v44 = 72;
LABEL_97:
            *(a1 + v44) = v20;
            goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_98:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *sub_1000B90F8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (![v8 count])
    {
      __assert_rtn("[PDDatabase(SQL) insertInto:values:forColumnsNamed:]", "PDDatabase+SQL.m", 27, "values.count > 0");
    }

    v10 = [v8 count];
    if (v10 != [v9 count])
    {
      __assert_rtn("[PDDatabase(SQL) insertInto:values:forColumnsNamed:]", "PDDatabase+SQL.m", 28, "values.count == columnNames.count");
    }

    v11 = [[NSMutableString alloc] initWithString:@"insert into "];
    [v11 appendString:v7];
    objc_msgSend(v11, "appendString:", @" (");
    v12 = [v9 componentsJoinedByString:{@", "}];
    [v11 appendString:v12];
    [v11 appendString:@") values ("];
    v13 = [v9 count];
    if (v13 >= 2)
    {
      v14 = v13 - 1;
      do
      {
        [v11 appendString:{@"?, "}];
        --v14;
      }

      while (v14);
    }

    [v11 appendString:@"?"]);
    a1 = sub_1000B9298(a1, v11, 1, v8, 0);
  }

  return a1;
}

uint64_t sub_1000B9298(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a1)
  {
    if (v11)
    {
      v13 = objc_alloc_init(PDDatabaseRow);
      v14 = v13;
      if (v13)
      {
        objc_storeWeak(&v13->_owner, a1);
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000B99A0;
      v31[3] = &unk_100204548;
      v32 = v14;
      v33 = v12;
      v15 = v14;
      v16 = objc_retainBlock(v31);
    }

    else
    {
      v16 = 0;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000B9A14;
    v29[3] = &unk_100204570;
    v30 = v10;
    v17 = objc_retainBlock(v29);
    v18 = [a1 currentDB];
    v19 = v18;
    if (v18)
    {
      if (a3)
      {
        v28 = 0;
        v20 = [v18 executeSQL:v9 error:&v28 bindingHandler:v17 enumerationHandler:v16];
        v21 = v28;
      }

      else
      {
        v27 = 0;
        v20 = [v18 executeUncachedSQL:v9 error:&v27 bindingHandler:v17 enumerationHandler:v16];
        v21 = v27;
      }

      v23 = v21;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        CLSInitLog();
        v24 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v36 = v9;
          v37 = 2114;
          v38 = v23;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "execute %@ failed; %{public}@", buf, 0x16u);
        }

        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v34 = v22;

    v25 = v34;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void *sub_1000B9548(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    if (![v13 count])
    {
      __assert_rtn("[PDDatabase(SQL) update:set:toValues:where:bindings:]", "PDDatabase+SQL.m", 57, "values.count > 0");
    }

    v16 = [v13 count];
    if (v16 != [v12 count])
    {
      __assert_rtn("[PDDatabase(SQL) update:set:toValues:where:bindings:]", "PDDatabase+SQL.m", 58, "values.count == columnNames.count");
    }

    v17 = [[NSMutableString alloc] initWithString:@"update "];
    [v17 appendString:v11];
    [v17 appendString:@" set "];
    v18 = [v12 componentsJoinedByString:{@" = ?, "}];
    [v17 appendString:v18];

    [v17 appendString:@" = ? "];
    if ([v14 length])
    {
      [v17 appendString:@" where "];
      [v17 appendString:v14];
    }

    if (v15)
    {
      v19 = [v13 arrayByAddingObjectsFromArray:v15];
    }

    else
    {
      v19 = v13;
    }

    v20 = v19;
    a1 = sub_1000B9298(a1, v17, 1, v19, 0);
  }

  return a1;
}

void *sub_1000B9714(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a2;
    v10 = [[NSMutableString alloc] initWithString:@"delete from "];
    [v10 appendString:v9];

    if ([v7 length])
    {
      [v10 appendString:@" where "];
      [v10 appendString:v7];
    }

    a1 = sub_1000B9298(a1, v10, 1, v8, 0);
  }

  return a1;
}

void *sub_1000B97E8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = a10;
  if (a1)
  {
    v20 = a3;
    v21 = a2;
    v22 = [[NSMutableString alloc] initWithString:@"select "];
    [v22 appendString:v21];

    [v22 appendString:@" from "];
    [v22 appendString:v20];

    if ([v15 length])
    {
      [v22 appendString:@" where "];
      [v22 appendString:v15];
    }

    if ([v16 length])
    {
      [v22 appendString:@" group by "];
      [v22 appendString:v16];
    }

    if ([v17 length])
    {
      [v22 appendString:@" order by "];
      [v22 appendString:v17];
    }

    if (a7)
    {
      [v22 appendFormat:@" limit %ld offset %ld", a7, a8];
    }

    a1 = sub_1000B9298(a1, v22, 1, v18, v19);
  }

  return a1;
}

BOOL sub_1000B99A0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) setSQLiteRow:a2];
  v7 = 0;
  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  LOBYTE(a2) = v7;
  objc_autoreleasePoolPop(v4);
  return (a2 & 1) == 0;
}

id sub_1000B9A14(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v5 = *(a1 + 32);

    return sub_10004B2A8(a2, 1, v5);
  }

  return result;
}

id sub_1000B9A6C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 currentDB];
    if (v7 && [v5 length] && objc_msgSend(v6, "length"))
    {
      v8 = [v7 tableWithName:v5 containsColumnWithName:v6];
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

  return v8;
}

void sub_1000BA7E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

id sub_1000BA854(void *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = objc_getAssociatedObject(a1, &off_100204590);
    if (!v2)
    {
      v2 = [a1 select:objc_opt_class() where:0 bindings:0];
      if (v2)
      {
        objc_setAssociatedObject(a1, &off_100204590, v2, 1);
      }
    }

    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000BA900(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1 lock];
    v4 = [a1 insertOrUpdateObject:v3];
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    objc_setAssociatedObject(a1, &off_100204590, v5, 1);
    [a1 unlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000BACEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BAD08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000BAD20(uint64_t a1)
{
  v2 = [*(*(*(a1 + 72) + 8) + 40) appIdentifier];

  if (!v2)
  {
    [*(*(*(a1 + 72) + 8) + 40) setAppIdentifier:*(a1 + 32)];
  }

  result = [*(a1 + 40) insertOrUpdateObject:*(*(*(a1 + 72) + 8) + 40)];
  if (result)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [v9 appIdentifier];

        if (!v10)
        {
          [v9 setAppIdentifier:*(a1 + 32)];
        }

        if (![*(a1 + 40) deleteObject:v9])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v4 = *(a1 + 56);
      v11 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (!v11)
      {
LABEL_24:

        return (*(a1 + 64) != 0);
      }

      v12 = v11;
      v13 = *v18;
LABEL_16:
      v14 = 0;
      while (1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = [v15 appIdentifier];

        if (!v16)
        {
          [v15 setAppIdentifier:*(a1 + 32)];
        }

        if (![*(a1 + 40) insertOrUpdateObject:v15])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_24;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1000BB5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

void sub_1000BB61C(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 personID];
  [v2 addObject:v3];
}

BOOL sub_1000BB67C(uint64_t a1)
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v32;
    v5 = &CLSLogAsset_ptr;
    v28 = *v32;
    while (2)
    {
      v6 = 0;
      v29 = v3;
      do
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = v5[88];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
          [*(*(*(a1 + 64) + 8) + 40) setState:1];
          [*(*(*(a1 + 64) + 8) + 40) setPublishingState:2];
          v9 = +[NSDate date];
          [*(*(*(a1 + 64) + 8) + 40) setDateLastModified:v9];

          v10 = +[NSDate date];
          [*(*(*(a1 + 64) + 8) + 40) setDateOfPublication:v10];
        }

        v11 = [v7 appIdentifier];

        if (!v11)
        {
          [v7 setAppIdentifier:*(a1 + 40)];
        }

        if (![*(a1 + 48) insertOrUpdateObject:v7])
        {
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
          if ([v12 type] == 1)
          {
            v13 = [v12 URL];
            v14 = [CLSAsset alloc];
            v15 = [*(a1 + 56) studentDB];
            v16 = sub_1000711FC(v15);
            [v16 objectID];
            v18 = v17 = v5;
            v19 = [v14 initWithFileURL:v13 withOwnerPersonID:v18];

            v5 = v17;
            v4 = v28;

            [v19 setAppIdentifier:*(a1 + 40)];
            [v19 setUploaded:1];
            v20 = [v13 path];
            [v19 setRelativePathWithinContainer:v20];

            v21 = [v12 parentObjectID];
            [v19 setParentObjectID:v21];

            [v19 setOriginal:0];
            LODWORD(v21) = [*(a1 + 48) insertOrUpdateObject:v19];

            if (!v21)
            {

LABEL_22:
              return 0;
            }
          }

          v3 = v29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (v22 = v5[88], objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v23 = *(a1 + 56);
          v24 = *(*(*(a1 + 72) + 8) + 40);
          v25 = [*(*(*(a1 + 80) + 8) + 40) allObjects];
          v26 = [v23 insertDefaultCollaborationStatesFor:v7 forClassID:v24 toPersonIDs:v25 fromPersonID:*(*(*(a1 + 88) + 8) + 40)];

          if (!v26)
          {
            goto LABEL_22;
          }
        }

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return *(*(*(a1 + 64) + 8) + 40) != 0;
}

void sub_1000BC510(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

id sub_1000BC55C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) insertOrUpdateObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_1000BC5AC(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) insertOrUpdateObject:?] ^ 1;
  *a3 = *(*(*(a1 + 64) + 8) + 24);
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    [v11 updateAuthorizationInDatabase:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = [v11 objectID];
    [v5 addObject:v6];

    v7 = *(a1 + 48);
    v8 = [v11 objectID];
    [v7 addObject:v8];

    if ([v11 type] == 5)
    {
      v9 = *(a1 + 56);
      v10 = [v11 objectID];
      [v9 addObject:v10];
    }
  }
}

id sub_1000BC6C0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) insertOrUpdateObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_1000BC710(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  *(*(a1[6] + 8) + 24) = [v5 insertOrUpdateObject:v6] ^ 1;
  v7 = a1[5];
  v8 = [v6 objectID];

  [v7 addObject:v8];
  *a3 = *(*(a1[6] + 8) + 24);
}

void sub_1000BC7A4(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  *(*(a1[6] + 8) + 24) = [v5 insertOrUpdateObject:v6] ^ 1;
  *a3 = *(*(a1[6] + 8) + 24);
  v7 = a1[5];
  v8 = [v6 objectID];

  [v7 addObject:v8];
}

void sub_1000BC848(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) insertOrUpdateObject:v11] ^ 1;
  v5 = *(a1 + 40);
  v6 = [v11 objectID];
  [v5 addObject:v6];

  *a3 = *(*(*(a1 + 72) + 8) + 24);
  if ([v11 questionType] == 2 || objc_msgSend(v11, "questionType") == 4)
  {
    v7 = v11;
    v8 = 48;
LABEL_4:
    v9 = *(a1 + v8);
    v10 = [v7 objectID];
    [v9 addObject:v10];

    goto LABEL_5;
  }

  if ([v11 questionType] == 3)
  {
    v7 = v11;
    v8 = 56;
    goto LABEL_4;
  }

  if ([v11 questionType] == 1)
  {
    v7 = v11;
    v8 = 64;
    goto LABEL_4;
  }

LABEL_5:
}

void sub_1000BC968(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  *(*(a1[6] + 8) + 24) = [v5 insertOrUpdateObject:v6] ^ 1;
  *a3 = *(*(a1[6] + 8) + 24);
  v7 = a1[5];
  v8 = [v6 objectID];

  [v7 addObject:v8];
}

id sub_1000BCA0C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) insertOrUpdateObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

id sub_1000BCA5C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) insertOrUpdateObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_1000BCAAC(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  *(*(a1[6] + 8) + 24) = [v5 insertOrUpdateObject:v6] ^ 1;
  v7 = a1[5];
  v8 = [v6 objectID];

  [v7 addObject:v8];
  *a3 = *(*(a1[6] + 8) + 24);
}

void sub_1000BCB40(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a2;
  [v6 setOwnerPersonID:v5];
  LOBYTE(v5) = [*(a1 + 32) insertOrUpdateObject:v6];

  *(*(*(a1 + 48) + 8) + 24) = v5 ^ 1;
  *a3 = *(*(*(a1 + 48) + 8) + 24);
}

void sub_1000BCDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000BCE14(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) insertOrUpdateObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

id sub_1000BCE64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) insertOrUpdateObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_1000BD27C(uint64_t a1, void *a2)
{
  v3 = sub_1000AF8C4(a2, *(a1 + 32));
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    [*(a1 + 32) insertOrUpdateObjects:v3];
    v3 = [*(a1 + 40) insertOrUpdateObjects:v6];
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000BE314(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 40) + 16))();
  if (v4)
  {
    CLSInitLog();
    v5 = CLSLogFetch;
    if (os_log_type_enabled(CLSLogFetch, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "failed to fetch attachment at url: %@, error: %{public}@", &v7, 0x16u);
    }
  }
}

void sub_1000BEBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1000BEBF4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

id *sub_1000BF414(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id sub_1000BFC00(uint64_t a1)
{
  if (!sub_100050F94(*(a1 + 32), *(a1 + 40)) || !sub_100050F94(*(a1 + 32), *(a1 + 48)))
  {
    return 0;
  }

  v17 = *(a1 + 56);
  v2 = [NSArray arrayWithObjects:&v17 count:1];
  if (![*(a1 + 32) insertOrUpdateObjects:v2])
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v16 = *(a1 + 72);
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  LODWORD(v3) = sub_10011E700(v3, v4, v5);

  if (!v3)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v15 = *(a1 + 88);
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  LODWORD(v6) = sub_10011E700(v6, v7, v8);

  if (!v6)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 32);
  if (v9 && [v9 _setCurrentUser:*(a1 + 96) withRoleLocations:*(a1 + 104) orRole:0])
  {
    v13 = *(a1 + 112);
    v14 = *(a1 + 128);
    v10 = [NSArray arrayWithObjects:&v13 count:3];
    v11 = [*(a1 + 32) insertOrUpdateObjects:v10];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1000C0C9C(uint64_t a1, void *a2)
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
        LOBYTE(v20[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20[0] & 0x7F) << v5;
        if ((v20[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 16;
            goto LABEL_28;
          case 5:
            v16 = PBReaderReadString();
            v17 = 48;
LABEL_35:
            v14 = *(a1 + v17);
            *(a1 + v17) = v16;
            goto LABEL_36;
          case 6:
            v16 = PBReaderReadString();
            v17 = 24;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 32;
            goto LABEL_35;
          case 2:
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_35;
          case 3:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 8;
LABEL_28:
            objc_storeStrong((a1 + v15), v14);
            v20[0] = 0;
            v20[1] = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
LABEL_36:

            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000C2320(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 scheduledEntityType] == 1)
  {
    v5 = [v4 parentObjectID];
    v6 = sub_100175C6C(a1, v5);

    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
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

id sub_1000C23D8(id a1, void *a2)
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
    v9[2] = sub_1000C252C;
    v9[3] = &unk_1002047F8;
    v10 = v4;
    v7 = v4;
    [v2 selectAll:v5 where:@"scheduleID = ?" bindings:v6 block:v9];

    v2 = [v7 copy];
  }

  return v2;
}

void sub_1000C2538(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v10 = @"scheduleUpdateStatus";
    v7 = [NSNumber numberWithInteger:a3];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    v9 = [PDDatabase whereSQLForArray:v5 prefix:@"objectID in "];
    [a1 updateAll:objc_opt_class() set:v8 where:v9 bindings:v5];

    objc_autoreleasePoolPop(v6);
  }
}

uint64_t sub_1000C2BFC(uint64_t a1, void *a2)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 100)
      {
        v23 = PBReaderReadString();
        if (v23)
        {
          [a1 addClassIds:v23];
        }
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v27 & 0x7F) << v16;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000C3E18(uint64_t a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_47;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_47;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_47;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_47;
      case 6u:
        v15 = objc_alloc_init(PDDPAggregatedValue);
        v16 = 104;
        goto LABEL_31;
      case 7u:
        v15 = objc_alloc_init(PDDPAggregatedValue);
        v16 = 96;
LABEL_31:
        objc_storeStrong((a1 + v16), v15);
        v27 = 0;
        v28 = 0;
        if (!PBReaderPlaceMark() || !sub_10013C14C(v15, a2))
        {
          goto LABEL_55;
        }

        goto LABEL_44;
      case 8u:
        v15 = objc_alloc_init(PDDPActivityReportItem);
        objc_storeStrong((a1 + 88), v15);
        goto LABEL_42;
      case 9u:
        v15 = objc_alloc_init(PDDPActivityReportItem);
        [a1 addAdditionalItems:v15];
LABEL_42:
        v27 = 0;
        v28 = 0;
        if (PBReaderPlaceMark() && sub_100098958(v15, a2))
        {
LABEL_44:
          PBReaderRecallMark();

LABEL_48:
          v25 = [a2 position];
          if (v25 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_55:

        return 0;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_47;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 24;
        goto LABEL_47;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_47;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 80;
LABEL_47:
        v24 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_48;
      case 0xEu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 112) |= 1u;
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
            goto LABEL_53;
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

LABEL_53:
        *(a1 + 16) = v23;
        goto LABEL_48;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_48;
    }
  }
}

id sub_1000C61BC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C62A4;
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

void sub_1000C62A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C639C;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSHandoutRecipient as R join CLSHandoutAttachment as A on R.parentObjectID = A.parentObjectID join CLSSurvey as S on S.parentObjectID = A.objectID join CLSQuestionStep as QS on QS.parentObjectID = S.objectID join CLSMultipleChoiceAnswerFormat as MCF on MCF.parentObjectID = QS.objectID join CLSMultipleChoiceAnswerItem as MC on MC.parentObjectID = MCF.objectID and MC.objectID = ?", 1, v3, v4);
}

void sub_1000C639C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

void *sub_1000C6400(void *a1, void *a2)
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
    v6[2] = sub_1000C64EC;
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

void sub_1000C64D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C64EC(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C65D8;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select CS.state from CLSCollaborationState as CS join CLSHandoutAttachment as HA on HA.parentObjectID = CS.parentObjectID join CLSSurvey as S on S.parentObjectID = HA.objectID join CLSQuestionStep as QS on QS.parentObjectID = S.objectID join CLSMultipleChoiceAnswerFormat as MCF on MCF.parentObjectID = QS.objectID join CLSMultipleChoiceAnswerItem as MC on MC.parentObjectID = MCF.objectID and MC.objectID = ?", 1, v3, v4);
}

void sub_1000C65D8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"state");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

uint64_t sub_1000C7470(id *a1, void *a2)
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
        LOBYTE(v19) = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 2;
LABEL_33:
          v14 = a1[v16];
          a1[v16] = v15;
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 4;
          goto LABEL_33;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(PDDPHandoutAttachmentDetails);
            [a1 addAttachmentDetails:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !sub_100109204(v14, a2))
            {
LABEL_40:

              return 0;
            }

            goto LABEL_31;
          case 4:
            v14 = objc_alloc_init(PDDPDate);
            objc_storeStrong(a1 + 3, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {
              goto LABEL_40;
            }

LABEL_31:
            PBReaderRecallMark();
            goto LABEL_34;
          case 5:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addRecipientIds:v14];
            }

            goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000C8950(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C8A90;
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

void sub_1000C8A38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

void sub_1000C8A90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C8B88;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSHandoutRecipient as R join CLSHandoutAttachment as A on R.parentObjectID = A.parentObjectID join CLSSurvey as S on S.parentObjectID = A.objectID and S.objectID = ?", 1, v3, v4);
}

void sub_1000C8B88(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

id sub_1000C8BEC(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000C8D18;
    v13 = sub_1000C8D28;
    v14 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C8D30;
    v6[3] = &unk_100202888;
    v8 = &v9;
    v6[4] = a1;
    v7 = v3;
    sub_10010BE68(a1, v6);
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_1000C8D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8D18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C8D30(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v8 = a1[5];
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [v2 select:v3 where:@"objectID = ?" bindings:v4];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000C8DF8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v10 = @"surveyUpdateStatus";
    v7 = [NSNumber numberWithInteger:a3];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    v9 = [PDDatabase whereSQLForArray:v5 prefix:@"objectID in "];
    [a1 updateAll:objc_opt_class() set:v8 where:v9 bindings:v5];

    objc_autoreleasePoolPop(v6);
  }
}

void *sub_1000C8F24(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = PDPersonRoleLocation;
    a1 = objc_msgSendSuper2(&v19, "init");
    if (a1)
    {
      v12 = [v9 copy];
      v13 = a1[1];
      a1[1] = v12;

      v14 = [v10 copy];
      v15 = a1[2];
      a1[2] = v14;

      v16 = [v11 copy];
      v17 = a1[3];
      a1[3] = v16;

      a1[4] = a5;
    }
  }

  return a1;
}

uint64_t sub_1000C9C94(uint64_t a1, void *a2)
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
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000CAF58(uint64_t a1, void *a2)
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
        LOBYTE(v35) = 0;
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
            v14 = objc_alloc_init(PDDPDate);
            v15 = 24;
            goto LABEL_56;
          }

          if (v13 == 7)
          {
            v23 = PBReaderReadString();
            v24 = 72;
LABEL_54:
            v31 = *(a1 + v24);
            *(a1 + v24) = v23;

            goto LABEL_74;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v23 = PBReaderReadString();
              v24 = 56;
              goto LABEL_54;
            case 9:
              v14 = objc_alloc_init(PDDPButtonInfo);
              objc_storeStrong((a1 + 40), v14);
              goto LABEL_60;
            case 0xA:
              v14 = objc_alloc_init(PDDPButtonInfo);
              [a1 addOtherButtonInfos:v14];
LABEL_60:
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !sub_10016D13C(v14, a2))
              {
LABEL_76:

                return 0;
              }

              goto LABEL_62;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 8;
          goto LABEL_54;
        }

        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            LOBYTE(v35) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_68;
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

LABEL_68:
          v32 = 52;
          goto LABEL_73;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v35) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v35 & 0x7F) << v25;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_72;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v27;
            }

LABEL_72:
            v32 = 48;
LABEL_73:
            *(a1 + v32) = v22;
            goto LABEL_74;
          case 4:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 16;
LABEL_56:
            objc_storeStrong((a1 + v15), v14);
            v35 = 0;
            v36 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {
              goto LABEL_76;
            }

LABEL_62:
            PBReaderRecallMark();

            goto LABEL_74;
          case 5:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 32;
            goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000CCA7C(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000CCF64(id a1)
{
  v3[0] = CLSUserDefaultRestoreCurrentDefaults;
  v3[1] = CLSUserDefaultEnableVerboseLogging;
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanTrue;
  v3[2] = CLSUserDefaultEnableResponseStreaming;
  v4[2] = &__kCFBooleanTrue;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_10024D9F0;
  qword_10024D9F0 = v1;
}

uint64_t sub_1000CE300(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[2];
        a1[2] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addLocationIds:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

void *sub_1000CEAD8(void *result)
{
  if (result)
  {
    v1 = [result objCType];
    if ((*v1 | 2) == 0x66)
    {
      return (v1[1] == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PDDPDateReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27 & 0x7F) << v15;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_36;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_36:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}