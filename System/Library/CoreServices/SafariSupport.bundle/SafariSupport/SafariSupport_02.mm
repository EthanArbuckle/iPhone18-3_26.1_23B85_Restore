void sub_1000623B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10006240C(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [NSError safari_errorWithCloudBookmarksCode:3 userInfo:0];
  (*(v1 + 16))(v1, v3, v2, v4);
}

uint64_t sub_10006248C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100067860();
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000624F0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [a5 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  if ([v12 safari_isOrContainsCloudKitMissingZoneError])
  {
    v13 = *(a1 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100067960(v13);
    }

LABEL_24:
    v20 = *(a1 + 64);
LABEL_25:
    *(*(v20 + 8) + 24) = 1;
    goto LABEL_26;
  }

  if ([v12 safari_isUnrecoverableCloudKitError])
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100068B08(v14);
    }

    goto LABEL_24;
  }

  if ([v12 safari_isCloudKitBatchTooLargeError])
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100068AD4();
    }

    goto LABEL_24;
  }

  if (v12)
  {
    if (!v11)
    {
      v11 = [*(a1 + 48) objectForKeyedSubscript:v10];
    }

    v15 = [v12 domain];
    v16 = [v15 isEqualToString:CKErrorDomain];

    if ((v16 & 1) == 0)
    {
      v19 = *(a1 + 32);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100067894(v19);
      }

      goto LABEL_24;
    }

    v17 = [v12 code];
    v18 = v17;
    if (v17 != 11 && v17 != 14)
    {
      if (v17 == 22)
      {
        if (!v11)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            sub_100068A6C();
          }

          goto LABEL_27;
        }

LABEL_21:
        [*(a1 + 40) addObject:v11];
LABEL_26:

        goto LABEL_27;
      }

LABEL_39:
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v24 = *(a1 + 32);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100067A90(v24);
      }

      goto LABEL_26;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_39;
    }

    if (*(a1 + 88) == 1 && [v11 safari_isMigrationStateRecord])
    {
      if (![v9 _checkMigrationStateOnInternalQueueInRecord:v11 error:v12])
      {
        v33 = *(a1 + 32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000689D4(v33);
        }

        v20 = *(a1 + 80);
        goto LABEL_25;
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
      v21 = [v12 userInfo];
      v22 = [v21 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      if (v22)
      {
        [*(a1 + 40) addObject:v22];
      }

      v23 = *(a1 + 32);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Will attempt to resave migration record due to recoverable error", &v34, 2u);
      }

LABEL_52:

      goto LABEL_26;
    }

    v25 = v11;
    v11 = v25;
    if (v18 == 11)
    {
      v28 = 0;
      v22 = v25;
    }

    else
    {
      v22 = v25;
      if (v18 != 14)
      {
        goto LABEL_52;
      }

      v26 = [v12 userInfo];
      v22 = [v26 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

      v27 = [v12 userInfo];
      v28 = [v27 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];
    }

    v29 = (*(*(a1 + 56) + 16))();
    if (v29)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
      {
        sub_100067B28();
      }

      [*(a1 + 40) addObject:v29];
    }

    v30 = *(a1 + 32);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = v30;
      v32 = [v12 safari_privacyPreservingDescription];
      v34 = 138543362;
      v35 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Will retry save with updated batch after error: %{public}@", &v34, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;

    goto LABEL_52;
  }

  if (v11)
  {
    goto LABEL_21;
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100068AA0();
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_27:
}

void sub_1000629C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a4 copy];
  v14 = [v12 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];

  if ([v10 _isUnrecoverableCloudKitWriteError:v14])
  {
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100067C90(v15);
    }

    v16 = v10[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006315C;
    block[3] = &unk_100130EC8;
    v76 = *(a1 + 80);
    v73 = *(a1 + 40);
    v74 = *(a1 + 48);
    v75 = v14;
    dispatch_async(v16, block);
    *(*(*(a1 + 96) + 8) + 24) = 1;

    v17 = v76;
    goto LABEL_19;
  }

  if (*(a1 + 128) == 1)
  {
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100063174;
    v70[3] = &unk_100134660;
    v71 = v10;
    v18 = [v13 safari_filterObjectsUsingBlock:v70];

    v13 = v18;
  }

  if (v13)
  {
    [*(a1 + 40) addObjectsFromArray:v13];
  }

  if (v11)
  {
    [*(a1 + 48) addObjectsFromArray:v11];
  }

  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100068BA0();
    }

    v19 = v10[2];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10006320C;
    v65[3] = &unk_100130EC8;
    v69 = *(a1 + 80);
    v66 = *(a1 + 40);
    v67 = *(a1 + 48);
    v68 = v14;
    dispatch_async(v19, v65);

    v17 = v69;
    goto LABEL_19;
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100067C5C();
    }

    v20 = v10[2];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000632F8;
    v60[3] = &unk_100130EC8;
    v64 = *(a1 + 80);
    v61 = *(a1 + 40);
    v62 = *(a1 + 48);
    v63 = v14;
    dispatch_async(v20, v60);

    v17 = v64;
    goto LABEL_19;
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v21 = *(a1 + 32);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Batch record save operation completed but now retrying updated batch", buf, 2u);
    }

    [v10 _saveBookmarksRecordBatch:*(a1 + 56) inOperationGroup:*(a1 + 64) clientChangeTokenData:*(a1 + 72) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) mergeHandler:*(a1 + 88) completionHandler:*(a1 + 80)];
  }

  else
  {
    if (![v14 safari_isCloudKitBatchTooLargeError])
    {
      v24 = v10[2];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100063558;
      v39[3] = &unk_100130EC8;
      v43 = *(a1 + 80);
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      v42 = v14;
      dispatch_async(v24, v39);

      v17 = v43;
LABEL_19:

      goto LABEL_20;
    }

    v22 = [*(*(*(a1 + 120) + 8) + 40) count];
    if (v22 <= 1)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        sub_100067C28();
      }

      v23 = v10[2];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100063310;
      v54[3] = &unk_100130EC8;
      v58 = *(a1 + 80);
      v55 = *(a1 + 40);
      v56 = *(a1 + 48);
      v57 = v14;
      dispatch_async(v23, v54);

      v17 = v58;
      goto LABEL_19;
    }

    v25 = v22;
    v26 = v22 >> 1;
    v27 = [*(*(*(a1 + 120) + 8) + 40) subarrayWithRange:{0, v22 >> 1}];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100063328;
    v44[3] = &unk_1001346B0;
    v45 = *(a1 + 32);
    v28 = *(a1 + 80);
    v46 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30 = *(a1 + 120);
    v47 = v29;
    v51 = v30;
    v52 = v26;
    v53 = v25;
    v31 = v10;
    v48 = v31;
    v32 = *(a1 + 64);
    v33 = *(a1 + 72);
    v34 = *(a1 + 88);
    *&v35 = v28;
    *(&v35 + 1) = v34;
    *&v36 = v32;
    *(&v36 + 1) = v33;
    v49 = v36;
    v50 = v35;
    v37 = objc_retainBlock(v44);
    v38 = *(a1 + 32);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Batch record save operation completed but we need to re-batch", buf, 2u);
    }

    [v31 _saveBookmarksRecordBatch:v27 inOperationGroup:*(a1 + 64) clientChangeTokenData:*(a1 + 72) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) mergeHandler:*(a1 + 88) completionHandler:v37];
  }

LABEL_20:
}

id sub_100063174(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 safari_isMigrationStateRecord];
  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 88), a2);
    v6 = [*(*(a1 + 32) + 88) safari_encodedRecordData];
    [*(*(a1 + 32) + 152) setMigrationStateEncodedRecordData:v6];
  }

  return v5;
}

void sub_10006320C(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v7 = @"Errors";
  v8 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:3 userInfo:v5];
  (*(v4 + 16))(v4, v1, v2, v6);
}

void sub_100063328(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_isCloudKitBatchTooLargeError];
  v7 = *(a1 + 32);
  if (v6)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100067D28();
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to re-batch record save", buf, 2u);
    }

    v10 = [*(*(*(a1 + 96) + 8) + 40) subarrayWithRange:{*(a1 + 104), *(a1 + 112) - *(a1 + 104)}];
    v11 = *(a1 + 56);
    v12 = v11[1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100063520;
    v20[3] = &unk_100134688;
    v21 = v11;
    v22 = v10;
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v23 = v18;
    v24 = v17;
    v25 = *(a1 + 88);
    v26 = *(a1 + 80);
    v19 = v10;
    dispatch_async(v12, v20);
  }
}

id sub_10006372C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CKRecordID alloc] initWithRecordName:v3 zoneID:*(*(a1 + 32) + 104)];

  return v4;
}

void sub_1000637A0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 safari_mapAndFilterKeysUsingBlock:&stru_100134740];
  v11 = v9[2];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000638B4;
  block[3] = &unk_100130E00;
  v12 = *(a1 + 32);
  v17 = v8;
  v18 = v12;
  v16 = v10;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, block);
}

void sub_100063B40(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = [a4 objectForKeyedSubscript:v9];
  v12 = [v10 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];

  if (v11)
  {
    v13 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:v11];
    v14 = v8;
    objc_sync_enter(v14);
    objc_storeStrong(v14 + 9, v13);
  }

  else
  {
    v15 = v8;
    objc_sync_enter(v15);
    v13 = v15[9];
  }

  objc_sync_exit(v8);

  if (v12)
  {
    v16 = *(a1 + 40);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v17)
      {
        sub_100068BD4(v16);
      }
    }

    else if (v17)
    {
      sub_100068C6C(v16);
    }
  }

  v18 = v8[2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100063D00;
  v21[3] = &unk_100130F40;
  v19 = *(a1 + 48);
  v22 = v13;
  v23 = v19;
  v20 = v13;
  dispatch_async(v18, v21);
}

void sub_100064080(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a4;
  v12 = a5;
  v13 = a2;
  v14 = [a7 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v15 = v13[2];

  if (v14)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064218;
    block[3] = &unk_100130F40;
    v16 = &v24;
    v24 = *(a1 + 32);
    v17 = &v23;
    v23 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000642A4;
    v18[3] = &unk_100130E00;
    v16 = &v21;
    v21 = *(a1 + 32);
    v17 = &v19;
    v19 = v11;
    v20 = v12;
    dispatch_async(v15, v18);
  }
}

void sub_100064218(uint64_t a1)
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

void sub_1000642A4(uint64_t a1)
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

void sub_100064330(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_retainBlock(*(a1 + 32));
    objc_sync_enter(v9);
    v10 = *(a1 + 32);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      (*(*(a1 + 32) + 16))();
    }

    objc_sync_exit(v9);
  }
}

void sub_10006449C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    v3 = [WBSCloudBookmarksRemoteMigrationInfo alloc];
    v4 = [*(*(a1 + 32) + 88) safari_migrationState];
    v5 = [*(*(a1 + 32) + 88) safari_migratorDeviceIdentifier];
    v6 = [*(*(a1 + 32) + 88) modificationDate];
    v7 = [v3 initWithMigrationState:v4 migratorDeviceIdentifier:v5 serverModificationDate:v6];

    v2 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000645E4;
  v11[3] = &unk_100130F40;
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_100064934(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];
  if ([v10 safari_isOrContainsCloudKitMissingZoneError])
  {
    v11 = *(v8 + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064D88;
    block[3] = &unk_100131628;
    v41 = *(a1 + 48);
    dispatch_async(v11, block);
    v12 = v41;
  }

  else if (([v10 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(v10, "safari_isCloudKitWriteConflictError") & 1) != 0 || (objc_msgSend(v10, "safari_isAtomicWriteError") & 1) != 0 || objc_msgSend(v10, "safari_isCloudKitBatchTooLargeError"))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100068D9C(v13);
    }

    v14 = *(v8 + 2);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100064DFC;
    v37[3] = &unk_100130F40;
    v39 = *(a1 + 48);
    v38 = v10;
    dispatch_async(v14, v37);

    v12 = v39;
  }

  else
  {
    v12 = [v10 safari_cloudKitPartialErrorForItemID:*(a1 + 32)];
    if (([v10 safari_isCloudKitNonExistentRecordError] & 1) != 0 || objc_msgSend(v12, "safari_isCloudKitNonExistentRecordError"))
    {
      v15 = *(v8 + 2);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100064E74;
      v35[3] = &unk_100131628;
      v36 = *(a1 + 48);
      dispatch_async(v15, v35);
      v16 = v36;
    }

    else if (v10)
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100068D04(v17);
      }

      v18 = *(v8 + 2);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100064EE8;
      v32[3] = &unk_100130F40;
      v34 = *(a1 + 48);
      v33 = v10;
      dispatch_async(v18, v32);

      v16 = v34;
    }

    else
    {
      v19 = [v9 objectForKeyedSubscript:*(a1 + 32)];
      v20 = *(v8 + 11);
      *(v8 + 11) = v19;

      v21 = [*(v8 + 11) safari_encodedRecordData];
      [*(v8 + 19) setMigrationStateEncodedRecordData:v21];

      v22 = [WBSCloudBookmarksRemoteMigrationInfo alloc];
      v23 = [*(v8 + 11) safari_migrationState];
      v24 = [*(v8 + 11) safari_migratorDeviceIdentifier];
      v25 = [*(v8 + 11) modificationDate];
      v26 = [v22 initWithMigrationState:v23 migratorDeviceIdentifier:v24 serverModificationDate:v25];

      v27 = *(v8 + 2);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100064F60;
      v29[3] = &unk_100130F40;
      v28 = *(a1 + 48);
      v30 = v26;
      v31 = v28;
      v16 = v26;
      dispatch_async(v27, v29);
    }
  }
}

void sub_100064D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[WBSCloudBookmarksRemoteMigrationInfo alloc] initWithMigrationState:0 migratorDeviceIdentifier:0 serverModificationDate:0];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100064DFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [[WBSCloudBookmarksRemoteMigrationInfo alloc] initWithMigrationState:-1 migratorDeviceIdentifier:0 serverModificationDate:0];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_100064E74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[WBSCloudBookmarksRemoteMigrationInfo alloc] initWithMigrationState:0 migratorDeviceIdentifier:0 serverModificationDate:0];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100064EE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [[WBSCloudBookmarksRemoteMigrationInfo alloc] initWithMigrationState:-1 migratorDeviceIdentifier:0 serverModificationDate:0];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_100065098(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100068E34(v4);
    }

    v5 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065258;
    block[3] = &unk_100130F40;
    v23 = *(a1 + 64);
    v22 = v3;
    dispatch_async(v5, block);

    v6 = v23;
  }

  else
  {
    v7 = *(a1 + 72);
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(v9 + 8);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006526C;
    v16[3] = &unk_1001347B8;
    v20 = v7;
    v11 = v8;
    v12 = *(a1 + 32);
    v19 = *(a1 + 64);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v9;
    *(&v15 + 1) = v11;
    v17 = v15;
    v18 = v14;
    dispatch_async(v10, v16);

    v6 = *(&v17 + 1);
  }
}

void sub_10006526C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = *(*(a1 + 32) + 88);
  if (!v3)
  {
    v4 = [[CKRecord alloc] initWithRecordType:@"MigrationState" recordID:v2];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v3 = *(*(a1 + 32) + 88);
  }

  [v3 safari_setMigrationState:*(a1 + 72)];
  if (*(a1 + 72))
  {
    v7 = [*(a1 + 40) copy];
    [*(*(a1 + 32) + 88) safari_setMigratorDeviceIdentifier:v7];
  }

  else
  {
    [*(*(a1 + 32) + 88) safari_setMigratorDeviceIdentifier:0];
  }

  v8 = [CKModifyRecordsOperation alloc];
  v26 = *(*(a1 + 32) + 88);
  v9 = [NSArray arrayWithObjects:&v26 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v11 = [*(a1 + 32) operationConfiguration];
  [v10 setConfiguration:v11];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000654E4;
  v18[3] = &unk_100134790;
  v12 = v2;
  v19 = v12;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v23 = *(a1 + 72);
  v15 = *(a1 + 32);
  v20 = v13;
  v21 = v15;
  v22 = v14;
  [v10 setModifyRecordsCompletionBlock:v18];
  v16 = *(a1 + 48);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 72);
    *buf = 134217984;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Enqueuing request to set remote migration state to %ld", buf, 0xCu);
  }

  [*(a1 + 32) _scheduleOperation:v10 inOperationGroup:*(a1 + 56) operationQueue:*(*(a1 + 32) + 56)];
}

void sub_1000654E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 64);
    *buf = 134217984;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Completed operation to try to set remote migration state to %ld", buf, 0xCu);
  }

  v8 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006564C;
  block[3] = &unk_100131EC8;
  v14 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v18 = *(a1 + 64);
  v11 = *(a1 + 48);
  v15 = v9;
  v16 = v11;
  v17 = v10;
  v12 = v5;
  dispatch_async(v8, block);
}

void sub_10006564C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100068ECC(a1, v2, v3);
    }

    v4 = *(*(a1 + 48) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000657F0;
    block[3] = &unk_100130F40;
    v5 = &v12;
    v12 = *(a1 + 56);
    v11 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = [*(*(a1 + 48) + 88) safari_encodedRecordData];
    [*(*(a1 + 48) + 152) setMigrationStateEncodedRecordData:v6];

    v7 = *(*(a1 + 48) + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100065804;
    v8[3] = &unk_100131628;
    v5 = &v9;
    v9 = *(a1 + 56);
    dispatch_async(v7, v8);
  }
}

void sub_100065A24(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = [a5 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:v9];
  v12 = [v10 copy];

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Minimum sync API version fetch operation completed", buf, 2u);
  }

  if (([v11 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(v11, "safari_isCloudKitWriteConflictError") & 1) != 0 || (objc_msgSend(v11, "safari_isAtomicWriteError") & 1) != 0 || objc_msgSend(v11, "safari_isCloudKitBatchTooLargeError"))
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100068F70(v14);
    }

    v15 = *(v8 + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065DB8;
    block[3] = &unk_100130F40;
    v34 = *(a1 + 48);
    v33 = v11;
    dispatch_async(v15, block);

    v16 = v34;
  }

  else if (([v11 safari_isCloudKitNonExistentRecordError] & 1) != 0 || objc_msgSend(v11, "safari_isOrContainsCloudKitMissingZoneError"))
  {
    v17 = *(v8 + 2);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100065DD8;
    v30[3] = &unk_100131628;
    v31 = *(a1 + 48);
    dispatch_async(v17, v30);
    v16 = v31;
  }

  else if (v11)
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100068F70(v18);
    }

    v19 = *(v8 + 2);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100065DF8;
    v27[3] = &unk_100130F40;
    v29 = *(a1 + 48);
    v28 = v11;
    dispatch_async(v19, v27);

    v16 = v29;
  }

  else
  {
    v20 = [v12 objectForKeyedSubscript:*(a1 + 32)];
    v21 = [v20 copy];

    objc_storeStrong(v8 + 10, v21);
    v22 = *(v8 + 2);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100065E10;
    v24[3] = &unk_100130F40;
    v23 = *(a1 + 48);
    v25 = v21;
    v26 = v23;
    v16 = v21;
    dispatch_async(v22, v24);
  }
}

uint64_t sub_100065E10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) safari_minimumSyncAPIVersion];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void sub_100065F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 safari_matchesErrorDomain:@"CloudBookmarkStoreErrorDomain" andCode:2] & 1) == 0)
  {
    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100069008(v10);
    }

    v11 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000660C4;
    block[3] = &unk_100130F40;
    v18 = *(a1 + 48);
    v17 = v4;
    dispatch_async(v11, block);

    v9 = v18;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000660D8;
    v12[3] = &unk_100132120;
    v8 = *(a1 + 56);
    v12[4] = v6;
    v15 = v8;
    v13 = v5;
    v14 = *(a1 + 48);
    dispatch_async(v7, v12);

    v9 = v13;
  }
}

void sub_1000660D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = *(*(a1 + 32) + 80);
  if (!v3)
  {
    v4 = [[CKRecord alloc] initWithRecordType:@"SyncRequirements" recordID:v2];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    v3 = *(*(a1 + 32) + 80);
  }

  [v3 safari_setMinimumSyncAPIVersion:*(a1 + 56)];
  v7 = [CKModifyRecordsOperation alloc];
  v25 = *(*(a1 + 32) + 80);
  v8 = [NSArray arrayWithObjects:&v25 count:1];
  v9 = [v7 initWithRecordsToSave:v8 recordIDsToDelete:0];

  v10 = [*(a1 + 32) operationConfiguration];
  [v9 setConfiguration:v10];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100066314;
  v17[3] = &unk_100134790;
  v11 = v2;
  v18 = v11;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v22 = *(a1 + 56);
  v14 = *(a1 + 32);
  v19 = v12;
  v20 = v14;
  v21 = v13;
  [v9 setModifyRecordsCompletionBlock:v17];
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 56);
    *buf = 134217984;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Enqueuing request to set minimum sync API version to %zd", buf, 0xCu);
  }

  [*(a1 + 32) _scheduleOperation:v9 inOperationGroup:0 operationQueue:*(*(a1 + 32) + 56)];
}

void sub_100066314(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 64);
    *buf = 134217984;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Completed operation to try to set minimum sync API version to %zd", buf, 0xCu);
  }

  v8 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006647C;
  block[3] = &unk_100131EC8;
  v14 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v18 = *(a1 + 64);
  v11 = *(a1 + 48);
  v15 = v9;
  v16 = v11;
  v17 = v10;
  v12 = v5;
  dispatch_async(v8, block);
}

void sub_10006647C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000690A0(a1, v2, v3);
    }

    v4 = *(*(a1 + 48) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000665E8;
    block[3] = &unk_100130F40;
    v5 = &v11;
    v11 = *(a1 + 56);
    v10 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000665FC;
    v7[3] = &unk_100131628;
    v5 = &v8;
    v8 = *(a1 + 56);
    dispatch_async(v6, v7);
  }
}

void sub_1000668C8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a3;
  v11 = [a4 copy];
  v12 = [v9 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];

  v13 = *(a1 + 40);
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100069144(v13);
    }

    v14 = v10[2];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066A58;
    block[3] = &unk_100130F40;
    v20 = *(a1 + 56);
    v19 = v12;
    dispatch_async(v14, block);

    v10 = v20;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully set up new record zone", v17, 2u);
    }

    v15 = [v11 firstObject];
    v16 = v10[6];
    v10[6] = v15;

    [v10 _setUpEncryptionInfoInOperationGroup:*(a1 + 48) withCompletionHandler:*(a1 + 56)];
  }
}

id *sub_10006701C(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return [result[4] addRecord:a4];
  }

  return result;
}

void sub_100067038(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = [a7 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  if (v14)
  {
    v15 = v11[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067200;
    block[3] = &unk_100130E00;
    v16 = &v25;
    v25 = *(a1 + 40);
    v17 = &v23;
    v23 = *(a1 + 32);
    v24 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    [*(a1 + 32) setServerChangeToken:v12];
    [*(a1 + 32) setClientChangeTokenData:v13];
    v18 = v11[2];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100067288;
    v19[3] = &unk_100130F40;
    v16 = &v21;
    v21 = *(a1 + 40);
    v17 = &v20;
    v20 = *(a1 + 32);
    dispatch_async(v18, v19);
  }
}

void sub_100067200(uint64_t a1)
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

void sub_100067288(uint64_t a1)
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

void sub_100067310(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = *(a3 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000673D8;
    v8[3] = &unk_100130F40;
    v10 = *(a1 + 32);
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

void sub_1000673D8(uint64_t a1)
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

void sub_1000676BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1000676D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_100067730(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000677C8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100067894(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100067960(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000679F8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100067A90(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100067B90(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100067C90(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100067D5C(void *a1, void *a2)
{
  v4 = a1;
  [sub_10001A9D4() emailAddress];
  objc_claimAutoreleasedReturnValue();
  v10 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10001A9C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100067EA8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  sub_1000676A4();
  sub_1000676D8(&_mh_execute_header, v5, v7, "Could not fetch zone-wide share record for zone %{public}@, error: %{public}@", v8);
}

void sub_100067F54(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  sub_1000676A4();
  sub_1000676D8(&_mh_execute_header, v5, v7, "Could not fetch zone-wide share record for zone %{public}@, error: %{public}@", v8);
}

void sub_100068034(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676A4();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10006810C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000681D8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068270(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10006833C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068408(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000684D4()
{
  sub_100008064();
  v3 = 2048;
  v4 = v0;
  sub_1000676D8(&_mh_execute_header, v1, v1, "*** Minimum sync API version is too new (%zd, our current version is %zd)", v2);
}

void sub_1000685B8(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  sub_1000676D8(&_mh_execute_header, a3, a3, "Failed to retrieve record with ID %{public}@, error: %{public}@", &v4);
}

void sub_10006863C(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_10001A9D4() recordID];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676F0();
  sub_10003112C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000686F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() recordID];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10006878C(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_10001A9D4() recordID];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676F0();
  sub_10003112C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100068844(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_10001A9D4() recordID];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676F0();
  sub_10003112C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000688FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676A4();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000689D4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068B08(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068BD4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068C6C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068D04(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068D9C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068E34(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100068ECC(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 64);
  v5 = *a2;
  v6 = a3;
  v7 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676A4();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100068F70(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100069008(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000690A0(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 64);
  v5 = *a2;
  v6 = a3;
  v7 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_1000676A4();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100069144(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000691DC(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100069274(void *a1, uint64_t a2, id *a3)
{
  v5 = a1;
  v6 = [sub_10001A9D4() safari_migratorDeviceIdentifier];
  v7 = [*a3 safari_migratorDeviceIdentifier];
  sub_1000676F0();
  v10 = 2112;
  v11 = v8;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Migrator device identifier changed from %@ to %@", v9, 0x16u);
}

void sub_10006A794(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = WBSSafariExtensionStateProfilesKey;
  v9 = [v6 safari_dictionaryForKey:WBSSafariExtensionStateProfilesKey];
  [v7 removeObjectForKey:v8];
  if ([v9 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006A914;
    v11[3] = &unk_1001348D0;
    v12 = v7;
    v13 = v5;
    v14 = a1[4];
    v15 = a1[5];
    v16 = v6;
    v17 = a1[6];
    [v9 enumerateKeysAndObjectsUsingBlock:v11];
  }

  else
  {
    v10 = sub_1000D23FC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10006B424(v6, v10);
    }
  }
}

void sub_10006A914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 mutableCopy];
  [v8 addEntriesFromDictionary:v7];

  if (([v5 isEqualToString:WBSDefaultProfileIdentifier] & 1) == 0)
  {
    [v8 setObject:v5 forKeyedSubscript:WBSSafariExtensionStateProfileIdentifier];
  }

  v9 = [CloudExtensionState cloudExtensionStateWithDictionaryRepresentation:v8 composedIdentifier:*(a1 + 40) owningDeviceUUIDString:*(a1 + 48) cloudExtensionsRecordZoneID:*(a1 + 56)];
  if (v9)
  {
    [*(a1 + 72) addObject:v9];
  }

  else
  {
    v10 = sub_1000D23FC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10006B49C(a1, v10);
    }
  }
}

void sub_10006B3B0(id a1)
{
  v1 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v2 = qword_100153FE8;
  qword_100153FE8 = v1;
}

void sub_10006B424(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create CloudExtensionState - no profiles found in dictionary: %{private}@", &v2, 0xCu);
}

void sub_10006B49C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = 138477827;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create CloudExtensionState from dictionary: %{private}@", &v3, 0xCu);
}

void sub_10006B9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006B9E8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

  if (WeakRetained[152] == 1)
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already synchronizing; ignoring request to sync", buf, 2u);
    }

    *(v3 + 153) = 1;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v5 = a1[4];
    v6 = [v5 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v6)
    {
      v7 = *v46;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(v3 + 3);
          v10 = [*(*(&v45 + 1) + 8 * i) copy];
          v11 = objc_retainBlock(v10);
          [v9 addObject:v11];
        }

        v6 = [v5 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v6);
    }

    goto LABEL_19;
  }

  WeakRetained[154] = 0;
  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting to start synchronization", buf, 2u);
  }

  v13 = objc_loadWeakRetained(v3 + 20);

  if (v13)
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Discontinuing sync because a retry has already been scheduled", buf, 2u);
    }

LABEL_18:
    sub_10000306C(a1[4], 4, 0);
    goto LABEL_19;
  }

  v15 = [[CloudBookmarkAccountPropertiesStore alloc] initWithAccountStore:*(v3 + 18) databaseCoordinator:*(v3 + 24)];
  v16 = *(v3 + 13);
  *(v3 + 13) = v15;

  v17 = [*(v3 + 13) account];
  v18 = v17 == 0;

  if (v18)
  {
    v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Discontinuing sync because user is not signed in", buf, 2u);
    }

    goto LABEL_18;
  }

  if ([*(v3 + 24) lockForClient:@"Sync coordinator"])
  {
    v19 = [v3 deviceIdentifier];
    v20 = [v19 length] == 0;

    if (v20)
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000703B8();
      }

      [*(v3 + 24) unlockForClient:@"Sync coordinator"];
      [v3 _scheduleRetryIfAbleWithOperationGroupForFetching:a1[5] operationGroupForSaving:a1[6] completionHandlers:a1[4]];
    }

    else
    {
      *(v3 + 21) = 0;
      if ([*(v3 + 24) openDatabase])
      {
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10006C184;
        v43[3] = &unk_100134940;
        v43[4] = v3;
        v44 = a1[4];
        v21 = objc_retainBlock(v43);
        v22 = [*(v3 + 24) localMigrationState];
        v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_10007031C();
        }

        if (v22 < 3)
        {
          v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v50 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Discontinuing sync since local migration has not yet completed, migration state: %lu", buf, 0xCu);
          }

          (v21[2])(v21, 1, 0);
          goto LABEL_63;
        }

        if (v22 == -1)
        {
          v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Discontinuing sync since local migration state cannot be read", buf, 2u);
          }
        }

        else
        {
          if (v22 == 3)
          {
            v29 = [*(v3 + 24) databaseRef];
            v30 = [*(v3 + 24) databaseAccessor];
            v31 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v29 databaseAccessor:v30];

            if (!v31)
            {
              v39 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_100070384();
              }

              goto LABEL_62;
            }
          }

          if ([*(v3 + 13) updateAccountHashIfNeeded])
          {
            v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because account hash differed", buf, 2u);
            }

LABEL_62:
            [v3 _resetSyncData];
            (v21[2])(v21, 5, 1);
            goto LABEL_63;
          }

          if ([*(v3 + 13) isDataclassEnabled])
          {
            [*(v3 + 24) closeDatabaseAndSave:0];
            v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Beginning synchronization", buf, 2u);
            }

            *(v3 + 152) = 1;
            objc_storeStrong(v3 + 1, a1[5]);
            objc_storeStrong(v3 + 2, a1[6]);
            v35 = [a1[4] mutableCopy];
            v36 = *(v3 + 3);
            *(v3 + 3) = v35;

            v37 = *(v3 + 23);
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_10006C1E4;
            v40[3] = &unk_1001349E0;
            objc_copyWeak(&v42, a1 + 7);
            v41 = a1[5];
            [v37 fetchCachedRemoteMigrationInfoWithCompletionHandler:v40];

            objc_destroyWeak(&v42);
            goto LABEL_63;
          }

          v38 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks Safari sync is disabled", buf, 2u);
          }
        }

        (v21[2])(v21, 4, 0);
LABEL_63:

        goto LABEL_19;
      }

      v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000702E8();
      }

      [*(v3 + 24) unlockForClient:@"Sync coordinator"];
      sub_10000306C(a1[4], 4, 0);
    }
  }

  else
  {
    v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000702B4();
    }

    [v3 _scheduleRetryIfAbleWithOperationGroupForFetching:a1[5] operationGroupForSaving:a1[6] completionHandlers:a1[4]];
  }

LABEL_19:
}

void sub_10006C184(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 192) closeDatabaseAndSave:?];
  [*(*(a1 + 32) + 192) unlockForClient:@"Sync coordinator"];
  v4 = *(a1 + 40);

  sub_10000306C(v4, a2, 0);
}

void sub_10006C1E4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  v4 = *(a1 + 32);
  v5 = v3;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v6);
}

void sub_10006C2BC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 23);
    v5 = a1[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006C3B8;
    v6[3] = &unk_1001349B8;
    objc_copyWeak(&v9, a1 + 6);
    v7 = a1[4];
    v8 = a1[5];
    [v4 setUpBookmarksRecordZoneCreatingIfNeeded:0 inOperationGroup:v5 withCompletionHandler:v6];

    objc_destroyWeak(&v9);
  }
}

void sub_10006C3B8(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v7, a1 + 6);
  v4 = v3;
  v5 = a1[4];
  v6 = a1[5];
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v7);
}

void sub_10006C4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = (a1 + 32);
    if (*(a1 + 32))
    {
      v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000703EC(v4, v5);
      }

      [v3 _didFailToSyncWithError:*v4 didOpenDatabase:0];
    }

    else
    {
      v6 = *(WeakRetained + 23);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10006C598;
      v8[3] = &unk_100134968;
      v7 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = v3;
      [v6 fetchRemoteMigrationInfoInOperationGroup:v7 withCompletionHandler:v8];
    }
  }
}

void sub_10006C598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  v7 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_10006C670(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_9;
  }

  v6 = [v5 migratorDeviceIdentifier];
  v7 = [*(a1 + 48) migratorDeviceIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    goto LABEL_9;
  }

  v2 = [NSError safari_errorWithCloudBookmarksCode:3 userInfo:0];
  if (v2)
  {
LABEL_2:
    v3 = v2;
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007047C(v4);
    }

    [*(a1 + 56) _didFailToSyncWithError:v3 didOpenDatabase:0];
  }

  else
  {
LABEL_9:
    v9 = *(a1 + 56);

    [v9 _bookmarkStoreDidFinishSetUp];
  }
}

id sub_10006C978(void *a1)
{
  objc_storeWeak((a1[4] + 160), 0);
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _beginSyncingWithOperationGroupForFetching:v3 operationGroupForSaving:v4 completionHandlers:v5];
}

id sub_10006D838(uint64_t a1, _BYTE *a2)
{
  v4 = [*(*(a1 + 32) + 48) firstObject];

  if (!v4)
  {
    v6 = 0;
    *a2 = 1;
    goto LABEL_15;
  }

  v5 = [*(*(a1 + 32) + 192) databaseAccessor];
  v6 = [CloudBookmark cloudBookmarkWithChange:v4 databaseAccessor:v5 updater:*(a1 + 32)];

  if (v6)
  {
    v7 = [v6 recordName];
    v8 = [*(*(a1 + 32) + 192) databaseAccessor];
    v9 = [v8 changeTypeForChange:v4];

    if (v9 == 2)
    {
      [*(*(a1 + 32) + 112) didDeleteBookmarkWithRecordName:v7];
      goto LABEL_13;
    }

    if (v9 == 1)
    {
      v10 = [*(*(a1 + 32) + 192) databaseAccessor];
      v11 = [v10 changeIsMoveChange:v4];

      if (!v11)
      {
LABEL_13:
        [*(*(a1 + 32) + 48) removeObjectAtIndex:0];
        v12 = v6;

        goto LABEL_14;
      }

      [*(*(a1 + 32) + 40) removeObject:v7];
    }

    else if (v9)
    {
      goto LABEL_13;
    }

    [*(*(a1 + 32) + 112) didLocallyMoveBookmarkWithRecordName:v7];
    goto LABEL_13;
  }

  [*(*(a1 + 32) + 48) removeObjectAtIndex:0];
LABEL_14:

LABEL_15:

  return v6;
}

id sub_10006DC38(uint64_t a1, _BYTE *a2)
{
  v4 = [*(*(a1 + 32) + 64) firstObject];
  if (v4)
  {
    v5 = [*(*(a1 + 32) + 192) databaseRef];
    v6 = [*(*(a1 + 32) + 192) databaseAccessor];
    v7 = [CloudBookmark cloudBookmarkForReparentedItemWithRecordName:v4 inDatabase:v5 databaseAccessor:v6 updater:*(a1 + 32)];

    [*(*(a1 + 32) + 64) removeObjectAtIndex:0];
  }

  else
  {
    v7 = 0;
    *a2 = 1;
  }

  return v7;
}

id sub_10006E2FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000014D0;
  v17 = sub_10006E46C;
  v18 = 0;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_10006E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006E474(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_recordName];
  if (*(a1 + 72) != 1)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:v2];
    v5 = [*(*(a1 + 40) + 184) bookmarkHashGenerator];
    v6 = *(a1 + 56);
    v7 = [v4 configuration];
    [v5 verifyIdentityHashInBookmarkRecord:v6 configuration:v7];

    v8 = [v4 resultFromMergingRecord:*(a1 + 56) usingUpdater:*(a1 + 40)];
    v9 = v8;
    if ((v8 & 0x10) != 0)
    {
      v10 = [*(a1 + 40) _rebuildUndeletedBookmark:v4];

      [*(a1 + 48) setObject:v10 forKeyedSubscript:v2];
      v4 = v10;
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_7;
    }

    [v4 updateLocalItemWithUpdater:*(a1 + 40)];
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

LABEL_13:
    [*(*(a1 + 40) + 112) addMovedBookmark:v4];
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 1) == 0)
      {
LABEL_10:
        [*(*(a1 + 40) + 80) removeObject:v2];
        [*(*(a1 + 40) + 96) removeObject:v2];
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:
      v11 = [v4 record];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      goto LABEL_16;
    }

LABEL_14:
    [*(*(a1 + 40) + 112) didDeleteBookmarkWithRecordName:v2];
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000706CC();
  }

  [*(*(a1 + 40) + 112) didDeleteBookmarkWithRecordName:v2];
  [*(a1 + 48) removeObjectForKey:v2];
  [*(*(a1 + 40) + 80) removeObject:v2];
  [*(*(a1 + 40) + 96) removeObject:v2];
LABEL_17:
}

void sub_10006E654(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v6;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_10006E6FC(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100070734(v2, v3);
    }

    return [*(a1 + 40) _didFailToSyncWithError:*(a1 + 32) didOpenDatabase:1];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }
}

void sub_10006E7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000707C4(v5);
    }

    [*(a1 + 32) _didFailToSyncWithError:v3 didOpenDatabase:1];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sync coordinator finished sync down", v6, 2u);
    }

    [*(a1 + 32) _continueSyncingAfterSyncDown:1];
  }
}

void sub_10006EBAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_10006EC54(id *a1)
{
  [a1[4] _updateBookmarkWithRecord:a1[5]];
  v2 = [a1[5] safari_recordName];
  [*(a1[4] + 17) didReceiveRecordWithNameFromServer:v2];
  [*(a1[4] + 12) removeObject:v2];
  [a1[6] addObject:v2];
}

void sub_10006ECD8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v4;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_10006ED80(uint64_t a1)
{
  v2 = [*(a1 + 32) recordName];
  [*(*(a1 + 40) + 112) didDeleteBookmarkWithRecordName:v2];
  [*(*(a1 + 40) + 136) didReceiveRecordWithNameFromServer:v2];
  [*(*(a1 + 40) + 96) removeObject:v2];
  [*(a1 + 48) addObject:v2];
}

void sub_10006EE08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v9 = a4;
  v10 = *(a1 + 32);
  v13 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v7 = v6;
  v8 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_10006EF04(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_isCloudKitExpiredChangeTokenError];
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 72);

    [v3 _handleExpiredChangeTokenError:v5 completionHandler:v6];
  }

  else
  {
    v7 = v3[17];
    if (v7 && !*(a1 + 32))
    {
      [v3 _didCompleteSyncDownAfterExpiredChangeTokenError];
      v3 = *v4;
      v7 = *(*v4 + 136);
    }

    v3[17] = 0;

    if (*(a1 + 32))
    {
      v8 = *(*(a1 + 72) + 16);

      v8();
    }

    else
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 48);
        v11 = *(a1 + 56);
        *buf = 138543618;
        v33 = v10;
        v34 = 2114;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did finish fetching records between server change token: %{public}@ and server change token: %{public}@", buf, 0x16u);
      }

      v12 = [*(*v4 + 96) count];
      if (v12)
      {
        v13 = v12;
        v14 = [*(*v4 + 80) count];
        v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (v13 == v14)
        {
          if (v16)
          {
            sub_100070854(a1 + 40, v13, v15);
          }
        }

        else if (v16)
        {
          v29 = *(*v4 + 96);
          *buf = 134218498;
          v33 = v13;
          v34 = 2048;
          v35 = v14;
          v36 = 2114;
          v37 = v29;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Did not receive %ld records on sync down out of the %ld records sent to be saved. Missing records: %{public}@", buf, 0x20u);
        }

        v17 = +[NSNotificationCenter defaultCenter];
        v18 = *v4;
        v30 = @"bugIDs";
        v31 = &off_10013CB48;
        v19 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        [v17 postNotificationName:@"cloudBookmarkDidDetectBug" object:v18 userInfo:v19];
      }

      v20 = (a1 + 64);
      if ([*(*(a1 + 40) + 88) intersectsSet:*(a1 + 64)])
      {
        [*v20 intersectSet:*(*v4 + 88)];
        [*(*v4 + 88) minusSet:*v20];
        v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000708E4((a1 + 64), v21);
        }
      }

      [*(*(a1 + 40) + 88) unionSet:*(*(a1 + 40) + 96)];
      [*(*(a1 + 40) + 96) removeAllObjects];
      [*(*(a1 + 40) + 80) removeAllObjects];
      v22 = [*(*(a1 + 40) + 192) databaseRef];
      v23 = [*(*(a1 + 40) + 192) databaseAccessor];
      v24 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v22 databaseAccessor:v23];

      v25 = *(a1 + 56);
      v26 = [*(*(a1 + 40) + 184) bookmarksRecordZoneID];
      [v24 setLastServerChangeToken:v25 forRecordZoneID:v26];

      v27 = [*(*(a1 + 40) + 192) databaseRef];
      v28 = [*(*(a1 + 40) + 192) databaseAccessor];
      [v24 writeToDatabase:v27 databaseAccessor:v28];

      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_100070018(void *a1)
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

void sub_100070298(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000703EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "Failed to set up Bookmarks Record Zone with error: %{public}@", v8, v9, v10, v11, v12);
}

void sub_10007047C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to fetch (or received invalid) remote migration state record with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100070574(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Sync coordinator failed to sync bookmarks with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100070638(void *a1)
{
  v2 = a1;
  [sub_10000807C() count];
  sub_100008064();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Saving record batch of size: %lu", v3, 0xCu);
}

void sub_100070734(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "Did fail to save record batch with error: %{public}@", v8, v9, v10, v11, v12);
}

void sub_1000707C4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Error received while syncing down: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100070854(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 96);
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "None of the %ld records sent to be saved to the server were received on sync down. Missing records: %{public}@", &v4, 0x16u);
}

void sub_1000708E4(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [v3 count];
  v5 = *a1;
  sub_100008064();
  sub_100022738(&_mh_execute_header, v6, v7, "Did receive %ld records in current sync down that were supposed to be retrieved in the previous one. Received records: %{public}@", v8, v9, v10, v11, v12);
}

void sub_100070988(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v11 = sub_10001C04C(a3);
  sub_100022738(&_mh_execute_header, v5, v6, "Merging record %{public}@ with result %{public}@ indicates that the remote record needs update despite being in sync down phase. The record should have been saved to the server before.", v7, v8, v9, v10, 2u);
}

void sub_100070A38(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_10000807C() safari_recordName];
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = [a2 safari_minimumAPIVersion];
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Record %@ has MinimumAPIVersion %zd and will be deleted locally", &v6, 0x16u);
}

void sub_100070C20(uint64_t a1)
{
  if ((*(*(a1 + 32) + 129) & 1) == 0)
  {
    v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sync migration converter beginning migration", v45, 2u);
    }

    *(*(a1 + 32) + 129) = 1;
    v3 = objc_retainBlock(*(a1 + 48));
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    *(*(a1 + 32) + 128) = 0;
    v6 = [*(a1 + 32) databaseRef];
    v7 = [*(a1 + 32) databaseAccessor];
    v8 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v6 databaseAccessor:v7];

    [v8 setDidNotSaveRecordsAfterMigration:1];
    v9 = [*(a1 + 32) databaseRef];
    v10 = [*(a1 + 32) databaseAccessor];
    [v8 writeToDatabase:v9 databaseAccessor:v10];

    [*(a1 + 32) _prepareRecordsForMigration];
    v11 = [CloudBookmarkMovedBookmarkManager alloc];
    v12 = [*(a1 + 32) databaseRef];
    v13 = [*(a1 + 32) databaseAccessor];
    v14 = [(CloudBookmarkMovedBookmarkManager *)v11 initWithDatabase:v12 databaseAccessor:v13];
    v15 = *(a1 + 32);
    v16 = *(v15 + 56);
    *(v15 + 56) = v14;

    v17 = [CloudBookmarkPendingReferenceManager alloc];
    v18 = [*(a1 + 32) databaseRef];
    v19 = [*(a1 + 32) databaseAccessor];
    v20 = [(CloudBookmarkPendingReferenceManager *)v17 initWithDatabase:v18 databaseAccessor:v19];
    v21 = *(a1 + 32);
    v22 = *(v21 + 64);
    *(v21 + 64) = v20;

    v23 = [*(a1 + 32) accountPropertiesStore];
    v24 = [CloudBookmarkSyncMigrationFolderContentConverter alloc];
    v25 = [*(a1 + 32) bookmarkStore];
    v26 = [*(a1 + 32) databaseRef];
    v27 = [*(a1 + 32) databaseAccessor];
    v28 = [(CloudBookmarkDatabaseHandler *)v24 initWithBookmarkStore:v25 database:v26 databaseAccessor:v27 accountPropertiesStore:v23];
    v29 = *(a1 + 32);
    v30 = *(v29 + 72);
    *(v29 + 72) = v28;

    [*(*(a1 + 32) + 72) setDelegate:?];
    v31 = [CloudBookmarkSyncMigrationSyncDownHandler alloc];
    v32 = [*(a1 + 32) bookmarkStore];
    v33 = [*(a1 + 32) databaseRef];
    v34 = [*(a1 + 32) databaseAccessor];
    v35 = [(CloudBookmarkDatabaseHandler *)v31 initWithBookmarkStore:v32 database:v33 databaseAccessor:v34 accountPropertiesStore:v23];
    v36 = *(a1 + 32);
    v37 = *(v36 + 80);
    *(v36 + 80) = v35;

    [*(*(a1 + 32) + 80) setDelegate:?];
    v38 = [CloudBookmarkSyncMigrationSaveReparentedBookmarksHandler alloc];
    v39 = [*(a1 + 32) bookmarkStore];
    v40 = [*(a1 + 32) databaseRef];
    v41 = [*(a1 + 32) databaseAccessor];
    v42 = [(CloudBookmarkDatabaseHandler *)v38 initWithBookmarkStore:v39 database:v40 databaseAccessor:v41 accountPropertiesStore:v23];
    v43 = *(a1 + 32);
    v44 = *(v43 + 88);
    *(v43 + 88) = v42;

    [*(*(a1 + 32) + 88) setDelegate:?];
    [*(a1 + 32) _performMergingSyncDownInOperationGroup:*(a1 + 40)];
  }
}

void sub_1000714AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v7 = v6;
  v8 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_100071580(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007282C(v2, v3);
    }

    return [*(a1 + 40) _migrationDidCompleteWithError:*(a1 + 32)];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(a1 + 40) + 56) didDeleteBookmarkWithRecordName:*(*(&v15 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Did finish merging sync down, temporarily reparent and sort records in case we have cycles or unrooted records in the hierarchy", v14, 2u);
    }

    [*(*(a1 + 40) + 56) verifyAndReparentUnrootedBookmarksRememberingOriginalParents];
    [*(*(a1 + 40) + 56) moveBookmarksIntoPlace];
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did finish reparenting, perform deduplication keeping records with sync data", v14, 2u);
    }

    v12 = [*(a1 + 40) databaseAccessor];
    [v12 performDeduplicationWithDatabase:objc_msgSend(*(a1 + 40) mode:{"databaseRef"), 1}];

    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did finish deduplication keeping records with sync data, begin converting and saving remaining records", v14, 2u);
    }

    return [*(a1 + 40) _generateAndSaveRecordsInOperationGroup:*(a1 + 56)];
  }
}

void sub_100071870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  v7 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_100071944(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000728BC(v2, v3);
    }

    return [*(a1 + 40) _migrationDidCompleteWithError:*(a1 + 32)];
  }

  else
  {
    v5 = [*(a1 + 48) copy];
    v6 = *(a1 + 40);
    v7 = *(v6 + 96);
    *(v6 + 96) = v5;

    v8 = [*(a1 + 48) mutableCopy];
    v9 = *(a1 + 40);
    v10 = *(v9 + 112);
    *(v9 + 112) = v8;

    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did finish converting and saving remaining records", v12, 2u);
    }

    return [*(a1 + 40) _performSyncDownInOperationGroup:*(a1 + 56)];
  }
}

void sub_100071C04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100071C28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  objc_copyWeak(&v11, (a1 + 56));
  v9 = *(a1 + 48);
  v10 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v11);
}

void sub_100071D34(id *a1)
{
  v2 = a1 + 4;
  if (!a1[4])
  {
    [*(a1[5] + 14) minusSet:a1[8]];
    v4 = [*(a1[5] + 14) count];
    if (!v4)
    {
LABEL_18:
      if ([*(a1[5] + 13) intersectsSet:a1[8]])
      {
        v19 = [a1[8] mutableCopy];
        [v19 intersectSet:*(a1[5] + 13)];
        [*(a1[5] + 13) minusSet:v19];
        v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100072A6C(v20, v19);
        }
      }

      v21 = a1 + 5;
      [*(a1[5] + 13) unionSet:*(a1[5] + 14)];
      v22 = *(a1[5] + 14);
      *(*v21 + 14) = 0;

      v23 = *(a1[5] + 12);
      *(*v21 + 12) = 0;

      v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Did finish post-migration sync down", buf, 2u);
      }

      [a1[5] _didFinishSyncDownInOperationGroup:a1[7]];
      return;
    }

    v5 = v4;
    v6 = [*(a1[5] + 12) count];
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v5 == v6)
    {
      if (v8)
      {
        v9 = *(a1[5] + 14);
        *buf = 134218242;
        v42 = v5;
        v43 = 2114;
        v44 = v9;
        v10 = "None of the %ld records saved to the server were retrieved on sync down. Missing records: %{public}@";
        v11 = v7;
        v12 = 22;
LABEL_33:
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }

    else if (v8)
    {
      v26 = *(a1[5] + 14);
      *buf = 134218498;
      v42 = v5;
      v43 = 2048;
      v44 = v6;
      v45 = 2114;
      v46 = v26;
      v10 = "Did not receive %ld records on sync down out of the %ld records sent to be saved. Missing records: %{public}@";
      v11 = v7;
      v12 = 32;
      goto LABEL_33;
    }

    if (!*(a1[5] + 13))
    {
      v13 = +[NSMutableSet set];
      v14 = a1[5];
      v15 = v14[13];
      v14[13] = v13;
    }

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = a1[5];
    v39 = @"bugIDs";
    v40 = &off_10013CB60;
    v18 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v16 postNotificationName:@"cloudBookmarkDidDetectBug" object:v17 userInfo:v18];

    goto LABEL_18;
  }

  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10007294C(v2, v3);
  }

  if (([*v2 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(*v2, "safari_isCloudKitPartialFailureError") & 1) != 0 || (objc_msgSend(*v2, "safari_isCloudKitNonExistentRecordError") & 1) != 0 || objc_msgSend(*v2, "safari_isCloudKitBatchTooLargeError") || (objc_msgSend(*v2, "safari_isCloudKitWriteConflictError") & 1) != 0 || objc_msgSend(*v2, "safari_isAtomicWriteError"))
  {
    goto LABEL_27;
  }

  if ([*v2 safari_isOrContainsCloudKitMissingZoneError])
  {
    v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100072A28(v25);
    }

LABEL_27:
    [a1[5] _migrationDidCompleteWithError:a1[4]];
    return;
  }

  v27 = a1[6];
  v28 = a1[4];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_100072208;
  v34 = &unk_100134990;
  objc_copyWeak(&v38, a1 + 9);
  v35 = a1[4];
  v36 = a1[7];
  v37 = a1[6];
  v29 = [v27 scheduleRetryIfNeededForError:v28 usingBlock:&v31];
  if (v29 != 1)
  {
    if (v29 == 2)
    {
      v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000729E4(v30);
      }
    }

    [a1[5] _migrationDidCompleteWithError:{a1[4], v31, v32, v33, v34, v35, v36}];
  }

  objc_destroyWeak(&v38);
}

void sub_100072208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performSyncDownInOperationGroup:*(a1 + 40) withRetryManager:*(a1 + 48)];
  }

  else
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100072B14(a1, v4);
    }
  }
}

void sub_10007249C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100072BA4(v7);
    }

    [*(a1 + 32) _migrationDidCompleteWithError:v6];
  }

  else
  {
    v8 = [v5 copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 96);
    *(v9 + 96) = v8;

    v11 = [v5 mutableCopy];
    v12 = *(a1 + 32);
    v13 = *(v12 + 112);
    *(v12 + 112) = v11;

    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Did finish reparenting unrooted records", v15, 2u);
    }

    [*(a1 + 32) _performSyncDownInOperationGroup:*(a1 + 40)];
  }
}

void sub_10007282C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "Did fail to perform merging sync down with error: %{public}@", v8, v9, v10, v11, v12);
}

void sub_1000728BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "Failed to convert local records with error: %{public}@", v8, v9, v10, v11, v12);
}

void sub_10007294C(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to sync down after migration: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100072A6C(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  sub_100008064();
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Did receive %ld records in current sync down that were supposed to be retrieved in the previous one. Received records: %{public}@", v4, 0x16u);
}

void sub_100072B14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "Bailing from sync down due to deallocation with error %{public}@", v8, v9, v10, v11, v12);
}

void sub_100072BA4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Did fail to reparent unrooted bookmarks after migration with error: %{public}@", v6, v7, v8, v9, v10);
}

CloudTabGroupSyncEvent *__cdecl sub_100072DF4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[CloudTabGroupSyncEvent alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id sub_100072F28(void *a1)
{
  v1 = a1;
  v2 = +[NSTimeZone localTimeZone];
  v3 = [NSISO8601DateFormatter stringFromDate:v1 timeZone:v2 formatOptions:1907];

  return v3;
}

void sub_1000735F0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    xpc_transaction_begin();
    v4 = WeakRetained[1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000736A0;
    v5[3] = &unk_100131430;
    v7 = a2;
    v6 = WeakRetained;
    dispatch_async(v4, v5);
  }
}

void sub_1000736A0(uint64_t a1)
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received PCS change notification with state %ld", &v10, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 80);
  v6 = sub_100001B78();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == v4)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring PCS state change notification because it is the same as the current state %ld", &v10, 0xCu);
    }

    xpc_transaction_end();
  }

  else
  {
    if (v7)
    {
      v9 = *(a1 + 40);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Determining CloudTab sync coordinator in response to PCS change notification with state %ld", &v10, 0xCu);
    }

    *(*(a1 + 32) + 88) = 1;
    [*(a1 + 32) _determineCloudTabSyncCoordinatorWithCompletion:&stru_100134C60];
  }
}

uint64_t sub_100073904(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100073A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Determined PCS state to be %ld", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073B00;
  v7[3] = &unk_100131430;
  v7[4] = v5;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

id sub_100073B00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100073B74;
  v4[3] = &unk_100131408;
  v4[4] = v2;
  return [v2 _transitionCloudTabSyncCoordinatorToManateeState:v1 completion:v4];
}

void sub_100073B74(uint64_t a1)
{
  *(*(a1 + 32) + 90) = 0;
  *(*(a1 + 32) + 88) = 0;
  v2 = *(*(a1 + 32) + 64);
  v3 = +[NSMutableArray array];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v2;
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

        v11 = *(*(a1 + 32) + 40);
        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_100073E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v18 = 134217984;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Instantiating sync coordinator using PCS state %ld", &v18, 0xCu);
  }

  [*(*(a1 + 32) + 24) openDatabaseIfNecessary];
  v6 = [CloudTabRemoteStore alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  v8 = [WeakRetained tabSyncArbiter:*(a1 + 32) containerUsingManatee:a2];
  v9 = [(CloudTabRemoteStore *)v6 initWithContainer:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  *(v10 + 32) = v9;

  v12 = [[CloudTabLocalStoreShim alloc] initWithCloudTabLocalStore:*(*(a1 + 32) + 24)];
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = v12;

  [*(*(a1 + 32) + 40) tearDown];
  v15 = [[CloudTabSyncCoordinator alloc] initWithCloudRemoteStore:*(*(a1 + 32) + 32) localStore:*(*(a1 + 32) + 48) accountStore:*(*(a1 + 32) + 16)];
  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_100073F94(uint64_t a1, char a2, int a3)
{
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074058;
  block[3] = &unk_100134D70;
  v11 = a3;
  v12 = a2;
  v13 = *(a1 + 64);
  v8 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_100074058(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = *(a1 + 64);
  if (v3 != 101)
  {
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007680C(v2, v4);
    }
  }

  v5 = *(a1 + 68);
  v6 = sub_100001B78();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      *buf = 0;
      v8 = "CloudTabs database has PCS container sync properties";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "CloudTabs database has normal container sync properties";
    goto LABEL_9;
  }

  v9 = *(a1 + 69);
  v10 = *(a1 + 68);
  v11 = sub_100001B78();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v3 == 101 && v9 == v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Database should not be reset because it's using the correct container", buf, 2u);
    }

    v13 = *(a1 + 69);
    (*(*(a1 + 40) + 16))();
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v12)
    {
      v14 = *(a1 + 56);
      *buf = 134217984;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CloudTabs database needs to reset because sync properties are not compatible with PCS state %ld", buf, 0xCu);
    }

    [*(*(a1 + 32) + 48) setDisabled:1];
    v15 = *(a1 + 32);
    v16 = *(v15 + 24);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000742A8;
    v17[3] = &unk_100134D48;
    v17[4] = v15;
    v20 = *(a1 + 69);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    [v16 deleteDatabaseWithCompletionHandler:v17];
  }
}

void sub_1000742A8(uint64_t a1)
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished resetting CloudTabs database", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100074398;
  v5[3] = &unk_100134D48;
  v5[4] = v3;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

void sub_100074398(uint64_t a1)
{
  [*(*(a1 + 32) + 24) openDatabaseIfNecessary];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100074464;
  v6[3] = &unk_100134D20;
  v6[4] = v3;
  v7 = v2;
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  [v4 setUseManateeContainerForSyncing:v5 completionHandler:v6];
}

void sub_100074464(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074518;
  v4[3] = &unk_100134CF8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 56);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, v4);
}

void sub_100074518(uint64_t a1)
{
  v2 = *(a1 + 56);
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained cloudTabSyncArbiterDidChangeCloudKitContainer:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10007463C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000746C4;
  v2[3] = &unk_100134DC0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _determineCloudTabSyncCoordinatorWithCompletion:v2];
}

void sub_1000746C4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074774;
  v4[3] = &unk_100131990;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_100074814(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000748A8;
  v5[3] = &unk_100131678;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 deleteCloudTabsZoneWithCompletionHandler:v5];
}

void sub_1000748A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v11 = v2;
    v12 = v3;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100074960;
    block[3] = &unk_100130E50;
    block[4] = v6;
    v9 = 0;
    v10 = v5;
    dispatch_async(v7, block);
  }
}

void sub_100074960(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 112));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained cloudTabSyncArbiterDidChangeCloudKitContainer:a1[4]];
  }

  v2 = a1[5];
  (*(a1[6] + 16))();
}

void sub_100074A58(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:CKIdentityUpdateNotification object:0];

  v3 = *(a1 + 32);
  if (*(v3 + 89))
  {
    *(v3 + 89) = 0;
    *(*(a1 + 32) + 88) = 1;
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received expected PCS identity change notification", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    if (objc_opt_respondsToSelector())
    {
      v6 = sub_100001B78();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate of a PCS identity change", v8, 2u);
      }

      [WeakRetained cloudTabSyncArbiterPCSIdentitiesDidChange:*(a1 + 32)];
    }

    xpc_transaction_end();
  }

  else
  {
    v7 = sub_100001B78();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring PCS identity change notification because CloudTabs is not waiting for an identity update", v10, 2u);
    }

    xpc_transaction_end();
  }
}

void sub_100074D50(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = v2;
  if (v2 <= 111)
  {
    if (v2 == 110)
    {
      v10 = sub_100001B78();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received PCS unavailable error from CloudKit. Marking PCS state needs updating", buf, 2u);
      }

      *(*(a1 + 40) + 88) = 1;
      goto LABEL_21;
    }

    if (v2 == 111)
    {
      v4 = sub_100001B78();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received unsynced Keychain error. Observing notification to start fetching CloudTabs when PCS identities change", buf, 2u);
      }

      *(*(a1 + 40) + 89) = 1;
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:*(a1 + 40) selector:"_pcsIdentitiesChangedNotification:" name:CKIdentityUpdateNotification object:0];

LABEL_21:
      (*(*(a1 + 48) + 16))();
      return;
    }

    goto LABEL_15;
  }

  if (v2 != 112 && v2 != 5004)
  {
LABEL_15:
    v9 = *(*(a1 + 48) + 16);

    v9();
    return;
  }

  v7 = sub_100001B78();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received unrecoverable PCS error %ld from CloudKit. Deleting the CloudTabs zone and creating a new one", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100074FB4;
  v11[3] = &unk_100131520;
  v8 = *(a1 + 40);
  v12 = *(a1 + 48);
  [v8 _deleteCloudTabsZoneWithCompletionHandler:v11];
}

void sub_1000750A8(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007517C;
  v9[3] = &unk_100134E10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 _determineCloudTabSyncCoordinatorWithCompletion:v9];
}

void sub_10007517C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100075220;
  v6[3] = &unk_100131A70;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 saveTabsForCurrentDeviceWithDictionaryRepresentation:v3 deviceUUIDString:v4 completionHandler:v6];
}

void sub_100075220(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000752D4;
  v7[3] = &unk_100130F40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _handleManateeErrorIfNeeded:v6 completionHandler:v7];
}

void sub_1000753CC(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000754A0;
  v9[3] = &unk_100134E10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 _determineCloudTabSyncCoordinatorWithCompletion:v9];
}

void sub_1000754A0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100075544;
  v6[3] = &unk_100131A70;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 saveCloudTabCloseRequestWithDictionaryRepresentation:v3 closeRequestUUIDString:v4 completionHandler:v6];
}

void sub_100075544(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000755F8;
  v7[3] = &unk_100130F40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _handleManateeErrorIfNeeded:v6 completionHandler:v7];
}

void sub_1000756D0(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075774;
  v5[3] = &unk_100134E38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _determineCloudTabSyncCoordinatorWithCompletion:v5];
}

void sub_100075774(void *a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007580C;
  v5[3] = &unk_100131A70;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 deleteDevicesWithUUIDStrings:v3 completionHandler:v5];
}

void sub_10007580C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000758C0;
  v7[3] = &unk_100130F40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _handleManateeErrorIfNeeded:v6 completionHandler:v7];
}

void sub_100075998(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075A3C;
  v5[3] = &unk_100134E38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _determineCloudTabSyncCoordinatorWithCompletion:v5];
}

void sub_100075A3C(void *a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075AD4;
  v5[3] = &unk_100131A70;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 deleteCloudTabCloseRequestsWithUUIDStrings:v3 completionHandler:v5];
}

void sub_100075AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075B88;
  v7[3] = &unk_100130F40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _handleManateeErrorIfNeeded:v6 completionHandler:v7];
}

id sub_100075C34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  result = [*(*(a1 + 32) + 96) count];
  if (!result)
  {
    v5 = [*(*(a1 + 32) + 104) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = v5;

    v8 = +[NSMutableArray array];
    v9 = *(a1 + 32);
    v10 = *(v9 + 104);
    *(v9 + 104) = v8;

    v11 = *(a1 + 32);

    return [v11 _fetchDevices];
  }

  return result;
}

void sub_100075E14(id a1, CloudTabSyncCoordinator *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075EA8;
  block[3] = &unk_100131408;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100075F24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100075F94;
  v3[3] = &unk_100134E88;
  v3[4] = v1;
  return [v1 _determineCloudTabSyncCoordinatorWithCompletion:v3];
}

void sub_100075FA4(id a1)
{
  v1 = +[NSDistributedNotificationCenter defaultCenter];
  [v1 postNotificationName:WBSSafariBookmarksSyncAgentCloudTabsWereUpdatedOnServerNotificationName object:0];
}

void sub_100076094(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10007611C;
  v2[3] = &unk_100134DC0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _determineCloudTabSyncCoordinatorWithCompletion:v2];
}

void sub_10007611C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cloudRemoteStore];
  (*(v2 + 16))(v2, v3);
}

void sub_100076214(uint64_t a1)
{
  [*(*(a1 + 32) + 24) openDatabaseIfNecessary];
  v2 = *(*(a1 + 32) + 24);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000762B4;
  v3[3] = &unk_100134EF0;
  v4 = *(a1 + 40);
  [v2 loadCloudTabDataWithCompletionHandler:v3];
}

uint64_t sub_1000762B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &__NSArray0__struct;
  }

  return (*(v2 + 16))(v2, a2);
}

void sub_100076758(id a1)
{
  v1 = [(CloudKitSQLiteStore *)CloudTabSQLiteStore databaseURLForFilename:@"CloudTabs.db"];
  v2 = qword_100153FF8;
  qword_100153FF8 = v1;
}

void sub_10007680C(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to read whether to use PCS cloud container for syncing with sqlite error code %d", v3, 8u);
}

void sub_100076BE8(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) == 1)
  {
    v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100077824(v2);
    }

    v3 = *(a1 + 48);
    v4 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:6 userInfo:0];
    (*(v3 + 16))(v3, v4, &stru_100134F30);
LABEL_5:

    return;
  }

  v5 = objc_retainBlock(*(a1 + 48));
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [*(*(a1 + 32) + 56) lockForClient:@"Sync migration coordinator"];
  v9 = *(a1 + 32);
  if (v8)
  {
    v9[32] = 1;
    if ([*(*(a1 + 32) + 56) openDatabase])
    {
      (*(*(a1 + 56) + 16))();
      v10 = [*(*(a1 + 32) + 8) safari_primaryAppleAccount];
      v4 = [v10 safari_accountHash];

      v11 = [*(*(a1 + 32) + 56) databaseAccessor];
      [v11 setAccountHash:v4 database:{objc_msgSend(*(*(a1 + 32) + 56), "databaseRef")}];

      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Begin performing first deduplication", buf, 2u);
      }

      v13 = [*(*(a1 + 32) + 56) databaseAccessor];
      [v13 performDeduplicationWithDatabase:objc_msgSend(*(*(a1 + 32) + 56) mode:{"databaseRef"), 0}];

      v14 = objc_alloc_init(WBBookmarkDatabaseSyncData);
      v15 = [*(*(a1 + 32) + 56) databaseRef];
      v16 = [*(*(a1 + 32) + 56) databaseAccessor];
      [v14 writeToDatabase:v15 databaseAccessor:v16];

      v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Did finish performing first deduplication", v21, 2u);
      }

      [*(a1 + 32) _beginMigrationAsPrimaryMigrator:*(a1 + 64) inOperationGroup:*(a1 + 40)];
    }

    else
    {
      v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000777E0(v18);
      }

      v19 = *(a1 + 32);
      v4 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:1 userInfo:0];
      [v19 _didFinishMigrationWithError:v4];
    }

    goto LABEL_5;
  }

  v20 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:1 userInfo:0];
  [v9 _didFinishMigrationWithError:v20];
}

void sub_1000770A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100077868(v5, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migration conversion succeeded", buf, 2u);
  }

  v7 = *(a1 + 32);
  v6 = v3;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_10007719C(uint64_t a1)
{
  [*(a1 + 32) _didFinishMigrationWithError:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

id sub_100077318(uint64_t a1)
{
  v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sync migration post-processing handler called", buf, 2u);
  }

  result = [*(*(a1 + 32) + 56) databaseRef];
  if (result)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did finish migration, perform last deduplication", v9, 2u);
      }

      v6 = [*(*(a1 + 32) + 56) databaseAccessor];
      [v6 performDeduplicationWithDatabase:objc_msgSend(*(*(a1 + 32) + 56) mode:{"databaseRef"), 2}];

      v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did finish last deduplication", v8, 2u);
      }

      v4 = *(a1 + 40);
    }

    if (([v4 safari_isCouldNotOpenDatabaseError] & 1) == 0)
    {
      [*(*(a1 + 32) + 56) closeDatabaseAndSave:*(a1 + 40) == 0];
    }

    result = [*(*(a1 + 32) + 56) unlockForClient:@"Sync migration coordinator"];
  }

  *(*(a1 + 32) + 32) = 0;
  return result;
}

void sub_100077524(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }
}

void sub_1000775C4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) lockForClient:@"Sync migration coordinator"])
  {
    v2 = [*(*(a1 + 32) + 56) databaseAccessor];
    [v2 clearAllSyncDataWithDatabase:{objc_msgSend(*(*(a1 + 32) + 56), "databaseRef")}];

    [*(a1 + 32) setLocalMigrationState:0];
    [*(*(a1 + 32) + 56) unlockForClient:@"Sync migration coordinator"];
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:1 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_100077764(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Fetching local migration state from database (isMigrating: %d)", v3, 8u);
}

void sub_100077868(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008028(&_mh_execute_header, v5, v6, "Migration conversion failed with error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_100077900(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008028(&_mh_execute_header, v5, v6, "Sync migration coordinator did fail to migrate with error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_100077AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100077BC4;
  v10[3] = &unk_100131650;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

id sub_100078918(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v4 = [(NSDictionary *)a3 mutableCopy];
  [v4 setObject:0 forKeyedSubscript:@"details"];
  v5 = [v4 copy];

  return v5;
}

void sub_100078974(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100078A80;
  v9[3] = &unk_100134FE8;
  v10 = *(a1 + 32);
  v12 = *(a1 + 48);
  v8 = v7;
  v11 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  if ([v8 count])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

void sub_100078A80(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = v5;
  if (*(a1 + 48) == 1)
  {
    v7 = [v5 mutableCopy];
    [v7 setObject:0 forKeyedSubscript:@"details"];
    v8 = [v7 copy];

    v6 = v8;
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v9];
}

void sub_10007967C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch remote migration state with error: %{public}@", &v2, 0xCu);
}

void sub_1000796F4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize bookmarks JSON with error: %{public}@", &v2, 0xCu);
}

void sub_100079C04(uint64_t a1)
{
  v2 = [CKFetchSubscriptionsOperation alloc];
  v11 = @"CloudTabsZoneSubscription";
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v4 = [v2 initWithSubscriptionIDs:v3];

  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100079D34;
  v8 = &unk_100130E28;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v4 setFetchSubscriptionCompletionBlock:&v5];
  [*(a1 + 32) _scheduleOperation:v4 inOperationGroup:*(a1 + 40) operationQueue:{*(*(a1 + 32) + 40), v5, v6, v7, v8, v9}];
}

void sub_100079D34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:@"CloudTabsZoneSubscription"];
  v7 = sub_100001B78();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007D344(v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched CloudTabs zone subscription", buf, 2u);
  }

  v9 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079E88;
  block[3] = &unk_100130E00;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void sub_100079E88(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CloudTabsZoneSubscription"];
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

void sub_10007A06C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10007A090(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v9 = sub_100001B78();
    v10 = v9;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving CloudTabs zone subscription failed because of missing zone, attempting to create zone", buf, 2u);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10007A214;
      v12[3] = &unk_100130E78;
      v11 = a1[4];
      v14 = a1[5];
      v12[4] = WeakRetained;
      v13 = a1[4];
      [WeakRetained createCloudTabsRecordZoneInOperationGroup:v11 completionHandler:v12];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10007D3D4();
      }

      (*(a1[5] + 2))();
    }
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void sub_10007A214(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001B78();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007D408();
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving CloudTabs zone subscription after creating zone", v8, 2u);
    }

    v6 = a1[4];
    v7 = [CloudTabRemoteStore _zoneID]_0();
    [v6 _saveRecordZoneSubscriptionForZoneID:v7 subscriptionID:@"CloudTabsZoneSubscription" inOperationGroup:a1[5] operationQueue:*(a1[4] + 40) completionHandler:a1[6]];
  }
}

void sub_10007A6DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v9 && *(a1 + 64) == 1 && ([v9 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    v11 = sub_100001B78();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudTabs zone before retrying save", buf, 2u);
    }

    v12 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007A8C0;
    v13[3] = &unk_100130EF0;
    objc_copyWeak(&v20, (a1 + 56));
    v19 = *(a1 + 48);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    [WeakRetained createCloudTabsRecordZoneInOperationGroup:v12 completionHandler:v13];

    objc_destroyWeak(&v20);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10007A8C0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = WeakRetained[2];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10007AA2C;
      v11[3] = &unk_100130EC8;
      v15 = *(a1 + 72);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      dispatch_async(v6, v11);
    }

    else
    {
      v10 = sub_100001B78();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrying save after creating CloudTabsZone", buf, 2u);
      }

      [v5 saveCloudTabsRecordBatch:*(a1 + 56) createCloudTabsZoneIfMissing:0 inOperationGroup:*(a1 + 64) completionHandler:*(a1 + 72)];
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

void sub_10007ADE8(uint64_t a1, void *a2)
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
      v8 = sub_100001B78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000081E0(v8);
      }
    }

    v9 = *(*(a1 + 56) + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007AF30;
    v12[3] = &unk_100130F40;
    v10 = *(a1 + 64);
    v13 = v7;
    v14 = v10;
    v11 = v7;
    dispatch_async(v9, v12);
  }
}

void sub_10007B054(uint64_t a1)
{
  v2 = [CloudTabRemoteStore _zoneID]_0();
  v3 = [CKModifyRecordZonesOperation alloc];
  v12 = v2;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v5 = [v3 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v4];

  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10007B190;
  v9 = &unk_100132D28;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v5 setModifyRecordZonesCompletionBlock:&v6];
  [*(a1 + 32) _scheduleOperation:v5 inOperationGroup:*(a1 + 40) operationQueue:{*(*(a1 + 32) + 40), v6, v7, v8, v9, v10}];
}

void sub_10007B190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_isOrContainsCloudKitMissingZoneError];
  v7 = sub_100001B78();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5 || (v6 & 1) != 0)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully deleted CloudTabs zone", buf, 2u);
    }
  }

  else if (v8)
  {
    v9 = v7;
    v10 = [v5 safari_privacyPreservingDescription];
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed ot delete CloudTabs zone with error: %{public}@", buf, 0xCu);
  }

  v11 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B334;
  block[3] = &unk_100132D00;
  v12 = *(a1 + 40);
  v17 = v6;
  v15 = v5;
  v16 = v12;
  v13 = v5;
  dispatch_async(v11, block);
}

uint64_t sub_10007B334(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return (*(v2 + 16))(v2, v3);
}

void sub_10007B4D4(id *a1)
{
  v2 = [CloudTabRemoteStore _zoneID]_0();
  v3 = [CKModifyRecordZonesOperation alloc];
  v4 = [[CKRecordZone alloc] initWithZoneID:v2];
  v20 = v4;
  v5 = [NSArray arrayWithObjects:&v20 count:1];
  v6 = [v3 initWithRecordZonesToSave:v5 recordZoneIDsToDelete:0];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10007B6A0;
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
  [a1[6] _scheduleOperation:v6 inOperationGroup:a1[5] operationQueue:{*(a1[6] + 5), v10, v11, v12, v13}];

  objc_destroyWeak(&v19);
}

void sub_10007B6A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v17 = sub_100001B78();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully created CloudTabs zone", buf, 2u);
    }

    v14 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];

  v12 = sub_100001B78();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10007D43C(v12, v11);
  }

  v13 = *(a1 + 40);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007B984;
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
      v16 = sub_100001B78();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10007D4D4();
      }
    }

    objc_destroyWeak(&v29);
LABEL_12:
    v18 = *(*(a1 + 56) + 16);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007BA44;
    v20[3] = &unk_100130F40;
    v22 = *(a1 + 64);
    v14 = v14;
    v21 = v14;
    dispatch_async(v18, v20);

    goto LABEL_16;
  }

  v19 = sub_100001B78();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Waiting to retry creation of CloudTabs zone", buf, 2u);
  }

  objc_destroyWeak(&v29);
LABEL_16:
}

void sub_10007B984(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = sub_100001B78();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrying creation of CloudTabs zone", v6, 2u);
    }

    [WeakRetained _createCloudTabsRecordZoneInOperationGroup:*(a1 + 40) withRetryManager:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007D508();
    }

    v5 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10007BECC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v7 = *(a1[4] + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007BFC4;
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

void sub_10007BFC4(uint64_t *a1)
{
  v2 = a1 + 4;
  if (([a1[4] safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(*v2, "safari_isOrContainsCloudKitMissingZoneError"))
  {
    v3 = sub_100001B78();
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
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007D53C();
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
      v10 = sub_100001B78();
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
    v11 = sub_100001B78();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000082F8(v2, v11);
    }
  }

  else
  {
    v9 = sub_100001B78();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100008380(v2, v9);
    }
  }
}

void sub_10007C150(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v10 = *(*(a1 + 32) + 8);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10007C314;
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

void sub_10007C314(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(*v2, "safari_isOrContainsCloudKitMissingZoneError"))
  {
    v3 = sub_100001B78();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007D5A4(v2, v3);
    }

    v4 = [*(a1 + 40) copy];
    v5 = [*(a1 + 48) copy];
    v6 = *(*(a1 + 56) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007CA00;
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

  if (*(a1 + 64))
  {
    [*(a1 + 40) addObjectsFromArray:?];
  }

  if (*(a1 + 72))
  {
    [*(a1 + 48) addObjectsFromArray:?];
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v9 = sub_100001B78();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100067C5C();
    }

    v10 = [*(a1 + 40) copy];
    v11 = [*(a1 + 48) copy];
    v12 = *(*(a1 + 56) + 16);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10007CA18;
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
      v50[2] = sub_10007CA48;
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
      v34 = sub_100001B78();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Batch record save operation completed but we need to re-batch", buf, 2u);
      }

      [*(a1 + 56) _saveCloudTabsRecordBatch:v8 previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) retryManager:*(a1 + 88) inOperationGroup:*(a1 + 96) completionHandler:v33];

      goto LABEL_6;
    }

    v16 = sub_100001B78();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100067C28();
    }

    v17 = [*(a1 + 40) copy];
    v18 = [*(a1 + 48) copy];
    v19 = *(*(a1 + 56) + 16);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10007CA30;
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
  v40[2] = sub_10007CC04;
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
      v23 = sub_100001B78();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10007D570();
      }
    }

    v24 = [*(a1 + 40) copy];
    v25 = [*(a1 + 48) copy];
    v26 = *(*(a1 + 56) + 16);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10007CCF4;
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

void sub_10007CA48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_isCloudKitBatchTooLargeError];
  v7 = sub_100001B78();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100067D28();
    }

    v9 = [*(a1 + 32) copy];
    v10 = [*(a1 + 40) copy];
    v11 = *(*(a1 + 48) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007CBEC;
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
    [*(a1 + 48) _saveCloudTabsRecordBatch:v13 previouslySavedRecords:*(a1 + 32) previouslyDeletedRecordIDs:*(a1 + 40) retryManager:*(a1 + 64) inOperationGroup:*(a1 + 72) completionHandler:*(a1 + 80)];
  }
}

void sub_10007CC04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = sub_100001B78();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to retry batch save request", v8, 2u);
    }

    [WeakRetained _saveCloudTabsRecordBatch:*(a1 + 56) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) retryManager:*(a1 + 64) inOperationGroup:*(a1 + 72) completionHandler:*(a1 + 80)];
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

void sub_10007CE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007CE3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v6 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007CF24;
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

void sub_10007CF24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = sub_100001B78();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008A90((a1 + 32), v3);
    }

    [*(a1 + 40) _recursivelyCancelDependentOperations:WeakRetained operationQueue:*(*(a1 + 40) + 40)];
  }

  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished %@", buf, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007D0B0;
    v7[3] = &unk_100130F40;
    v9 = v5;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void sub_10007D2DC(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"CloudTabs" ownerName:CKCurrentUserDefaultName];
  v2 = qword_100154008;
  qword_100154008 = v1;
}

void sub_10007D344(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to fetch CloudTabs zone subscription by ID with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10007D43C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to create CloudTabs zone with error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10007D5A4(uint64_t *a1, void *a2)
{
  v3 = sub_100008088(a1, a2);
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Batch record save operation completed but failed to save records due to unrecoverable error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10007D66C(id a1)
{
  if ((+[WBSFeatureAvailability isInternalInstall]& 1) != 0)
  {
    v1 = +[NSUserDefaults safari_browserDefaults];
    byte_100154018 = [v1 BOOLForKey:@"TabGroupSyncDebuggerEnabled"];
  }

  else
  {
    byte_100154018 = 0;
  }
}

CloudTabGroupSyncEvent *__cdecl sub_10007D874(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[CloudTabGroupSyncEvent alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

void sub_10007E080(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(CloudTabGroupSyncEvent);
  [(CloudTabGroupSyncEvent *)v7 setTitle:@"Fetch Zone Changes"];
  v8 = [v6 ckShortDescription];
  [(CloudTabGroupSyncEvent *)v7 setSubtitle:v8];

  [(CloudTabGroupSyncEvent *)v7 setSymbolName:@"square.and.arrow.down"];
  v16[0] = @"Last Server Change Token";
  v9 = [v5 previousServerChangeToken];

  v10 = [v9 data];
  v11 = [v10 description];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"nil";
  }

  v16[1] = @"Zone ID";
  v17[0] = v13;
  v14 = [v6 ckShortDescription];

  v17[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(CloudTabGroupSyncEvent *)v7 setMetadata:v15];

  [*(*(a1 + 32) + 24) addChildEvent:v7];
}

id sub_10007E838(uint64_t a1, void *a2)
{
  v3 = [a2 subtitle];
  v4 = [*(a1 + 32) recordID];
  v5 = [v4 zoneID];
  v6 = [v5 ckShortDescription];
  v7 = [v3 isEqualToString:v6];

  return v7;
}

void sub_10007E928(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error serializing sync events plist data: %{public}@", &v2, 0xCu);
}

void sub_10007E9A0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading sync events plist data: %{public}@", &v2, 0xCu);
}

void *sub_10007EAD8(void *result)
{
  if ((*(result[4] + 96) & 1) == 0)
  {
    v1 = result;
    v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Beginning conversion of folder contents", v15, 2u);
    }

    v3 = objc_retainBlock(v1[6]);
    v4 = v1[4];
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    *(v1[4] + 96) = 1;
    v6 = [CloudBookmarkSyncMigrationPositionGenerator alloc];
    v7 = [v1[4] databaseRef];
    v8 = [v1[4] databaseAccessor];
    v9 = [(CloudBookmarkSyncMigrationPositionGenerator *)v6 initWithDatabase:v7 databaseAccessor:v8];
    v10 = v1[4];
    v11 = *(v10 + 80);
    *(v10 + 80) = v9;

    [*(v1[4] + 80) setRootRecordName:WBSCloudBookmarkListRecordNameTopBookmark];
    v12 = [*(v1[4] + 80) recordNameEnumerator];
    v13 = v1[4];
    v14 = *(v13 + 88);
    *(v13 + 88) = v12;

    return [v1[4] _generateAndSaveRemainingRecordsInOperationGroup:v1[5]];
  }

  return result;
}

void sub_10007EFD8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Did fail to migrate record hierarchy with error: %{public}@", &v5, 0xCu);
}

id sub_100080410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000014E0;
  v17 = sub_100080580;
  v18 = 0;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 40);
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_100080568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080588(uint64_t a1)
{
  v2 = [*(a1 + 32) _recordByMergingRemoteRecord:*(a1 + 40) withLocalRecord:*(a1 + 48) recordNamesToCloudBookmarks:*(a1 + 56) saveError:*(a1 + 72)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = [*(a1 + 48) safari_recordName];
    [v5 removeObject:v6];
  }
}

void sub_10008063C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v6;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000806E4(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 _didFailSavingWithError:?];
    v4 = a1[5];
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;
  }

  else
  {
    v6 = a1[6];

    [v2 _generateAndSaveRemainingRecordsInOperationGroup:v6];
  }
}

void sub_100080CFC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 recordName];
  v7 = sub_10001C04C(a3);
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Merging record %{public}@ with result %{public}@ indicates that the local record needs to be undeleted during migration. Migration never attempts to delete remote records before the last de-duplication phase.", &v8, 0x16u);
}

void sub_100081404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_100081448(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_copyWeak(&v7, (a1 + 32));
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
    objc_destroyWeak(&v7);
  }
}

void sub_10008150C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleSyncIfNeeded];
    WeakRetained = v2;
  }
}

void sub_100081564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle safari_safariApplicationPlatformBundleIdentifier];
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v4];

  v12 = v5;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  [v3 setPredicates:v6];

  v7 = +[RBSProcessStateDescriptor descriptor];
  [v7 setValues:1];
  v11 = FBSSceneVisibilityEndowmentNamespace;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 setEndowmentNamespaces:v8];

  [v3 setStateDescriptor:v7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100081720;
  v9[3] = &unk_100135248;
  objc_copyWeak(&v10, (a1 + 32));
  [v3 setUpdateHandler:v9];
  objc_destroyWeak(&v10);
}

void sub_100081720(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v11);
}

void sub_10008180C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) state];
    v4 = [v3 endowmentNamespaces];
    v5 = [v4 containsObject:FBSSceneVisibilityEndowmentNamespace];

    v6[107] = [v3 isRunning] & v5 ^ 1;
    WeakRetained = v6;
  }
}

void sub_100081C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6 = [*(v4 + 136) privateCloudDatabase];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100081D44;
    v8[3] = &unk_100131678;
    v7 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = v3;
    [v5 deleteSubscriptionWithID:@"TabGroupsZoneSubscription" inDatabase:v6 operationGroup:v7 withCompletionHandler:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100081D44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000856C0(v4, v3);
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

void sub_1000822BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 safari_isCloudKitErrorWithCode:111])
  {
    v5 = *(*(a1 + 32) + 105);
    v6 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unsynced Keychain error, but we're already waiting for PCS identities to change.", buf, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unsynced Keychain error. Observing notification to start syncing Tab Groups when PCS identities change.", buf, 2u);
      }

      *(*(a1 + 32) + 105) = 1;
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:*(a1 + 32) selector:"_pcsIdentitiesChangedNotification:" name:CKIdentityUpdateNotification object:0];
    }
  }

  v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v10 = v9;
  if (v4)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 configuration];
      [v13 storeOwner];
      v14 = WBNSStringFromCollectionStoreOwner();
      v15 = WBSStringFromCloudBookmarksSyncResult();
      v16 = [v4 safari_privacyPreservingDescription];
      v17 = [*(a1 + 40) safari_logDescription];
      *buf = 138544130;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "••• TabGroups sync failed for manager %{public}@ with result <%{public}@>: %{public}@, %{public}@", buf, 0x2Au);

LABEL_13:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = v10;
    v13 = [v18 configuration];
    [v13 storeOwner];
    v14 = WBNSStringFromCollectionStoreOwner();
    v15 = WBSStringFromCloudBookmarksSyncResult();
    v16 = [*(a1 + 40) safari_logDescription];
    *buf = 138543874;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "••• TabGroups sync finished for manager %{public}@ with result: %{public}@, %{public}@", buf, 0x20u);

    goto LABEL_13;
  }

  *(*(a1 + 32) + 128) = 0;
  (*(*(a1 + 48) + 16))();
  v20 = *(a1 + 32);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_100082694(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:CKIdentityUpdateNotification object:0];

  v3 = *(a1 + 32);
  if (*(v3 + 105))
  {
    *(v3 + 105) = 0;
    v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received expected PCS identity change notification. Syncing Tab Groups.", v9, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 152));
      [v7 cloudTabGroupSyncManagerPCSIdentitiesDidChange:*(a1 + 32)];
    }
  }

  else
  {
    v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring PCS identity change notification because Safari Tab Groups Sync is not waiting for an identity update", buf, 2u);
    }
  }
}

void sub_10008297C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 configuration];
      [v9 storeOwner];
      v10 = WBNSStringFromCollectionStoreOwner();
      v11 = WBSStringFromCloudBookmarksSyncResult();
      v12 = [v4 safari_privacyPreservingDescription];
      v13 = [*(a1 + 40) safari_logDescription];
      *buf = 138544130;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "*•• TabGroups migration failed for manager %{public}@ with result <%{public}@>: %{public}@, %{public}@", buf, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = v6;
    v9 = [v14 configuration];
    [v9 storeOwner];
    v10 = WBNSStringFromCollectionStoreOwner();
    v11 = WBSStringFromCloudBookmarksSyncResult();
    v12 = [*(a1 + 40) safari_logDescription];
    *buf = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*•• TabGroups migration finished for manager %{public}@ with result: %{public}@, %{public}@", buf, 0x20u);

    goto LABEL_6;
  }

  *(*(a1 + 32) + 104) = 0;
  v16 = *(a1 + 32);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_100082DA4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v12 = 0;
    v13 = &v12;
    v14 = 0x3042000000;
    v15 = sub_1000014F0;
    v16 = sub_100082F5C;
    v17 = 0;
    v3 = *(a1 + 40);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_100082F64;
    v8 = &unk_1001352C0;
    objc_copyWeak(&v11, &location);
    v10 = &v12;
    v9 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:&v5];
    objc_storeWeak(v13 + 5, v4);
    [*(*(a1 + 32) + 64) addObject:{v4, v5, v6, v7, v8}];
    [*(*(a1 + 32) + 72) setObject:v4 forKey:*(a1 + 40)];

    objc_destroyWeak(&v11);
    _Block_object_dispose(&v12, 8);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void sub_100082F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 + 40));
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

void sub_100082F64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    [v4[9] removeObjectForKey:*(a1 + 32)];
    if (v3)
    {
      [v4[8] removeObject:v3];
    }

    WeakRetained = v4;
  }
}

void sub_10008308C(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
  v2 = v3;
  if (v3)
  {
    [*(*(a1 + 32) + 64) removeObject:v3];
    v2 = v3;
  }
}

id sub_10008323C()
{
  v0 = WBSCloudBookmarksErrorDomain;
  v4 = NSLocalizedFailureReasonErrorKey;
  v5 = @"Manatee is currently unavailable on the current account.";
  v1 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v2 = [NSError errorWithDomain:v0 code:2 userInfo:v1];

  return v2;
}

void sub_100083314(id *a1)
{
  if ([a1[4] _readyToScheduleSync])
  {
    v2 = [a1[5] containerIdentifier];
    v3 = [*(a1[4] + 5) container];
    v4 = [v3 containerIdentifier];
    v5 = [v2 isEqualToString:v4];

    if (v5)
    {
      v6 = a1[4];
      v7 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Accept Shared Tab Group"];
      v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[5];
        v10 = v8;
        v11 = [v9 share];
        v12 = [v11 recordID];
        v13 = [v12 zoneID];
        v14 = [v13 ckShortDescription];
        v16 = a1[5];
        v15 = a1[6];
        v17 = [v7 safari_logDescription];
        *buf = 138544130;
        v38 = v14;
        v39 = 2114;
        v40 = v15;
        v41 = 2112;
        v42 = v16;
        v43 = 2114;
        v44 = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*•* Will accept tab group share with zone %{public}@ in profile with UUID %{public}@, metadata %@, %{public}@", buf, 0x2Au);
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100083748;
      v31[3] = &unk_1001352E8;
      v32 = a1[5];
      v33 = a1[6];
      v34 = v7;
      v18 = a1[7];
      v35 = a1[4];
      v36 = v18;
      v19 = v7;
      v20 = objc_retainBlock(v31);
      [*(a1[4] + 6) acceptTabGroupShareForShareMetadata:a1[5] inProfileWithIdentifier:a1[6] operationGroup:v19 completionHandler:v20];
    }

    else
    {
      v22 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100085804(a1 + 5, v22);
      }

      v23 = a1[7];
      v24 = WBSCloudBookmarksErrorDomain;
      v45 = NSLocalizedFailureReasonErrorKey;
      v19 = [*(a1[4] + 5) container];
      v25 = [v19 containerIdentifier];
      v26 = [a1[5] containerIdentifier];
      v27 = [NSString stringWithFormat:@"Only container %@ is supported, received share metadata from container %@", v25, v26];
      v46 = v27;
      v28 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v29 = [NSError errorWithDomain:v24 code:3 userInfo:v28];
      v23[2](v23, 0, v29);
    }
  }

  else
  {
    v21 = a1[7];
    v30 = [NSError errorWithDomain:WBSCloudBookmarksErrorDomain code:0 userInfo:0];
    v21[2](v21, 0);
  }
}

void sub_100083748(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v6 recordID];
      v12 = [v11 zoneID];
      v13 = [v12 ckShortDescription];
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = [*(a1 + 48) safari_logDescription];
      v18 = 138544130;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*•* Did accept tab group share with zone %{public}@ in profile with UUID %{public}@, metadata %@, %{public}@", &v18, 0x2Au);
    }

    [*(a1 + 56) sendSyncDidFinishNotificationWithResult:0];
    v17 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100085898(a1, v9, v7);
    }

    v17 = *(*(a1 + 64) + 16);
  }

  v17();
}

void sub_100083AF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = WBSStringFromCloudBookmarksSyncResult();
      v14 = [v8 safari_privacyPreservingDescription];
      v15 = [*(a1 + 40) safari_logDescription];
      v21 = 138544130;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "••* Failed to begin sharing tab group with UUID: %{public}@, result: %{public}@, error: %{public}@, %{public}@", &v21, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v13 = [v7 recordID];
    v18 = [v13 zoneID];
    v19 = [v18 ckShortDescription];
    v20 = [*(a1 + 40) safari_logDescription];
    v21 = 138543874;
    v22 = v16;
    v23 = 2114;
    v24 = v19;
    v25 = 2114;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "••* Did successfully begin sharing tab group with UUID: %{public}@, in shared zone: %{public}@, %{public}@", &v21, 0x20u);

    goto LABEL_6;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100083DA8(uint64_t a1)
{
  v2 = [[CloudBookmarkAccountPropertiesStore alloc] initWithAccountStore:*(*(a1 + 32) + 144)];
  if ([(CloudBookmarkAccountPropertiesStore *)v2 isDataclassEnabled])
  {
    v3 = [WBTabCollection alloc];
    v4 = [*(a1 + 32) configuration];
    v5 = [v3 initWithConfiguration:v4 openDatabase:1];

    v6 = [v5 shouldUpdatePresence];
    v7 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will update user's presence to tab", v13, 2u);
      }

      v9 = [*(a1 + 32) _tabRecordIDFromTabUUID:*(a1 + 40) inTabCollection:v5];
      v10 = *(a1 + 32);
      v11 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Update Tab Group Presence"];
      [*(*(a1 + 32) + 56) setPresenceToTabWithRecordID:v9 inOperationGroup:v11 completionHandler:&stru_100135330];
    }

    else if (v8)
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Skipping updating user's presence since there are no shared tab groups in the user's database", v14, 2u);
    }
  }

  else
  {
    v12 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Skipping updating user's presence because Safari syncing is not enabled", buf, 2u);
    }
  }
}

void sub_10008451C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = objc_loadWeakRetained(WeakRetained + 19);
    v2 = [NSDate dateWithTimeIntervalSinceNow:600.0];
    v3 = WeakRetained[15];
    WeakRetained[15] = v2;

    if (objc_opt_respondsToSelector())
    {
      [v1 userDidUpdateCloudTabGroupSyncManagerDatabase:WeakRetained];
    }

    [WeakRetained _cancelSyncTimer];
  }
}

void sub_1000856C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to delete legacy Tab Groups subscription with error: %@", v7, v8, v9, v10, v11);
}

void sub_100085754(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 configuration];
  [v4 storeOwner];
  v5 = WBNSStringFromCollectionStoreOwner();
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "••• TabGroups sync failed for manager %{public}@ with result <Aborted>", v8, v9, v10, v11, v12);
}

void sub_100085804(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 containerIdentifier];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Ignoring CKShareMetadata because it is not part of the Tab Groups container: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100085898(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 share];
  v8 = [v7 recordID];
  v9 = [v8 zoneID];
  v10 = [v9 ckShortDescription];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = [a3 safari_privacyPreservingDescription];
  v14 = [*(a1 + 48) safari_logDescription];
  v15 = 138544386;
  v16 = v10;
  v17 = 2114;
  v18 = v11;
  v19 = 2112;
  v20 = v12;
  v21 = 2114;
  v22 = v13;
  v23 = 2114;
  v24 = v14;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "*•* Failed to accept tab group share with zone %{public}@ in profile with UUID %{public}@, metadata %@, error: %{public}@, %{public}@", &v15, 0x34u);
}

void sub_1000859EC()
{
  sub_100008064();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Tab with UUID %{public}@ and recordID %{public}@ is not in a shared tab group, ignoring", v2, 0x16u);
}

void *sub_100085C78(void *result)
{
  if ((*(result[4] + 96) & 1) == 0)
  {
    v1 = result;
    v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Saving reparented records", v10, 2u);
    }

    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100086200(v1, v3);
    }

    v4 = objc_retainBlock(*(v1 + 64));
    v5 = *(v1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    *(*(v1 + 32) + 96) = 1;
    v7 = [*(v1 + 40) mutableCopy];
    v8 = *(v1 + 32);
    v9 = *(v8 + 80);
    *(v8 + 80) = v7;

    objc_storeStrong((*(v1 + 32) + 88), *(v1 + 48));
    return [*(v1 + 32) _generateAndSaveRemainingRecordsInOperationGroup:*(v1 + 56)];
  }

  return result;
}

void sub_100086200(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saving reparented records with record names: %@", &v3, 0xCu);
}

void sub_10008627C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Did fail to save reparented records with error: %{public}@", &v5, 0xCu);
}

void *sub_100086524(void *result)
{
  v2 = result[4];
  if ((*(v2 + 64) & 1) == 0)
  {
    v3 = result;
    *(v2 + 64) = 1;
    v4 = *(result + 56);
    if (v4 == 1)
    {
      v5 = +[NSMutableSet set];
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong((v3[4] + 56), v5);
    if (v4)
    {
    }

    v6 = objc_retainBlock(v3[6]);
    v7 = v3[4];
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v9 = v3[4];
    v10 = v3[5];

    return [v9 _performSyncDownInOperationGroup:v10];
  }

  return result;
}

void sub_100086B38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_100086B70(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_100086C18(uint64_t a1)
{
  [*(a1 + 32) _updateLocalBookmarkWithCKRecord:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) safari_recordName];
  [v2 addObject:v3];
}

void sub_100086C7C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v4;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_100086D24(id *a1)
{
  v2 = [a1[4] recordName];
  [a1[5] _didDeleteRecordWithName:v2];
  [a1[6] addObject:v2];
}

void sub_100086D88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v9;
  v12 = *(a1 + 40);
  objc_copyWeak(&v17, (a1 + 72));
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v7;
  v16 = *(a1 + 64);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v17);
}

void sub_100086EDC(uint64_t a1)
{
  v2 = [*(a1 + 32) accountPropertiesStore];
  v3 = [v2 isDataclassEnabled];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      if (([v4 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(*(a1 + 40), "safari_isCloudKitPartialFailureError") & 1) != 0 || (objc_msgSend(*(a1 + 40), "safari_isCloudKitNonExistentRecordError") & 1) != 0 || objc_msgSend(*(a1 + 40), "safari_isCloudKitBatchTooLargeError") || (objc_msgSend(*(a1 + 40), "safari_isCloudKitWriteConflictError") & 1) != 0 || objc_msgSend(*(a1 + 40), "safari_isAtomicWriteError"))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);

        [v5 _didFinishSyncingReceivingRecordNames:0 error:v6];
      }

      else if ([*(a1 + 40) safari_isOrContainsCloudKitMissingZoneError])
      {
        v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100087A3C(v21);
        }

        [*(a1 + 32) _didFinishSyncingReceivingRecordNames:0 error:*(a1 + 40)];
      }

      else
      {
        v22 = *(a1 + 48);
        v23 = *(a1 + 40);
        v26 = _NSConcreteStackBlock;
        v27 = 3221225472;
        v28 = sub_1000872CC;
        v29 = &unk_100134990;
        objc_copyWeak(&v33, (a1 + 88));
        v30 = *(a1 + 40);
        v31 = *(a1 + 56);
        v32 = *(a1 + 48);
        v24 = [v22 scheduleRetryIfNeededForError:v23 usingBlock:&v26];
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1000879F8(v25);
            }
          }

          [*(a1 + 32) _didFinishSyncingReceivingRecordNames:0 error:{*(a1 + 40), v26, v27, v28, v29, v30, v31}];
        }

        objc_destroyWeak(&v33);
      }
    }

    else
    {
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 72);
        *buf = 138543618;
        v35 = v11;
        v36 = 2114;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did finish fetching records between server change token: %{public}@ and server change token: %{public}@", buf, 0x16u);
      }

      v13 = [*(a1 + 32) databaseRef];
      v14 = [*(a1 + 32) databaseAccessor];
      v15 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v13 databaseAccessor:v14];

      v16 = *(a1 + 72);
      v17 = [*(a1 + 32) bookmarkStore];
      v18 = [v17 bookmarksRecordZoneID];
      [v15 setLastServerChangeToken:v16 forRecordZoneID:v18];

      v19 = [*(a1 + 32) databaseRef];
      v20 = [*(a1 + 32) databaseAccessor];
      [v15 writeToDatabase:v19 databaseAccessor:v20];

      [*(a1 + 32) _didFinishSyncingReceivingRecordNames:*(a1 + 80) error:0];
    }
  }

  else
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Canceling migration sync-down because Safari sync is disabled", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    [v8 _didFinishSyncingReceivingRecordNames:0 error:v9];
  }
}

void sub_1000872CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performSyncDownInOperationGroup:*(a1 + 40) withRetryManager:*(a1 + 48)];
  }

  else
  {
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100087A80(a1, v4);
    }
  }
}

void sub_100087964(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008028(&_mh_execute_header, v4, v5, "Sync down handler did fail sync down with with error: %{public}@", v6, v7, v8, v9, 2u);
}

void sub_100087A80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008028(&_mh_execute_header, v6, v7, "Bailing out from sync down due to deallocation with error %{public}@", v8, v9, v10, v11, 2u);
}

void sub_100087B14(void *a1, void *a2)
{
  v3 = a1;
  [a2 recordName];
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10000807C();
  v5 = sub_10001C04C(v4);
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Merging record %{public}@ with result %{public}@ indicates that the remote record needs update despite being in sync down phase. The record should have been saved to the server during migration.", v8, v9, v10, v11, v12);
}

void sub_100087BC4(void *a1, void *a2)
{
  v3 = a1;
  [a2 recordName];
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10000807C();
  v5 = sub_10001C04C(v4);
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Merging record %{public}@ with result %{public}@ indicates that the local record needs to be undeleted during migration. Migration never attempts to delete remote records before the last de-duplication phase.", v8, v9, v10, v11, v12);
}

void sub_100087E14(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [*(a1 + 32) _loadDeviceWithUUIDString:*(a1 + 40)];
    v5 = v2;
    if (v2 && (*(a1 + 56) & 1) != 0)
    {
      if ([*(a1 + 32) _loadExtensionStatesForDevice:v2] == 101)
      {
        v3 = v5;
      }

      else
      {

        v3 = 0;
      }

      v5 = v3;
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void sub_100087FD8(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    [*(a1 + 32) _loadDevices];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v2 = v9 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    v4 = v2;
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(a1 + 32) _loadExtensionStatesForDevice:{*(*(&v8 + 1) + 8 * i), v8}] != 101)
          {

            v4 = 0;
            goto LABEL_15;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

      v4 = v2;
    }

LABEL_15:

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

uint64_t sub_1000882A4(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v3)
    {
      v5 = *v20;
      *&v4 = 138543618;
      v18 = v4;
      do
      {
        v6 = 0;
        do
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v23 = *(*(&v19 + 1) + 8 * v6);
          v7 = [*(a1 + 32) _database];
          v8 = sub_10008B164(v7, 0, @"DELETE FROM cloud_extension_devices WHERE device_uuid = ?", &v23);

          if (v8 != 101 || ([*(a1 + 32) _database], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "changedRowCount") == 0, v9, v10))
          {
            v11 = [*(a1 + 32) _database];
            v12 = sub_10008B164(v11, 0, @"DELETE FROM cloud_extension_states WHERE record_name = ?", &v23);

            if (v12 != 101)
            {
              v13 = sub_1000D23FC();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v14 = [*(a1 + 32) _database];
                v15 = [v14 lastErrorMessage];
                *buf = v18;
                v25 = v15;
                v26 = 1024;
                v27 = v12;
                _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to delete device or extension state: %{public}@ (%d)", buf, 0x12u);
              }
            }
          }

          v6 = v6 + 1;
        }

        while (v3 != v6);
        v3 = [v2 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v3);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v17 = *(*(a1 + 48) + 16);

    return v17();
  }
}

void sub_1000886B8(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v3)
    {
      v4 = *v16;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(a1 + 32) _saveDevice:*(*(&v15 + 1) + 8 * i)] != 101)
          {
            (*(*(a1 + 56) + 16))();

            return;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v19 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(a1 + 32) _saveExtensionState:{*(*(&v11 + 1) + 8 * j), v11}] != 101)
          {
            (*(*(a1 + 56) + 16))();

            return;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = *(*(a1 + 56) + 16);

    v10();
  }
}

id sub_10008A264(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [[WBSSQLiteStatement alloc] initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

void sub_10008A55C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_10008B164(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [[WBSSQLiteStatement alloc] initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

void sub_10008B294(void *a1, void *a2, void *a3, void *a4, double *a5, void *a6, unsigned __int8 *a7, double *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:1];
  sub_10008B348(v15, a3, a4, a5, a6, a7, a8);
}

void sub_10008B348(void *a1, void *a2, void *a3, double *a4, void *a5, unsigned __int8 *a6, double *a7)
{
  v13 = a1;
  [v13 bindData:*a2 atParameterIndex:2];
  sub_10008B3EC(v13, a3, a4, a5, a6, a7);
}

void sub_10008B3EC(void *a1, void *a2, double *a3, void *a4, unsigned __int8 *a5, double *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:3];
  sub_10008B488(v11, a3, a4, a5, a6);
}

void sub_10008B488(void *a1, double *a2, void *a3, unsigned __int8 *a4, double *a5)
{
  v9 = a1;
  [v9 bindDouble:4 atParameterIndex:*a2];
  sub_10008B514(v9, a3, a4, a5);
}

void sub_10008B514(void *a1, void *a2, unsigned __int8 *a3, double *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:5];
  sub_10008B598(v7, a3, a4);
}

void sub_10008B598(void *a1, unsigned __int8 *a2, double *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:6];
  [v5 bindDouble:7 atParameterIndex:*a3];
}

void sub_10008B610(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, unsigned __int8 *a8, unsigned __int8 *a9, void *a10, void *a11, void *a12, void *a13, void *a14, double *a15)
{
  v22 = a1;
  [v22 bindString:*a2 atParameterIndex:1];
  sub_10008B6DC(v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void sub_10008B6DC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, void *a10, void *a11, void *a12, void *a13, double *a14)
{
  v21 = a1;
  [v21 bindString:*a2 atParameterIndex:2];
  sub_10008B7A8(v21, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_10008B7A8(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8, void *a9, void *a10, void *a11, void *a12, double *a13)
{
  v20 = a1;
  [v20 bindData:*a2 atParameterIndex:3];
  sub_10008B874(v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_10008B874(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, void *a8, void *a9, void *a10, void *a11, double *a12)
{
  v19 = a1;
  [v19 bindString:*a2 atParameterIndex:4];
  sub_10008B940(v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_10008B940(void *a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, void *a7, void *a8, void *a9, void *a10, double *a11)
{
  v18 = a1;
  [v18 bindString:*a2 atParameterIndex:5];
  sub_10008BA0C(v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_10008BA0C(void *a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5, void *a6, void *a7, void *a8, void *a9, double *a10)
{
  v17 = a1;
  [v17 bindString:*a2 atParameterIndex:6];
  sub_10008BAD4(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_10008BAD4(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, void *a6, void *a7, void *a8, double *a9)
{
  v16 = a1;
  [v16 bindInt:*a2 atParameterIndex:7];
  sub_10008BB90(v16, a3, a4, a5, a6, a7, a8, a9);
}

void sub_10008BB90(void *a1, unsigned __int8 *a2, void *a3, void *a4, void *a5, void *a6, void *a7, double *a8)
{
  v15 = a1;
  [v15 bindInt:*a2 atParameterIndex:8];
  sub_10008BC44(v15, a3, a4, a5, a6, a7, a8);
}

void sub_10008BC44(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, double *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:9];
  sub_10008BCE8(v13, a3, a4, a5, a6, a7);
}

void sub_10008BCE8(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:10];
  sub_10008BD84(v11, a3, a4, a5, a6);
}

void sub_10008BD84(void *a1, void *a2, void *a3, void *a4, double *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:11];
  sub_10008BE10(v9, a3, a4, a5);
}

void sub_10008BE10(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:12];
  sub_10008BE94(v7, a3, a4);
}

void sub_10008BE94(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:13];
  [v5 bindDouble:14 atParameterIndex:*a3];
}

uint64_t sub_10008BF18(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_10008BF70(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10008BF18(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open iCloud Extensions store at %{private}@: %{public}@", v4, 0x16u);
}

void sub_10008BFC8(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10008BF0C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10008C01C(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10008BF0C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10008C144(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10008BF18(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to remove iCloud Extensions store file at %{private}@: %{public}@", v4, 0x16u);
}

void sub_10008C19C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10008BF0C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10008C1D8(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10008BF0C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10008CB6C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    v5 = WBSCloudBookmarkListRecordNameTopBookmark;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = +[NSMutableSet set];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

void sub_10008CDC4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 count];
  v7 = *(a3 + 40);
  v8 = 134218242;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Processing %lu changes with changeToken: %@", &v8, 0x16u);
}

void sub_10008D9A8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ attempting to lock backing store", &v2, 0xCu);
}

void sub_10008ED74(id a1)
{
  v1 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v2 = qword_100154028;
  qword_100154028 = v1;
}

void sub_10008EF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [CloudExtensionState cloudExtensionStateWithDictionaryRepresentation:a3 composedIdentifier:a2 owningDeviceUUIDString:*(a1 + 32) cloudExtensionsRecordZoneID:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 48) addObject:v4];
    v4 = v5;
  }
}

uint64_t sub_10008F520(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 composedIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 profileIdentifier];
    v7 = *(a1 + 40);
    v8 = WBSIsEqual();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100091024(id a1)
{
  v1 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v2 = qword_100154038;
  qword_100154038 = v1;
}

uint64_t sub_100091470(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    [*(a1 + 32) _closeDatabase];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_100091558(uint64_t a1)
{
  [*(a1 + 32) _deleteDatabaseFileAtURL:*(*(a1 + 32) + 8) reopenDatabase:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10009163C(uint64_t a1)
{
  v2 = [*(a1 + 32) _isDatabaseOpen];
  v3 = *(a1 + 40);
  if (v2)
  {
    v6 = [*(a1 + 32) _metadataDataValueForKey:@"server_change_token"];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0);
  }
}

uint64_t sub_1000917C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _isDatabaseOpen];
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = [*(a1 + 32) _setMetadataDataValue:*(a1 + 40) forKey:@"server_change_token"];
  }

  else
  {
    v4 = 14;
  }

  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100091D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100091F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_1000921B0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [[WBSSQLiteStatement alloc] initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    sub_1000922EC(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void sub_1000922EC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

id sub_100092364(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [[WBSSQLiteStatement alloc] initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    sub_1000924A0(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void sub_1000924A0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

id sub_100092518(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [[WBSSQLiteStatement alloc] initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

id sub_100092648(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [[WBSSQLiteStatement alloc] initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    sub_100092784(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void sub_100092784(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

id sub_1000927FC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [[WBSSQLiteStatement alloc] initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    sub_100092938(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void sub_100092938(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindData:*a3 atParameterIndex:2];
}

id sub_100093770(uint64_t a1, void *a2)
{
  v3 = [a2 tabUUIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100093CEC(id a1)
{
  v1 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v2 = qword_100154048;
  qword_100154048 = v1;
}

void sub_100094260(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [*(a1 + 32) _loadDevices];
    v3 = sub_100001B78();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v18 = [v2 count];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Loaded %{public}lu cloud tab devices", buf, 0xCu);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v6 = v4;
    if (v5)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(a1 + 32) _loadTabsForDevice:{*(*(&v12 + 1) + 8 * i), v12}] != 101)
          {

            v6 = 0;
            goto LABEL_17;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      v6 = v4;
    }

LABEL_17:

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) _loadCloseRequests];
    (*(v10 + 16))(v10, v6, v11);
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

void sub_1000945A4(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [*(a1 + 32) _loadDeviceWithUUIDString:*(a1 + 40)];
    if (v2)
    {
      v6 = v2;
      v3 = [*(a1 + 32) _loadTabsForDevice:v2];
      v4 = v6;
      if (v3 != 101)
      {

        v4 = 0;
      }

      v7 = v4;
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v7 = 0;
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

uint64_t sub_1000947A0(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v3)
    {
      v5 = *v24;
      *&v4 = 138543618;
      v22 = v4;
      do
      {
        v6 = 0;
        do
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v27 = *(*(&v23 + 1) + 8 * v6);
          v7 = [*(a1 + 32) _database];
          v8 = sub_10008B164(v7, 0, @"DELETE FROM cloud_tab_devices WHERE device_uuid = ?", &v27);

          if (v8 != 101 || ([*(a1 + 32) _database], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "changedRowCount") == 0, v9, v10))
          {
            v11 = [*(a1 + 32) _database];
            v12 = sub_10008B164(v11, 0, @"DELETE FROM cloud_tabs WHERE tab_uuid = ?", &v27);

            if (v12 != 101 || ([*(a1 + 32) _database], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "changedRowCount") == 0, v13, v14))
            {
              v15 = [*(a1 + 32) _database];
              v16 = sub_10008B164(v15, 0, @"DELETE FROM cloud_tab_close_requests WHERE close_request_uuid = ?", &v27);

              if (v16 != 101)
              {
                v17 = sub_100001B78();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  v18 = [*(a1 + 32) _database];
                  v19 = [v18 lastErrorMessage];
                  *buf = v22;
                  v29 = v19;
                  v30 = 1024;
                  v31 = v16;
                  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to delete device, tab, or close request: %{public}@ (%d)", buf, 0x12u);
                }
              }
            }
          }

          v6 = v6 + 1;
        }

        while (v3 != v6);
        v3 = [v2 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v3);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v21 = *(*(a1 + 48) + 16);

    return v21();
  }
}

void sub_100094C80(uint64_t a1)
{
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v3)
    {
      v4 = *v24;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v24 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(a1 + 32) _saveDevice:*(*(&v23 + 1) + 8 * i)] != 101)
          {
            (*(*(a1 + 64) + 16))();

            return;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(a1 + 32) _saveTab:*(*(&v19 + 1) + 8 * j)] != 101)
          {
            (*(*(a1 + 64) + 16))();

            return;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v27 count:16];
    if (v11)
    {
      v12 = *v16;
      while (2)
      {
        for (k = 0; k != v11; k = k + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(a1 + 32) _saveCloseRequest:{*(*(&v15 + 1) + 8 * k), v15}] != 101)
          {
            (*(*(a1 + 64) + 16))();

            return;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v14 = *(*(a1 + 64) + 16);

    v14();
  }
}

uint64_t sub_100095084(uint64_t a1)
{
  v2 = [*(a1 + 32) _isDatabaseOpen];
  v3 = *(a1 + 32);
  if (v2)
  {
    *(*(a1 + 32) + 40) = [v3 _metadataInt64ValueForKey:@"use_manatee_container"] != 0;
  }

  else
  {
    v3[40] = 0;
  }

  v4 = *(*(a1 + 32) + 40);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t sub_1000951EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _isDatabaseOpen];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) _setMetadataInt64Value:*(a1 + 48) forKey:@"use_manatee_container"];
  }

  else
  {
    v4 = 14;
  }

  v5 = *(v3 + 16);

  return v5(v3, v4);
}

int64_t sub_100096DDC(id a1, CloudTab *a2, CloudTab *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CloudTab *)v4 position];
  v7 = [(CloudTab *)v5 position];
  v8 = v7;
  if (v6 | v7)
  {
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (v6 && v7)
    {
      v9 = [v6 compare:v7];
    }
  }

  else
  {
    v10 = [(CloudTab *)v4 tabUUIDString];
    v11 = [(CloudTab *)v5 tabUUIDString];
    v12 = v11;
    v9 = 0;
    if (v10 && v11)
    {
      v9 = [v10 compare:v11];
    }
  }

  return v9;
}

void sub_10009795C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100097AA4(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5, unsigned __int8 *a6, double *a7, void *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:1];
  sub_100097B58(v15, a3, a4, a5, a6, a7, a8);
}

void sub_100097B58(void *a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5, double *a6, void *a7)
{
  v13 = a1;
  [v13 bindData:*a2 atParameterIndex:2];
  sub_100097BFC(v13, a3, a4, a5, a6, a7);
}

void sub_100097BFC(void *a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, double *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:3];
  sub_100097C98(v11, a3, a4, a5, a6);
}

void sub_100097C98(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, double *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt:*a2 atParameterIndex:4];
  sub_100097D24(v9, a3, a4, a5);
}

void sub_100097D24(void *a1, unsigned __int8 *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt:*a2 atParameterIndex:5];
  sub_100097DA8(v7, a3, a4);
}

void sub_100097DA8(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:6 atParameterIndex:*a2];
  [v5 bindString:*a3 atParameterIndex:7];
}

void sub_100097E20(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, unsigned __int8 *a8, unsigned __int8 *a9, void *a10, void *a11, double *a12)
{
  v19 = a1;
  [v19 bindString:*a2 atParameterIndex:1];
  sub_100097EEC(v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_100097EEC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, void *a10, double *a11)
{
  v18 = a1;
  [v18 bindData:*a2 atParameterIndex:2];
  sub_100097FB8(v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_100097FB8(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8, void *a9, double *a10)
{
  v17 = a1;
  [v17 bindString:*a2 atParameterIndex:3];
  sub_100098080(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_100098080(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, void *a8, double *a9)
{
  v16 = a1;
  [v16 bindData:*a2 atParameterIndex:4];
  sub_10009813C(v16, a3, a4, a5, a6, a7, a8, a9);
}

void sub_10009813C(void *a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, void *a7, double *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:5];
  sub_1000981F0(v15, a3, a4, a5, a6, a7, a8);
}

void sub_1000981F0(void *a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5, void *a6, double *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:6];
  sub_100098294(v13, a3, a4, a5, a6, a7);
}

void sub_100098294(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, double *a6)
{
  v11 = a1;
  [v11 bindInt:*a2 atParameterIndex:7];
  sub_100098330(v11, a3, a4, a5, a6);
}

void sub_100098330(void *a1, unsigned __int8 *a2, void *a3, void *a4, double *a5)
{
  v9 = a1;
  [v9 bindInt:*a2 atParameterIndex:8];
  sub_1000983BC(v9, a3, a4, a5);
}

void sub_1000983BC(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:9];
  sub_100098440(v7, a3, a4);
}

void sub_100098440(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:10];
  [v5 bindDouble:11 atParameterIndex:*a3];
}

void sub_1000984B8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:1];
  sub_100098554(v11, a3, a4, a5, a6);
}

void sub_100098554(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindData:*a2 atParameterIndex:2];
  sub_1000985E0(v9, a3, a4, a5);
}

void sub_1000985E0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:3];
  sub_100098664(v7, a3, a4);
}

void sub_100098664(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:4];
  [v5 bindString:*a3 atParameterIndex:5];
}

void sub_10009871C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10008BF18(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open iCloud Tabs store at %{private}@: %{public}@", v4, 0x16u);
}

void sub_100098774(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to exclude CloudTabs.db from backup: %{public}@", buf, 0xCu);
}

void sub_1000987CC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to enable WAL on CloudTabs.db: %{public}@", buf, 0xCu);
}

void sub_100098824(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109634;
  v3[1] = a2;
  v4 = 1024;
  v5 = 7;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "iCloud Tabs store schema version (%d) does not match our supported schema version (%d) in store at %{public}@.", v3, 0x18u);
}

void sub_1000988FC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10008BF18(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to remove iCloud Tabs store file at %{private}@: %{public}@", v4, 0x16u);
}

void sub_100098CE8(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [CKRecordID alloc];
  v4 = [v2 UUIDString];
  v5 = [[CKRecordZoneID alloc] initWithZoneName:CKRecordZoneDefaultName ownerName:CKCurrentUserDefaultName];
  v6 = [v3 initWithRecordName:v4 zoneID:v5];

  v7 = [[CKRecord alloc] initWithRecordType:@"Feedback" recordID:v6];
  v8 = WBSScribbleFeedbackURLKey;
  v9 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackURLKey];
  [v7 setObject:v9 forKeyedSubscript:v8];

  v10 = WBSScribbleFeedbackDeviceTypeKey;
  v11 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackDeviceTypeKey];
  [v7 setObject:v11 forKeyedSubscript:v10];

  v12 = WBSScribbleFeedbackOSVersionKey;
  v13 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackOSVersionKey];
  [v7 setObject:v13 forKeyedSubscript:v12];

  v14 = WBSScribbleFeedbackSafariVersionKey;
  v15 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackSafariVersionKey];
  [v7 setObject:v15 forKeyedSubscript:v14];

  v16 = WBSScribbleFeedbackViewportWidthKey;
  v17 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackViewportWidthKey];
  [v7 setObject:v17 forKeyedSubscript:v16];

  v18 = WBSScribbleFeedbackViewportHeightKey;
  v19 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackViewportHeightKey];
  [v7 setObject:v19 forKeyedSubscript:v18];

  v20 = WBSScribbleFeedbackWebPageZoomFactorKey;
  v21 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackWebPageZoomFactorKey];
  [v7 setObject:v21 forKeyedSubscript:v20];

  v22 = WBSScribbleFeedbackWebPageScaleKey;
  v23 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackWebPageScaleKey];
  [v7 setObject:v23 forKeyedSubscript:v22];

  v24 = WBSScribbleFeedbackIssueCategoryKey;
  v25 = [*(a1 + 32) objectForKeyedSubscript:WBSScribbleFeedbackIssueCategoryKey];
  v26 = [v25 integerValue] - 1;
  if (v26 > 2)
  {
    v27 = @"CannotSelectItems";
  }

  else
  {
    v27 = off_1001356A8[v26];
  }

  [v7 setObject:v27 forKeyedSubscript:v24];
  v28 = [CKModifyRecordsOperation alloc];
  v36 = v7;
  v29 = [NSArray arrayWithObjects:&v36 count:1];
  v30 = [v28 initWithRecordsToSave:v29 recordIDsToDelete:0];

  v31 = [v30 configuration];
  [v31 setPreferAnonymousRequests:1];

  [v30 setPerRecordSaveBlock:&stru_100135688];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10009916C;
  v34[3] = &unk_100131588;
  v35 = *(a1 + 40);
  [v30 setModifyRecordsCompletionBlock:v34];
  v32 = +[CKContainer safari_scribbleFeedbackContainer];
  v33 = [v32 publicCloudDatabase];
  [v33 addOperation:v30];
}

void sub_100099100(id a1, CKRecordID *a2, CKRecord *a3, NSError *a4)
{
  v5 = a2;
  v6 = a4;
  if (v6)
  {
    v7 = sub_1000D24F4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000991E4(v7, v6, v5);
    }
  }
}

void sub_10009916C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = sub_1000D24F4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009929C(v6, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000991E4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:a3];
  v7 = 138543362;
  v8 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create Distraction Control feedback with error: %{public}@", &v7, 0xCu);
}

void sub_10009929C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save Distraction Control feedback records with error: %{public}@", &v5, 0xCu);
}

void sub_1000995B8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100099640;
  v2[3] = &unk_100131990;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100099A84(uint64_t a1)
{
  if ([*(a1 + 32) _isBeingTornDown])
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = [*(*(a1 + 32) + 344) createOperationGroupWithName:@"Cloud Tab Data Saving" qualityOfService:-1 xpcActivity:0];
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 safari_logDescription];
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving tabs for the current device to CloudKit with %{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
    v10 = +[CloudTabDevice cloudTabDeviceWithDictionaryRepresentation:deviceUUIDString:cloudTabsRecordZoneID:isManateeContainer:](CloudTabDevice, "cloudTabDeviceWithDictionaryRepresentation:deviceUUIDString:cloudTabsRecordZoneID:isManateeContainer:", v7, v8, v9, [*(*(a1 + 32) + 344) usesManateeContainer]);

    if (v10)
    {
      [*(a1 + 32) _suspendSavingQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100099D44;
      v14[3] = &unk_1001315B0;
      v14[4] = *(a1 + 32);
      v15 = v10;
      v17 = *(a1 + 56);
      v16 = v3;
      dispatch_async(&_dispatch_main_q, v14);
    }

    else
    {
      v11 = sub_100001B78();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v3 safari_logDescription];
        *buf = 138543362;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No iCloud Tab device found to save with %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

id sub_100099D44(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v2 = objc_retainBlock(*(a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = 0;

  [*(*(a1 + 32) + 8) openDatabaseIfNecessary];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);

  return [v7 _continueSavingTabsForCurrentDeviceInOperationGroup:v8];
}

void sub_10009A180(id *a1)
{
  if ([a1[4] _isBeingTornDown])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A2B0;
    block[3] = &unk_1001314F8;
    v2 = a1[5];
    block[4] = a1[4];
    v7 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [a1[4] _suspendFetchingQueue];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10009A2BC;
    v3[3] = &unk_100135720;
    v3[4] = a1[4];
    objc_copyWeak(&v5, a1 + 6);
    v4 = a1[5];
    dispatch_async(&_dispatch_main_q, v3);

    objc_destroyWeak(&v5);
  }
}

void sub_10009A2BC(id *a1)
{
  [a1[4] set_cloudTabStoreError:0];
  v2 = a1[4];
  v3 = *(v2 + 1);
  v4 = [*(v2 + 9) deviceUUIDString];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009A3A4;
  v5[3] = &unk_1001356F8;
  objc_copyWeak(&v7, a1 + 6);
  v6 = a1[5];
  [v3 loadCloudTabDeviceWithUUIDString:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void sub_10009A3A4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A46C;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_10009A46C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudTabStoreError];
    if (v4)
    {
      v5 = sub_100001B78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3084();
      }

      [v3 _resumeFetchingQueue];
      [v3 _handleSevereSQLiteErrorWhileMergingExistingDevice:v4 inOperationGroup:*(a1 + 32)];
    }

    else
    {
      [v3 _resumeFetchingQueue];
      v6 = *(a1 + 40);
      v7 = sub_100001B78();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = *(a1 + 32);
          v10 = v7;
          v11 = [v9 safari_logDescription];
          v17 = 138543362;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Merging device with existing device in SQLite database with %{public}@", &v17, 0xCu);
        }

        v12 = [*(a1 + 40) updateFromCloudTabDevice:v3[9]];
        v13 = v3[12];
        v3[12] = v12;

        objc_storeStrong(v3 + 9, *(a1 + 40));
      }

      else if (v8)
      {
        v14 = *(a1 + 32);
        v15 = v7;
        v16 = [v14 safari_logDescription];
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No existing device found in SQLite database with %{public}@", &v17, 0xCu);
      }

      [v3 _continueSavingTabsForCurrentDeviceInOperationGroup:*(a1 + 32)];
    }
  }
}

void sub_10009AA04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009AAD0;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
}

void sub_10009AAD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = sub_100001B78();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000A312C((a1 + 32), v3);
      }

      objc_storeStrong(WeakRetained + 13, *(a1 + 32));
    }

    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 safari_logDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished saving iCloud Tab record batch with %{public}@", &v8, 0xCu);
    }

    [WeakRetained _saveNextRecordBatchCreatingCloudTabsZoneIfMissing:0 inOperationGroup:*(a1 + 40)];
  }
}

void sub_10009AE34(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009AF00;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_10009AF00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = sub_100001B78();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000A31D0((a1 + 32), v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished deleting obsolete tab record from CloudKit with %{public}@", &v9, 0xCu);
    }

    [WeakRetained _continueSavingTabsForCurrentDeviceInOperationGroup:*(a1 + 40)];
  }
}

void sub_10009B1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B274;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_10009B274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = sub_100001B78();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3274((a1 + 32), v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished updating SQLite store from CloudKit after saving tabs with %{public}@", &v9, 0xCu);
    }

    [WeakRetained _continueSavingTabsForCurrentDeviceInOperationGroup:*(a1 + 40)];
  }
}

void sub_10009B570(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(*(a1 + 32) + 104);
  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_10009B614(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B698;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10009BC54(uint64_t a1)
{
  if ([*(a1 + 32) _isBeingTornDown])
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = [*(*(a1 + 32) + 344) createOperationGroupWithName:@"Cloud Tab Close Requests Saving" qualityOfService:-1 xpcActivity:0];
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 safari_logDescription];
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving close request to CloudKit with %{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
    v10 = [CloudTabCloseRequest cloudTabCloseRequestWithWBSCloudTabCloseRequestDictionaryRepresentation:v7 closeRequestUUIDString:v8 cloudTabsRecordZoneID:v9];

    if (v10)
    {
      [*(a1 + 32) _suspendSavingQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009BF34;
      v16[3] = &unk_1001315B0;
      v16[4] = *(a1 + 32);
      v17 = v10;
      v19 = *(a1 + 56);
      v18 = v3;
      dispatch_async(&_dispatch_main_q, v16);
    }

    else
    {
      v11 = sub_100001B78();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v3 safari_logDescription];
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No close request found to save with %{public}@", buf, 0xCu);
      }

      v14 = *(a1 + 56);
      v15 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:0 userInfo:0];
      (*(v14 + 16))(v14, v15);
    }
  }
}

id sub_10009BF34(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
  v2 = objc_retainBlock(*(a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 136);
  *(v5 + 136) = 0;

  [*(*(a1 + 32) + 8) openDatabaseIfNecessary];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);

  return [v7 _continueSavingCloseRequestInOperationGroup:v8];
}

void sub_10009C2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009C2F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C3C0;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
}

void sub_10009C3C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = sub_100001B78();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3318((a1 + 32), v3);
      }

      objc_storeStrong(WeakRetained + 17, *(a1 + 32));
    }

    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 safari_logDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully saved close request to CloudKit with %{public}@", &v8, 0xCu);
    }

    [WeakRetained _continueSavingCloseRequestInOperationGroup:*(a1 + 40)];
  }
}

void sub_10009C648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009C66C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C738;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_10009C738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = sub_100001B78();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000A33BC((a1 + 32), v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished updating SQLite store from CloudKit after saving close request with %{public}@", &v9, 0xCu);
    }

    [WeakRetained _continueSavingCloseRequestInOperationGroup:*(a1 + 40)];
  }
}

void sub_10009CA10(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 120));
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(*(a1 + 32) + 136);
  v5 = *(a1 + 32);
  v6 = *(v5 + 136);
  *(v5 + 136) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_10009CAB4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CB38;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10009CBE0(uint64_t a1)
{
  if ([*(a1 + 32) _isBeingTornDown])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(*(a1 + 32) + 344) createOperationGroupWithName:@"Cloud Tab Data Fetching" qualityOfService:-1 xpcActivity:0];
    v4 = sub_100001B78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 safari_logDescription];
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Tab data from CloudKit with %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _suspendFetchingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CDB0;
    block[3] = &unk_100130E50;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v3;
    v11 = v7;
    v8 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_10009CDB0(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 264);
  *(v3 + 264) = v2;

  *(*(a1 + 32) + 256) = 1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _beginFetchingTabsInOperationGroup:v6];
}

void sub_10009CED0(id *a1)
{
  if ([a1[4] _isBeingTornDown])
  {
    v2 = *(a1[6] + 2);

    v2();
  }

  else
  {
    [a1[4] _suspendFetchingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CFC0;
    block[3] = &unk_100130E50;
    block[4] = a1[4];
    v5 = a1[6];
    v4 = a1[5];
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_10009CFC0(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  *(*(a1 + 32) + 256) = 2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _beginFetchingTabsInOperationGroup:v6];
}

void sub_10009D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009D3C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[248] = 1;
    v3 = *(WeakRetained + 30);
    *(WeakRetained + 29) = 0;
    *(WeakRetained + 30) = 0;
    v9 = WeakRetained;

    v4 = *(v9 + 35);
    *(v9 + 35) = 0;

    v5 = *(v9 + 36);
    *(v9 + 36) = 0;

    v6 = *(v9 + 37);
    *(v9 + 37) = 0;

    v7 = *(v9 + 38);
    *(v9 + 38) = 0;

    v8 = *(v9 + 39);
    *(v9 + 39) = 0;

    [*(v9 + 1) openDatabaseIfNecessary];
    [v9 _continueFetchingTabsInOperationGroup:*(a1 + 32)];
    WeakRetained = v9;
  }
}

void sub_10009D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009D62C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D6F4;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_10009D6F4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = sub_100001B78();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = v3;
      v6 = [v4 safari_logDescription];
      *buf = 138543362;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished reading server change token from the SQLite database with %{public}@", buf, 0xCu);
    }

    v7 = [WeakRetained _cloudTabStoreError];
    if (v7)
    {
      v8 = sub_100001B78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3460(v8, v7, a1);
      }

      [WeakRetained _handleSevereSQLiteErrorWhileFetching:v7 inOperationGroup:a1[4]];
      goto LABEL_27;
    }

    if ([a1[5] length])
    {
      v9 = [NSKeyedUnarchiver alloc];
      v10 = a1[5];
      v29 = 0;
      v11 = [v9 initForReadingFromData:v10 error:&v29];
      v12 = v29;
      if (v12)
      {
        v13 = sub_1000D22B4();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [v12 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [a1[4] safari_logDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1000A3528();
        }
      }

      v14 = [v11 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [v11 finishDecoding];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v16 = sub_100001B78();
      v17 = v16;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = a1[4];
          v19 = v17;
          v20 = [v18 safari_logDescription];
          *v30 = 138543362;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found server change token data in the SQLite database with %{public}@", v30, 0xCu);
        }

        v21 = v14;
        v22 = *(WeakRetained + 35);
        *(WeakRetained + 35) = v21;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000A35C0(a1, v17);
        }

        if ((*(WeakRetained + 248) & 1) == 0)
        {
          [WeakRetained _deleteDatabaseAndRestartFetchInOperationGroup:a1[4]];

          goto LABEL_27;
        }

        v27 = sub_100001B78();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000A3660(a1, v27);
        }

        v28 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:2 userInfo:0];
        v22 = *(WeakRetained + 30);
        *(WeakRetained + 30) = v28;
      }
    }

    else
    {
      v23 = sub_100001B78();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[4];
        v25 = v23;
        v26 = [v24 safari_logDescription];
        *buf = 138543362;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No server change token found in the SQLite database with %{public}@", buf, 0xCu);
      }
    }

    [WeakRetained _continueFetchingTabsInOperationGroup:a1[4]];
LABEL_27:
  }
}

void sub_10009DAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    v15 = sub_100001B78();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v14 name];
      objc_claimAutoreleasedReturnValue();
      [*(v13 + 32) safari_logDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000A3574();
    }

    objc_end_catch();
    JUMPOUT(0x10009D8C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009DE08(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DEB8;
  block[3] = &unk_100132D78;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10009DEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009DF64;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_10009DF64(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 312);
  v2 = [*(a1 + 40) recordName];
  [v1 addObject:v2];
}

void sub_10009DFBC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009E0B8;
  v11[3] = &unk_1001357E8;
  v12 = a4;
  v7 = *(a1 + 32);
  v17 = *(a1 + 56);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v9 = v12;
  objc_copyWeak(&v16, (a1 + 48));
  v15 = v6;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(&v16);
}

void sub_10009E0B8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_100001B78();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3700(v2, v5, a1);
    }

    if (*(a1 + 72) == 1 && [*v2 safari_isOrContainsCloudKitMissingZoneError])
    {
      v6 = sub_100001B78();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = v6;
        v9 = [v7 safari_logDescription];
        *buf = 138543362;
        v26 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudTabs zone before retrying fetch with %{public}@", buf, 0xCu);
      }

      v12 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = (a1 + 40);
      v13 = *(v10 + 344);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10009E380;
      v22[3] = &unk_100135798;
      objc_copyWeak(&v24, v11 + 3);
      v23 = *v11;
      [v13 createCloudTabsRecordZoneInOperationGroup:v12 completionHandler:v22];

      objc_destroyWeak(&v24);
    }

    else
    {
      v14 = *(a1 + 48);
      if ((*(v14 + 248) & 1) != 0 || (v15 = [v14 _shouldDeleteDatabaseForError:*(a1 + 32)], v14 = *(a1 + 48), !v15))
      {
        objc_storeStrong((v14 + 240), *(a1 + 32));
        [*(a1 + 48) _continueFetchingTabsInOperationGroup:*(a1 + 40)];
      }

      else
      {
        [v14 _deleteDatabaseAndRestartFetchInOperationGroup:*(a1 + 40)];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = v5;
      v18 = [v16 safari_logDescription];
      v19 = [*(*(a1 + 48) + 312) count];
      v20 = [*(*(a1 + 48) + 296) count];
      v21 = [*(*(a1 + 48) + 304) count];
      *buf = 138544130;
      v26 = v18;
      v27 = 2050;
      v28 = v19;
      v29 = 2050;
      v30 = v20;
      v31 = 2050;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished fetching changes from CloudKit with %{public}@, modified %{public}lu tabs, closed %{public}lu tabs and deleted %{public}lu records.", buf, 0x2Au);
    }

    objc_storeStrong((*(a1 + 48) + 280), *(a1 + 56));
    [*(a1 + 48) _continueFetchingTabsInOperationGroup:*(a1 + 40)];
  }
}