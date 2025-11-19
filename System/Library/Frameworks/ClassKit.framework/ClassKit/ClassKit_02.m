uint64_t sub_1000507D8(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 select:objc_opt_class() identity:@"initialASMSyncComplete"];
    if (v2)
    {
      v1 = v2[16];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_100050844(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 select:objc_opt_class() identity:@"initialOrionSyncComplete"];
    if (v2)
    {
      v1 = v2[16];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1000508B0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 select:objc_opt_class() identity:@"initialiCloudDriveSyncComplete"];
    if (v2)
    {
      v1 = v2[16];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_10005091C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v2 = [NSArray arrayWithObjects:v12 count:3, 0];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([v1 count:*(*(&v8 + 1) + 8 * v6) where:0 bindings:0] > 0)
          {
            v1 = 1;
            goto LABEL_12;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v1 = 0;
LABEL_12:
  }

  return v1;
}

void sub_100050A74(id a1)
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:8];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10024D8F0;
  qword_10024D8F0 = v2;
}

id sub_100050F94(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005103C;
    v6[3] = &unk_100202140;
    v6[4] = a1;
    v7 = v3;
    a1 = [a1 performTransaction:v6 forWriting:1];
  }

  return a1;
}

id sub_10005103C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[PDRolePrivilege entityName];
  v4 = [*(a1 + 40) identityValue];
  v37 = v4;
  v5 = [NSArray arrayWithObjects:&v37 count:1];
  LOBYTE(v2) = sub_1000B9714(v2, v3, @"roleID = ?", v5);

  if (v2)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [v6 addObject:*(a1 + 40)];
    v7 = [*(a1 + 40) privileges];
    v8 = [v7 count];

    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = [*(a1 + 40) privileges];
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v30 + 1) + 8 * i);
            v15 = [PDRolePrivilege alloc];
            v16 = [*(a1 + 40) objectID];
            v17 = sub_10016FBE8(v15, v16, v14);

            [v6 addObject:v17];
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v20 = [PDRolePrivilege alloc];
      v21 = [*(a1 + 40) objectID];
      v9 = sub_10016FBE8(v20, v21, @"❌✋🔒");

      [v6 addObject:v9];
    }

    v19 = [*(a1 + 32) insertOrUpdateObjects:v6];
    if ((v19 & 1) == 0)
    {
      CLSInitLog();
      v22 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 40);
        v28 = v22;
        v29 = [v27 identityValue];
        *buf = 138543362;
        v36 = v29;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to save Role with objectID: %{public}@.", buf, 0xCu);
      }
    }
  }

  else
  {
    CLSInitLog();
    v18 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = v18;
      v26 = [v24 identityValue];
      *buf = 138543362;
      v36 = v26;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to delete RolePrivileges for Role with objectID: %{public}@.", buf, 0xCu);
    }

    return 0;
  }

  return v19;
}

id sub_100051398(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = objc_opt_new();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10005149C;
      v9[3] = &unk_1002031D8;
      v9[4] = a1;
      v10 = v4;
      v6 = v5;
      v11 = v6;
      sub_10010BE68(a1, v9);
      v7 = v11;
      a1 = v6;
    }

    else
    {
      a1 = +[NSArray array];
    }
  }

  return a1;
}

void sub_10005149C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v23 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v23 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000516E0;
  v18[3] = &unk_1002031B0;
  v5 = v2;
  v19 = v5;
  LOBYTE(v3) = sub_1000B9298(v3, @"select distinct roleID from PDRolePrivilege where privilegeName = ?", 1, v4, v18);

  if ((v3 & 1) == 0)
  {
    CLSInitLog();
    v6 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138543362;
      v22 = v13;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch roleIDs for privilege: %{public}@.", buf, 0xCu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
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

        v12 = [*(a1 + 32) select:objc_opt_class() identity:{*(*(&v14 + 1) + 8 * v11), v14}];
        [*(a1 + 48) addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v9);
  }
}

void sub_1000516E0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"roleID");
  [v2 addObject:v3];
}

id sub_100051744(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100051814;
    v6[3] = &unk_100203200;
    v6[4] = a1;
    v8 = a2;
    v3 = objc_opt_new();
    v7 = v3;
    sub_10010BE68(v2, v6);
    v4 = v7;
    v2 = v3;
  }

  return v2;
}

void sub_100051814(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  v26 = v4;
  v5 = [NSArray arrayWithObjects:&v26 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100051AA0;
  v21[3] = &unk_1002031B0;
  v6 = v2;
  v22 = v6;
  LOBYTE(v3) = sub_1000B9298(v3, @"select distinct objectID from CLSRole where type = ?", 1, v5, v21);

  if ((v3 & 1) == 0)
  {
    CLSInitLog();
    v7 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = v7;
      v16 = [CLSRole stringForRoleType:v14];
      *buf = 138543362;
      v25 = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch roleIDs for type: %{public}@.", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
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

        v13 = [*(a1 + 32) select:objc_opt_class() identity:{*(*(&v17 + 1) + 8 * v12), v17}];
        [*(a1 + 40) addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }
}

void sub_100051AA0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"objectID");
  [v2 addObject:v3];
}

const __CFString *sub_100051D10(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"PDFileUploadStateUnknown";
  }

  else
  {
    return *(&off_100203758 + a1 - 1);
  }
}

void sub_100051D38(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10024D900;
  qword_10024D900 = v1;

  [qword_10024D900 setName:@"PDFilePresenterOperationQueue"];
  v3 = CLSCurrentNSQualityOfService();
  v4 = qword_10024D900;

  [v4 setQualityOfService:v3];
}

id sub_100051D9C()
{
  if (qword_10024D910 != -1)
  {
    dispatch_once(&qword_10024D910, &stru_100203240);
  }

  v1 = qword_10024D918;

  return v1;
}

void sub_100051DF0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = qos_class_self();
  attr = dispatch_queue_attr_make_with_qos_class(v1, v2, 0);

  v3 = dispatch_queue_create("com.apple.progressd.fileUploadProgress", attr);
  v4 = qword_10024D918;
  qword_10024D918 = v3;
}

void sub_100051E7C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = qos_class_self();
  attr = dispatch_queue_attr_make_with_qos_class(v1, v2, 0);

  v3 = dispatch_queue_create("com.apple.progressd.fileCopy", attr);
  v4 = qword_10024D928;
  qword_10024D928 = v3;
}

void sub_100051F08(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = qos_class_self();
  attr = dispatch_queue_attr_make_with_qos_class(v1, v2, 0);

  v3 = dispatch_queue_create("com.apple.progressd.fileSharing", attr);
  v4 = qword_10024D938;
  qword_10024D938 = v3;
}

void sub_100052A40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

          [*(*(&v9 + 1) + 8 * i) clientRemote_uploadProgressFraction:*(a1 + 40) error:{*(a1 + 56), v9}];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    CLSInitLog();
    v8 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "queued_notifyUploadProgressFraction PDFileSyncAgent was released", buf, 2u);
    }
  }
}

void sub_100052DF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained uploadObservers];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          LOWORD(v10) = *(a1 + 129);
          [*(*(&v11 + 1) + 8 * i) clientRemote_uploadCompleted:*(a1 + 128) url:*(a1 + 32) thumbnailURL:*(a1 + 40) relativePathWithinContainer:*(a1 + 48) ubiquitousContainerName:*(a1 + 56) brItemID:*(a1 + 64) brOwnerName:*(a1 + 120) brZoneName:*(a1 + 72) brShareName:*(a1 + 80) fractionUploaded:*(a1 + 88) isTemporary:v10 isStaged:*(a1 + 96) error:?];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }

    [*(a1 + 104) removeUploadObservers:v4];
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "queued_notifyUploadCompleted PDFileSyncAgent was released", buf, 2u);
    }
  }
}

void sub_1000530A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

          [*(*(&v9 + 1) + 8 * i) clientRemote_downloadProgressFraction:*(a1 + 40) error:{*(a1 + 56), v9}];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    CLSInitLog();
    v8 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "queued_notifyDownloadProgressFraction PDFileSyncAgent was released", buf, 2u);
    }
  }
}

void sub_1000532F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained downloadObservers];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) clientRemote_downloadCompleted:*(a1 + 56) error:*(a1 + 32)];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    [*(a1 + 40) removeDownloadObservers:v4];
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "queued_notifyDownloadCompleted PDFileSyncAgent was released", buf, 2u);
    }
  }
}

void sub_100053628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [v4 type];
    if (v5 == 3)
    {
      v6 = [*(a1 + 32) copyAssetToCloudKitContentStoreCache:v4 createThumbnailIfNeeded:*(a1 + 48)];
    }

    else if (v5 == 1)
    {
      v6 = [*(a1 + 32) copyToiCloudDrive];
    }

    else
    {
      v6 = +[NSError cls_createErrorWithCode:format:](NSError, "cls_createErrorWithCode:format:", 315, @"Failed to upload asset. Unhandled asset type: %ld.", [v4 type]);
    }

    v8 = v6;
    if (v6)
    {
      [v6 cls_log:CLSLogAsset];
      objc_storeStrong(v3 + 7, v8);
      [v3 notifyUploadCompleted];
    }

    else
    {
      [*(a1 + 32) startStateMachine];
    }
  }

  else
  {
    CLSInitLog();
    v7 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released when executing 'uploadAfterValidatingURLWithAuditToken:createThumbnailIfNeeded:'", buf, 2u);
    }
  }
}

void sub_100053C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053C50(uint64_t a1)
{
  v2 = [*(a1 + 32) URL];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) brItemID];
  v5 = [*(a1 + 32) brOwnerName];
  v6 = [*(a1 + 32) brZoneName];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053D60;
  v7[3] = &unk_100203320;
  v8 = *(a1 + 48);
  [NSURL cls_deleteFileAtExpectedURL:v2 containerURL:v3 itemID:v4 ownerName:v5 zoneName:v6 completion:v7];
}

void sub_100053D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [NSError cls_createErrorWithCode:341 format:@"deleteBackingStoreWithCompletion: cls_deleteFileAtExpectedURL, error: %@", a3];
    [v4 cls_log:CLSLogAsset];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100053DF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [a2 count];
    v10 = [v8 count];

    v11 = [NSError cls_createErrorWithCode:341 format:@"deleteBackingStoreWithCompletion: operationCompletionBlock - #savedRecords: %lu, #deletedRecordIDs:%lu, error: %@", v9, v10, v7];

    [v11 cls_log:CLSLogAsset];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v11 == 0);
}

void sub_100053EE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [v5 recordID];
    v8 = [NSError cls_createErrorWithCode:341 format:@"deleteBackingStoreWithCompletion: recordCompletionBlock - savedRecord recordID: %@, error: %@", v7, v6];

    [v8 cls_log:CLSLogAsset];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    CLSInitLog();
    v10 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released during deleteBackingStoreWithCompletion: recordCompletionBlock", buf, 2u);
    }
  }
}

void sub_100053FEC(uint64_t a1, double a2)
{
  CLSInitLog();
  v4 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deleteBackingStoreWithCompletion: recordProgressBlock - progress: %f", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    CLSInitLog();
    v6 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released during deleteBackingStoreWithCompletion: recordProgressBlock", &v7, 2u);
    }
  }
}

void sub_100054BB4(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = 6;
  }

  else
  {
    objc_storeStrong(v6 + 9, a3);
    v6 = *(a1 + 32);
    v7 = 7;
  }

  [v6 uploadStateChanged:v7];
}

void sub_100055740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100055764(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005577C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  [*(a1 + 32) decompressAssetIfNecessary:*(a1 + 40)];
  v4 = [*(a1 + 40) URL];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100055970;
  v15 = &unk_1002033C0;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v18 = &v22;
  v19 = v5;
  v20 = v26;
  v21 = 0;
  v7 = v2;
  v16 = v7;
  v17 = *(a1 + 40);
  [v3 coordinateReadingItemAtURL:v4 options:0 writingItemAtURL:v6 options:8 error:&v21 byAccessor:&v12];
  v8 = v21;
  if ((v23[3] & 1) == 0)
  {
    v9 = [NSError cls_createErrorWithCode:315 underlyingError:v8 description:@"moveDownloadedAssetFileToContentStoreCacheForAsset - failed to access file using FileCoordinator.", v12, v13, v14, v15, v16];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(*(*(a1 + 56) + 8) + 40) cls_debug:CLSLogAsset];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

void sub_100055948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100055970(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v21 = 0;
  v7 = [PDFileSyncAgent removeItemAtURL:v6 error:&v21];
  v8 = v21;
  if (v7)
  {
    v9 = *(a1 + 32);
    v20 = v8;
    v10 = [v9 moveItemAtURL:v5 toURL:v6 error:&v20];
    v11 = v20;

    *(*(*(a1 + 64) + 8) + 24) = v10;
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 40) setURL:v6];
    }

    else
    {
      v17 = [NSError cls_createErrorWithCode:315 underlyingError:v11 description:@"moveDownloadedAssetFileToContentStoreCacheForAsset - failed to move file to CKContentStoreCache folder."];
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      [*(*(*(a1 + 56) + 8) + 40) cls_debug:CLSLogAsset];
    }

    v8 = v11;
  }

  else
  {
    v12 = [v6 path];
    v13 = objc_claimAutoreleasedReturnValue();

    v14 = [NSError cls_createErrorWithCode:315 underlyingError:v8 description:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(*(*(a1 + 56) + 8) + 40) cls_log:CLSLogAsset];
  }
}

void sub_100055D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055D4C(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailURL];
  v3 = +[NSFileManager defaultManager];
  v4 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20 = v26;
  v21 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100055F2C;
  v15 = &unk_1002033C0;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v18 = &v22;
  v19 = v5;
  v7 = v3;
  v16 = v7;
  v17 = *(a1 + 32);
  [v4 coordinateReadingItemAtURL:v2 options:0 writingItemAtURL:v6 options:8 error:&v21 byAccessor:&v12];
  v8 = v21;
  if ((v23[3] & 1) == 0)
  {
    v9 = [NSError cls_createErrorWithCode:315 underlyingError:v8 description:@"moveDownloadedAssetFileToContentStoreCacheForAsset - failed to access thumbnail file using FileCoordinator.", v12, v13, v14, v15, v16];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(*(*(a1 + 48) + 8) + 40) cls_debug:CLSLogAsset];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

void sub_100055F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100055F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v21 = 0;
  v7 = [PDFileSyncAgent removeItemAtURL:v6 error:&v21];
  v8 = v21;
  if (v7)
  {
    v9 = *(a1 + 32);
    v20 = v8;
    v10 = [v9 moveItemAtURL:v5 toURL:v6 error:&v20];
    v11 = v20;

    *(*(*(a1 + 64) + 8) + 24) = v10;
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 40) setThumbnailURL:v6];
    }

    else
    {
      v17 = [NSError cls_createErrorWithCode:315 underlyingError:v11 description:@"moveDownloadedAssetFileToContentStoreCacheForAsset - failed to move thumbnail file to CKContentStoreCache folder."];
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      [*(*(*(a1 + 56) + 8) + 40) cls_debug:CLSLogAsset];
    }

    v8 = v11;
  }

  else
  {
    v12 = [v6 path];
    v13 = objc_claimAutoreleasedReturnValue();

    v14 = [NSError cls_createErrorWithCode:315 underlyingError:v8 description:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(*(*(a1 + 56) + 8) + 40) cls_log:CLSLogAsset];
  }
}

void sub_10005651C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v60 = 0;
    v5 = [PDFileSyncAgent removeItemAtURL:v4 error:&v60];
    v6 = v60;
    v7 = v6;
    if ((v5 & 1) == 0)
    {
      v23 = [*(a1 + 32) path];
      goto LABEL_22;
    }

    v3 = v6;
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v59 = v3;
    v9 = [PDFileSyncAgent removeItemAtURL:v8 error:&v59];
    v7 = v59;

    if (v9)
    {
      goto LABEL_8;
    }

    v23 = [*(a1 + 40) path];
    v22 = LABEL_22:;

    v24 = [NSError cls_createErrorWithCode:315 underlyingError:v7 description:v22];
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    [*(*(*(a1 + 72) + 8) + 40) cls_log:CLSLogAsset];
    goto LABEL_23;
  }

  v7 = v3;
LABEL_8:
  v10 = objc_opt_new();
  v11 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v12 = [*(a1 + 48) startAccessingSecurityScopedResource];
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    v54 = 0;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100056A1C;
    v44[3] = &unk_100203438;
    v15 = *(a1 + 64);
    v49 = &v55;
    v50 = v15;
    v45 = v2;
    v46 = *(a1 + 56);
    v16 = *(a1 + 32);
    v53 = *(a1 + 96);
    v17 = *(a1 + 88);
    v47 = v16;
    v51 = v17;
    v48 = *(a1 + 40);
    v52 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    [v10 coordinateReadingItemAtURL:v13 options:0 writingItemAtURL:v14 options:8 error:&v54 byAccessor:v44];
    v11 = v54;
    if (v12)
    {
      [*(a1 + 48) stopAccessingSecurityScopedResource];
    }

    if ((v56[3] & 1) == 0)
    {
      v18 = [NSError cls_createErrorWithCode:315 underlyingError:v11 description:@"Failed to access file using FileCoordinator."];
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      [*(*(*(a1 + 72) + 8) + 40) cls_log:CLSLogAsset];
    }
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && (v21 = *(*(*(a1 + 88) + 8) + 40)) != 0 && *(a1 + 40) && !*(*(*(a1 + 72) + 8) + 40))
  {
    v27 = [v21 startAccessingSecurityScopedResource];
    v28 = *(*(*(a1 + 88) + 8) + 40);
    v29 = *(a1 + 40);
    v43 = v11;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100056DC0;
    v36[3] = &unk_100203460;
    v30 = *(a1 + 80);
    v40 = &v55;
    v41 = v30;
    v37 = v2;
    v38 = *(a1 + 56);
    v31 = *(a1 + 40);
    v32 = *(a1 + 72);
    v39 = v31;
    v42 = v32;
    [v10 coordinateReadingItemAtURL:v28 options:0 writingItemAtURL:v29 options:8 error:&v43 byAccessor:v36];
    v22 = v43;

    if (v27)
    {
      [*(*(*(a1 + 88) + 8) + 40) stopAccessingSecurityScopedResource];
    }

    if ((v56[3] & 1) == 0)
    {
      v33 = [NSError cls_createErrorWithCode:315 underlyingError:v22 description:@"Failed to access thumbnail file using FileCoordinator."];
      v34 = *(*(a1 + 72) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;

      [*(*(*(a1 + 72) + 8) + 40) cls_debug:CLSLogAsset];
    }
  }

  else
  {
    v22 = v11;
  }

  _Block_object_dispose(&v55, 8);

LABEL_23:
}

void sub_100056A1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v7 = *(a1 + 32);
  v33 = 0;
  v8 = [v7 copyItemAtURL:v5 toURL:v6 error:&v33];
  v9 = v33;
  *(*(*(a1 + 72) + 8) + 24) = v8;
  if (*(*(*(a1 + 72) + 8) + 24) != 1)
  {
    v11 = [NSError cls_createErrorWithCode:315 underlyingError:v9 description:@"Failed to copy file to CKContentStoreCache folder."];
    v12 = *(*(a1 + 96) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 96) + 8) + 40) cls_log:CLSLogAsset];
    goto LABEL_6;
  }

  [*(a1 + 40) setURL:*(a1 + 48)];
  if (*(a1 + 104) == 1)
  {
    v10 = [*(a1 + 40) fileUTType];
    if ([v10 conformsToType:UTTypeAudio])
    {

      goto LABEL_6;
    }

    v14 = *(*(*(a1 + 80) + 8) + 40);

    if (v14)
    {
      goto LABEL_6;
    }

    v15 = objc_autoreleasePoolPush();
    CLSInitLog();
    v16 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 48);
      v18 = v16;
      v19 = [v17 path];
      *buf = 138412290;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Thumbnail was not set on the asset. Creating a default thumbnail from the original asset file: %@", buf, 0xCu);
    }

    v32 = 0;
    v20 = [CLSImageUtils JPEGDataForThumbnailForFileAtURL:v5 maxSize:&v32 scaleFactor:200.0 error:200.0, 1.0];
    v21 = v32;
    if (v21 && (CLSInitLog(), v22 = CLSLogAsset, os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138412290;
      v35 = v21;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to generate thumbnail from asset file URL: %@", buf, 0xCu);
      if (v20)
      {
LABEL_13:
        v23 = *(a1 + 56);
        v31 = v21;
        v24 = [v20 writeToURL:v23 options:0x10000000 error:&v31];
        v25 = v31;

        if (v24)
        {
          v26 = *(a1 + 56);
          objc_storeStrong((*(*(a1 + 80) + 8) + 40), v26);
          [*(a1 + 40) setThumbnailURL:v26];
          *(*(*(a1 + 88) + 8) + 24) = 1;
        }

        else
        {
          CLSInitLog();
          v27 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
          {
            v28 = *(a1 + 56);
            v29 = v27;
            v30 = [v28 path];
            *buf = 138412546;
            v35 = v30;
            v36 = 2112;
            v37 = v25;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to write generated thumbnail for asset to: %@, error: %@", buf, 0x16u);
          }
        }

        goto LABEL_19;
      }
    }

    else if (v20)
    {
      goto LABEL_13;
    }

    v25 = v21;
LABEL_19:

    objc_autoreleasePoolPop(v15);
  }

LABEL_6:
}

void sub_100056DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v4 copyItemAtURL:a2 toURL:a3 error:&v10];
  v6 = v10;
  *(*(*(a1 + 64) + 8) + 24) = v5;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 40) setThumbnailURL:*(a1 + 48)];
  }

  else
  {
    v7 = [NSError cls_createErrorWithCode:315 underlyingError:v6 description:@"Failed to copy thumbnail file to CKContentStoreCache folder."];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 72) + 8) + 40) cls_debug:CLSLogAsset];
  }
}

void sub_1000572E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v12 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v14 - 120));
  _Unwind_Resume(a1);
}

void sub_100057350(id a1, NSArray *a2, NSArray *a3, NSError *a4)
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
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "uploadToCloudKitContentStore: operationCompletionBlock - #savedRecords: %lu, #deletedRecordIDs:%lu, error: %@", &v11, 0x20u);
  }
}

void sub_100057468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  CLSInitLog();
  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 recordID];
    v25 = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "uploadToCloudKitContentStore: recordCompletionBlock - savedRecord recordID: %@, error: %@", &v25, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[2];
    objc_storeStrong(v11 + 7, a3);
    if (!v6)
    {
      if (v5)
      {
        v13 = [v5 recordID];
        v14 = [v13 recordName];
        [v12 setBrItemID:v14];

        v15 = [v5 recordID];
        v16 = [v15 zoneID];
        v17 = [v16 zoneName];
        [v12 setBrZoneName:v17];

        [v12 setBrOwnerName:*(*(*(a1 + 32) + 8) + 40)];
      }

      [v12 setFractionUploaded:1.0];
      [v12 setUploaded:1];
      v18 = [v12 URL];
      v19 = [v18 path];

      CLSInitLog();
      v20 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        [v12 fractionUploaded];
        v25 = 141558530;
        v26 = 1752392040;
        v27 = 2112;
        v28 = v19;
        v29 = 2048;
        v30 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Completed upload of asset at '%{mask.hash}@' [reported upload progress as: %f]", &v25, 0x20u);
      }

      CLSInitLog();
      v23 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 141558274;
        v26 = 1752392040;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No need to create a CKShare for asset at '%{mask.hash}@'", &v25, 0x16u);
      }
    }

    [v11 uploadStateChanged:3];
  }

  else
  {
    CLSInitLog();
    v24 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PDFileSyncAgent object was released during uploadToCloudKitContentStore: recordCompletionBlock", &v25, 2u);
    }
  }
}

void sub_100057798(uint64_t a1, double a2)
{
  CLSInitLog();
  v4 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = *&a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "uploadToCloudKitContentStore: recordProgressBlock - progress: %f", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[2];
    [v7 setFractionUploaded:a2];
    v8 = [v6[2] fileSizeInBytes];
    CLSInitLog();
    v9 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = (v8 * a2);
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Uploaded: %ld of %ld bytes", &v11, 0x16u);
    }

    [v6 uploadStateChanged:2];
  }

  else
  {
    CLSInitLog();
    v10 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDFileSyncAgent object was released during uploadToCloudKitContentStore: recordProgressBlock", &v11, 2u);
    }
  }
}

void sub_100057C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057CC0(uint64_t a1)
{
  if (([*(a1 + 32) cls_isParentOfURL:*(a1 + 40)] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    v5 = [v2 URLByAppendingPathComponent:v4 isDirectory:1];

    v42 = 0;
    v6 = [v5 cls_createDirectoryIfNeeded:&v42];
    v7 = v42;

    if (v6)
    {
      v8 = [*(a1 + 40) lastPathComponent];
      v9 = [v6 URLByAppendingPathComponent:v8 isDirectory:0];

      v10 = +[NSFileManager defaultManager];
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v41 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v11 = objc_opt_new();
      v12 = [*(a1 + 40) startAccessingSecurityScopedResource];
      v13 = *(a1 + 40);
      v35 = 0;
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_100057FD0;
      v28 = &unk_100203460;
      v32 = &v36;
      v33 = v40;
      v14 = v10;
      v15 = *(a1 + 48);
      v29 = v14;
      v30 = v15;
      v16 = v9;
      v17 = *(a1 + 56);
      v31 = v16;
      v34 = v17;
      [v11 coordinateReadingItemAtURL:v13 options:0 writingItemAtURL:v16 options:8 error:&v35 byAccessor:&v25];
      v18 = v35;
      if (v12)
      {
        [*(a1 + 40) stopAccessingSecurityScopedResource];
      }

      if ((v37[3] & 1) == 0)
      {
        v19 = [NSError cls_createErrorWithCode:315 underlyingError:v18 description:@"Failed to access file using FileCoordinator."];
        v20 = *(*(a1 + 56) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        [*(*(*(a1 + 56) + 8) + 40) cls_debug:CLSLogAsset];
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(v40, 8);
    }

    else
    {
      v22 = [NSError cls_createErrorWithCode:315 underlyingError:v7 description:@"Failed to create a folder for draft copy of the file."];
      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      [*(*(*(a1 + 56) + 8) + 40) cls_log:CLSLogAsset];
    }
  }
}

void sub_100057FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_100057FD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v7 = *(a1 + 32);
  v13 = 0;
  v8 = [v7 copyItemAtURL:v5 toURL:v6 error:&v13];
  v9 = v13;
  *(*(*(a1 + 64) + 8) + 24) = v8;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [QLThumbnailAddition associateThumbnailsForDocumentAtURL:v5 withDocumentAtURL:v6 error:0];
    [*(*(a1 + 40) + 16) setURL:*(a1 + 48)];
    [*(a1 + 40) insertStagedAssetInDBToBeginUploading];
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:315 underlyingError:v9 description:@"Failed to copy file to draft folder."];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [*(*(*(a1 + 72) + 8) + 40) cls_debug:CLSLogAsset];
  }
}

void sub_1000581AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v4 = [v3 URL];
    v5 = [v4 path];
    if (*(v2 + 32) == 1)
    {
      CLSInitLog();
      v6 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v25 = 1752392040;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Already started observing upload progress for '%{mask.hash}@'", buf, 0x16u);
      }
    }

    else
    {
      *(v2 + 32) = 1;
      CLSInitLog();
      v8 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v25 = 1752392040;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using NSFilePresenter for observing upload progress for '%{mask.hash}@'", buf, 0x16u);
      }

      [v2 addToFilePresenter];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000584C0;
      v21[3] = &unk_1002029E8;
      v9 = v3;
      v22 = v9;
      v23 = v2;
      v10 = objc_retainBlock(v21);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10005867C;
      v16[3] = &unk_100203540;
      v16[4] = v2;
      v11 = v4;
      v17 = v11;
      v18 = v9;
      v19 = v5;
      v20 = v10;
      v12 = v10;
      v13 = objc_retainBlock(v16);
      v14 = [NSProgress addSubscriberForFileURL:v11 withPublishingHandler:v13];
      v15 = v2[5];
      v2[5] = v14;
    }
  }

  else
  {
    CLSInitLog();
    v7 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released during queued_startObservingiCloudDriveUploadProgress", buf, 2u);
    }
  }
}

id sub_1000584C0(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NSProgress unpublished", &v13, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 fileSizeInBytes];
    v5 = [*(a1 + 32) isUploaded];
    CLSInitLog();
    v6 = CLSLogAsset;
    if ((v5 & 1) == 0)
    {
      if (!os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        return [*(a1 + 40) queued_stopObservingiCloudDriveUploadProgress];
      }

      v11 = *(a1 + 32);
      v8 = v6;
      [v11 fractionUploaded];
      v13 = 134218240;
      v14 = (v12 * v4);
      v15 = 2048;
      v16 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Upload did not complete, uploaded: %ld of %ld bytes", &v13, 0x16u);
      goto LABEL_7;
    }

    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      [v7 fractionUploaded];
      v13 = 134218240;
      v14 = (v9 * v4);
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Upload completed, uploaded: %ld of %ld bytes", &v13, 0x16u);
LABEL_7:
    }
  }

  return [*(a1 + 40) queued_stopObservingiCloudDriveUploadProgress];
}

id sub_10005867C(uint64_t a1, void *a2)
{
  v4 = a2;
  CLSInitLog();
  v5 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NSProgress publishing, received progress: %@", buf, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 48), a2);
  [*(*(a1 + 32) + 48) addObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" options:5 context:*(a1 + 40)];
  [v4 fractionCompleted];
  v7 = v6 * 0.9;
  [*(a1 + 48) setFractionUploaded:v6 * 0.9];
  v8 = [*(a1 + 48) fileSizeInBytes];
  CLSInitLog();
  v9 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v20 = (v7 * v8);
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Uploaded: %ld of %ld bytes", buf, 0x16u);
  }

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:NSProgressFileOperationKindKey];
  v12 = v11;
  if (v11)
  {
    if (([v11 isEqualToString:NSProgressFileOperationKindUploading] & 1) == 0)
    {
      CLSInitLog();
      v13 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 56);
        *buf = 138412802;
        v20 = v12;
        v21 = 2160;
        v22 = 1752392040;
        v23 = 2112;
        v24 = v17;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Got an unexepected file operation kind: %@. Cannot observe upload progress for %{mask.hash}@", buf, 0x20u);
      }
    }
  }

  v14 = sub_100051D9C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058948;
  block[3] = &unk_100202D40;
  block[4] = *(a1 + 32);
  dispatch_async(v14, block);

  v15 = objc_retainBlock(*(a1 + 64));

  return v15;
}

void sub_100058948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 observedPresentedItemUbiquityAttributes];
  [v1 presentedItemDidChangeUbiquityAttributes:v2];
}

void sub_100058A4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    if (v3)
    {
      v4 = [WeakRetained[2] URL];
      [v3 removeObserver:v2 forKeyPath:@"fractionCompleted" context:v4];

      v5 = v2[6];
      v2[6] = 0;
    }

    if (v2[5])
    {
      [NSProgress removeSubscriber:?];
      v6 = v2[5];
      v2[5] = 0;
    }

    *(v2 + 32) = 0;
  }

  else
  {
    CLSInitLog();
    v7 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released during queued_stopObservingiCloudDriveUploadProgress", v8, 2u);
    }
  }
}

void sub_100058C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_10003E1B4();
    sub_1000408B8(v3);
    if (v3)
    {
      v4 = *(v3 + 96);
      v5 = *(v3 + 112);
      v6 = v5;
      if (v4)
      {
        if (v5)
        {
          v7 = *(*(a1 + 32) + 16);
          v8 = [v7 URL];
          v9 = [v8 path];
          CLSInitLog();
          v10 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            [v7 fractionUploaded];
            *buf = 141558530;
            v27 = 1752392040;
            v28 = 2112;
            v29 = v9;
            v30 = 2048;
            v31 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed upload of asset at '%{mask.hash}@' [reported upload progress as: %f]", buf, 0x20u);
          }

          CLSInitLog();
          v13 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558274;
            v27 = 1752392040;
            v28 = 2112;
            v29 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "About to create a CKShare (if needed) for asset at '%{mask.hash}@'", buf, 0x16u);
          }

          v14 = *(v3 + 72);
          v22 = v8;
          v4 = v4;
          v6 = v6;
          objc_copyWeak(&v25, (a1 + 48));
          v24 = *(a1 + 40);
          v23 = v7;
          CLSPerformWithPersona();

          objc_destroyWeak(&v25);
        }

        else
        {
          v20 = *(a1 + 40);
          v21 = *(v3 + 120);
          (*(v20 + 16))(v20, 0, v21);

          v6 = 0;
        }

        goto LABEL_16;
      }

      v17 = *(v3 + 104);
    }

    else
    {
      v6 = 0;
      v17 = 0;
    }

    v18 = *(a1 + 40);
    v19 = v17;
    (*(v18 + 16))(v18, 0, v19);

    v4 = 0;
LABEL_16:

    goto LABEL_17;
  }

  CLSInitLog();
  v15 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released when executing createiCloudDriveCKShare", buf, 2u);
  }

  v16 = *(a1 + 40);
  v3 = [NSError cls_createErrorWithCode:316 description:@"PDFileSyncAgent object was released when executing createiCloudDriveCKShare"];
  (*(v16 + 16))(v16, 0, v3);
LABEL_17:
}

void sub_100059024(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005910C;
  v5[3] = &unk_100203568;
  objc_copyWeak(&v8, (a1 + 72));
  v7 = *(a1 + 64);
  v6 = *(a1 + 56);
  [v2 cls_createShareIfNeededWithOrgAdminUserRecordID:v3 userRecordID:v4 completion:v5];

  objc_destroyWeak(&v8);
}

void sub_10005910C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      [*(a1 + 32) setBrOwnerName:v7];
      v10 = [v8 recordName];
      [*(a1 + 32) setBrShareName:v10];

      v11 = [v8 recordName];
      v12 = [v11 pathComponents];
      v13 = [v12 lastObject];
      [*(a1 + 32) setBrItemID:v13];

      v14 = [v8 zoneID];
      v15 = [v14 zoneName];
      [*(a1 + 32) setBrZoneName:v15];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      CLSInitLog();
      v16 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "PDFileSyncAgent object was released when setting up CKShare", v19, 2u);
      }

      v17 = *(a1 + 40);
      v18 = [NSError cls_createErrorWithCode:316 description:@"PDFileSyncAgent object was released when setting up CKShare"];
      (*(v17 + 16))(v17, 0, v18);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000593A0(id a1)
{
  qword_10024D940 = [NSSet setWithObjects:NSURLUbiquitousItemIsUploadedKey, NSURLUbiquitousItemUploadingErrorKey, 0];

  _objc_release_x1();
}

void sub_10005ABE8(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  CLSInitLog();
  v6 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "downloadCloudKitPrimaryFileWithCompletion progressBlock recordID: '%@', progress: %f%%", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained queued_notifyDownloadProgressFraction:0 error:a3];
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "downloadCloudKitPrimaryFileWithCompletion PDFileSyncAgent was released", &v10, 2u);
    }
  }
}

void sub_10005AD28(id a1, CKRecordID *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  CLSInitLog();
  v6 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "downloadCloudKitPrimaryFileWithCompletion recordResultBlock recordID: '%@', error: %@", &v7, 0x16u);
  }
}

void sub_10005ADFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  CLSInitLog();
  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "downloadCloudKitPrimaryFileWithCompletion completionBlock recordID: '%@', error: %@", buf, 0x16u);
  }

  v8 = [v5 firstObject];
  v9 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v18 = v9;
      v13 = [WeakRetained cacheAssetURLFromCKRecord:v8 usingAsset:v12 error:&v18];
      v14 = v18;

      if (v13)
      {
        v15 = [*(*(*(a1 + 40) + 8) + 40) URL];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = v9;
    }

    [v11 queued_notifyDownloadCompleted:v15 != 0 error:v14];
  }

  else
  {
    CLSInitLog();
    v16 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "downloadCloudKitPrimaryFileWithCompletion PDFileSyncAgent was released", buf, 2u);
    }

    v15 = 0;
    v14 = v9;
  }

  CLSInitLog();
  v17 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v15;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "downloadCloudKitPrimaryFileWithCompletion returning URL: '%@', error: '%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10005B824(id a1, CKRecordID *a2, double a3)
{
  v4 = a2;
  CLSInitLog();
  v5 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "downloadCloudKitThumbnailWithCompletion progressBlock recordID: '%@', progress: %f%%", &v6, 0x16u);
  }
}

void sub_10005B8EC(id a1, CKRecordID *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  CLSInitLog();
  v6 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "downloadCloudKitThumbnailWithCompletion recordResultBlock recordID: '%@', error: %@", &v7, 0x16u);
  }
}

void sub_10005B9C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  CLSInitLog();
  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "downloadCloudKitThumbnailWithCompletion completionBlock recordID: '%@', error: %@", buf, 0x16u);
  }

  v8 = [v5 firstObject];
  v9 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v18 = v9;
      v13 = [WeakRetained cacheThumbnailAssetURLFromCKRecord:v8 usingAsset:v12 error:&v18];
      v14 = v18;

      if (v13)
      {
        v15 = [*(*(*(a1 + 40) + 8) + 40) thumbnailURL];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = v9;
    }

    [v11 queued_notifyDownloadCompleted:v15 != 0 error:v14];
  }

  else
  {
    CLSInitLog();
    v16 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "downloadCloudKitThumbnailWithCompletion PDFileSyncAgent was released", buf, 2u);
    }

    v15 = 0;
    v14 = v9;
  }

  CLSInitLog();
  v17 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v15;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "downloadCloudKitThumbnailWithCompletion returning URL: '%@', error: '%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10005C180(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  CLSInitLog();
  v6 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "streamAsset progressBlock recordID: '%@', progress: %f", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained queued_notifyDownloadProgressFraction:0 error:a3];
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "downloadCloudKitAssetForAsset PDFileSyncAgent was released", &v10, 2u);
    }
  }
}

void sub_10005C2C0(id a1, CKRecordID *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  CLSInitLog();
  v6 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "streamAsset recordResultBlock recordID: '%@', error: %@", &v7, 0x16u);
  }
}

void sub_10005C394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  CLSInitLog();
  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "streamAsset completionBlock recordID: '%@', error: %@", buf, 0x16u);
  }

  v8 = [v5 firstObject];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"asset"];
      if (v10)
      {
        v11 = [*(*(*(a1 + 48) + 8) + 40) originalFilename];
        v12 = [v10 downloadURLWithFileName:v11];

        v13 = [v10 downloadURLExpiration];
        [*(*(*(a1 + 48) + 8) + 40) setUrlExpirationDate:v13];
        [*(*(*(a1 + 48) + 8) + 40) setURL:v12];

        if (v12)
        {
          v10 = 1;
          [*(*(*(a1 + 48) + 8) + 40) setDownloaded:1];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
    v13 = 0;
LABEL_13:
    if ([*(a1 + 32) updateAssetIfExists:*(*(*(a1 + 48) + 8) + 40)])
    {
      [*(*(*(a1 + 48) + 8) + 40) setModified:0];
    }

    else
    {
      CLSInitLog();
      v15 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        v18 = *(*(*(a1 + 48) + 8) + 40);
        v17 = v15;
        v19 = [v18 objectID];
        *buf = 138412290;
        v21 = v19;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "streamAsset completionBlock not able to update CLSAsset with streaming URL and expiration date for asset '%@'", buf, 0xCu);
      }
    }

    [WeakRetained queued_notifyDownloadCompleted:v10 error:v6];
    goto LABEL_18;
  }

  CLSInitLog();
  v14 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "downloadCloudKitAssetForAsset PDFileSyncAgent was released", buf, 2u);
  }

  v13 = 0;
  v12 = 0;
LABEL_18:
  CLSInitLog();
  v16 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "fetchCloudKitStreamingURLWithCompletion returning URL: '%@', expirationDate: %@, error: '%{public}@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10005D730(char *a1, void *a2)
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
        LOBYTE(v21) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 200)
        {
          switch(v13)
          {
            case 0xC9:
              v16 = objc_alloc_init(PDDPAsset);
              v17 = 32;
              goto LABEL_50;
            case 0xCA:
              v16 = objc_alloc_init(PDDPAsset);
              v17 = 40;
              goto LABEL_50;
            case 0x12C:
              v16 = objc_alloc_init(PDDPMapEntry);
              [a1 addInfoDict:v16];
              v21 = 0;
              v22 = 0;
              if (!PBReaderPlaceMark() || !sub_10011D2D0(v16, a2))
              {
LABEL_59:

                return 0;
              }

LABEL_52:
              PBReaderRecallMark();
LABEL_53:

              goto LABEL_54;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              v15 = 24;
              goto LABEL_44;
            case 0x64:
              v14 = PBReaderReadString();
              v15 = 80;
              goto LABEL_44;
            case 0xC8:
              v16 = objc_alloc_init(PDDPAsset);
              v17 = 88;
LABEL_50:
              objc_storeStrong(&a1[v17], v16);
              v21 = 0;
              v22 = 0;
              if (!PBReaderPlaceMark() || !sub_100145E58(v16, a2))
              {
                goto LABEL_59;
              }

              goto LABEL_52;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 72;
            goto LABEL_44;
          case 5:
            v16 = objc_alloc_init(PDDPDate);
            v18 = 8;
            goto LABEL_46;
          case 6:
            v16 = objc_alloc_init(PDDPDate);
            v18 = 16;
LABEL_46:
            objc_storeStrong(&a1[v18], v16);
            v21 = 0;
            v22 = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
            {
              goto LABEL_59;
            }

            goto LABEL_52;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_44;
          case 2:
            v14 = PBReaderReadString();
            v15 = 96;
            goto LABEL_44;
          case 3:
            v14 = PBReaderReadString();
            v15 = 56;
LABEL_44:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
            goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10005EA5C(id a1)
{
  v1 = objc_alloc_init(NSDateComponents);
  v2 = qword_10024D958;
  qword_10024D958 = v1;

  v3 = sub_10010AF7C(PDUtil, @"CLSHandoutPastDueSummaryNotificationHour");
  v4 = sub_10010AF7C(PDUtil, @"CLSHandoutPastDueSummaryNotificationDay");
  if (v3 == -1)
  {
    v5 = 16;
  }

  else
  {
    v5 = v3;
  }

  [qword_10024D958 setHour:v5];
  if (v4 == -1)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4;
  }

  v7 = qword_10024D958;

  [v7 setWeekday:v6];
}

void sub_100060328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100060340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100060358(uint64_t a1)
{
  CLSInitLog();
  v2 = [*(a1 + 32) logSubsystem];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 operationID];
    v8 = [*(a1 + 40) count];
    *buf = 138543874;
    v41 = v4;
    v42 = 2114;
    v43 = v7;
    v44 = 2048;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ processing response with %lu payload items", buf, 0x20u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v35 + 1) + 8 * v13);
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
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (*(*(a1 + 32) + 226) == 1)
  {
    CLSInitLog();
    v18 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [v21 operationID];
      v24 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v41 = v20;
      v42 = 2114;
      v43 = v23;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ response processing terminated by failed status. error:%@", buf, 0x20u);
    }
  }

  v25 = +[PDUserDefaults sharedDefaults];
  v26 = [v25 enableVerboseLogging];

  if (v26)
  {
    CLSInitLog();
    v27 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v30 = objc_opt_class();
      v31 = *(a1 + 32);
      v32 = v30;
      v33 = [v31 operationID];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v33;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ response processing complete.", buf, 0x16u);
    }
  }

  return 1;
}

id sub_100061610(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = objc_opt_class();
  v4 = [*(a1 + 40) objectID];
  v8[0] = v4;
  v8[1] = &off_10021B618;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [v2 deleteAll:v3 where:@"objectID = ? and state = ?" bindings:v5];

  return v6;
}

id sub_1000619C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v12 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100061AF0;
  v8[3] = &unk_1002037C0;
  v5 = *(a1 + 48);
  v11 = *(a1 + 56);
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = [v2 selectAll:v3 where:@"referenceObjectID = ?" bindings:v4 block:v8];

  return v6;
}

void sub_100061AF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setType:v3];
  [v4 setReferenceObjectID:*(a1 + 32)];
  [*(a1 + 40) updateObject:v4];
}

void sub_100064464(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

void sub_100064EDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

void sub_1000650C0(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 contextPath];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 objectID];
    [v5 _setAuthorizationForAttachmentWithObjectID:v6 shouldAuthorize:0];
  }
}

id sub_10006571C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v2 deleteAll:v3 where:@"objectID = ?" bindings:v4];

  return v5;
}

void sub_100065E18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

void sub_100066418(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 state] == 1)
  {
    v3 = v7;
    v4 = 32;
  }

  else
  {
    if ([v7 state] != 2)
    {
      goto LABEL_6;
    }

    v3 = v7;
    v4 = 40;
  }

  v5 = *(a1 + v4);
  v6 = [v3 objectID];
  [v5 addObject:v6];

LABEL_6:
}

id sub_1000664AC(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = a1[5];
  v5 = a1[6];

  return [v2 deleteAll:v3 where:v4 bindings:v5];
}

uint64_t sub_1000678A0(uint64_t a1, void *a2)
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
      LOBYTE(v70[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v70[0] & 0x7F) << v5;
      if ((v70[0] & 0x80) == 0)
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
    switch((v12 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 188) |= 0x20u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v70[0] & 0x7F) << v14;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
LABEL_124:
            v66 = 168;
            goto LABEL_137;
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

        goto LABEL_124;
      case 2u:
        v23 = PBReaderReadString();
        v24 = 120;
        goto LABEL_108;
      case 3u:
        v23 = PBReaderReadString();
        v24 = 160;
        goto LABEL_108;
      case 4u:
        v23 = PBReaderReadString();
        v24 = 136;
        goto LABEL_108;
      case 5u:
        v23 = PBReaderReadString();
        v24 = 176;
        goto LABEL_108;
      case 6u:
        v23 = PBReaderReadString();
        v24 = 16;
        goto LABEL_108;
      case 7u:
        v23 = PBReaderReadString();
        v24 = 40;
        goto LABEL_108;
      case 8u:
        v23 = PBReaderReadString();
        v24 = 32;
        goto LABEL_108;
      case 9u:
      case 0xCu:
      case 0xEu:
      case 0xFu:
        goto LABEL_30;
      case 0xAu:
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addContextPath:v21];
        }

        goto LABEL_111;
      case 0xBu:
        v23 = PBReaderReadString();
        v24 = 128;
        goto LABEL_108;
      case 0xDu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 188) |= 4u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v70[0] & 0x7F) << v52;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v54;
        }

LABEL_132:
        v66 = 112;
        goto LABEL_137;
      case 0x10u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 188) |= 0x80u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v70[0] & 0x7F) << v38;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            LOBYTE(v31) = 0;
            goto LABEL_119;
          }
        }

        v31 = (v40 != 0) & ~[a2 hasError];
LABEL_119:
        v65 = 185;
        goto LABEL_120;
      case 0x11u:
        v23 = PBReaderReadString();
        v24 = 56;
        goto LABEL_108;
      case 0x12u:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 188) |= 0x10u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v70[0] & 0x7F) << v32;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
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
          v20 = v34;
        }

LABEL_117:
        v66 = 148;
        goto LABEL_137;
      case 0x13u:
        v23 = PBReaderReadString();
        v24 = 24;
        goto LABEL_108;
      case 0x14u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 188) |= 8u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v70[0] & 0x7F) << v58;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_136;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v60;
        }

LABEL_136:
        v66 = 144;
        goto LABEL_137;
      case 0x15u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 188) |= 2u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v70[0] & 0x7F) << v46;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_128;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v48;
        }

LABEL_128:
        v66 = 88;
LABEL_137:
        *(a1 + v66) = v20;
        goto LABEL_138;
      case 0x16u:
        v21 = objc_alloc_init(PDDPDate);
        v22 = 104;
        goto LABEL_68;
      case 0x17u:
        v23 = PBReaderReadString();
        v24 = 152;
        goto LABEL_108;
      case 0x18u:
        v23 = PBReaderReadString();
        v24 = 64;
        goto LABEL_108;
      case 0x19u:
        v23 = PBReaderReadString();
        v24 = 80;
LABEL_108:
        v64 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_138;
      case 0x1Au:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 188) |= 0x40u;
        while (1)
        {
          LOBYTE(v70[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v70[0] & 0x7F) << v25;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            LOBYTE(v31) = 0;
            goto LABEL_113;
          }
        }

        v31 = (v27 != 0) & ~[a2 hasError];
LABEL_113:
        v65 = 184;
LABEL_120:
        *(a1 + v65) = v31;
        goto LABEL_138;
      case 0x1Bu:
        *(a1 + 188) |= 1u;
        v70[0] = 0;
        v44 = [a2 position] + 8;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
        {
          v68 = [a2 data];
          [v68 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v70[0];
        goto LABEL_138;
      default:
        if (v13 == 100)
        {
          v21 = PBReaderReadString();
          if (v21)
          {
            [a1 addClassIds:v21];
          }

          goto LABEL_111;
        }

        if (v13 != 101)
        {
LABEL_30:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_138;
        }

        v21 = objc_alloc_init(PDDPDate);
        v22 = 96;
LABEL_68:
        objc_storeStrong((a1 + v22), v21);
        v70[0] = 0;
        v70[1] = 0;
        if (PBReaderPlaceMark() && PDDPDateReadFrom(v21, a2))
        {
          PBReaderRecallMark();
LABEL_111:

LABEL_138:
          v67 = [a2 position];
          if (v67 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
    }
  }
}

uint64_t sub_10006A124()
{
  if (qword_10024D968 != -1)
  {
    dispatch_once(&qword_10024D968, &stru_100203B18);
  }

  v1 = qword_10024D960;

  return __set_user_dir_suffix(v1);
}

void sub_10006A178(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      v4[0] = 67109634;
      v4[1] = v3;
      v5 = 2112;
      v6 = v1;
      v7 = 2112;
      v8 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to get bundleIdentifier errno: %{darwin.errno}d, bundle: %@, bundleIdentifier: %@", v4, 0x1Cu);
    }

    qword_10024D960 = "com.apple.progressd";
  }

  qword_10024D960 = [v2 UTF8String];
}

void sub_10006BD9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (v3[2])
    {
      goto LABEL_9;
    }

    v5 = objc_alloc_init(PDDPDashboardApp);
    v6 = v4[1];
  }

  else
  {
    v5 = objc_alloc_init(PDDPDashboardApp);
    v6 = 0;
  }

  v7 = v6;
  [(PDDPDashboardApp *)v5 setAppIdentifier:v7];

  [*(a1 + 32) addDashboardApps:v5];
  CLSInitLog();
  v8 = [*(a1 + 40) logSubsystem];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = [v11 operationID];
    if (v4)
    {
      v14 = v4[1];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v13;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ request add app: %@", &v16, 0x20u);
  }

LABEL_9:
}

void sub_10006C630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C6B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10006C6D0(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) appIdentifiersInRequest];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138543874;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = sub_100145108([PDDashboardAppRegisterState alloc], v8);
        v10 = v9;
        if (v9)
        {
          v9[2] = 1;
        }

        [*(a1 + 40) updateObject:{v9, v17}];
        CLSInitLog();
        v11 = [*(a1 + 32) logSubsystem];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v13 = objc_opt_class();
          v14 = *(*(*(a1 + 48) + 8) + 40);
          *buf = v17;
          v23 = v13;
          v24 = 2114;
          v25 = v14;
          v26 = 2112;
          v27 = v8;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@:%{public}@ Register done in DB for app: %@", buf, 0x20u);
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v5);
  }

  return 1;
}

uint64_t sub_10006D4BC(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(PDDPDate);
          v15 = 8;
LABEL_30:
          objc_storeStrong((a1 + v15), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(PDDPDate);
          v15 = 16;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v14 = *(a1 + 24);
          *(a1 + 24) = v16;
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PDDPTypedValue);
          objc_storeStrong((a1 + 32), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !sub_100154054(v14, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10006DCEC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DD90;
  block[3] = &unk_100202CA8;
  block[4] = objc_opt_self();
  if (qword_10024D978 != -1)
  {
    dispatch_once(&qword_10024D978, block);
  }

  v0 = qword_10024D970;

  return v0;
}

uint64_t sub_10006DD90(uint64_t a1)
{
  qword_10024D970 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10006DEB8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [a1 schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006DFA8;
    block[3] = &unk_1002029C0;
    objc_copyWeak(&v7, &location);
    v6 = v3;
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_10006DFA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10006E05C;
    v4[3] = &unk_100203B68;
    v5 = *(a1 + 32);
    v3 = objc_retainBlock(v4);
    (v3[2])(v3, WeakRetained);
  }
}

void sub_10006E05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tasks];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  v6 = +[BGSystemTaskScheduler sharedScheduler];
  v7 = [v6 deregisterTaskWithIdentifier:*(a1 + 32)];

  if ((v7 & 1) == 0)
  {
    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to remove BGSystemTask with identifier %@", &v15, 0xCu);
    }
  }

  CLSInitLog();
  v9 = CLSLogDefault;
  v10 = os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v15 = 138412290;
      v16 = v11;
    }

    v12 = [v3 tasks];
    [v12 removeObjectForKey:*(a1 + 32)];
  }

  else if (v10)
  {
    v13 = *(a1 + 32);
    v15 = 138412290;
    v16 = v13;
  }
}

void sub_10006E4A0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    CLSInitLog();
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v6 = v4;
      v7 = [v3 identifier];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v7;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Attempting to schedule task '%@'", location, 0xCu);
    }

    objc_initWeak(location, a1);
    v5 = [a1 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006E63C;
    v8[3] = &unk_1002029C0;
    objc_copyWeak(&v10, location);
    v9 = v3;
    dispatch_async(v5, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }
}

void sub_10006E63C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10006E6F0;
    v4[3] = &unk_100203B68;
    v5 = *(a1 + 32);
    v3 = objc_retainBlock(v4);
    (v3[2])(v3, WeakRetained);
  }
}

void sub_10006E6F0(uint64_t a1, void *a2)
{
  [a2 createTaskSchedulerRegistration:*(a1 + 32)];
  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) isRepeating];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 taskRequestForIdentifier:v6];

  CLSInitLog();
  v8 = CLSLogDefault;
  v9 = os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG);
  if (!v7)
  {
    if (v4)
    {
      if (v9)
      {
        v33 = *(a1 + 32);
        v34 = v8;
        v35 = [v33 identifier];
        *buf = 138412290;
        v42 = v35;
        _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Scheduling repeating task: '%@'", buf, 0xCu);
      }

      v13 = [BGRepeatingSystemTaskRequest alloc];
      v14 = [*(a1 + 32) identifier];
      v7 = [v13 initWithIdentifier:v14];

      [v7 setInterval:{objc_msgSend(*(a1 + 32), "delay")}];
      v15 = *(a1 + 32);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) gracePeriod])
      {
        [v7 setMinDurationBetweenInstances:{(objc_msgSend(*(a1 + 32), "delay") - objc_msgSend(*(a1 + 32), "gracePeriod"))}];
      }
    }

    else
    {
      if (v9)
      {
        v36 = *(a1 + 32);
        v37 = v8;
        v38 = [v36 identifier];
        *buf = 138412290;
        v42 = v38;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Scheduling non-repeating task: '%@'", buf, 0xCu);
      }

      v16 = [BGNonRepeatingSystemTaskRequest alloc];
      v17 = [*(a1 + 32) identifier];
      v7 = [v16 initWithIdentifier:v17];

      [v7 setScheduleAfter:{objc_msgSend(*(a1 + 32), "delay")}];
      v18 = *(a1 + 32);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) gracePeriod])
      {
        [v7 setTrySchedulingBefore:{(objc_msgSend(*(a1 + 32), "delay") + objc_msgSend(*(a1 + 32), "gracePeriod"))}];
      }
    }

    v19 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      v20 = [*(a1 + 32) requiredNetworkState];
      if (v20 == 2)
      {
        [v7 setRequiresInexpensiveNetworkConnectivity:1];
      }

      else if (v20 == 1)
      {
        [v7 setRequiresNetworkConnectivity:1];
      }
    }

    v21 = [*(a1 + 32) priority];
    if (v21)
    {
      if (v21 != 1)
      {
        goto LABEL_28;
      }

      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [v7 setPriority:v22];
LABEL_28:
    v23 = +[BGSystemTaskScheduler sharedScheduler];
    v40 = 0;
    v24 = [v23 submitTaskRequest:v7 error:&v40];
    v11 = v40;

    CLSInitLog();
    v25 = CLSLogDefault;
    v26 = os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG);
    if (v24)
    {
      if (!v26)
      {
        goto LABEL_32;
      }

      v27 = *(a1 + 32);
      v28 = v25;
      v29 = [v27 identifier];
      *buf = 138412290;
      v42 = v29;
      v30 = "Successfully submitted task '%@'";
      v31 = v28;
      v32 = 12;
    }

    else
    {
      if (!v26)
      {
        goto LABEL_32;
      }

      v39 = *(a1 + 32);
      v28 = v25;
      v29 = [v39 identifier];
      *buf = 138412546;
      v42 = v29;
      v43 = 2112;
      v44 = v11;
      v30 = "Failed to submit task '%@' with error: %@";
      v31 = v28;
      v32 = 22;
    }

    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, v30, buf, v32);

    goto LABEL_32;
  }

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = v8;
    v12 = [v10 identifier];
    *buf = 138412290;
    v42 = v12;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Task to schedule already exists: '%@'", buf, 0xCu);

LABEL_32:
  }
}

void sub_10006EF18(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Task expirationHandler called '%@'", &v6, 0xCu);
  }
}

void sub_10006F288(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.taskScheduler", attr, v2);
  v4 = qword_10024D980;
  qword_10024D980 = v3;
}

void *sub_10006F334(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PDAllowedHost;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 lowercaseString];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

uint64_t sub_10006F644(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6 = objc_opt_class();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006F748;
    v8[3] = &unk_100203C18;
    v9 = v4;
    v10 = &v11;
    [a1 selectAll:v6 block:v8];
    v5 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return v5 & 1;
}

void sub_10006F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006F748(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v12 = v5;
  if (v5)
  {
    v6 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) hasSuffix:v6];
  v8 = v12;
  if (v7)
  {
    if (v12)
    {
      v9 = v12[1];
    }

    else
    {
      v9 = 0;
    }

    v7 = [*(a1 + 32) rangeOfString:v9];
    if (v7)
    {
      v7 = [*(a1 + 32) characterAtIndex:v7 - 1];
      v10 = v7 == 46;
    }

    else
    {
      v10 = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v10;
    v8 = v12;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return _objc_release_x1(v7, v8);
}

id sub_10006FEFC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006FFEC;
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

void sub_10006FFEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000700E4;
  v4[3] = &unk_1002031B0;
  v5 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct classID from CLSHandoutRecipient as R join CLSHandoutAttachment as A on R.parentObjectID = A.parentObjectID join CLSSurvey as S on S.parentObjectID = A.objectID join CLSQuestionStep as QS on QS.parentObjectID = S.objectID and QS.objectID = ?", 1, v3, v4);
}

void sub_1000700E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"classID");
  [*(a1 + 32) addObject:v3];
}

id sub_100070148(id a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000703B8;
    v22 = sub_1000703C8;
    v23 = 0;
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100070498;
        v12[3] = &unk_100202888;
        v14 = &v18;
        v12[4] = a1;
        v13 = v5;
        sub_10010BE68(a1, v12);

        goto LABEL_11;
      }

      if (a2 != 4)
      {
LABEL_11:
        a1 = v19[5];
        _Block_object_dispose(&v18, 8);

        goto LABEL_12;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v7 = objc_opt_class();
        v24 = v6;
        v8 = [NSArray arrayWithObjects:&v24 count:1];
        v9 = [a1 select:v7 where:@"parentObjectID = ?" bindings:v8];
        v10 = v19[5];
        v19[5] = v9;

        goto LABEL_11;
      }

      if (a2 != 2)
      {
        goto LABEL_11;
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000703D0;
    v15[3] = &unk_100202888;
    v17 = &v18;
    v15[4] = a1;
    v16 = v5;
    sub_10010BE68(a1, v15);

    goto LABEL_11;
  }

LABEL_12:

  return a1;
}

uint64_t sub_1000703B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000703D0(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v8 = a1[5];
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [v2 select:v3 where:@"parentObjectID = ?" bindings:v4];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100070498(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v8 = a1[5];
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [v2 select:v3 where:@"parentObjectID = ?" bindings:v4];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id sub_100070560(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000703B8;
    v13 = sub_1000703C8;
    v14 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007068C;
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

void sub_100070674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007068C(void *a1)
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

void *sub_100070754(void *a1, void *a2)
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
    v6[2] = sub_100070840;
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

void sub_100070828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100070840(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007092C;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  sub_1000B9298(v2, @"select CS.state from CLSCollaborationState as CS join CLSHandoutAttachment as HA on HA.parentObjectID = CS.parentObjectID join CLSSurvey as S on S.parentObjectID = HA.objectID join CLSQuestionStep as QS on QS.parentObjectID = S.objectID and QS.objectID = ?", 1, v3, v4);
}

void sub_10007092C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"state");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

uint64_t sub_10007116C(void *a1)
{
  if (a1)
  {
    v1 = sub_100043B24(a1);
    if (v1)
    {
      v2 = v1[8];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000711B4(void *a1)
{
  if (a1)
  {
    v1 = sub_100043B24(a1);
    if (v1)
    {
      v2 = v1[11];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_1000711FC(void *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = objc_getAssociatedObject(a1, off_100203C38);
    if (!v2)
    {
      v3 = sub_1000712CC(a1);
      if (v3)
      {
        v2 = [a1 select:objc_opt_class() identity:v3];
        if (v2)
        {
          objc_setAssociatedObject(a1, off_100203C38, v2, 1);
        }
      }

      else
      {
        v2 = 0;
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

id sub_1000712CC(void *a1)
{
  if (a1)
  {
    a1 = sub_10016A49C(a1, @"currentUserPersonID");
    v1 = vars8;
  }

  return a1;
}

id sub_1000716B8(void *a1)
{
  if (a1)
  {
    a1 = sub_10016A49C(a1, @"currentUserOrganizationID");
    v1 = vars8;
  }

  return a1;
}

id sub_1000716F0(id result, void *a2)
{
  if (result)
  {
    return sub_10016A3F0(result, a2, @"currentUserOrganizationID");
  }

  return result;
}

id sub_100071704(void *a1)
{
  if (a1)
  {
    a1 = sub_10016A49C(a1, @"currentUserOrganizationName");
    v1 = vars8;
  }

  return a1;
}

id sub_10007173C(id result, void *a2)
{
  if (result)
  {
    return sub_10016A3F0(result, a2, @"currentUserOrganizationName");
  }

  return result;
}

void *sub_100071750(void *result)
{
  if (result)
  {
    return sub_100169FD0(result, @"currentUserOrganizationProgressTrackingAllowed");
  }

  return result;
}

id sub_100071764(id result, BOOL a2)
{
  if (result)
  {
    return sub_100169F38(result, a2, @"currentUserOrganizationProgressTrackingAllowed");
  }

  return result;
}

void *sub_100071778(void *result)
{
  if (result)
  {
    return sub_100169FD0(result, @"currentUserPersonMaidAnalyticsEnabled");
  }

  return result;
}

id sub_10007178C(id result, BOOL a2)
{
  if (result)
  {
    return sub_100169F38(result, a2, @"currentUserPersonMaidAnalyticsEnabled");
  }

  return result;
}

uint64_t sub_1000717A0(void *a1)
{
  if (a1)
  {
    v1 = sub_1000BA854(a1);
    if (v1)
    {
      v2 = v1[11];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_1000717E8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1000718DC(a1);
  [a1 lock];
  if (v2)
  {
    v3 = [CLSCurrentUser userRolesFromUserLocationIDsByAXMRoleType:v2];
  }

  else
  {
    v4 = objc_getAssociatedObject(a1, off_100203C40);
    v5 = v4;
    if (v4)
    {
      v3 = [v4 integerValue];
    }

    else
    {
      v3 = sub_10016A160(a1, @"currentUserRole");
      v6 = [NSNumber numberWithUnsignedInteger:v3];
      objc_setAssociatedObject(a1, off_100203C40, v6, 1);
    }
  }

  [a1 unlock];

  return v3;
}

id sub_1000718DC(void *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = objc_getAssociatedObject(a1, off_100203C48);
    if (!v2)
    {
      v3 = objc_opt_class();
      v4 = objc_opt_class();
      v5 = objc_opt_class();
      v6 = [NSSet setWithObjects:v3, v4, v5, objc_opt_class(), 0];
      v2 = sub_10016A838(a1, @"currentUserLocationIDsByRoleType", v6);

      objc_setAssociatedObject(a1, off_100203C48, v2, 1);
    }

    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10007216C(uint64_t a1, void *a2)
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
            v17 = 40;
            goto LABEL_29;
          case 5:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 24;
            goto LABEL_42;
          case 0x64:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addClassIds:v14];
            }

            goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 32;
LABEL_29:
            v18 = *(a1 + v17);
            *(a1 + v17) = v16;

            goto LABEL_50;
          case 2:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v28[0] & 0x7F) << v19;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_49;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_49:
            *(a1 + 48) = v25;
            goto LABEL_50;
          case 3:
            v14 = objc_alloc_init(PDDPDate);
            v15 = 16;
LABEL_42:
            objc_storeStrong((a1 + v15), v14);
            v28[0] = 0;
            v28[1] = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
LABEL_45:

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

id *sub_100073110(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PDPool;
    v10 = objc_msgSendSuper2(&v14, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 3, v9);
      objc_storeStrong(a1 + 4, a2);
      a1[5] = a3;
      v11 = [[NSMutableArray alloc] initWithCapacity:a1[5]];
      v12 = a1[1];
      a1[1] = v11;
    }
  }

  return a1;
}

id sub_1000731E4(uint64_t a1)
{
  if (!a1)
  {
LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  [a1 lock];
  if ([*(a1 + 8) count])
  {
    v2 = [*(a1 + 8) objectAtIndexedSubscript:0];
    [*(a1 + 8) removeObjectAtIndex:0];
    if (v2)
    {
      [a1 unlock];
      goto LABEL_9;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v2 = [WeakRetained poolItemForPool:a1];

  [a1 unlock];
  if (!v2)
  {
    CLSInitLog();
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      v7 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to acquire item from the pool (%@)", &v8, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v2;
}

void sub_100073330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      [a1 lock];
      if ([*(a1 + 8) count] >= *(a1 + 40))
      {
        CLSInitLog();
        v9 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          *v13 = 134218498;
          *&v13[4] = v4;
          *&v13[12] = 2112;
          *&v13[14] = v10;
          *&v13[22] = 2048;
          v14 = v11;
          v12 = v9;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Not adding to item (%p) because the pool (%@) is full (%ld)", v13, 0x20u);
        }

        [v4 pd_close];
      }

      else
      {
        [*(a1 + 8) addObject:v4];
      }

      [a1 unlock];
    }

    else
    {
      CLSInitLog();
      v5 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = v6;
        v8 = v5;
        *v13 = 134218498;
        *&v13[4] = 0;
        *&v13[12] = 2112;
        *&v13[14] = v6;
        *&v13[22] = 2112;
        v14 = objc_opt_class();
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to release item (%p) from pool (%@) of class '%@'", v13, 0x20u);
      }
    }
  }
}

id sub_1000734F4(id result)
{
  if (result)
  {
    v1 = result;
    [result lock];
    CLSInitLog();
    v2 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v1 + 4);
      *buf = 138412290;
      v16 = v8;
      v9 = v2;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "removing all items in the pool (%@)", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(v1 + 1);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7) pd_close];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [*(v1 + 1) removeAllObjects];
    return [v1 unlock];
  }

  return result;
}

id sub_100073D94(uint64_t a1, int a2)
{
  if (*(a1 + 12) <= a2)
  {
    objc_exception_throw(@"bork");
  }

  if (sqlite3_column_type(*a1, *(a1 + 8) + a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(*a1, *(a1 + 8) + a2)}];
  }

  return v4;
}

unsigned __int8 *sub_100073E30(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*a1, *(a1 + 8) + a2);
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      if (sqlite3_column_type(*a1, *(a1 + 8) + a2) == 5)
      {
        v5 = 0;
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = sqlite3_column_blob(*a1, v6 + a2);
        v5 = [[NSData alloc] initWithBytes:v7 length:{sqlite3_column_bytes(*a1, v6 + a2)}];
      }
    }

    else if (v4 == 3)
    {
      v5 = sqlite3_column_text(*a1, *(a1 + 8) + a2);
      if (v5)
      {
        v5 = [[NSString alloc] initWithUTF8String:v5];
      }
    }
  }

  else if (v4 == 1)
  {
    v5 = [[NSNumber alloc] initWithLongLong:{sqlite3_column_int64(*a1, *(a1 + 8) + a2)}];
  }

  else if (v4 == 2)
  {
    v5 = [[NSNumber alloc] initWithDouble:{sqlite3_column_double(*a1, *(a1 + 8) + a2)}];
  }

  return v5;
}

uint64_t PDSQLiteColumnWithName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100073FEC(a1, [v3 UTF8String]);

  return v4;
}

uint64_t sub_100073FEC(uint64_t a1, const char *a2)
{
  v8 = a2;
  if (!*(a1 + 40))
  {
    v7 = 0;
    if (*(a1 + 12) >= 1)
    {
      v3 = 0;
      do
      {
        v6 = sqlite3_column_name(*a1, v3);
        sub_10004B3DC((a1 + 16), &v6);
        v3 = v7 + 1;
        v7 = v3;
      }

      while (v3 < *(a1 + 12));
    }
  }

  v4 = sub_100074090((a1 + 16), &v8);
  if (v4)
  {
    return (*(v4 + 6) - *(a1 + 8));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t **sub_100074090(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (1025 * (v4 + v3)) ^ ((1025 * (v4 + v3)) >> 6);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 9 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = 32769 * (v7 ^ (v7 >> 11));
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = 32769 * (v7 ^ (v7 >> 11));
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = v9 & (*&v8 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (i = *v13; i; i = *i)
  {
    v15 = i[1];
    if (v15 == v9)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= *&v8)
        {
          v15 %= *&v8;
        }
      }

      else
      {
        v15 &= *&v8 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_1000747C4(uint64_t a1, void *a2)
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
        v65 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65 & 0x7F) << v5;
        if ((v65 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = PBReaderReadString();
          v29 = 8;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_97;
          }

          v28 = PBReaderReadString();
          v29 = 40;
        }

LABEL_96:
        v60 = *(a1 + v29);
        *(a1 + v29) = v28;

        goto LABEL_121;
      }

      switch(v13)
      {
        case 3:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v68 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v68 & 0x7F) << v42;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_106;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v44;
          }

LABEL_106:
          v63 = 20;
          break;
        case 4:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            v67 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v67 & 0x7F) << v54;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v56;
          }

LABEL_119:
          v63 = 16;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v66 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v66 & 0x7F) << v14;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_112;
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

LABEL_112:
          v63 = 24;
          break;
        default:
          goto LABEL_97;
      }

      *(a1 + v63) = v20;
LABEL_121:
      v64 = [a2 position];
      if (v64 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 52) |= 0x40u;
        while (1)
        {
          v72 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v72 & 0x7F) << v36;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_102;
          }
        }

        v27 = (v38 != 0) & ~[a2 hasError];
LABEL_102:
        v62 = 51;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_97:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_121;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 52) |= 0x10u;
        while (1)
        {
          v71 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v71 & 0x7F) << v30;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_100;
          }
        }

        v27 = (v32 != 0) & ~[a2 hasError];
LABEL_100:
        v62 = 49;
      }

      goto LABEL_115;
    }

    if (v13 == 8)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      *(a1 + 52) |= 0x20u;
      while (1)
      {
        v70 = 0;
        v51 = [a2 position] + 1;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v50 |= (v70 & 0x7F) << v48;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v11 = v49++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_108;
        }
      }

      v27 = (v50 != 0) & ~[a2 hasError];
LABEL_108:
      v62 = 50;
LABEL_115:
      *(a1 + v62) = v27;
      goto LABEL_121;
    }

    if (v13 != 9)
    {
      if (v13 != 10)
      {
        goto LABEL_97;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 52) |= 8u;
      while (1)
      {
        v69 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v69 & 0x7F) << v21;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_114;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_114:
      v62 = 48;
      goto LABEL_115;
    }

    v28 = PBReaderReadString();
    v29 = 32;
    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

id sub_1000765A0(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100076688;
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

void sub_100076688(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100076818;
  v8[3] = &unk_1002031B0;
  v9 = *(a1 + 48);
  sub_1000B9298(v2, @"select distinct personID from CLSClassMember where parentObjectID = ?", 1, v3, v8);

  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007687C;
  v6[3] = &unk_1002031B0;
  v7 = *(a1 + 48);
  sub_1000B9298(v4, @"select distinct personID from CLSClassMember where parentObjectID != ?", 1, v5, v6);
}

void sub_100076818(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"personID");
  [v2 addObject:v3];
}

void sub_10007687C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"personID");
  [v2 removeObject:v3];
}

uint64_t sub_100079378(uint64_t a1, void *a2)
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
          v22 = PBReaderReadString();
          v23 = *(a1 + 24);
          *(a1 + 24) = v22;

          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v26 & 0x7F) << v15;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_43:
          *(a1 + 8) = v21;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(PDDPEERequestZone);
          objc_storeStrong((a1 + 32), v14);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !sub_100147AF4(v14, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PDDPSearchQuery);
          objc_storeStrong((a1 + 16), v14);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !sub_100116240(v14, a2))
          {
            goto LABEL_46;
          }

LABEL_38:
          PBReaderRecallMark();

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

uint64_t sub_10007A824(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
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
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v33) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v33 & 0x7F) << v24;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_57:
          v30 = 8;
          goto LABEL_58;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 24);
          *(a1 + 24) = v15;

          goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(PDDPProgressEntity);
            objc_storeStrong((a1 + 32), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !sub_10007E7D0(v14, a2))
            {
LABEL_61:

              return 0;
            }

            goto LABEL_29;
          case 4:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33 & 0x7F) << v17;
              if ((v33 & 0x80) == 0)
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
            v30 = 40;
LABEL_58:
            *(a1 + v30) = v23;
            goto LABEL_59;
          case 5:
            v14 = objc_alloc_init(PDDPHandoutAuthorizedMetaInfo);
            [a1 addHandoutAuthorizedMetaInfo:v14];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !sub_100174704(v14, a2))
            {
              goto LABEL_61;
            }

LABEL_29:
            PBReaderRecallMark();

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10007BA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BA64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10007BA7C(uint64_t a1)
{
  v1 = a1;
  [*(a1 + 32) cleanupAssociatedObjects];
  if ([*(v1 + 40) hasStatus])
  {
    v2 = *(v1 + 48);
    v3 = [*(v1 + 40) status];
    v4 = sub_100105CA4(v3);
    [v2 handleServerAlerts:v4];

    v5 = [*(v1 + 40) status];
    v6 = sub_1001055FC(v5, 0);
    v7 = *(*(v1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(v1 + 56) + 8) + 40))
    {
      [*(v1 + 48) setResponseStatusError:?];
      return 0;
    }
  }

  v9 = *(v1 + 48);
  if (v9)
  {
    v10 = [v9 database];
    v11 = [v10 select:objc_opt_class() identity:@"asmRefreshRequested"];

    if (v11)
    {
      v12 = v11[16];

      if (v12)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = [*(v1 + 40) serviceConfig];
  v14 = [v13 disableRosterSync];

  if (v14)
  {
LABEL_8:
    sub_1000504A8(*(v1 + 32));
  }

  v155 = v1;
  if (![*(v1 + 40) hasUserInfo])
  {
    v18 = 1;
    goto LABEL_80;
  }

  v15 = [*(v1 + 40) userInfo];
  v16 = [v15 hasIsEduUser];

  if (v16)
  {
    v17 = [*(v1 + 40) userInfo];
    v18 = [v17 isEduUser];
  }

  else
  {
    v18 = 1;
  }

  CLSInitLog();
  v19 = [*(v1 + 48) logSubsystem];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v125 = *(v1 + 48);
    v126 = objc_opt_class();
    v127 = *(v1 + 48);
    v128 = v126;
    v129 = [v127 operationID];
    v130 = [*(v1 + 40) userInfo];
    v131 = [v130 dictionaryRepresentation];
    *v195 = 138543874;
    v196 = v126;
    v197 = 2114;
    v198 = v129;
    v199 = 2112;
    v200 = v131;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response userinfo: %@", v195, 0x20u);
  }

  v20 = *(v1 + 48);
  v21 = [*(v1 + 40) userInfo];
  v22 = v21;
  if (v20)
  {
    if ([v21 hasUserInfo] && (objc_msgSend(v22, "userInfo"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hasPerson"), v23, (v24 & 1) != 0))
    {
      v25 = [v22 userInfo];
      v26 = [v25 person];
      if ([v26 hasPersonId])
      {
        v27 = [v22 userInfo];
        v28 = [v27 person];
        [v28 personId];
        v29 = v147 = v22;
        v30 = [v29 length];

        v22 = v147;
        if (v30)
        {
          v145 = v18;
          v146 = [v20 database];
          v31 = objc_opt_new();
          v32 = objc_opt_new();
          v33 = [v147 privileges];

          if (v33)
          {
            v174 = 0u;
            v175 = 0u;
            v172 = 0u;
            v173 = 0u;
            v34 = [v147 privileges];
            v35 = [v34 countByEnumeratingWithState:&v172 objects:v195 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v173;
              do
              {
                for (i = 0; i != v36; i = i + 1)
                {
                  if (*v173 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [*(*(&v172 + 1) + 8 * i) locationIds];
                  [v32 addObjectsFromArray:v39];
                }

                v36 = [v34 countByEnumeratingWithState:&v172 objects:v195 count:16];
              }

              while (v36);
            }
          }

          v40 = [v147 locations];

          v41 = &CLSLogAsset_ptr;
          v150 = v32;
          v151 = v31;
          if (v40)
          {
            v42 = objc_alloc_init(NSMutableArray);
            v168 = 0u;
            v169 = 0u;
            v170 = 0u;
            v171 = 0u;
            v43 = [v147 locations];
            v44 = [v43 countByEnumeratingWithState:&v168 objects:v194 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v169;
              v149 = v43;
              do
              {
                for (j = 0; j != v45; j = j + 1)
                {
                  if (*v169 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = sub_100085C14(*(*(&v168 + 1) + 8 * j));
                  CLSInitLog();
                  v49 = [v20 logSubsystem];
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v51 = objc_opt_class();
                    obja = v51;
                    v52 = [v20 operationID];
                    v53 = [v48 dictionaryRepresentation];
                    *buf = 138543874;
                    v189 = v51;
                    v43 = v149;
                    v190 = 2114;
                    v191 = v52;
                    v192 = 2112;
                    v193 = v53;
                    _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response location: %@", buf, 0x20u);

                    v31 = v151;
                  }

                  [v42 addObject:v48];
                  v50 = [v48 objectID];
                  [v31 addObject:v50];
                }

                v45 = [v43 countByEnumeratingWithState:&v168 objects:v194 count:16];
              }

              while (v45);
            }

            v32 = v150;
            if (([v146 insertOrUpdateObjects:v42] & 1) == 0)
            {
              CLSInitLog();
              v54 = [v20 logSubsystem];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = objc_opt_class();
                v56 = v55;
                v57 = [v20 operationID];
                *buf = 138543875;
                v189 = v55;
                v190 = 2114;
                v191 = v57;
                v192 = 2113;
                v193 = v42;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{private}@.", buf, 0x20u);

                v31 = v151;
              }
            }

            v22 = v147;
            v41 = &CLSLogAsset_ptr;
          }

          v58 = [v22 roles];

          if (v58)
          {
            v166 = 0u;
            v167 = 0u;
            v164 = 0u;
            v165 = 0u;
            obj = [v147 roles];
            v59 = [obj countByEnumeratingWithState:&v164 objects:buf count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v165;
              do
              {
                for (k = 0; k != v60; k = k + 1)
                {
                  if (*v165 != v61)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v63 = *(*(&v164 + 1) + 8 * k);
                  v64 = sub_100085D1C(v63);
                  v65 = sub_100085F78(v63);
                  [v32 unionSet:v65];

                  CLSInitLog();
                  v66 = [v20 logSubsystem];
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                  {
                    v71 = objc_opt_class();
                    v148 = v71;
                    v72 = [v20 operationID];
                    v73 = [v64 dictionaryRepresentation];
                    *v182 = 138543874;
                    v183 = v71;
                    v184 = 2114;
                    v185 = v72;
                    v186 = 2112;
                    v187 = v73;
                    _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response role: %@", v182, 0x20u);

                    v31 = v151;
                    v32 = v150;
                  }

                  if ((sub_100050F94(v146, v64) & 1) == 0)
                  {
                    CLSInitLog();
                    v67 = [v20 logSubsystem];
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                    {
                      v68 = objc_opt_class();
                      v69 = v68;
                      v70 = [v20 operationID];
                      *v182 = 138543874;
                      v183 = v68;
                      v184 = 2114;
                      v185 = v70;
                      v186 = 2114;
                      v187 = v64;
                      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{public}@.", v182, 0x20u);

                      v32 = v150;
                      v31 = v151;
                    }
                  }
                }

                v60 = [obj countByEnumeratingWithState:&v164 objects:buf count:16];
              }

              while (v60);
            }

            v41 = &CLSLogAsset_ptr;
          }

          [v32 minusSet:v31];
          v74 = objc_alloc_init(v41[213]);
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v75 = v32;
          v76 = [v75 countByEnumeratingWithState:&v160 objects:v182 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v161;
            do
            {
              for (m = 0; m != v77; m = m + 1)
              {
                if (*v161 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v160 + 1) + 8 * m);
                v81 = [[CLSLocation alloc] _init];
                [v81 setObjectID:v80];
                [v74 addObject:v81];
              }

              v77 = [v75 countByEnumeratingWithState:&v160 objects:v182 count:16];
            }

            while (v77);
          }

          v1 = v155;
          v18 = v145;
          if (([v146 insertOrUpdateObjects:v74] & 1) == 0)
          {
            CLSInitLog();
            v82 = [v20 logSubsystem];
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              v83 = objc_opt_class();
              v84 = v83;
              v85 = [v20 operationID];
              *v178 = 138543875;
              *&v178[4] = v83;
              *&v178[12] = 2114;
              *&v178[14] = v85;
              *&v178[22] = 2113;
              v179 = v74;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{private}@.", v178, 0x20u);
            }
          }

          *v178 = _NSConcreteStackBlock;
          *&v178[8] = 3221225472;
          *&v178[16] = sub_10007CB5C;
          v179 = &unk_100202140;
          v180 = v147;
          v86 = v146;
          v87 = v86;
          v181 = v86;
          if (v86 && ([v86 performTransaction:v178 forWriting:1] & 1) != 0)
          {
            v88 = 0;
          }

          else
          {
            v88 = [NSError cls_createErrorWithCode:100 description:@"Save ASM UserInfo failed."];
          }

          v91 = v88;

          v22 = v147;
          goto LABEL_78;
        }
      }

      else
      {
      }

      CLSInitLog();
      v124 = [v20 logSubsystem];
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        v142 = objc_opt_class();
        v143 = v142;
        v144 = [v20 operationID];
        *v195 = 138543618;
        v196 = v142;
        v197 = 2114;
        v198 = v144;
        _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Bootstrap response was missing personID!", v195, 0x16u);
      }

      v90 = @"Bootstrap response was missing personID.";
    }

    else
    {
      CLSInitLog();
      v89 = [v20 logSubsystem];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        v132 = objc_opt_class();
        v133 = v132;
        v134 = [v20 operationID];
        *v195 = 138543618;
        v196 = v132;
        v197 = 2114;
        v198 = v134;
        _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Bootstrap response was missing UserInfo!", v195, 0x16u);
      }

      v90 = @"Bootstrap response was missing UserInfo.";
    }

    v91 = [NSError cls_createErrorWithCode:303 description:v90];
LABEL_78:

    goto LABEL_79;
  }

  v91 = 0;
LABEL_79:

  v92 = *(*(v1 + 56) + 8);
  v93 = *(v92 + 40);
  *(v92 + 40) = v91;

  if (*(*(*(v1 + 56) + 8) + 40))
  {
    return 0;
  }

LABEL_80:
  if ([*(v1 + 40) hasServiceConfig])
  {
    CLSInitLog();
    v94 = [*(v1 + 48) logSubsystem];
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      v135 = *(v1 + 48);
      v136 = objc_opt_class();
      v137 = *(v1 + 48);
      v138 = v136;
      v139 = [v137 operationID];
      v140 = [*(v1 + 40) serviceConfig];
      v141 = [v140 dictionaryRepresentation];
      *v195 = 138543874;
      v196 = v136;
      v197 = 2114;
      v198 = v139;
      v199 = 2112;
      v200 = v141;
      _os_log_debug_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response serviceConfig: %@", v195, 0x20u);
    }

    v95 = *(v1 + 48);
    v96 = [*(v1 + 40) serviceConfig];
    LOBYTE(v95) = [v95 saveServiceConfig:v96 forEDUMAID:v18];

    if ((v95 & 1) == 0)
    {
      v120 = [NSError cls_createErrorWithCode:100 description:@"save ServiceConfig failed!"];
      v121 = *(*(v1 + 56) + 8);
      v122 = *(v121 + 40);
      *(v121 + 40) = v120;

      return 0;
    }
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v97 = [*(v1 + 40) endpoints];
  v98 = [v97 countByEnumeratingWithState:&v156 objects:v177 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v157;
    do
    {
      for (n = 0; n != v99; n = n + 1)
      {
        if (*v157 != v100)
        {
          objc_enumerationMutation(v97);
        }

        v102 = *(*(&v156 + 1) + 8 * n);
        v103 = [v102 serviceId];
        if (v103)
        {
          v104 = v103;
          v105 = [v102 serviceId];
          v106 = [@"apple_business_manager" isEqualToString:v105];

          if (v106)
          {
            [v102 setServiceId:@"apple_school_manager"];
            CLSInitLog();
            v107 = [*(v155 + 48) logSubsystem];
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              v108 = *(v155 + 48);
              v109 = objc_opt_class();
              v110 = *(v155 + 48);
              objb = v109;
              v111 = [v110 operationID];
              v112 = [v102 identifier];
              *v195 = 138543874;
              v196 = v109;
              v197 = 2114;
              v198 = v111;
              v199 = 2114;
              v200 = v112;
              _os_log_debug_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Remapping ABM serviceID for endpoint %{public}@", v195, 0x20u);
            }
          }
        }
      }

      v99 = [v97 countByEnumeratingWithState:&v156 objects:v177 count:16];
    }

    while (v99);
  }

  v176[0] = @"ee.setup";
  v176[1] = @"ee.adminRequest";
  v176[2] = @"ee.managedOrgDiscovery";
  v113 = [NSArray arrayWithObjects:v176 count:3];
  v114 = *(v155 + 48);
  v115 = [*(v155 + 40) endpoints];
  v116 = [v114 replaceEndpoints:v115 excludeEndpointIDs:v113 forServiceID:@"apple_school_manager"];
  v117 = *(*(v155 + 56) + 8);
  v118 = *(v117 + 40);
  *(v117 + 40) = v116;

  v119 = *(*(*(v155 + 56) + 8) + 40) == 0;
  return v119;
}

uint64_t sub_10007CB5C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 person];
  v4 = sub_1000847C8(v3);

  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 person];
  v7 = sub_100084BC8(v6);

  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_11;
  }

  if (![v8 _setCurrentUser:v4 withRoleLocations:v7 orRole:0])
  {
    goto LABEL_11;
  }

  if ([*(a1 + 32) hasOrganizationId])
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) organizationId];
    LODWORD(v9) = sub_1000716F0(v9, v10);

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if ((![*(a1 + 32) hasOrganizationName] || (v11 = *(a1 + 40), objc_msgSend(*(a1 + 32), "organizationName"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = sub_10007173C(v11, v12), v12, v11)) && (!objc_msgSend(*(a1 + 32), "hasOrganizationProgressTrackingAllowed") || sub_100071764(*(a1 + 40), objc_msgSend(*(a1 + 32), "organizationProgressTrackingAllowed"))))
  {
    if ([*(a1 + 32) hasAnalyticsOptedIn])
    {
      v13 = sub_10007178C(*(a1 + 40), [*(a1 + 32) analyticsOptedIn]);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  return v13;
}

uint64_t sub_10007CE40(uint64_t a1)
{
  v2 = objc_alloc_init(PDASMConfig);
  v3 = [*(a1 + 32) serviceId];
  sub_10008121C(v2, v3);

  v4 = [*(a1 + 32) personlinkServiceContext];
  sub_10008122C(v2, v4);

  v5 = [*(a1 + 32) zoneSubscriptions];
  v6 = [v5 copy];
  sub_1000BA7E8(v2, v6);

  v7 = [*(a1 + 32) isRosterSearchAllowed];
  if (v2)
  {
    v2->_rosterSearchAllowed = v7;
    v2->_useServerForRosterSearch = [*(a1 + 32) useServerForRosterSearch];
    v2->_eduMAID = *(a1 + 56);
    v2->_asmAnalyticsEnabled = [*(a1 + 32) analyticsOptedIn];
    v2->_minimumSearchKeyLength = [*(a1 + 32) minimumSearchKeyLength];
  }

  else
  {
    [*(a1 + 32) useServerForRosterSearch];
    [*(a1 + 32) analyticsOptedIn];
    [*(a1 + 32) minimumSearchKeyLength];
  }

  v8 = [*(a1 + 32) defaultSyncZoneNames];
  v9 = [v8 copy];
  sub_100087930(v2, v9);

  if ([*(a1 + 32) hasSyncFetchInterval])
  {
    v10 = [*(a1 + 32) syncFetchInterval];
    if (v2)
    {
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 28800;
      }

      v2->_syncFetchInterval = v11;
    }
  }

  if ([*(a1 + 32) hasSearchCacheTtl])
  {
    v12 = [*(a1 + 32) searchCacheTtl];
    if (v2)
    {
      v2->_searchCacheTTL = v12;
    }
  }

  if ([*(a1 + 32) hasAllowSharingOutsideOrg])
  {
    v13 = [*(a1 + 32) allowSharingOutsideOrg];
    if (v2)
    {
      v2->_allowSharingOutsideOrg = v13;
    }
  }

  if ([*(a1 + 32) hasClassroomClassicAdHocModeEnabled])
  {
    v14 = [*(a1 + 32) classroomClassicAdHocModeEnabled];
    if (v2)
    {
      v2->_classroomClassicAdHocModeEnabled = v14;
    }
  }

  if ([*(a1 + 32) hasSearchLimitForGroupMemberSearch])
  {
    v15 = [*(a1 + 32) searchLimitForGroupMemberSearch];
    if (v2)
    {
      v2->_searchLimitForGroupMemberSearch = v15;
    }
  }

  if ([*(a1 + 32) hasDisableRosterSync])
  {
    v16 = [*(a1 + 32) disableRosterSync];
    if (v2)
    {
      v2->_asmSyncDisabled = v16;
    }
  }

  if (sub_1000BA900(*(a1 + 40), v2))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    if (v2)
    {
      defaultSyncZoneNames = v2->_defaultSyncZoneNames;
    }

    else
    {
      defaultSyncZoneNames = 0;
    }

    v18 = defaultSyncZoneNames;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          if (([*(a1 + 40) entityExistsByClass:objc_opt_class() identity:{v23, v38}] & 1) == 0)
          {
            v24 = sub_1000A6678([PDASMRecordZone alloc], v23);
            if (([*(a1 + 40) insertOrUpdateObject:v24] & 1) == 0)
            {
              CLSInitLog();
              v31 = [*(a1 + 48) logSubsystem];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(a1 + 48);
                v33 = objc_opt_class();
                v34 = *(a1 + 48);
                v35 = v33;
                v36 = [v34 operationID];
                *buf = 138543874;
                v43 = v33;
                v44 = 2114;
                v45 = v36;
                v46 = 2112;
                v47 = v23;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ failed to create default ASMRecordZone for %@", buf, 0x20u);
              }

              goto LABEL_43;
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v48 count:16];
        v25 = 1;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    CLSInitLog();
    v18 = [*(a1 + 48) logSubsystem];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 48);
      v27 = objc_opt_class();
      v28 = *(a1 + 48);
      v29 = v27;
      v30 = [v28 operationID];
      *buf = 138543618;
      v43 = v27;
      v44 = 2114;
      v45 = v30;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ failed to update PDASMConfig", buf, 0x16u);
    }

LABEL_43:
    v25 = 0;
  }

  return v25;
}

uint64_t sub_10007D6FC(char *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(PDDPStateChangeGroup);
          [a1 addRecipientGroups:v14];
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_1000C9C94(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 32;
LABEL_28:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_32:

          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addRecipientPersonIds:v14];
          }

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10007E7D0(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_46;
        }

        if (v13 == 8)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_46;
        }

LABEL_49:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_47;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_46;
      }

      if (v13 != 6)
      {
        goto LABEL_49;
      }

      v16 = objc_alloc_init(PDDPDate);
      objc_storeStrong((a1 + 16), v16);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_47:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_46;
      }

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_46;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 68) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_54;
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

LABEL_54:
        *(a1 + 64) = v23;
        goto LABEL_47;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_46:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_47;
      }
    }

    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

char *sub_10007F73C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = PDClassPublish;
    v15 = objc_msgSendSuper2(&v22, "initWithDatabase:", a2);
    v16 = v15;
    if (v15)
    {
      objc_storeStrong((v15 + 242), a3);
      v17 = [v14 copy];
      v18 = *(v16 + 258);
      *(v16 + 258) = v17;

      v19 = [v13 copy];
      v20 = *(v16 + 250);
      *(v16 + 250) = v19;

      *(v16 + 234) = a6;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_10008120C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_10008121C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_10008122C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_100081F00(id a1)
{
  v1 = sub_10010AF7C(PDUtil, @"CLSHandoutDueSoonNotificationHour");
  v2 = objc_alloc_init(NSDateComponents);
  v3 = qword_10024D998;
  qword_10024D998 = v2;

  if (v1 == -1)
  {
    v4 = 16;
  }

  else
  {
    v4 = v1;
  }

  [qword_10024D998 setHour:v4];
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CLSHandoutDueSoonNotificationHour: %ld", &v6, 0xCu);
  }
}

void sub_1000824F0(uint64_t a1, void *a2)
{
  v3 = a2;
  CLSInitLog();
  v4 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 title];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handout title %@ matching due date query", &v7, 0xCu);
  }

  if ([*(a1 + 32) isIncompleteHandout:v3])
  {
    [*(a1 + 40) addObject:v3];
  }
}

char *sub_100082BC0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = PDPublishSurveyAnswersOperation;
    v12 = objc_msgSendSuper2(&v26, "initWithDatabase:", a2);
    if (v12)
    {
      v13 = [v9 copy];
      v14 = *(v12 + 227);
      *(v12 + 227) = v13;

      v15 = [v10 copy];
      v16 = *(v12 + 235);
      *(v12 + 235) = v15;

      v17 = objc_opt_new();
      v18 = *(v12 + 251);
      *(v12 + 251) = v17;

      v19 = objc_opt_new();
      v20 = *(v12 + 267);
      *(v12 + 267) = v19;

      v21 = [v11 copy];
      v22 = *(v12 + 243);
      *(v12 + 243) = v21;

      v23 = objc_opt_new();
      v24 = *(v12 + 275);
      *(v12 + 275) = v23;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100083A20(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 267);
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

void sub_100083A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 275);
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

id sub_100084148(uint64_t a1)
{
  if (a1)
  {
    v2 = [a1 responseStatusError];
    if (v2)
    {
      [a1 responseStatusError];
    }

    else
    {
      [a1 operationError];
    }
    v3 = ;

    if ([*(a1 + 259) count])
    {
      v4 = objc_opt_new();
      v5 = [a1 operationError];

      if (v5)
      {
        v6 = [a1 operationError];
        [v4 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];

        v7 = [a1 operationError];
        v11 = v7;
        v8 = [NSArray arrayWithObjects:&v11 count:1];
        [v4 setObject:v8 forKeyedSubscript:CLSErrorUnderlyingErrorsKey];
      }

      [v4 setObject:*(a1 + 259) forKeyedSubscript:CLSErrorObjectKey];
      [v4 setObject:@"Failed SurveyAnswerItem can be found under CLSErrorObjectKey." forKeyedSubscript:NSLocalizedDescriptionKey];
      v9 = [[NSError alloc] initWithDomain:CLSErrorCodeDomain code:9 userInfo:v4];

      v3 = v9;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100084470(void *a1)
{
  v1 = [a1 copy];
  if (([v1 hasPrefix:@"ORG_"] & 1) == 0)
  {
    v2 = [@"ORG_" stringByAppendingString:v1];

    v1 = v2;
  }

  return v1;
}

id sub_1000844D8(void *a1)
{
  v1 = [a1 copy];
  if ([v1 hasPrefix:@"ORG_"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"ORG_", "length")}];

    v1 = v2;
  }

  return v1;
}

PDDPEERequestZone *sub_100084548(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPEERequestZone);
  if (v1)
  {
    v3 = *(v1 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    if (v1)
    {
      v5 = *(v1 + 1);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [(PDDPEERequestZone *)v2 setZoneName:v6];
  }

  if (v1)
  {
    v7 = *(v1 + 2);

    if (v7)
    {
      v8 = *(v1 + 2);
      [(PDDPEERequestZone *)v2 setCursor:v8];
    }
  }

  return v2;
}

void *sub_100084618(void *a1)
{
  v1 = a1;
  v2 = [PDASMRecordZone alloc];
  v3 = [v1 zoneName];
  v4 = sub_1000A6678(v2, v3);

  if ([v1 hasStatus])
  {
    v5 = [v1 status];
    v6 = [v5 code];
    if (v4)
    {
      v4[3] = v6;
    }
  }

  if ([v1 hasCursor])
  {
    v7 = [v1 cursor];
    sub_10008121C(v4, v7);
  }

  return v4;
}

PDDPEERequestZone *sub_1000846EC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(PDDPEERequestZone);
  [(PDDPEERequestZone *)v5 setZoneName:v4];

  if (v3)
  {
    v6 = [v3 cursor];

    if (v6)
    {
      v7 = [v3 cursor];
      [(PDDPEERequestZone *)v5 setCursor:v7];
    }
  }

  return v5;
}

__CFString *sub_100084798(int a1)
{
  v1 = a1 - 4;
  if (a1 - 4) <= 9 && ((0x33Fu >> v1))
  {
    return off_100203DB8[v1];
  }

  else
  {
    return 0;
  }
}

id sub_1000847C8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [[CLSPerson alloc] _init];
    v3 = [v1 appleId];
    [v2 setAppleID:v3];

    v4 = [v1 iCloudUserId];
    [v2 setICloudUserID:v4];

    v5 = [v1 orgId];
    [v2 setOrgID:v5];

    v6 = [v1 givenName];
    [v2 setGivenName:v6];

    v7 = [v1 middleName];
    [v2 setMiddleName:v7];

    v8 = [v1 familyName];
    [v2 setFamilyName:v8];

    v9 = [v1 givenName];
    [v2 setGivenName:v9];

    v10 = [v1 middleName];
    [v2 setMiddleName:v10];

    v11 = [v1 familyName];
    [v2 setFamilyName:v11];

    v12 = [v1 phoneticGivenName];
    [v2 setPhoneticGivenName:v12];

    v13 = [v1 phoneticMiddleName];
    [v2 setPhoneticMiddleName:v13];

    v14 = [v1 phoneticFamilyName];
    [v2 setPhoneticFamilyName:v14];

    [v2 setPasscodeType:{objc_msgSend(v1, "passcodeType")}];
    [v2 setProgressTrackingAllowed:{objc_msgSend(v1, "isProgressTrackingAllowed")}];
    [v2 setFederatedAccount:{objc_msgSend(v1, "isFederatedAccount")}];
    [v2 setAxmAccountStatus:{objc_msgSend(v1, "accountStatus")}];
    v15 = [v1 personId];
    [v2 setObjectID:v15];

    v16 = [v1 dateCreated];
    v17 = sub_1001043D0(v16);
    [v2 setDateCreated:v17];

    v18 = [v1 dateLastModified];
    v19 = sub_1001043D0(v18);
    [v2 setDateLastModified:v19];

    v20 = [v1 emailAddress];
    [v2 setEmailAddress:v20];

    v21 = [v1 grade];
    [v2 setGrade:v21];

    if ([v1 hasIsRosterSearchAllowed])
    {
      v22 = [v1 isRosterSearchAllowed];
    }

    else
    {
      v22 = 1;
    }

    [v2 setIsSearchable:v22];
    if ([v1 hasEntityMeta])
    {
      v23 = [v1 entityMeta];
      [v2 setSourceType:{objc_msgSend(v23, "source")}];

      v24 = [v1 entityMeta];
      [v2 setIsEditable:{objc_msgSend(v24, "isEditable")}];
    }

    else
    {
      [v2 setSourceType:0];
      [v2 setIsEditable:0];
    }

    v25 = [v1 personNumber];
    [v2 setPersonNumber:v25];

    v26 = [v2 appleID];
    if (!v26 || (v27 = v26, [v2 appleID], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "length"), v28, v27, !v29))
    {
      [v2 setAppleID:CLSAdminRequestNewAccountPlaceholderAppleID];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100084BC8(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v1 roleLocations];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [PDPersonRoleLocation alloc];
        v9 = [v1 personId];
        v10 = [v7 roleId];
        v11 = [v7 locationId];
        v12 = sub_1000C8F24(v8, v9, v10, v11, [v7 roleType]);

        [v2 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  return v2;
}

PDDPClass *sub_100084D78(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPClass);
  v3 = [v1 objectID];
  [(PDDPClass *)v2 setClassId:v3];

  v4 = [v1 customClassName];
  [(PDDPClass *)v2 setDisplayName:v4];

  v5 = [v1 className];
  [(PDDPClass *)v2 setClassName:v5];

  v6 = [v1 locationID];
  [(PDDPClass *)v2 setLocationId:v6];

  v7 = [v1 iconID];
  [(PDDPClass *)v2 setIconIdentifier:v7];

  v8 = [v1 dateCreated];
  v9 = sub_10010426C(v8);
  [(PDDPClass *)v2 setDateCreated:v9];

  v10 = [v1 dateLastModified];
  v11 = sub_10010426C(v10);
  [(PDDPClass *)v2 setDateLastModified:v11];

  v12 = objc_alloc_init(PDDPEntityMeta);
  [(PDDPClass *)v2 setEntityMeta:v12];

  v13 = [v1 source];
  v14 = [(PDDPClass *)v2 entityMeta];
  [v14 setSource:v13];

  v15 = [v1 isEditable];
  v16 = [(PDDPClass *)v2 entityMeta];
  [v16 setIsEditable:v15];

  return v2;
}

id sub_100084F40(void *a1)
{
  v1 = a1;
  v2 = [[CLSGroup alloc] _init];
  v3 = [v1 groupId];
  [v2 setObjectID:v3];

  v4 = [v1 groupName];
  [v2 setGroupName:v4];

  v5 = [v1 locationId];
  [v2 setLocationID:v5];

  v6 = [v1 dateCreated];
  v7 = sub_1001043D0(v6);
  [v2 setDateCreated:v7];

  v8 = [v1 dateLastModified];
  v9 = sub_1001043D0(v8);
  [v2 setDateLastModified:v9];

  v10 = [v1 email];

  [v2 setEmailAddress:v10];

  return v2;
}

PDDPClassMember *sub_10008507C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPClassMember);
  v3 = [v1 objectID];
  [(PDDPClassMember *)v2 setClassMemberId:v3];

  v4 = [v1 parentObjectID];
  [(PDDPClassMember *)v2 setClassId:v4];

  v5 = [v1 personID];
  [(PDDPClassMember *)v2 setPersonId:v5];

  v6 = [v1 roles];
  v7 = v2;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      [(PDDPClassMember *)v7 addRoles:1];
    }

    if ((v6 & 2) != 0)
    {
      [(PDDPClassMember *)v8 addRoles:2];
    }
  }

  v9 = [v1 dateCreated];
  v10 = sub_10010426C(v9);
  [(PDDPClassMember *)v8 setDateCreated:v10];

  v11 = [v1 dateLastModified];

  v12 = sub_10010426C(v11);
  [(PDDPClassMember *)v8 setDateLastModified:v12];

  return v8;
}

id sub_1000851D4(void *a1)
{
  v1 = a1;
  v2 = [[CLSClass alloc] _init];
  v3 = [v1 className];
  [v2 setClassName:v3];

  v4 = [v1 displayName];
  [v2 setCustomClassName:v4];

  v5 = [v1 classId];
  [v2 setObjectID:v5];

  v6 = [v1 locationId];
  [v2 setLocationID:v6];

  v7 = [v1 iconIdentifier];
  [v2 setIconID:v7];

  v8 = [v1 dateCreated];
  v9 = sub_1001043D0(v8);
  [v2 setDateCreated:v9];

  v10 = [v1 dateLastModified];
  v11 = sub_1001043D0(v10);
  [v2 setDateLastModified:v11];

  if ([v1 hasEntityMeta])
  {
    v12 = [v1 entityMeta];
    [v2 setSource:{objc_msgSend(v12, "source")}];

    v13 = [v1 entityMeta];
    [v2 setIsEditable:{objc_msgSend(v13, "isEditable")}];

    v14 = [v1 entityMeta];
    if ([v14 hasIsAdhocOriginated])
    {
      v15 = [v1 entityMeta];
      v16 = [v15 isAdhocOriginated];

      if (v16)
      {
        v17 = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  else
  {
    [v2 setSource:0];
  }

  v17 = 0;
LABEL_8:
  [v2 setOriginatingSource:v17];

  return v2;
}

id sub_1000853EC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [CLSClassMember alloc];
  v6 = [v4 classId];
  v7 = v4;
  if ([v7 rolesCount])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [v7 rolesAtIndex:v8];
      v11 = v9 | 1;
      if (v10 != 1)
      {
        v11 = v9;
      }

      if (v10 == 2)
      {
        v9 |= 2uLL;
      }

      else
      {
        v9 = v11;
      }

      ++v8;
    }

    while ([v7 rolesCount] > v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = [v5 initWithClassID:v6 personID:v3 roles:v9];
  v13 = [v7 dateCreated];
  v14 = sub_1001043D0(v13);
  [v12 setDateCreated:v14];

  v15 = [v7 dateLastModified];

  v16 = sub_1001043D0(v15);
  [v12 setDateLastModified:v16];

  return v12;
}

id sub_100085548(void *a1)
{
  v1 = a1;
  if ([v1 hasPersonId])
  {
    v2 = [v1 personId];
LABEL_3:
    v3 = sub_1000853EC(v1, v2);

    goto LABEL_8;
  }

  if ([v1 hasPersonIds])
  {
    v4 = [v1 personIds];
    v5 = [v4 hasStringValue];

    if (v5)
    {
      v6 = [v1 personIds];
      v2 = [v6 stringValue];

      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id sub_100085614(void *a1)
{
  v1 = a1;
  if ([v1 hasPersonId])
  {
    v2 = [v1 personId];
    v9 = v2;
    v3 = &v9;
LABEL_3:
    v4 = [NSArray arrayWithObjects:v3 count:1];
LABEL_4:
    v5 = v4;
LABEL_5:

    goto LABEL_15;
  }

  if ([v1 hasPersonIds])
  {
    v6 = [v1 personIds];
    v2 = sub_100104814(v6);

    if (!v2)
    {
      v5 = &__NSArray0__struct;
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v2;
      v3 = &v8;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
      goto LABEL_4;
    }
  }

  v5 = &__NSArray0__struct;
LABEL_15:

  return v5;
}

id sub_100085768(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = sub_100085614(v1);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = sub_1000853EC(v1, *(*(&v10 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_1000858B0(void *a1)
{
  v1 = a1;
  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = v1;
  if ([v2 hasPersonIds])
  {
    v3 = [v2 personIds];
    v4 = sub_100104814(v3);

    if (!v4)
    {
      v6 = &__NSArray0__struct;
LABEL_9:

      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v4;
      v5 = [NSArray arrayWithObjects:&v31 count:1];
LABEL_8:
      v6 = v5;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      goto LABEL_8;
    }
  }

  v6 = &__NSArray0__struct;
LABEL_12:

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = v2;
        v13 = v11;
        v14 = [[CLSGroupMember alloc] _init];
        v15 = [v12 groupId];
        v16 = [CLSClassMember objectIDForClassID:v15 andPersonID:v13];
        [v14 setObjectID:v16];

        v17 = [v12 groupId];
        [v14 setParentObjectID:v17];

        [v14 setPersonID:v13];
        v18 = [v12 dateCreated];

        if (v18)
        {
          v19 = [v12 dateCreated];
          v20 = sub_1001043D0(v19);
          [v14 setDateCreated:v20];
        }

        else
        {
          v19 = +[NSDate now];
          [v14 setDateCreated:v19];
        }

        v21 = [v12 dateLastModified];

        if (v21)
        {
          v22 = [v12 dateLastModified];
          v23 = sub_1001043D0(v22);
          [v14 setDateLastModified:v23];
        }

        else
        {
          v22 = +[NSDate now];
          [v14 setDateLastModified:v22];
        }

        if (v14)
        {
          [v25 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return v25;
}

id sub_100085C14(void *a1)
{
  v1 = a1;
  v2 = [[CLSLocation alloc] _init];
  v3 = [v1 locationId];
  [v2 setObjectID:v3];

  v4 = [v1 locationName];
  [v2 setLocationName:v4];

  if ([v1 hasEntityMeta])
  {
    v5 = [v1 entityMeta];
    [v2 setSourceType:{objc_msgSend(v5, "source")}];

    v6 = [v1 entityMeta];
    [v2 setIsEditable:{objc_msgSend(v6, "isEditable")}];
  }

  else
  {
    [v2 setSourceType:0];
    [v2 setIsEditable:0];
  }

  return v2;
}

id sub_100085D1C(void *a1)
{
  v1 = a1;
  v2 = [[CLSRole alloc] _init];
  v3 = [v1 roleId];
  [v2 setObjectID:v3];

  [v2 setType:{objc_msgSend(v1, "roleType")}];
  v4 = [v1 privileges];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v1 privileges];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 hasPrivilegeName])
          {
            v13 = [v12 privilegeName];
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [NSArray arrayWithArray:v6];
    [v2 setPrivileges:v14];
  }

  if ([v1 hasEntityMeta])
  {
    v15 = [v1 entityMeta];
    [v2 setSourceType:{objc_msgSend(v15, "source")}];

    v16 = [v1 entityMeta];
    [v2 setIsEditable:{objc_msgSend(v16, "isEditable")}];
  }

  else
  {
    [v2 setSourceType:0];
    [v2 setIsEditable:0];
  }

  return v2;
}

id sub_100085F78(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 privileges];
  v4 = [v3 count];

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v1 privileges];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) locationIds];
          [v2 addObjectsFromArray:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v2;
}

id sub_1000860D8(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v1 locations];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = sub_100085C14(*(*(&v10 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_10008621C(void *a1)
{
  v1 = a1;
  if ([v1 hasOrganizationId] && objc_msgSend(v1, "hasOrganizationName") && objc_msgSend(v1, "hasOrganizationType"))
  {
    v2 = [CLSOrganization alloc];
    v3 = [v1 organizationId];
    v4 = sub_100084470(v3);
    v5 = [v1 organizationType];
    v6 = [v1 organizationName];
    v7 = [v2 initWithOrganizationID:v4 type:v5 name:v6];

    v8 = [v1 dateCreated];
    v9 = sub_1001043D0(v8);
    [v7 setDateCreated:v9];

    v10 = [v1 dateLastModified];
    v11 = sub_1001043D0(v10);
    [v7 setDateLastModified:v11];

    if ([v1 emailDomainsCount])
    {
      v12 = [v1 emailDomains];
      v13 = [NSArray arrayWithArray:v12];
      [v7 setEmailDomains:v13];
    }

    if ([v1 locationsCount])
    {
      v14 = objc_opt_new();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [v1 locations];
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v23 + 1) + 8 * i) locationId];
            [v14 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      v21 = [NSArray arrayWithArray:v14];
      [v7 setLocationIDs:v21];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

PDDPAdminRequestRequestor *sub_1000864D8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(PDDPAdminRequestRequestor);
    v3 = [v1 email];
    [(PDDPAdminRequestRequestor *)v2 setEmail:v3];

    v4 = [v1 note];
    [(PDDPAdminRequestRequestor *)v2 setNote:v4];

    v5 = [v1 verificationCode];
    [(PDDPAdminRequestRequestor *)v2 setVerificationCode:v5];

    -[PDDPAdminRequestRequestor setState:](v2, "setState:", [v1 state]);
    v6 = [v1 serverRequestHeaders];

    v7 = sub_100104B40(v6);
    [(PDDPAdminRequestRequestor *)v2 setServerRequestHeaders:v7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000865E4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasEmail])
  {
    v3 = [CLSAdminRequestor alloc];
    v4 = [v2 email];
    v5 = [v3 initWithEmail:v4];

    [v5 setState:{objc_msgSend(v2, "state")}];
    v6 = [v2 note];
    [v5 setNote:v6];

    v7 = [v2 verificationCode];
    [v5 setVerificationCode:v7];

    v8 = [v2 serverRequestHeaders];
    v9 = sub_100104D28(v8);
    [v5 setServerRequestHeaders:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PDDPAdminRequestDetails *sub_1000866F8(PDDPAdminRequestDetails *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = v2;
    v2 = objc_alloc_init(PDDPAdminRequestDetails);
    v5 = [(PDDPAdminRequestDetails *)v4 objectID];
    [(PDDPAdminRequestDetails *)v2 setAdminRequestId:v5];

    [(PDDPAdminRequestDetails *)v2 setType:[(PDDPAdminRequestDetails *)v4 type]];
    [(PDDPAdminRequestDetails *)v2 setRequestStatus:[(PDDPAdminRequestDetails *)v4 status]];
    [(PDDPAdminRequestDetails *)v2 setApprovalStatus:[(PDDPAdminRequestDetails *)v4 approval]];
    v6 = [(PDDPAdminRequestDetails *)v4 dateCreated];
    v7 = sub_10010426C(v6);
    [(PDDPAdminRequestDetails *)v2 setDateCreated:v7];

    v8 = [(PDDPAdminRequestDetails *)v4 dateLastModified];
    v9 = sub_10010426C(v8);
    [(PDDPAdminRequestDetails *)v2 setDateLastModified:v9];

    v10 = [(PDDPAdminRequestDetails *)v4 dateCompleted];
    v11 = sub_10010426C(v10);
    [(PDDPAdminRequestDetails *)v2 setDateCompleted:v11];

    v12 = [(PDDPAdminRequestDetails *)v4 responderNote];
    [(PDDPAdminRequestDetails *)v2 setAdminNote:v12];

    v13 = [(PDDPAdminRequestDetails *)v4 bundleIdentifier];
    [(PDDPAdminRequestDetails *)v2 setBundleIdentifier:v13];

    v14 = sub_1000864D8(v3);

    [(PDDPAdminRequestDetails *)v2 setRequestor:v14];
    v15 = [(PDDPAdminRequestDetails *)v4 organizationID];

    v16 = sub_1000844D8(v15);
    [(PDDPAdminRequestDetails *)v2 setOrgId:v16];
  }

  return v2;
}

id sub_1000868EC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasRequestor])
    {
      v3 = [v2 requestor];
      v4 = sub_1000865E4(v3);

      v5 = [v4 objectID];
    }

    else
    {
      v5 = 0;
    }

    v7 = [CLSAdminRequest alloc];
    v8 = [v2 type];
    v9 = [v2 orgId];
    v6 = [v7 initWithType:v8 requestorID:v5 organizationID:v9];

    v10 = [v2 adminRequestId];
    [v6 setObjectID:v10];

    [v6 setApproval:{objc_msgSend(v2, "approvalStatus")}];
    [v6 setStatus:{objc_msgSend(v2, "requestStatus")}];
    v11 = [v2 adminNote];
    [v6 setResponderNote:v11];

    v12 = [v2 bundleIdentifier];
    [v6 setBundleIdentifier:v12];

    v13 = [v2 dateCreated];
    v14 = sub_1001043D0(v13);
    [v6 setDateCreated:v14];

    v15 = [v2 dateLastModified];
    v16 = sub_1001043D0(v15);
    [v6 setDateLastModified:v16];

    v17 = [v2 dateCompleted];
    v18 = sub_1001043D0(v17);
    [v6 setDateCompleted:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

PDDPAdminRequestAccount *sub_100086AF0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_27;
  }

  v8 = objc_alloc_init(PDDPAdminRequestAccount);
  v9 = [v6 objectID];
  [(PDDPAdminRequestAccount *)v8 setAdminRequestAccountId:v9];

  v10 = [v5 objectID];
  [(PDDPAdminRequestAccount *)v8 setParentRequestId:v10];

  if (v7)
  {
    v11 = [v6 objectID];
    [v7 addAdminRequestAccountIds:v11];
  }

  v12 = [v6 dateCreated];
  v13 = sub_10010426C(v12);
  [(PDDPAdminRequestAccount *)v8 setDateCreated:v13];

  v14 = [v6 dateLastModified];
  v15 = sub_10010426C(v14);
  [(PDDPAdminRequestAccount *)v8 setDateLastModified:v15];

  v16 = [v6 accountPersonInfo];

  if (v16)
  {
    v17 = [v6 accountPersonInfo];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      v20 = objc_alloc_init(PDDPPerson);
      v21 = [v19 objectID];
      [(PDDPPerson *)v20 setPersonId:v21];

      v22 = [v19 appleID];
      [(PDDPPerson *)v20 setAppleId:v22];

      v23 = [v19 iCloudUserID];
      [(PDDPPerson *)v20 setICloudUserId:v23];

      v24 = [v19 orgID];
      [(PDDPPerson *)v20 setOrgId:v24];

      v25 = [v19 givenName];
      [(PDDPPerson *)v20 setGivenName:v25];

      v26 = [v19 middleName];
      [(PDDPPerson *)v20 setMiddleName:v26];

      v27 = [v19 familyName];
      [(PDDPPerson *)v20 setFamilyName:v27];

      v28 = [v19 phoneticGivenName];
      [(PDDPPerson *)v20 setPhoneticGivenName:v28];

      v29 = [v19 phoneticMiddleName];
      [(PDDPPerson *)v20 setPhoneticMiddleName:v29];

      v30 = [v19 phoneticFamilyName];
      [(PDDPPerson *)v20 setPhoneticFamilyName:v30];

      -[PDDPPerson setIsProgressTrackingAllowed:](v20, "setIsProgressTrackingAllowed:", [v19 isProgressTrackingAllowed]);
      -[PDDPPerson setIsFederatedAccount:](v20, "setIsFederatedAccount:", [v19 isFederatedAccount]);
      -[PDDPPerson setPasscodeType:](v20, "setPasscodeType:", [v19 passcodeType]);
      -[PDDPPerson setAccountStatus:](v20, "setAccountStatus:", [v19 axmAccountStatus]);
      v31 = [v19 dateCreated];
      v32 = sub_10010426C(v31);
      [(PDDPPerson *)v20 setDateCreated:v32];

      v33 = [v19 dateLastModified];
      v34 = sub_10010426C(v33);
      [(PDDPPerson *)v20 setDateLastModified:v34];

      v35 = [v19 emailAddress];
      [(PDDPPerson *)v20 setEmailAddress:v35];

      v36 = [v19 grade];
      [(PDDPPerson *)v20 setGrade:v36];

      -[PDDPPerson setIsRosterSearchAllowed:](v20, "setIsRosterSearchAllowed:", [v19 isSearchable]);
      v37 = objc_alloc_init(PDDPEntityMeta);
      [(PDDPPerson *)v20 setEntityMeta:v37];

      v38 = [v19 sourceType];
      v39 = [(PDDPPerson *)v20 entityMeta];
      [v39 setSource:v38];

      v40 = [v19 isEditable];
      v41 = [(PDDPPerson *)v20 entityMeta];
      [v41 setIsEditable:v40];

      v42 = [v19 personNumber];

      [(PDDPPerson *)v20 setPersonNumber:v42];
    }

    else
    {
      v20 = 0;
    }

    [(PDDPAdminRequestAccount *)v8 setPerson:v20];

    v47 = [(PDDPAdminRequestAccount *)v8 person];

    if (!v47)
    {
      goto LABEL_17;
    }

    v48 = [v5 organizationID];
    v49 = sub_1000844D8(v48);
    v50 = [(PDDPAdminRequestAccount *)v8 person];
    [v50 setOrgId:v49];

    v45 = [(PDDPAdminRequestAccount *)v8 person];
    if (![v45 hasEntityMeta])
    {
      goto LABEL_16;
    }

    v51 = [(PDDPAdminRequestAccount *)v8 person];
    v52 = [v51 entityMeta];
    v53 = [v52 source];

    if (v53 == 3)
    {
      v45 = [(PDDPAdminRequestAccount *)v8 person];
      v46 = [v45 entityMeta];
      [v46 setIsAdhocOriginated:1];
      goto LABEL_15;
    }
  }

  else
  {
    v43 = [v6 personID];

    if (v43)
    {
      v44 = objc_alloc_init(PDDPPerson);
      [(PDDPAdminRequestAccount *)v8 setPerson:v44];

      v45 = [v6 personID];
      v46 = [(PDDPAdminRequestAccount *)v8 person];
      [v46 setPersonId:v45];
LABEL_15:

LABEL_16:
    }
  }

LABEL_17:
  v54 = [v6 temporaryPassword];

  if (v54)
  {
    v55 = [v6 temporaryPassword];
    [(PDDPAdminRequestAccount *)v8 setTemporaryPassword:v55];
  }

  -[PDDPAdminRequestAccount setRequestedRoleType:](v8, "setRequestedRoleType:", [v6 requestedRoleType]);
  v56 = [v6 requestedRoleID];
  [(PDDPAdminRequestAccount *)v8 setRequestedRoleId:v56];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v57 = [v6 requestedLocationIDs];
  v58 = [v57 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v64;
    do
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v64 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [(PDDPAdminRequestAccount *)v8 addRequestedLocationIds:*(*(&v63 + 1) + 8 * i)];
      }

      v59 = [v57 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v59);
  }

LABEL_27:

  return v8;
}

id sub_1000871F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 hasParentRequestId] && objc_msgSend(v3, "hasPerson") && (objc_msgSend(v3, "person"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPersonId"), v5, v6))
  {
    v7 = [CLSAdminRequestAccount alloc];
    v8 = [v3 parentRequestId];
    v9 = [v3 person];
    v10 = [v9 personId];
    v11 = [v7 initWithAdminRequestID:v8 personID:v10];

    v12 = [v3 adminRequestAccountId];
    [v11 setObjectID:v12];

    v13 = [v3 dateCreated];
    v14 = sub_1001043D0(v13);
    [v11 setDateCreated:v14];

    v15 = [v3 dateLastModified];
    v16 = sub_1001043D0(v15);
    [v11 setDateLastModified:v16];

    v17 = [v3 temporaryPassword];
    [v11 setTemporaryPassword:v17];

    v18 = [v3 verificationCode];
    [v11 setVerificationCode:v18];

    if (v4)
    {
      [v11 setStatus:sub_1001054F0(v4)];
    }

    if ([v3 conflictingPersonIdsCount])
    {
      v19 = [v3 conflictingPersonIds];
      [v11 setConflictingPersonIDs:v19];
    }

    v20 = [v3 requestedRoleId];
    [v11 setRequestedRoleID:v20];

    [v11 setRequestedRoleType:{objc_msgSend(v3, "requestedRoleType")}];
    if ([v3 requestedLocationIdsCount])
    {
      v21 = [v3 requestedLocationIds];
      [v11 setRequestedLocationIDs:v21];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id *sub_1000877D8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PDAppUsage;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v8 = +[NSUUID UUID];
      v9 = [v8 UUIDString];
      v10 = a1[2];
      a1[2] = v9;

      objc_storeStrong(a1 + 3, a2);
      objc_storeStrong(a1 + 4, a3);
      *(a1 + 4) = 0;
      v11 = +[NSDate now];
      v12 = a1[7];
      a1[7] = v11;
    }
  }

  return a1;
}

uint64_t sub_1000878C0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[NSDate now];
    [v2 timeIntervalSinceDate:*(v1 + 48)];
    v1 = v3 < 600.0 && *(v1 + 8) != 1;
  }

  return v1;
}

void sub_100087930(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

id sub_1000879B4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100087B60;
    v12 = sub_100087B70;
    v13 = 0;
    v4 = objc_opt_class();
    v14 = v3;
    v5 = [NSArray arrayWithObjects:&v14 count:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100087B78;
    v7[3] = &unk_100203E10;
    v7[4] = &v8;
    [a1 selectAll:v4 where:@"bundleIdentifier = ?" orderBy:@"endDate DESC" limit:1 offset:0 bindings:v5 block:v7];

    a1 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return a1;
}

uint64_t sub_100087B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100087B88(void *a1)
{
  if (a1)
  {
    a1 = [a1 select:objc_opt_class() where:@"starting = ?" bindings:&off_10021B9E8];
    v1 = vars8;
  }

  return a1;
}