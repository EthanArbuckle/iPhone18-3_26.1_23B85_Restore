void sub_100125F7C(void *a1, void *a2, uint64_t a3, void *a4, int a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if ([v13 count] || objc_msgSend(v14, "count"))
  {
    v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v13 recordIDsToDelete:v14];
    [v18 setAtomic:1];
    [v18 setSavePolicy:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100126134;
    v21[3] = &unk_1005148A8;
    v22 = v17;
    [v18 setModifyRecordsCompletionBlock:v21];
    [v18 setQualityOfService:a3];
    if (v16)
    {
      v19 = [v18 configuration];
      [v19 setXPCActivity:v16];
    }

    if (a5)
    {
      [v15 privateCloudDatabase];
    }

    else
    {
      [v15 sharedCloudDatabase];
    }
    v20 = ;
    [v20 addOperation:v18];
  }

  else if (v17)
  {
    (*(v17 + 2))(v17, 0, 0, 0);
  }
}

void sub_100126134(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "_ad_saveRecordsWithRegisteredActivity_block_invoke";
      v15 = 2112;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to modify records in database with error: (%@)", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v13 = 136315650;
    v14 = "_ad_saveRecordsWithRegisteredActivity_block_invoke";
    v15 = 2048;
    v16 = [v7 count];
    v17 = 2048;
    v18 = [v8 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Saved %zd records and deleted %zd records in database", &v13, 0x20u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v9, v7, v8);
  }
}

void sub_100126AA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100126F34;
  v37[3] = &unk_100512758;
  v37[4] = *(a1 + 32);
  v4 = objc_retainBlock(v37);
  v5 = [*(a1 + 40) timerID];
  v6 = dispatch_group_create();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100127068;
  v35[4] = sub_100127078;
  v36 = 0;
  dispatch_group_enter(v6);
  v7 = *(a1 + 32);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100127080;
  v29[3] = &unk_100512820;
  v29[4] = v7;
  v8 = v5;
  v30 = v8;
  v9 = v4;
  v33 = v9;
  v34 = v35;
  v10 = v3;
  v31 = v10;
  v11 = v6;
  v32 = v11;
  [v7 performBlock:v29];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100127068;
  v27[4] = sub_100127078;
  v28 = 0;
  dispatch_group_enter(v11);
  v12 = [*(a1 + 32) remoteTimerManager];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10012715C;
  v22[3] = &unk_1005127F8;
  v22[4] = *(a1 + 32);
  v13 = v9;
  v25 = v13;
  v26 = v27;
  v14 = v10;
  v23 = v14;
  v15 = v11;
  v24 = v15;
  [v12 removeTimerWithID:v8 completion:v22];

  v16 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100127290;
  block[3] = &unk_100512C28;
  v21 = v27;
  v19 = v14;
  v20 = v35;
  v17 = v14;
  dispatch_group_notify(v15, v16, block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v35, 8);
}

id sub_100126E10()
{
  if (qword_1005901F8 != -1)
  {
    dispatch_once(&qword_1005901F8, &stru_100512860);
  }

  v1 = qword_100590200;

  return v1;
}

void sub_100126E64(id a1)
{
  sub_100126EC8();
  qword_100590200 = objc_getClass("NAScheduler");
  if (!qword_100590200)
  {
    __assert_rtn("initNAScheduler_block_invoke", "ADClockService+IntentSupport.m", 50, "classNAScheduler");
  }

  off_10058B630 = sub_100126F28;
}

void sub_100126EC8()
{
  if (!qword_1005901F0)
  {
    qword_1005901F0 = dlopen("/System/Library/PrivateFrameworks/NetAppsUtilities.framework/NetAppsUtilities", 2);
    if (!qword_1005901F0)
    {
      __assert_rtn("NetAppsUtilitiesLibrary", "ADClockService+IntentSupport.m", 47, "frameworkLibrary");
    }
  }
}

void sub_100126F34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClockService(IntentSupport) removeTimer:]_block_invoke_2";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Update snapshot to reflect the removed timer %@.", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001276B8;
  v7[3] = &unk_100512730;
  v8 = v3;
  v6 = v3;
  [v5 _mutateMergedClockTimerSnapshotUsingBlock:v7];
}

uint64_t sub_100127068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100127080(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100127514;
  v10[3] = &unk_1005127A8;
  v4 = (a1 + 72);
  *&v5 = *(a1 + 64);
  *(&v5 + 1) = *v4;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v8;
  v12 = v9;
  [v2 _removeTimerWithID:v3 completion:v10];
}

void sub_10012715C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100127394;
  block[3] = &unk_100512820;
  v17 = v5;
  v8 = *(a1 + 56);
  v18 = v6;
  *&v9 = v8;
  *(&v9 + 1) = *(a1 + 64);
  v15 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v19 = v12;
  v20 = v15;
  v13 = v6;
  v14 = v5;
  dispatch_async(v7, block);
}

void *sub_100127290(void *result)
{
  v1 = *(*(result[5] + 8) + 40);
  if (v1)
  {
    v2 = result;
    v3 = *(*(result[6] + 8) + 40);
    if (v3)
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315650;
        v6 = "[ADClockService(IntentSupport) removeTimer:]_block_invoke";
        v7 = 2112;
        v8 = v1;
        v9 = 2112;
        v10 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to update timer locally and remotely. (localError = %@, remoteError = %@)", &v5, 0x20u);
        v1 = *(*(v2[5] + 8) + 40);
      }

      return [v2[4] finishWithError:v1];
    }
  }

  return result;
}

void sub_100127394(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = SOClockTimerCreateFromMTTimer();
    (*(v2 + 16))(v2, v3);

    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[ADClockService(IntentSupport) removeTimer:]_block_invoke_2";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s removedTimer = %@", &v9, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 136315394;
      v10 = "[ADClockService(IntentSupport) removeTimer:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s remoteError = %@", &v9, 0x16u);
    }
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_100127514(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = SOClockTimerCreateFromMTTimer();
    (*(v7 + 16))(v7, v8);

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) removeTimer:]_block_invoke_4";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s removedTimer = %@", &v11, 0x16u);
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) removeTimer:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s localError = %@", &v11, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_1001276B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timersByID];
  v5 = [v4 mutableCopy];
  v6 = [*(a1 + 32) timerID];
  [v5 removeObjectForKey:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001277B0;
  v10[3] = &unk_10051DD48;
  v11 = v5;
  v7 = v5;
  v8 = [v3 mutatedCopyWithMutator:v10];

  return v8;
}

id sub_1001277BC()
{
  if (qword_1005901E0 != -1)
  {
    dispatch_once(&qword_1005901E0, &stru_100512840);
  }

  v1 = qword_1005901E8;

  return v1;
}

void sub_100127810(id a1)
{
  sub_100126EC8();
  qword_1005901E8 = objc_getClass("NAFuture");
  if (!qword_1005901E8)
  {
    __assert_rtn("initNAFuture_block_invoke", "ADClockService+IntentSupport.m", 48, "classNAFuture");
  }

  off_10058B628 = sub_100127874;
}

void sub_1001279FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100127F8C;
  v46[3] = &unk_100512758;
  v46[4] = *(a1 + 32);
  v4 = objc_retainBlock(v46);
  v5 = [*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___ADClockTimerIntentSupportChangeTracking];
  v6 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      *buf = 136315394;
      *&buf[4] = "[ADClockService(IntentSupport) updateTimer:]_block_invoke_3";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ has tracked changes.", buf, 0x16u);
    }

    v8 = [*(a1 + 40) timerID];
    v9 = [*(a1 + 40) trackedChanges];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "[ADClockService(IntentSupport) updateTimer:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v48 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s timerID = %@, changes = %@", buf, 0x20u);
    }

    v11 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = sub_100127068;
    v49 = sub_100127078;
    v50 = 0;
    dispatch_group_enter(v11);
    v12 = *(a1 + 32);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001280C0;
    v39[3] = &unk_1005127D0;
    v39[4] = v12;
    v13 = v8;
    v40 = v13;
    v14 = v9;
    v41 = v14;
    v15 = v4;
    v44 = v15;
    v45 = buf;
    v16 = v3;
    v42 = v16;
    v17 = v11;
    v43 = v17;
    [v12 performBlock:v39];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_100127068;
    v37[4] = sub_100127078;
    v38 = 0;
    dispatch_group_enter(v17);
    v18 = [*(a1 + 32) remoteTimerManager];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001281AC;
    v32[3] = &unk_1005127F8;
    v32[4] = *(a1 + 32);
    v35 = v15;
    v36 = v37;
    v19 = v16;
    v33 = v19;
    v20 = v17;
    v34 = v20;
    [v18 updateTimerWithID:v13 changes:v14 completion:v32];

    v21 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001282E0;
    block[3] = &unk_100512C28;
    v30 = buf;
    v31 = v37;
    v29 = v19;
    dispatch_group_notify(v20, v21, block);

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      *buf = 136315394;
      *&buf[4] = "[ADClockService(IntentSupport) updateTimer:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s %@ does NOT have tracked changes.", buf, 0x16u);
    }

    v22 = *(a1 + 32);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001283E4;
    v24[3] = &unk_10051E0D8;
    v24[4] = v22;
    v25 = *(a1 + 40);
    v27 = v4;
    v26 = v3;
    [v22 performBlock:v24];
  }
}

void sub_100127F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke_2";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Update snapshot to reflect the updated timer %@.", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100128CAC;
  v7[3] = &unk_100512730;
  v8 = v3;
  v6 = v3;
  [v5 _mutateMergedClockTimerSnapshotUsingBlock:v7];
}

void sub_1001280C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100128B08;
  v11[3] = &unk_1005127A8;
  v5 = (a1 + 80);
  *&v6 = *(a1 + 72);
  *(&v6 + 1) = *v5;
  v10 = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v9;
  v13 = v10;
  [v2 _updateTimerWithID:v3 changes:v4 completion:v11];
}

void sub_1001281AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100128988;
  block[3] = &unk_100512820;
  v17 = v5;
  v8 = *(a1 + 56);
  v18 = v6;
  *&v9 = v8;
  *(&v9 + 1) = *(a1 + 64);
  v15 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v19 = v12;
  v20 = v15;
  v13 = v6;
  v14 = v5;
  dispatch_async(v7, block);
}

void *sub_1001282E0(void *result)
{
  v1 = *(*(result[5] + 8) + 40);
  if (v1)
  {
    v2 = result;
    v3 = *(*(result[6] + 8) + 40);
    if (v3)
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315650;
        v6 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke";
        v7 = 2112;
        v8 = v1;
        v9 = 2112;
        v10 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to update timer locally and remotely. (localError = %@, remoteError = %@)", &v5, 0x20u);
        v1 = *(*(v2[5] + 8) + 40);
      }

      return [v2[4] finishWithError:v1];
    }
  }

  return result;
}

void sub_1001283E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1001284A4(*(a1 + 40));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100128644;
  v4[3] = &unk_10051DE88;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 _updateTimer:v3 completion:v4];
}

id sub_1001284A4(void *a1)
{
  v1 = a1;
  if (off_10058B638() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v3 = objc_alloc(off_10058B640());
    v4 = [v1 timerID];
    v2 = [v3 initWithIdentifier:v4];

    if (!v2)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "_ADClockServiceGetMTTimerFromMTTimerIntentSupportObject";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unable to create an instace of MTMutableTimer.", &v9, 0xCu);
      }
    }

    [v2 setState:{objc_msgSend(v1, "state")}];
    [v1 duration];
    [v2 setDuration:?];
    v6 = [v1 title];
    [v2 setTitle:v6];

    v7 = [v1 siriContext];
    [v2 setSiriContext:v7];
  }

  return v2;
}

void sub_100128644(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = SOClockTimerCreateFromMTTimer();
    (*(v7 + 16))(v7, v8);

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke_2";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s updatedTimer = %@", &v11, 0x16u);
    }
  }

  if (v6)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s error = %@", &v11, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

id sub_1001287D4()
{
  if (qword_100590228 != -1)
  {
    dispatch_once(&qword_100590228, &stru_1005128C0);
  }

  v1 = qword_100590230;

  return v1;
}

void sub_100128828(id a1)
{
  if (qword_100590218 != -1)
  {
    dispatch_once(&qword_100590218, &stru_1005128A0);
  }

  qword_100590230 = objc_getClass("MTMutableTimer");
  off_10058B640 = sub_10012888C;
}

id sub_1001288C4()
{
  if (qword_100590208 != -1)
  {
    dispatch_once(&qword_100590208, &stru_100512880);
  }

  v1 = qword_100590210;

  return v1;
}

void sub_100128918(id a1)
{
  if (qword_100590218 != -1)
  {
    dispatch_once(&qword_100590218, &stru_1005128A0);
  }

  qword_100590210 = objc_getClass("MTTimer");
  off_10058B638 = sub_10012897C;
}

void sub_100128988(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = SOClockTimerCreateFromMTTimer();
    (*(v2 + 16))(v2, v3);

    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke_2";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s updatedTimer = %@", &v9, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 136315394;
      v10 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s remoteError = %@", &v9, 0x16u);
    }
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_100128B08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = SOClockTimerCreateFromMTTimer();
    (*(v7 + 16))(v7, v8);

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke_2";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s updatedTimer = %@", &v11, 0x16u);
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) updateTimer:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s localError = %@", &v11, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_100128CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timersByID];
  v5 = [v4 mutableCopy];
  v6 = *(a1 + 32);
  v7 = [v6 timerID];
  [v5 setObject:v6 forKey:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100128DB4;
  v11[3] = &unk_10051DD48;
  v12 = v5;
  v8 = v5;
  v9 = [v3 mutatedCopyWithMutator:v11];

  return v9;
}

void sub_100128F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100128FF4;
  v6[3] = &unk_10051DB68;
  v6[4] = v4;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void sub_100128FF4(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100129110;
  v9[3] = &unk_100512758;
  v9[4] = *(a1 + 32);
  v2 = objc_retainBlock(v9);
  v3 = *(a1 + 32);
  v4 = sub_1001284A4(*(a1 + 40));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100129244;
  v6[3] = &unk_10051DE88;
  v8 = v2;
  v7 = *(a1 + 48);
  v5 = v2;
  [v3 _addTimer:v4 completion:v6];
}

void sub_100129110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClockService(IntentSupport) addTimer:]_block_invoke_3";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Update snapshot to reflect the added timer %@.", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001293D4;
  v7[3] = &unk_100512730;
  v8 = v3;
  v6 = v3;
  [v5 _mutateMergedClockTimerSnapshotUsingBlock:v7];
}

void sub_100129244(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = SOClockTimerCreateFromMTTimer();
    (*(v7 + 16))(v7, v8);

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) addTimer:]_block_invoke_3";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s addedTimer = %@", &v11, 0x16u);
    }
  }

  if (v6)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADClockService(IntentSupport) addTimer:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s error = %@", &v11, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

id sub_1001293D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timersByID];
  v5 = [v4 mutableCopy];
  v6 = *(a1 + 32);
  v7 = [v6 timerID];
  [v5 setObject:v6 forKey:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001294DC;
  v11[3] = &unk_10051DD48;
  v12 = v5;
  v8 = v5;
  v9 = [v3 mutatedCopyWithMutator:v11];

  return v9;
}

void sub_1001295BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100129658;
  v7[3] = &unk_10051E128;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v7[4] = v5;
  v6 = v3;
  [v5 performBlock:v7];
}

void sub_100129658(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100127068;
  v18 = sub_100127078;
  v19 = objc_alloc_init(NSMutableArray);
  v2 = [*(a1 + 32) _mergedClockTimerSnapshot];
  v3 = [objc_alloc(off_10058B638()) initWithState:*(a1 + 48) duration:0.0];
  v4 = [v2 timersByID];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100129868;
  v11 = &unk_10051DAC8;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v15[5];
    *buf = 136315394;
    v21 = "[ADClockService(IntentSupport) sleepTimersWithState:]_block_invoke_2";
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  [*(a1 + 40) finishWithResult:{v15[5], v8, v9, v10, v11}];

  _Block_object_dispose(&v14, 8);
}

void sub_100129844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100129868(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  if ([v9 type] == 2)
  {
    v6 = [v9 state];
    if (v6 == SOClockTimerGetTimerStateFromMTTimer())
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = [v9 timerProxyForIntentSupport];
      [v7 addObject:v8];

      *a4 = 1;
    }
  }
}

void sub_100129A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100129B00;
  v6[3] = &unk_10051E010;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void sub_100129B00(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [*(a1 + 32) _mergedClockTimerSnapshot];
  v4 = [v3 timersByID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100129C68;
  v7[3] = &unk_10051A338;
  v5 = v2;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClockService(IntentSupport) timers]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  [*(a1 + 40) finishWithResult:v5];
}

void sub_100129C68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 timerProxyForIntentSupport];
  [v3 addObject:v4];
}

void sub_10012A3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012A40C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWatchdogTimeout];
}

id sub_10012A9D8(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = [NSNumber numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
  }

  else
  {
    if (a1 != 1)
    {
      goto LABEL_9;
    }

    v1 = objc_alloc_init(RadiosPreferences);
    v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 airplaneMode]);
  }

  if (!v2)
  {
LABEL_9:
    objc_exception_throw([[NSException alloc] initWithName:NSInvalidArgumentException reason:@"Unable to get setting with type Unknown" userInfo:&__NSDictionary0__struct]);
  }

  return v2;
}

void sub_10012AF3C(uint64_t a1)
{
  if ([*(a1 + 32) isDelaying])
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[ADRequestDelayManager interceptCommand:completion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Delaying sending command: %@", &v8, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = [*(a1 + 32) _delayedcontextCommandHandlers];
    }

    else
    {
      v3 = [*(a1 + 32) _delayedCommandHandlers];
    }

    v5 = v3;
    v6 = objc_retainBlock(*(a1 + 48));
    [v5 enqueueObject:v6];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void sub_10012B0D0(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100590238;
  qword_100590238 = v1;

  v3 = qword_100590238;
  v6 = SACFFetchScriptCommandClassIdentifier;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  v5 = [NSSet setWithArray:v4];
  [v3 setObject:v5 forKey:SACFGroupIdentifier];
}

void sub_10012B388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012B3C4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADRequestDelayManager _beginTimerForContextCommands]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Timeout reached for context commands, dropping commands", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained releaseStoredContextCommandsAndSendCommands:0];
}

void sub_10012B7B8(uint64_t a1)
{
  v2 = [*(a1 + 32) isDelaying];
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = "NO";
      if (*(a1 + 48))
      {
        v4 = "YES";
      }

      v6 = 136315394;
      v7 = "[ADRequestDelayManager stopDelayingAndSendCommands:completion:]_block_invoke";
      v8 = 2080;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Stopping request delaying and sending commands: %s", &v6, 0x16u);
    }

    [*(a1 + 32) setIsDelaying:0];
    [*(a1 + 32) dequeueDelayedCommandsAndSend:*(a1 + 48) completion:0];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[ADRequestDelayManager stopDelayingAndSendCommands:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Delaying already stopped, not sending commands", &v6, 0xCu);
  }
}

void sub_10012B990(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADRequestDelayManager startDelaying]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  if ([*(a1 + 32) isDelaying])
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADRequestDelayManager startDelaying]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Can't start delaying because we are already delaying", &v7, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) setIsDelaying:1];
    [*(a1 + 32) releaseStoredContextCommandsAndSendCommands:0];
    v4 = *(*(a1 + 32) + 32);
    if (v4)
    {
      [v4 cancel];
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = 0;
    }
  }
}

uint64_t sub_10012C6BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10012CE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012CE90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [v3 identifier];
    v9 = 136315650;
    v10 = "[ADDeviceContextConnection getLocalDeviceContextWithReply:]_block_invoke";
    v11 = 2048;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p localDeviceContext = %@", &v9, 0x20u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void sub_10012D050(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[33] == 1)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 identifier];
      *buf = 136315650;
      v12 = "[ADDeviceContextConnection updateLocalDeviceContext:]_block_invoke";
      v13 = 2048;
      v14 = v1;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p localDeviceContext = %@", buf, 0x20u);

      v1 = *(a1 + 32);
    }

    objc_initWeak(buf, v1);
    v7 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012D208;
    v9[3] = &unk_10051C100;
    objc_copyWeak(&v10, buf);
    v8 = [v7 _remoteServiceDelegateWithErrorHandler:v9];
    [v8 updateLocalDeviceContext:*(a1 + 40)];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void sub_10012D1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012D208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 136315650;
    v8 = "[ADDeviceContextConnection updateLocalDeviceContext:]_block_invoke";
    v9 = 2048;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v7, 0x20u);
  }
}

void sub_10012D5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012D620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCConnectionInvalidation];
}

void sub_10012D660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCConnectionInterruption];
}

void sub_10012E15C(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationManager];
  v3 = [v2 location];

  if (v3)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v26 = "[ADPeerLocationRemote _getBestLocationWithCompletion:]_block_invoke";
      v27 = 2113;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending unsolicited location: %{private}@", buf, 0x16u);
    }

    v5 = objc_alloc_init(_ADPBLocationSetPeerLocationRequest);
    [(_ADPBLocationSetPeerLocationRequest *)v5 ad_setLocation:v3];
    [*(*(a1 + 32) + 16) sendRequest:v5 fireAndForget:1];
  }

  [*(a1 + 32) _startBestLocationTimer];
  v6 = [*(a1 + 32) _hasActiveBestLocationRequest];
  v7 = objc_retainBlock(*(*(a1 + 32) + 40));
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10012E3D8;
  v22 = &unk_100512948;
  v8 = v7;
  v23 = v8;
  v24 = *(a1 + 40);
  v9 = objc_retainBlock(&v19);
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 32);
  if ((v6 & 1) == 0 && !v12[6])
  {
    v13 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADPeerLocationRemote _getBestLocationWithCompletion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ADPeerLocationRemote: looking up best location on behalf of peer", buf, 0xCu);
    }

    v14 = [ADCommandCenter sharedCommandCenter:v19];
    v15 = [v14 _locationManager];

    v16 = [v15 createLocationInUseAssertion];
    v17 = *(a1 + 32);
    v18 = *(v17 + 48);
    *(v17 + 48) = v16;

    v12 = *(a1 + 32);
  }

  [v12 _startUpdatingLocation];
}

void sub_10012E3D8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

void sub_10012E764(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADPeerLocationRemote _startBestLocationTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ADPeerLocationRemote best location timer firing", &v6, 0xCu);
  }

  [*(a1 + 32) _cancelBestLocationTimer];
  v3 = [*(a1 + 32) _locationManager];
  v4 = [v3 location];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _executeBestLocationCompletionWithLocation:v4];
  }

  else
  {
    [v5 _executeBestLocationCompletionWithLocationErrorWithCode:101];
  }
}

uint64_t sub_10012F770()
{
  if (!qword_100590250)
  {
    qword_100590250 = _sl_dlopen();
  }

  return qword_100590250;
}

id sub_10012F840()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_100590258;
  v6 = qword_100590258;
  if (!qword_100590258)
  {
    sub_10012F770();
    v4[3] = objc_getClass("USTAgentConnection");
    qword_100590258 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_10012F930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10012F948(uint64_t a1)
{
  sub_10012F770();
  result = objc_getClass("USTAgentConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590258 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10012F99C()
{
  result = _sl_dlopen();
  qword_100590250 = result;
  return result;
}

uint64_t sub_10012FA10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10012FA28(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = AFGradingOptInStateChangeWithHistoryEntry();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
}

void sub_10012FF44(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v9;
    if (v9)
    {
      v8 = +[ADCloudKitManager sharedManager];
      [v8 handleCloudKitError:v9 forZone:@"com.apple.assistant.account.status" mirror:1 operationType:2];

      v7 = v9;
      v6 = *(a1 + 32);
    }

    (*(v6 + 16))(v6, v7 == 0);
  }
}

void sub_100133F50(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setIncludesFamily:v3];
  [v4 setIncludesHome:a1[5]];
  [v4 setIncludesRemoraDevices:a1[6]];
}

void sub_100134490(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = [*(a1 + 40) hash];
  if (v3 != [*(a1 + 48) hash])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            v10 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
            {
              v11 = *(a1 + 40);
              v12 = v10;
              v13 = [v11 name];
              v14 = [*(a1 + 40) btAddress];
              v15 = *(*(a1 + 32) + 8);
              v16 = *(*(a1 + 32) + 16);
              *buf = 136316418;
              v23 = "[AFSiriAudioRouteMonitor _broadcastRouteChangeFrom:to:]_block_invoke";
              v24 = 2112;
              v25 = v9;
              v26 = 2112;
              v27 = v13;
              v28 = 2112;
              v29 = v14;
              v30 = 2112;
              v31 = v16;
              v32 = 2112;
              v33 = v15;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Telling %@ currentAudioRouteDidChangeFrom:%@(%@) to:%@(%@)", buf, 0x3Eu);
            }

            [v9 currentAudioRouteDidChangeFrom:*(a1 + 40) to:*(a1 + 48)];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v34 count:16];
      }

      while (v6);
    }

    v2 = v17;
  }
}

id sub_100134734(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
    v5 = AFDeviceRingerSwitchStateGetName();
    v6 = 136315394;
    v7 = "[AFSiriAudioRouteMonitor deviceRingerObserver:didChangeState:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Updating ringer switch state to: %@", &v6, 0x16u);
  }

  return [*(a1 + 32) _updateAudioRouteAvailabilityAndBroadcast:1];
}

uint64_t sub_100134918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100134930(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (!v3)
  {
    v4 = sub_10001136C([*(v2 + 24) state]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v3 = *(*(a1 + 32) + 48);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

void *sub_1001349A0(uint64_t a1)
{
  v2 = sub_1001349F0();
  result = dlsym(v2, "AVSystemController_PickableRoutesAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590280 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001349F0()
{
  v4[0] = 0;
  if (!qword_100590278)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100134B44;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_1005129C8;
    v6 = 0;
    qword_100590278 = _sl_dlopen();
  }

  v0 = qword_100590278;
  if (!qword_100590278)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"AFSiriAudioRouteMonitor.m" lineNumber:33 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100134B44()
{
  result = _sl_dlopen();
  qword_100590278 = result;
  return result;
}

void sub_100134BB8(uint64_t a1)
{
  sub_1001349F0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSystemController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100590270 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AFSiriAudioRouteMonitor.m" lineNumber:34 description:{@"Unable to find class %s", "AVSystemController"}];

    __break(1u);
  }
}

void sub_100135238(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[AFSiriAudioRouteMonitor initializeAVSystemControllerSubscriptions:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Initializing AVSystemController's subscriptions due to: %@", buf, 0x16u);
  }

  v3 = sub_1001354B8();
  v17[0] = v3;
  v4 = sub_10013561C();
  v17[1] = v4;
  v5 = [NSArray arrayWithObjects:v17 count:2];

  v6 = [sub_100019F2C() sharedAVSystemController];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = qword_1005902A0;
  v16 = qword_1005902A0;
  if (!qword_1005902A0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100135780;
    v19 = &unk_10051E1C8;
    v20 = &v13;
    v8 = sub_1001349F0();
    v9 = dlsym(v8, "AVSystemController_SubscribeToNotificationsAttribute");
    *(v20[1] + 24) = v9;
    qword_1005902A0 = *(v20[1] + 24);
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v7)
  {
    v11 = +[NSAssertionHandler currentHandler];
    v12 = [NSString stringWithUTF8String:"NSString *getAVSystemController_SubscribeToNotificationsAttribute(void)"];
    [v11 handleFailureInFunction:v12 file:@"AFSiriAudioRouteMonitor.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }

  [v6 setAttribute:v5 forKey:*v7 error:0];

  [*(a1 + 40) updateAudioRouteAvailability:*(a1 + 32)];
}

void sub_100135498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001354B8()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100590290;
  v9 = qword_100590290;
  if (!qword_100590290)
  {
    v1 = sub_1001349F0();
    v7[3] = dlsym(v1, "AVSystemController_PickableRoutesDidChangeNotification");
    qword_100590290 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getAVSystemController_PickableRoutesDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFSiriAudioRouteMonitor.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100135604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013561C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100590298;
  v9 = qword_100590298;
  if (!qword_100590298)
  {
    v1 = sub_1001349F0();
    v7[3] = dlsym(v1, "AVSystemController_PreferredExternalRouteDidChangeNotification");
    qword_100590298 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getAVSystemController_PreferredExternalRouteDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFSiriAudioRouteMonitor.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100135768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100135780(uint64_t a1)
{
  v2 = sub_1001349F0();
  result = dlsym(v2, "AVSystemController_SubscribeToNotificationsAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005902A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001357D0(uint64_t a1)
{
  v2 = sub_1001349F0();
  result = dlsym(v2, "AVSystemController_PreferredExternalRouteDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590298 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100135820(uint64_t a1)
{
  v2 = sub_1001349F0();
  result = dlsym(v2, "AVSystemController_PickableRoutesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100135C38(uint64_t a1)
{
  v2 = sub_1001349F0();
  result = dlsym(v2, "AVSystemController_ServerConnectionDiedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100135D28()
{
  v0 = [objc_alloc(objc_opt_class()) _init];
  v1 = qword_100590268;
  qword_100590268 = v0;

  return _objc_release_x1(v0, v1);
}

void sub_100135EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135F54;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100135F54(uint64_t a1)
{
  [*(*(a1 + 32) + 32) locationDataWasRecievedFromPeer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained peerLocationConnection:*(a1 + 32) didReceiveUnsolicitedLocation:*(a1 + 40)];
}

void sub_100136028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained peerLocationConnectionSuggestsClearingCachedLocation:*(a1 + 32)];
}

void sub_100136114(uint64_t a1)
{
  v2 = objc_alloc_init(_ADPBLocationGetPeerLocationRequest);
  v3 = *(*(a1 + 32) + 24);
  v4 = objc_opt_class();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001361E0;
  v6[3] = &unk_100512A10;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 sendRequest:v2 responseClass:v4 completion:v6];
}

void sub_1001361E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001362B8;
  v12[3] = &unk_10051E0D8;
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_1001362B8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 32);
    v3 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100136430;
    v7[3] = &unk_1005129E8;
    v8 = v2;
    v9 = *(a1 + 56);
    v4 = v2;
    [v3 _ad_performForPeerLocationWithCompletion:v7];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      *buf = 136315394;
      v11 = "[ADPeerLocationConnection getBestLocationWithCompletion:]_block_invoke_3";
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unable to get best location from peer: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100136430(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) locationDataWasRecievedFromPeer];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t sub_100136DA4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setActiveSubscriptions:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10013710C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t sub_10013714C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1001373C0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setMultiUserSetupStatus:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_100137400(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setEnrolledUsers:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t sub_100137440(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1001375CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setMultiUserState:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100137BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100138F44()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1005902A8;
  v7 = qword_1005902A8;
  if (!qword_1005902A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100139024;
    v3[3] = &unk_10051E1C8;
    v3[4] = &v4;
    sub_100139024(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10013900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100139024(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_1005902B0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100139210;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_100512AA8;
    v8 = 0;
    qword_1005902B0 = _sl_dlopen();
  }

  if (!qword_1005902B0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *GenerativeModelsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADAssistantProperties.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getGMAvailabilityWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADAssistantProperties.m" lineNumber:41 description:{@"Unable to find class %s", "GMAvailabilityWrapper"}];

LABEL_10:
    __break(1u);
  }

  qword_1005902A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100139210()
{
  result = _sl_dlopen();
  qword_1005902B0 = result;
  return result;
}

void sub_100139E44(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100139E7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100139E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A214;
  block[3] = &unk_10051B688;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

id sub_100139F5C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADiOSAssistantProperties _getIsSpokenNotificationsControlCenterModuleEnabledWithCompletion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out", &v4, 0xCu);
  }

  AnalyticsSendEvent();
  return [*(a1 + 32) invokeWithValue:0];
}

Class sub_10013A028(uint64_t a1)
{
  if (!qword_1005902D0)
  {
    qword_1005902D0 = _sl_dlopen();
  }

  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005902C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10013A128(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  [v2 invokeWithValue:v3];
}

id sub_10013A188(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return [result start];
  }

  return result;
}

uint64_t sub_10013A1A0()
{
  result = _sl_dlopen();
  qword_1005902D0 = result;
  return result;
}

uint64_t sub_10013A214(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    [v2 cancel];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "[ADiOSAssistantProperties _getIsSpokenNotificationsControlCenterModuleEnabledWithCompletion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Retrieved", &v9, 0xCu);
      v5 = a1[4];
    }

    v7 = [v5 intValue] == 3;
  }

  else
  {
    v7 = 0;
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, v7);
  }

  return result;
}

id sub_10013A384()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1005902B8;
  v7 = qword_1005902B8;
  if (!qword_1005902B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10013A464;
    v3[3] = &unk_10051E1C8;
    v3[4] = &v4;
    sub_10013A464(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10013A44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10013A464(uint64_t a1)
{
  if (!qword_1005902C0)
  {
    qword_1005902C0 = _sl_dlopen();
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005902B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10013A564()
{
  result = _sl_dlopen();
  qword_1005902C0 = result;
  return result;
}

uint64_t sub_10013AF34(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIsSpokenNotificationsControlCenterModuleEnabled:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10013B750(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAnnounce:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10013B790(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setActiveSubscriptions:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t sub_10013B7D0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10013BE64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013BE7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C034;
  block[3] = &unk_10051B688;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

id sub_10013BF44(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADGeneralProperties _getStoreFrontIdWithCompletion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out", &v4, 0xCu);
  }

  AnalyticsSendEvent();
  return [*(a1 + 32) invokeWithValue:0];
}

id sub_10013C01C(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return [result start];
  }

  return result;
}

uint64_t sub_10013C034(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    [v2 cancel];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[ADGeneralProperties _getStoreFrontIdWithCompletion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Retrieved", &v8, 0xCu);
      v5 = a1[4];
    }

    [v5 intValue];
  }

  return (*(a1[5] + 16))();
}

uint64_t sub_10013CB50(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setStorefrontId:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_10013D05C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGeneral:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_10013D2B0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGeneral:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10013D5F8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGeneral:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10013D638(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setTvOSAssistant:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t sub_10013D678(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10013D890(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGeneral:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10013DC08(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGeneral:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10013DC48(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIOSAssistant:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t sub_10013DC88(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10013DE00(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIOSDevicePropertiesReported:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10013DF1C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADDeviceProperties _populateEventMetadataForClientEvent:withCompletion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Retrieving device and user aggregation IDs", &buf, 0xCu);
  }

  v3 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = sub_10013E3B8;
  v46 = sub_10013E3C8;
  v47 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10013E3B8;
  v41[4] = sub_10013E3C8;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10013E3B8;
  v39 = sub_10013E3C8;
  v40 = 0;
  v4 = [AFTwoArgumentSafetyBlock alloc];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10013E3D0;
  v31[3] = &unk_100512BD8;
  v5 = *(a1 + 40);
  v31[4] = *(a1 + 32);
  v34 = &v35;
  v32 = v5;
  v33 = *(a1 + 48);
  v6 = [v4 initWithBlock:v31];
  dispatch_group_enter(v3);
  v7 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10013E4C8;
  v28[3] = &unk_100512C00;
  p_buf = &buf;
  v8 = v3;
  v29 = v8;
  [v7 fetchDeviceAggregationIdWithCallback:v28];

  dispatch_group_enter(v8);
  v9 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10013E528;
  v25[3] = &unk_100512C00;
  v27 = v41;
  v10 = v8;
  v26 = v10;
  [v9 fetchUserAggregationIdWithCallback:v25];

  v11 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013E588;
  block[3] = &unk_100512C28;
  v12 = v6;
  v22 = v12;
  v23 = &buf;
  v24 = v41;
  dispatch_group_notify(v10, v11, block);
  v13 = [AFWatchdogTimer alloc];
  v14 = *(a1 + 32);
  v15 = *(v14 + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013E5A8;
  v19[3] = &unk_10051E010;
  v19[4] = v14;
  v16 = v12;
  v20 = v16;
  v17 = [v13 initWithTimeoutInterval:v15 onQueue:v19 timeoutHandler:10.0];
  v18 = v36[5];
  v36[5] = v17;

  [v36[5] start];
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&buf, 8);
}

void sub_10013E380(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013E3B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013E3D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013E670;
  block[3] = &unk_100517788;
  v15 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_10013E4C8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10013E528(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

id sub_10013E5A8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADDeviceProperties _populateEventMetadataForClientEvent:withCompletion:]_block_invoke_4";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out waiting for aggregation IDs", &v4, 0xCu);
  }

  [*(a1 + 32) _triggerReportingForNullDeviceAggregationId];
  return [*(a1 + 40) invokeWithValue:0 andValue:0];
}

uint64_t sub_10013E670(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 40);
  if (v2)
  {
    [v2 cancel];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 || *(a1 + 40))
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = 136315650;
      v13 = "[ADDeviceProperties _populateEventMetadataForClientEvent:withCompletion:]_block_invoke_2";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Retrieved aggregation IDs - device:%@ user:%@", &v12, 0x20u);
    }

    v7 = objc_alloc_init(ODDSiriSchemaODDClientEventMetadata);
    if (*(a1 + 32))
    {
      v8 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 32)];
      [v7 setDeviceAggregationId:v8];
    }

    if (*(a1 + 40))
    {
      v9 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 40)];
      [v7 setUserAggregationId:v9];
    }

    [*(a1 + 48) setEventMetadata:v7];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10013F67C(uint64_t a1)
{
  [*(a1 + 32) setConnectionEdgeID:@"Peer"];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10013F6C8(id a1, NSDictionary *a2)
{
  v3 = a2;
  if ([(NSDictionary *)v3 count])
  {
    v2 = +[AFAnalytics sharedAnalytics];
    [v2 logEventWithType:4201 context:v3];
  }
}

void sub_10013F898(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013F968;
  v10[3] = &unk_100512D18;
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, v10);
}

void sub_10013F968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v10 = 136315650;
    v11 = "[ADPeerConnectionProvider _getNWConnectionWithInitialData:completion:]_block_invoke_2";
    v12 = 1024;
    v13 = v4;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %d %@", &v10, 0x1Cu);
  }

  if (!v2)
  {
    if (![*(a1 + 40) isCanceled])
    {
      goto LABEL_11;
    }

    v6 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADPeerConnectionProvider _getNWConnectionWithInitialData:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Connection closed before opening", &v10, 0xCu);
    }

    v2 = [NSError errorWithDomain:SiriCoreSiriConnectionErrorDomain code:17 userInfo:0];
    if (!v2)
    {
LABEL_11:
      v5 = (a1 + 56);
      if (*(a1 + 56) != -1)
      {
        goto LABEL_12;
      }

      v9 = AFSiriLogContextProxy;
      if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "[ADPeerConnectionProvider _getNWConnectionWithInitialData:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Got an invalid socket", &v10, 0xCu);
      }

      v2 = [NSError errorWithDomain:SiriCoreSiriConnectionErrorDomain code:28 userInfo:0];
    }
  }

  v5 = (a1 + 56);
  if (*(a1 + 56) == -1)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (v2)
  {
LABEL_13:
    v8 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADPeerConnectionProvider _getNWConnectionWithInitialData:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Closing valid socket due to other error before setup complete", &v10, 0xCu);
    }

    close(*v5);
    goto LABEL_16;
  }

LABEL_12:
  v7 = nw_connection_create_with_connected_socket();
  v2 = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_17:
  (*(*(a1 + 48) + 16))();
}

void sub_100140C00(uint64_t a1)
{
  [*(a1 + 32) cancelSyncRetryTimerForZoneInfo:*(a1 + 40)];
  v2 = [*(a1 + 40) dataStore];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10014102C;
  v3[3] = &unk_10051B778;
  v4 = *(a1 + 40);
  [v2 synchronizeWithCompletion:v3];
}

void sub_100140CAC(uint64_t a1)
{
  [*(a1 + 32) cancelRateLimitTimerForZoneInfo:*(a1 + 40)];
  v2 = [*(a1 + 40) dataStore];
  v3 = [v2 dataStoreIsOnSharedDatabase];

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Fetch timer fired", &v6, 0xCu);
  }

  v5 = +[ADCloudKitManager sharedManager];
  [v5 _fetchChangesWithZoneInfo:*(a1 + 40) useSharedDatabase:v3];
}

void sub_100140DAC(uint64_t a1)
{
  [*(a1 + 32) cancelRecordZoneSetupTimerForZoneInfo:*(a1 + 40)];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Zone creation timer fired", &v4, 0xCu);
  }

  v3 = +[ADCloudKitManager sharedManager];
  [v3 _setUpMirroredZoneWithZoneInfo:*(a1 + 40)];
}

void sub_100140E84(uint64_t a1)
{
  [*(a1 + 32) cancelShareCreationTimer:*(a1 + 40)];
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Zone share creation timer fired", &v3, 0xCu);
  }

  v2 = +[ADHomeInfoManager sharedInfoManager];
  [v2 restartSharing];
}

void sub_100140F54(id a1)
{
  v1 = +[ADCloudKitManager sharedManager];
  [v1 _setupSharedZoneUpdaterForOwner];
}

void sub_100140F9C(id a1)
{
  v1 = +[ADCloudKitManager sharedManager];
  [v1 retryShareDeletionOperation];
}

void sub_100140FE4(id a1)
{
  v1 = +[ADCloudKitManager sharedManager];
  [v1 continueShareAcceptanceOperations];
}

void sub_10014102C(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setRetryState:0];
  }

  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]_block_invoke_2";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Finished synchronization with success (%d)", &v4, 0x12u);
  }
}

void sub_1001412A4(id a1)
{
  v1 = qword_1005902E0;
  qword_1005902E0 = &off_100534220;
}

uint64_t sub_1001412D0()
{
  v0 = sub_100141330();
  v1 = dlsym(v0, "BYSetupAssistantNeedsToRun");
  off_10058B958 = v1;
  if (!v1)
  {
    __assert_rtn("initBYSetupAssistantNeedsToRun", "ADBuddyMonitor.m", 22, "softLinkBYSetupAssistantNeedsToRun");
  }

  return v1();
}

void *sub_100141330()
{
  result = qword_100590320;
  if (!qword_100590320)
  {
    result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
    qword_100590320 = result;
    if (!result)
    {
      __assert_rtn("SetupAssistantLibrary", "ADBuddyMonitor.m", 21, "frameworkLibrary");
    }
  }

  return result;
}

id sub_100141444()
{
  if (qword_100590318 != -1)
  {
    dispatch_once(&qword_100590318, &stru_100512E78);
  }

  v1 = qword_1005902F8;

  return v1;
}

void sub_100141498(id a1)
{
  v1 = sub_100141330();
  v2 = dlsym(v1, "BYSetupAssistantFinishedDarwinNotification");
  if (!v2)
  {
    __assert_rtn("initBYSetupAssistantFinishedDarwinNotification_block_invoke", "ADBuddyMonitor.m", 23, "constant");
  }

  objc_storeStrong(&qword_1005902F8, *v2);
  off_10058B950 = sub_100141504;
}

id sub_100141510()
{
  if (qword_100590308 != -1)
  {
    dispatch_once(&qword_100590308, &stru_100512E58);
  }

  v1 = qword_100590300;

  return v1;
}

void sub_100141564(id a1)
{
  v1 = qword_100590310;
  if (!qword_100590310)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
    qword_100590310 = v1;
    if (!v1)
    {
      __assert_rtn("MobileKeyBagLibrary", "ADBuddyMonitor.m", 28, "frameworkLibrary");
    }
  }

  v2 = dlsym(v1, "kMobileKeyBagLockStatusNotification");
  if (!v2)
  {
    __assert_rtn("initkMobileKeyBagLockStatusNotification_block_invoke", "ADBuddyMonitor.m", 29, "constant");
  }

  objc_storeStrong(&qword_100590300, *v2);
  off_10058B948 = sub_100141618;
}

uint64_t sub_1001418A0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005902F0;
  qword_1005902F0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100142538(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v7 = [AFError errorWithCode:6];
      (*(v3 + 16))(v3, v7);
    }
  }

  else
  {
    v4 = *(v2 + 48);
    v5 = *(a1 + 64);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100142660;
    v8[3] = &unk_100512EC8;
    v8[4] = v2;
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    sub_10031AFE0(v6, v4, v5, v8);
  }
}

void sub_100142660(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142754;
  block[3] = &unk_10051D2A0;
  v14 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_100142754(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = v3;
      v15 = [v13 zone];
      v16 = 136315650;
      v17 = "[ADCloudKitMirroredContainer resynchronizeMirroredZone:completion:]_block_invoke_3";
      v18 = 2112;
      v19 = v2;
      v20 = 2112;
      v21 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Encountered error (%@) for zone (%@)", &v16, 0x20u);

      v2 = *(a1 + 32);
    }

    objc_storeStrong((*(a1 + 48) + 40), v2);
    v4 = +[ADCloudKitManager sharedManager];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) zoneName];
    [v4 handleCloudKitError:v5 forZone:v6 mirror:1 operationType:3];

    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = [AFError errorWithCode:6 description:@"zone creation failure" underlyingError:*(a1 + 32)];
      (*(v7 + 16))(v7, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 56);
      v16 = 136315394;
      v17 = "[ADCloudKitMirroredContainer resynchronizeMirroredZone:completion:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Successfully created zone (%@)", &v16, 0x16u);
    }

    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) zone];
    LOBYTE(v10) = [v10 isEqual:v11];

    if ((v10 & 1) == 0)
    {
      [*(a1 + 40) setZone:*(a1 + 56)];
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }
}

void sub_100142B50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100142C34;
  v12[3] = &unk_10051DB18;
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_100142C34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = v3;
      v9 = [v7 zone];
      v10 = 136315650;
      v11 = "[ADCloudKitMirroredContainer _createRecordZone:shared:]_block_invoke_2";
      v12 = 2112;
      v13 = v2;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Encountered error (%@) for zone (%@)", &v10, 0x20u);

      v2 = *(a1 + 32);
    }

    objc_storeStrong((*(a1 + 48) + 40), v2);
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v10 = 136315394;
    v11 = "[ADCloudKitMirroredContainer _createRecordZone:shared:]_block_invoke";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Successfully created zone (%@)", &v10, 0x16u);
  }

  v5 = *(a1 + 56);
  v6 = [*(a1 + 40) zone];
  LOBYTE(v5) = [v5 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 40) setZone:*(a1 + 56)];
  }

  dispatch_group_leave(*(*(a1 + 48) + 16));
}

void sub_100142E78(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCloudKitMirroredContainer createMirroredZonesWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (v4 < 1)
  {
    *(v3 + 32) = 1;
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    [*(a1 + 32) _createRecordZone:*(*(a1 + 32) + 56) shared:0];
    [*(a1 + 32) _createRecordZone:*(*(a1 + 32) + 64) shared:0];
    [*(a1 + 32) _createRecordZone:*(*(a1 + 32) + 72) shared:1];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100143070;
    v13[3] = &unk_10051E038;
    v13[4] = v10;
    v14 = v9;
    dispatch_group_notify(v11, v12, v13);
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADCloudKitMirroredContainer createMirroredZonesWithCompletion:]_block_invoke";
      v17 = 2048;
      v18 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Calling mirrored zone creation again (%ld)", buf, 0x16u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

void sub_100143070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "[ADCloudKitMirroredContainer createMirroredZonesWithCompletion:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Retrying zone creation due to error (%@)", &v14, 0x16u);
      v2 = *(a1 + 32);
    }

    *(v2 + 32) = 0;
    v5 = *(*(a1 + 32) + 40);
    v6 = +[ADCloudKitManager sharedManager];
    v7 = [*(*(a1 + 32) + 56) zoneName];
    [v6 handleCloudKitError:v5 forZone:v7 mirror:1 operationType:3];

    v8 = +[ADCloudKitManager sharedManager];
    v9 = [*(*(a1 + 32) + 64) zoneName];
    [v8 handleCloudKitError:v5 forZone:v9 mirror:1 operationType:3];

    v10 = +[ADCloudKitManager sharedManager];
    v11 = [*(*(a1 + 32) + 72) zoneName];
    [v10 handleCloudKitError:v5 forZone:v11 mirror:1 operationType:3];

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, *(*(a1 + 32) + 40));
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADCloudKitMirroredContainer createMirroredZonesWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Zone setup complete", &v14, 0xCu);
      v2 = *(a1 + 32);
    }

    *(v2 + 32) = 2;
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }
}

uint64_t sub_100143A78(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
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
              v22 = 0;
              goto LABEL_37;
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

LABEL_37:
          *(a1 + 8) = v22;
          goto LABEL_38;
        }

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

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10014419C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    v7 = xpc_connection_copy_entitlement_value();
    v8 = v7;
    if (v7 && xpc_BOOL_get_value(v7))
    {
      v9 = v2;
      v10 = dispatch_get_global_queue(0, 0);
      xpc_connection_set_target_queue(v9, v10);

      *v13 = _NSConcreteStackBlock;
      *&v13[8] = 3221225472;
      *&v13[16] = sub_100144424;
      v14 = &unk_10051A6B0;
      v15 = v9;
      v11 = v9;
      xpc_connection_set_event_handler(v11, v13);
      xpc_connection_resume(v11);
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *v13 = 136315138;
        *&v13[4] = "[ADExternalRequestListener listen]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s External Request connection missing entitlement", v13, 0xCu);
      }

      xpc_connection_cancel(v2);
    }

LABEL_11:

    goto LABEL_13;
  }

  v4 = type;
  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v4 == &_xpc_type_error)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v8 = v5;
    *v13 = 136315394;
    *&v13[4] = "[ADExternalRequestListener listen]_block_invoke";
    *&v13[12] = 2082;
    *&v13[14] = xpc_dictionary_get_string(v2, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s External Request Listener Error: %{public}s", v13, 0x16u);
    goto LABEL_11;
  }

  if (v6)
  {
    *v13 = 136315138;
    *&v13[4] = "[ADExternalRequestListener listen]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected event type on External Request Listener", v13, 0xCu);
  }

LABEL_13:
}

void sub_100144424(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(v3, AFExternalRequestMessageKeyType);
    switch(int64)
    {
      case 1:
        if (!v3)
        {
          goto LABEL_94;
        }

        v10 = v3;
        reply = xpc_dictionary_create_reply(v10);
        v12 = xpc_dictionary_get_int64(v10, AFExternalRequestMessageKeyAction);

        if (v12 == 1)
        {
          v13 = &SAStartDirectActionRequestAceDirectActionACOUSTIC_ID_INITIATEValue;
        }

        else
        {
          if (v12 != 2)
          {
LABEL_120:
            if (!reply)
            {
              goto LABEL_93;
            }

            xpc_dictionary_set_BOOL(reply, AFExternalRequestReplyKeyResult, 0);
            v129 = xpc_dictionary_get_remote_connection(reply);
            v16 = v129;
            if (v129)
            {
              xpc_connection_send_message(v129, reply);
            }

            goto LABEL_92;
          }

          v13 = &SAStartDirectActionRequestAceDirectActionMUSIC_SMART_PLAY_INITIATEValue;
        }

        v128 = *v13;
        if (v128)
        {
          v16 = v128;
          v19 = objc_alloc_init(AFRequestInfo);
          [v19 setLegacyDirectActionIdentifier:v16];
          [v19 setActivationEvent:7];
          v51 = +[ADCommandCenter sharedCommandCenter];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100146334;
          v152 = &unk_10051B580;
          v153 = reply;
          [v51 handleExternalActivationRequest:v19 completion:buf];
          goto LABEL_119;
        }

        goto LABEL_120;
      case 2:
        if (!v3)
        {
          goto LABEL_94;
        }

        v85 = v3;
        reply = xpc_dictionary_create_reply(v85);
        v146 = 0;
        v147[0] = 0;
        v149 = 0;
        v150 = 0;
        v145 = 0;
        sub_1001463B8(v85, &v149, &v146, v147, &v150, &v145);

        v16 = v149;
        v19 = v146;
        v20 = v145;
        if (v16)
        {
          if ([v19 length])
          {
            if (v147[0] == 1)
            {
              v86 = +[(AFHeadphonesAnnouncementRequestCapabilityProvider *)ADHeadphonesAnnouncementRequestCapabilityProvider];
              v87 = [v86 currentAnnouncementRoute];
              v147[0] = [v87 announcePlatformForRoute];
              v88 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                v143 = v88;
                v144 = AFSiriAnnouncementPlatformGetName();
                *buf = 136315394;
                *&buf[4] = "_ADHandleExternalRequestNotification";
                *&buf[12] = 2112;
                *&buf[14] = v144;
                _os_log_debug_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEBUG, "%s Selecting announcement platform: %@ for current route", buf, 0x16u);
              }
            }

            v89 = [ADAnnounceNotificationRequest alloc];
            v90 = v147[0];
            v91 = v150;
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_100146720;
            v152 = &unk_10051B778;
            v153 = reply;
            v92 = [(ADAnnounceNotificationRequest *)v89 initWithNotification:v16 appID:v19 platform:v90 summaryDecision:v91 summary:v20 completion:buf];
            v93 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
            [v93 handleAnnouncementRequest:v92];

            goto LABEL_104;
          }

          v124 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_90;
          }

          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestNotification";
          v125 = "%s non-valid sourceAppID from XPC message.";
        }

        else
        {
          v124 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_90;
          }

          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestNotification";
          v125 = "%s non-valid notification from XPC message.";
        }

        goto LABEL_145;
      case 3:
        if (v3)
        {
          v52 = v3;
          v53 = xpc_dictionary_create_reply(v52);
          v54 = xpc_dictionary_get_int64(v52, AFExternalRequestMessageKeyLocalRequest);

          v55 = v54 == 1;
          v56 = +[ADLocalRequestProvider sharedProvider];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1001467A4;
          v152 = &unk_100512F30;
          v153 = v53;
          v57 = v53;
          [v56 getLocalRequestWithType:v55 completion:buf];
        }

        goto LABEL_94;
      case 4:
        v61 = v3;
        reply = v61;
        if (!v61)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_create_reply(v61);
        v62 = xpc_dictionary_get_value(reply, AFExternalRequestMessageKeyStartRequest);
        v19 = v62;
        if (!v62 || xpc_get_type(v62) != &_xpc_type_data)
        {
          goto LABEL_46;
        }

        v20 = v19;
        bytes_ptr = xpc_data_get_bytes_ptr(v20);
        if (!bytes_ptr)
        {
          goto LABEL_47;
        }

        v132 = [[NSData alloc] initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v20) freeWhenDone:0];
        v147[0] = 0;
        v21 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v132 error:v147];
        v133 = v147[0];
        if (v133)
        {
          v134 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "_ADHandleExternalRequestStartRequest";
            *&buf[12] = 2112;
            *&buf[14] = v133;
            _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%s Archiving error %@", buf, 0x16u);
          }
        }

        if (!v21)
        {
          goto LABEL_47;
        }

        uint64 = xpc_dictionary_get_uint64(reply, AFExternalRequestMessageKeyRequestOptions);
        v43 = objc_alloc_init(AFRequestInfo);
        [v43 setStartRequest:v21];
        [v43 setOptions:uint64];
        [v43 setActivationEvent:7];
        v44 = +[ADCommandCenter sharedCommandCenter];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        v45 = sub_10014695C;
        goto LABEL_131;
      case 5:
        v36 = v3;
        reply = v36;
        if (!v36)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_create_reply(v36);
        v37 = xpc_dictionary_get_value(reply, AFExternalRequestMessageKeyStartLocalRequest);
        v19 = v37;
        if (v37 && xpc_get_type(v37) == &_xpc_type_data)
        {
          v20 = v19;
          v38 = xpc_data_get_bytes_ptr(v20);
          if (v38)
          {
            v39 = [[NSData alloc] initWithBytesNoCopy:v38 length:xpc_data_get_length(v20) freeWhenDone:0];
            v147[0] = 0;
            v21 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v39 error:v147];
            v40 = v147[0];
            if (v40)
            {
              v41 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "_ADHandleExternalRequestStartLocalRequest";
                *&buf[12] = 2112;
                *&buf[14] = v40;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Archiving error %@", buf, 0x16u);
              }
            }

            if (v21)
            {
              v42 = xpc_dictionary_get_uint64(reply, AFExternalRequestMessageKeyRequestOptions);
              v43 = objc_alloc_init(AFRequestInfo);
              [v43 setStartLocalRequest:v21];
              [v43 setOptions:v42];
              [v43 setActivationEvent:7];
              v44 = +[ADCommandCenter sharedCommandCenter];
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              v45 = sub_1001469E0;
LABEL_131:
              *&buf[16] = v45;
              v152 = &unk_10051B580;
              v153 = v16;
              [v44 handleExternalActivationRequest:v43 completion:buf];

              goto LABEL_89;
            }
          }
        }

        else
        {
LABEL_46:
          v20 = 0;
        }

LABEL_47:
        if (!v16)
        {
          goto LABEL_90;
        }

        xpc_dictionary_set_BOOL(v16, AFExternalRequestReplyKeyResult, 0);
        v63 = xpc_dictionary_get_remote_connection(v16);
        v21 = v63;
        if (v63)
        {
          xpc_connection_send_message(v63, v16);
        }

        goto LABEL_89;
      case 6:
        if (!v3)
        {
          goto LABEL_94;
        }

        v94 = v3;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100146AF8;
        v152 = &unk_100512F58;
        v153 = xpc_dictionary_create_reply(v94);
        reply = v153;
        v95 = objc_retainBlock(buf);
        v96 = xpc_dictionary_get_dictionary(v94, AFExternalRequestMessageKeyActivationContext);

        if (v96 && xpc_get_type(v96) == &_xpc_type_dictionary)
        {
          v97 = AFSiriActivationCreateContextFromXPCDictionary();
        }

        else
        {
          v97 = 0;
        }

        v136 = +[AFInstanceContext defaultContext];
        v147[0] = _NSConcreteStackBlock;
        v147[1] = 3221225472;
        v147[2] = sub_100146B90;
        v147[3] = &unk_10051CA60;
        v148 = v95;
        v137 = v95;
        AFSiriActivationPerform();

LABEL_136:
        goto LABEL_93;
      case 7:
        if (!v3)
        {
          goto LABEL_94;
        }

        v107 = v3;
        v108 = xpc_dictionary_create_reply(v107);
        reply = xpc_dictionary_get_value(v107, AFExternalRequestMessageKeyIncomingCall);

        v109 = [NSData alloc];
        v110 = xpc_data_get_bytes_ptr(reply);
        v16 = [v109 initWithBytes:v110 length:xpc_data_get_length(reply)];
        v29 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v16 error:0];
        v30 = [v29 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        [v29 finishDecoding];
        v111 = [ADAnnounceIncomingCallRequest alloc];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100146BA0;
        v152 = &unk_10051B778;
        v153 = v108;
        v33 = v108;
        v34 = [(ADAnnounceIncomingCallRequest *)v111 initWithCall:v30 completion:buf];
        v35 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
        goto LABEL_82;
      case 8:
        reply = v3;
        if (!reply)
        {
          goto LABEL_93;
        }

        if (+[AFFeatureFlags isHomeAutomationBackgroundRequestEnabled])
        {
          v64 = xpc_dictionary_get_value(reply, AFExternalRequestMessageKeyHomeAutomationBackgroundRequest);
          if (v64)
          {
            v65 = [NSData alloc];
            v66 = xpc_data_get_bytes_ptr(v64);
            v67 = [v65 initWithBytes:v66 length:xpc_data_get_length(v64)];
            v147[0] = 0;
            v68 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v67 error:v147];
            v69 = v147[0];
            v70 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%s Getting requestInfo dictionary", buf, 0xCu);
            }

            v71 = objc_opt_class();
            v72 = objc_opt_class();
            v73 = [NSSet setWithObjects:v71, v72, objc_opt_class(), 0];
            v74 = [v68 context];
            v150 = v69;
            v75 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v73 fromData:v74 error:&v150];
            v76 = v150;

            v77 = [v75 objectForKeyedSubscript:AFSiriHomeAutomationContextKey];
            v78 = [v77 copy];

            v79 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
              *&buf[12] = 2112;
              *&buf[14] = v78;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s Got identifier: %@ from requestInfo dictionary", buf, 0x16u);
            }

            if (!v76 && v68 && v78)
            {
              v76 = objc_alloc_init(SAStartUIRequest);
              v80 = +[NSBundle mainBundle];
              v81 = [v80 bundleIdentifier];

              v82 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
                *&buf[12] = 2112;
                *&buf[14] = v78;
                *&buf[22] = 2112;
                v152 = v81;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%s Creating localRequest with identifier: %@ and reportingDomain: %@", buf, 0x20u);
              }

              v83 = [SKIHomeAutomationInvocation generateAsyncDialogResponse:v78 reportingDomain:v81];
              [v76 setStartLocalRequest:v83];
              if (v83)
              {
                v84 = +[ADCommandCenter sharedCommandCenter];
                [v84 handleAceCommand:v76 afterCurrentRequest:1 waitForResponse:0 withDelegate:0 completion:&stru_100512F78];
              }

              else
              {
                v139 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315138;
                  *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
                  _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "%s Couldn't get the command from SKI", buf, 0xCu);
                }
              }

              v123 = 1;
LABEL_149:

              goto LABEL_150;
            }
          }

          else
          {
            v68 = 0;
            v78 = 0;
            v76 = 0;
          }

          v138 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
            _os_log_error_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%s Error obtaining the homeAutomationRequestInfo", buf, 0xCu);
          }

          v123 = 0;
          goto LABEL_149;
        }

        v122 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "%s Feature flag to enable HA background requests is not enabled. Ignoring the message Please enable: home_automation_background_request", buf, 0xCu);
        }

        v123 = 0;
LABEL_150:
        v140 = xpc_dictionary_create_reply(reply);
        v16 = v140;
        if (!v140)
        {
          goto LABEL_92;
        }

        xpc_dictionary_set_BOOL(v140, AFExternalRequestReplyKeyResult, v123);
        v19 = xpc_dictionary_get_remote_connection(v16);
        v141 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v142 = "false";
          if (v123)
          {
            v142 = "true";
          }

          *buf = 136315394;
          *&buf[4] = "_ADHandleExternalRequestHomeAutomationBackgroundRequest";
          *&buf[12] = 2080;
          *&buf[14] = v142;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "%s Sending reply with isValidMessage state: %s", buf, 0x16u);
        }

        if (v19)
        {
          xpc_connection_send_message(v19, v16);
        }

        goto LABEL_91;
      case 9:
        v114 = v3;
        reply = v114;
        if (!v114)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_create_reply(v114);
        if (!v16)
        {
          goto LABEL_92;
        }

        v147[0] = 0;
        v149 = 0;
        v150 = 0;
        sub_1001463B8(reply, &v150, &v149, v147, 0, 0);
        v19 = v150;
        v115 = v149;
        v20 = v115;
        if (v19)
        {
          if ([v115 length])
          {
            v116 = xpc_dictionary_get_int64(reply, AFExternalRequestMessageKeyDeactivationReason);
            if ((AFSiriDeactivationReasonGetIsValid() & 1) == 0)
            {
              v117 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "_ADHandleExternalRequestDeactivationRequest";
                *&buf[12] = 2048;
                *&buf[14] = v116;
                _os_log_error_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%s non-valid AFSiriDeactivationReason: %lli, defaulting to AFSiriDeactivationReasonUnspecified.", buf, 0x16u);
              }

              v116 = 0;
            }

            v118 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
            v119 = v147[0];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_100146C24;
            v152 = &unk_10051B778;
            v153 = v16;
            [v118 deactivateNotificationAnnouncementRequestForReason:v116 notification:v19 sourceAppId:v20 platform:v119 completion:buf];

LABEL_104:
LABEL_90:

LABEL_91:
LABEL_92:

LABEL_93:
            goto LABEL_94;
          }

          v124 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_90;
          }

          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestDeactivationRequest";
          v125 = "%s non-valid sourceAppID from XPC message.";
        }

        else
        {
          v124 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_90;
          }

          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestDeactivationRequest";
          v125 = "%s non-valid notification from XPC message.";
        }

LABEL_145:
        _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, v125, buf, 0xCu);
        goto LABEL_90;
      case 10:
        v50 = v3;
        reply = v50;
        if (!v50)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_create_reply(v50);
        if (!v16)
        {
          goto LABEL_92;
        }

        v147[0] = 0;
        sub_1001463B8(reply, v147, 0, 0, 0, 0);
        v19 = v147[0];
        if (v19)
        {
          v51 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100146C94;
          v152 = &unk_10051B778;
          v153 = v16;
          [v51 withdrawalAnnouncementRequestForNotification:v19 completion:buf];
LABEL_119:
        }

        else
        {
          v130 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "_ADHandleExternalRequestNotificationWithdrawal";
            _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "%s non-valid notification from XPC message.", buf, 0xCu);
          }
        }

        goto LABEL_91;
      case 11:
        reply = v3;
        v113 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestDropInCall";
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "%s Start handling ExternalRequestDropInCall", buf, 0xCu);
        }

        if (!reply)
        {
          goto LABEL_93;
        }

        v16 = [SKIPhoneInvocation announceDropInCallForType:xpc_dictionary_get_int64(reply, AFExternalRequestMessageKeyDropInCall)];
        v19 = xpc_dictionary_create_reply(reply);
        if (v16)
        {
          v20 = +[ADCommandCenter sharedCommandCenter];
          v21 = objc_alloc_init(AFRequestInfo);
          [v21 setStartLocalRequest:v16];
          [v21 setActivationEvent:6];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100146D04;
          v152 = &unk_10051B580;
          v153 = v19;
          [v20 handleExternalActivationRequest:v21 completion:buf];
LABEL_88:

LABEL_89:
        }

        else
        {
          v126 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "_ADHandleExternalRequestDropInCall";
            _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%s Couldn't get command from SKI", buf, 0xCu);
            if (!v19)
            {
              goto LABEL_91;
            }
          }

          else if (!v19)
          {
            goto LABEL_91;
          }

          xpc_dictionary_set_BOOL(v19, AFExternalRequestReplyKeyResult, 0);
          v127 = xpc_dictionary_get_remote_connection(v19);
          v20 = v127;
          if (v127)
          {
            xpc_connection_send_message(v127, v19);
          }
        }

        goto LABEL_90;
      case 12:
        if (!v3)
        {
          goto LABEL_94;
        }

        v25 = v3;
        v26 = xpc_dictionary_create_reply(v25);
        reply = xpc_dictionary_get_value(v25, AFExternalRequestMessageKeyWorkoutReminderAnnouncement);

        v27 = [NSData alloc];
        v28 = xpc_data_get_bytes_ptr(reply);
        v16 = [v27 initWithBytes:v28 length:xpc_data_get_length(reply)];
        v29 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v16 error:0];
        v30 = [v29 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        [v29 finishDecoding];
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "_ADHandleExternalRequestWorkoutReminderAnnouncement";
          *&buf[12] = 2112;
          *&buf[14] = v30;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s Received request to announce %@", buf, 0x16u);
        }

        v32 = [ADAnnounceWorkoutReminderRequest alloc];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100146EEC;
        v152 = &unk_10051B778;
        v153 = v26;
        v33 = v26;
        v34 = [(ADAnnounceWorkoutReminderRequest *)v32 initWithWorkoutReminder:v30 completion:buf];
        v35 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
LABEL_82:
        v112 = v35;
        [v35 handleAnnouncementRequest:v34];

        goto LABEL_92;
      case 13:
        v46 = v3;
        reply = v46;
        if (!v46)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_get_value(v46, AFExternalRequestMessageKeyWorkoutReminderPredictionIdentifier);
        v47 = [NSData alloc];
        v48 = xpc_data_get_bytes_ptr(v16);
        v19 = [v47 initWithBytes:v48 length:xpc_data_get_length(v16)];
        v20 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v19 error:0];
        v21 = [v20 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        [v20 finishDecoding];
        v49 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "_ADHandleExternalRequestDeactivateWorkoutReminderAnnouncement";
          *&buf[12] = 2112;
          *&buf[14] = v21;
          _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%s Received request to deactivate workout reminder announcement for prediction identifier:%@", buf, 0x16u);
        }

        v23 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        v24 = sub_100146F70;
        goto LABEL_35;
      case 14:
        v98 = v3;
        reply = v98;
        if (!v98)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_get_value(v98, AFExternalRequestMessageKeyWorkoutVoiceFeedbackAnnouncement);
        v99 = [NSData alloc];
        v100 = xpc_data_get_bytes_ptr(v16);
        v19 = [v99 initWithBytes:v100 length:xpc_data_get_length(v16)];
        v147[0] = 0;
        v101 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v19 error:v147];
        v102 = v147[0];
        v103 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "_ADHandleExternalRequestWorkoutVoiceFeedbackAnnouncement";
          *&buf[12] = 2112;
          *&buf[14] = v101;
          *&buf[22] = 2112;
          v152 = v102;
          _os_log_debug_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "%s Received request to announce workout voice feedback %@ (error %@)", buf, 0x20u);
        }

        v104 = [ADAnnounceWorkoutVoiceFeedbackRequest alloc];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100147044;
        v152 = &unk_10051B778;
        v153 = reply;
        v105 = [(ADAnnounceWorkoutVoiceFeedbackRequest *)v104 initWithWorkoutVoiceFeedback:v101 completion:buf];
        v106 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
        [v106 handleAnnouncementRequest:v105];

        goto LABEL_91;
      case 15:
        v15 = v3;
        reply = v15;
        if (!v15)
        {
          goto LABEL_93;
        }

        v16 = xpc_dictionary_get_value(v15, AFExternalRequestMessageKeyWorkoutVoiceFeedbackIdentifier);
        v17 = [NSData alloc];
        v18 = xpc_data_get_bytes_ptr(v16);
        v19 = [v17 initWithBytes:v18 length:xpc_data_get_length(v16)];
        v20 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v19 error:0];
        v21 = [v20 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        [v20 finishDecoding];
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          *&buf[4] = "_ADHandleExternalRequestDeactivateWorkoutVoiceFeedbackAnnouncement";
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Received request to deactivate workout voice feedback announcement", buf, 0xCu);
        }

        v23 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        v24 = sub_100147054;
LABEL_35:
        *&buf[16] = v24;
        v152 = &unk_10051B778;
        v153 = reply;
        [v23 deactivateWorkoutAnnouncementWithIdentifier:v21 completion:buf];

        goto LABEL_88;
      case 16:
        v58 = v3;
        v59 = dispatch_time(0, 200000000);
        v60 = dispatch_get_global_queue(0, 0);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100147128;
        v152 = &unk_10051DFE8;
        v153 = v58;
        reply = v58;
        dispatch_after(v59, v60, buf);

        goto LABEL_136;
      default:
        v120 = int64;
        v121 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *buf = 136315394;
        *&buf[4] = "_ADHandleNewExternalRequestPeer_block_invoke";
        *&buf[12] = 2050;
        *&buf[14] = v120;
        v6 = "%s Unexpected external request message type %{public}lld";
        v7 = v121;
        v8 = 22;
        goto LABEL_5;
    }
  }

  v5 = AFSiriLogContextDaemon;
  if (type == &_xpc_type_error)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v5;
      *buf = 136315394;
      *&buf[4] = "_ADHandleNewExternalRequestPeer_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s External Request peer error: %s", buf, 0x16u);
    }

    xpc_connection_cancel(*(a1 + 32));
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "_ADHandleNewExternalRequestPeer_block_invoke";
    v6 = "%s Ignoring unexpected type on sync connection";
    v7 = v5;
    v8 = 12;
LABEL_5:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
  }

LABEL_94:
}

void sub_100146334(uint64_t a1, BOOL value)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, AFExternalRequestReplyKeyResult, value);
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v4, *(a1 + 32));
      v4 = v5;
    }
  }
}

void sub_1001463B8(void *a1, void *a2, void *a3, uint64_t *a4, int64_t *a5, void *a6)
{
  v11 = a1;
  v12 = xpc_dictionary_get_value(v11, AFExternalRequestMessageKeyNotification);
  v13 = [NSData alloc];
  bytes_ptr = xpc_data_get_bytes_ptr(v12);
  v15 = [v13 initWithBytes:bytes_ptr length:xpc_data_get_length(v12)];
  v16 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v15 error:0];
  if (a2)
  {
    *a2 = [v16 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v16 finishDecoding];
  }

  string = xpc_dictionary_get_string(v11, AFExternalRequestMessageKeySourceAppId);
  if (a3 && string)
  {
    *a3 = [[NSString alloc] initWithUTF8String:string];
  }

  int64 = xpc_dictionary_get_int64(v11, AFExternalRequestMessageKeyAnnouncementPlatform);
  IsValidAndSpecified = AFSiriAnnouncementPlatformGetIsValidAndSpecified();
  v20 = int64;
  if ((IsValidAndSpecified & 1) == 0)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315394;
      v32 = "_ADRetrieveAnnounceNotificationRequestParametersFromMessage";
      v33 = 2048;
      v34 = int64;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s non-valid AFSiriAnnouncementPlatform: %lli, defaulting to AFSiriAnnouncementPlatformHeadphones.", &v31, 0x16u);
    }

    v20 = 1;
  }

  if (a4)
  {
    *a4 = v20;
  }

  v22 = xpc_dictionary_get_int64(v11, AFExternalRequestMessageKeySummaryDecision);
  if ((AFSiriAnnouncementSummaryDecisionGetIsValidAndSpecified() & 1) == 0)
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315394;
      v32 = "_ADRetrieveAnnounceNotificationRequestParametersFromMessage";
      v33 = 2048;
      v34 = int64;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s non-valid AFSiriAnnouncementSummaryDecision: %lli, defaulting to AFSiriAnnouncementSummaryDecisionUnspecified.", &v31, 0x16u);
    }

    v22 = 0;
  }

  if (a5)
  {
    *a5 = v22;
  }

  v24 = xpc_dictionary_get_value(v11, AFExternalRequestMessageKeySummary);
  v25 = [NSData alloc];
  v26 = xpc_data_get_bytes_ptr(v24);
  v27 = [v25 initWithBytes:v26 length:xpc_data_get_length(v24)];
  v28 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v27 error:0];
  v29 = [v28 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  [v16 finishDecoding];
  if (a6)
  {
    v30 = v29;
    *a6 = v29;
  }
}

void sub_100146720(uint64_t a1, BOOL value)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, AFExternalRequestReplyKeyResult, value);
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v4, *(a1 + 32));
      v4 = v5;
    }
  }
}

void sub_1001467A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "_ADHandleExternalRequestLocalRequest_block_invoke";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s startLocalRequest = %@", buf, 0x16u);
    }

    v5 = objc_alloc_init(AFRequestInfo);
    [(_xpc_connection_s *)v5 setStartLocalRequest:v3];
    [(_xpc_connection_s *)v5 setActivationEvent:7];
    v6 = +[ADCommandCenter sharedCommandCenter];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001476DC;
    v9[3] = &unk_10051B580;
    v10 = *(a1 + 32);
    [v6 handleExternalActivationRequest:v5 completion:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_6;
    }

    xpc_dictionary_set_BOOL(v7, AFExternalRequestReplyKeyResult, 0);
    v8 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    v5 = v8;
    if (v8)
    {
      xpc_connection_send_message(v8, *(a1 + 32));
    }
  }

LABEL_6:
}

void sub_10014695C(uint64_t a1, BOOL value)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, AFExternalRequestReplyKeyResult, value);
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v4, *(a1 + 32));
      v4 = v5;
    }
  }
}

void sub_1001469E0(uint64_t a1, BOOL a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "_ADHandleExternalRequestStartLocalRequest_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error handling external activation %@", &v10, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    xpc_dictionary_set_BOOL(v7, AFExternalRequestReplyKeyResult, a2);
    v8 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    v9 = v8;
    if (v8)
    {
      xpc_connection_send_message(v8, *(a1 + 32));
    }
  }
}

void sub_100146AF8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    value = AFSiriActivationCreateXPCDictionaryFromResult();
    if (value)
    {
      xpc_dictionary_set_value(*(a1 + 32), AFExternalRequestReplyKeyActivationResult, value);
    }

    v2 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    v3 = v2;
    if (v2)
    {
      xpc_connection_send_message(v2, *(a1 + 32));
    }
  }
}

void sub_100146BA0(uint64_t a1, BOOL value)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, AFExternalRequestReplyKeyResult, value);
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v4, *(a1 + 32));
      v4 = v5;
    }
  }
}

void sub_100146C24(uint64_t a1, BOOL value)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), AFExternalRequestReplyKeyResult, value);
  v3 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    xpc_connection_send_message(v3, *(a1 + 32));
    v3 = v4;
  }
}

void sub_100146C94(uint64_t a1, BOOL value)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), AFExternalRequestReplyKeyResult, value);
  v3 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    xpc_connection_send_message(v3, *(a1 + 32));
    v3 = v4;
  }
}

void sub_100146D04(uint64_t a1, _BOOL4 a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (v5 || !a2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "_ADHandleExternalRequestDropInCall_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Request failed with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "_ADHandleExternalRequestDropInCall_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Background request sent successfully", &v11, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    xpc_dictionary_set_BOOL(v7, AFExternalRequestReplyKeyResult, a2);
    v8 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = "false";
      if (a2)
      {
        v10 = "true";
      }

      v11 = 136315394;
      v12 = "_ADHandleExternalRequestDropInCall_block_invoke";
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Sending reply, success: %s", &v11, 0x16u);
    }

    if (v8)
    {
      xpc_connection_send_message(v8, *(a1 + 32));
    }
  }
}

void sub_100146EEC(uint64_t a1, BOOL value)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, AFExternalRequestReplyKeyResult, value);
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v4, *(a1 + 32));
      v4 = v5;
    }
  }
}

void sub_100146F70(uint64_t a1, _BOOL4 a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "_ADHandleExternalRequestDeactivateWorkoutReminderAnnouncement_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Deactivate workout reminder announcement success=%d", &v5, 0x12u);
  }

  sub_100147528(a2, *(a1 + 32));
}

void sub_100147054(uint64_t a1, _BOOL4 a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "_ADHandleExternalRequestDeactivateWorkoutVoiceFeedbackAnnouncement_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Deactivate workout voice feedback announcement success=%d", &v5, 0x12u);
  }

  sub_100147528(a2, *(a1 + 32));
}

void sub_100147128(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "_ADHandleExternalRequestDeliverUserNotificationSummary_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Received request to deliver User Notification summary", buf, 0xCu);
      v1 = *(a1 + 32);
    }

    v4 = xpc_dictionary_get_value(v1, AFExternalRequestMessageKeySummary);
    v5 = [NSData alloc];
    bytes_ptr = xpc_data_get_bytes_ptr(v4);
    v7 = [v5 initWithBytes:bytes_ptr length:xpc_data_get_length(v4)];
    v8 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v7 error:0];
    v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v8 finishDecoding];
    v10 = xpc_dictionary_get_value(*(a1 + 32), AFExternalRequestMessageKeyNotification);
    v11 = [NSData alloc];
    v12 = xpc_data_get_bytes_ptr(v10);
    v13 = [v11 initWithBytes:v12 length:xpc_data_get_length(v10)];
    v14 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v13 error:0];
    v15 = [v14 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v14 finishDecoding];
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "_ADHandleExternalRequestDeliverUserNotificationSummary_block_invoke";
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Received summary: %@ for notification: %@", buf, 0x20u);
    }

    v17 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100147454;
    v18[3] = &unk_10051B778;
    v19 = *(a1 + 32);
    [v17 deliverSummary:v9 forNotification:v15 completion:v18];
  }
}

void sub_100147454(uint64_t a1, _BOOL4 a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "_ADHandleExternalRequestDeliverUserNotificationSummary_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Sending XPC reply for summary deliver: %d", &v5, 0x12u);
  }

  sub_100147528(a2, *(a1 + 32));
}

void sub_100147528(BOOL a1, xpc_object_t original)
{
  if (original)
  {
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      xdict = reply;
      xpc_dictionary_set_BOOL(reply, AFExternalRequestReplyKeyResult, a1);
      v4 = xpc_dictionary_get_remote_connection(xdict);
      v5 = v4;
      if (v4)
      {
        xpc_connection_send_message(v4, xdict);
      }

      reply = xdict;
    }
  }
}

void sub_1001475B4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (v4 || !a2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "_ADHandleExternalRequestHomeAutomationBackgroundRequest_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Request failed with error: %@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "_ADHandleExternalRequestHomeAutomationBackgroundRequest_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Background request sent successfully", &v6, 0xCu);
  }
}

void sub_1001476DC(uint64_t a1, BOOL value)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, AFExternalRequestReplyKeyResult, value);
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      xpc_connection_send_message(v4, *(a1 + 32));
      v4 = v5;
    }
  }
}

void sub_1001479FC(void (**a1)(void, void))
{
  v2 = a1;
  v3 = objc_alloc_init(ADUnavailableTimerStore);
  (a1)[2](v2, v3);
}

void sub_100147F64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v17 = 136315906;
      v18 = "[ADDiagnosticsManager updateLatencyDiagnosticConfiguration:completion:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v13 = "%s Could not complete %@: %@/%@";
      v14 = v10;
      v15 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v13, &v17, v15);
    }
  }

  else if (v11)
  {
    v16 = *(a1 + 32);
    v17 = 136315650;
    v18 = "[ADDiagnosticsManager updateLatencyDiagnosticConfiguration:completion:]_block_invoke";
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v8;
    v13 = "%s Completed %@: %@";
    v14 = v10;
    v15 = 32;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_1001480D0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidateAndCancel];
}

void sub_1001484A8(uint64_t a1, uint64_t a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100148638;
  v8[3] = &unk_10051DBB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_async(v4, v8);
}

void sub_100148558(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v5 = [v2 _sessionWithDeviceIdentifier:?];
    [v5 pushGenerationsByDataTypes:*(a1 + 48)];
  }

  else
  {
    v4 = v2[5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100148628;
    v6[3] = &unk_100513018;
    v7 = *(a1 + 48);
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void sub_100148638(void *a1)
{
  v2 = a1[4];
  v3 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  [v2 setObject:v3 forKey:a1[5]];

  v4 = a1[6];

  dispatch_group_leave(v4);
}

void sub_10014896C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [[ADDeviceSyncMessageSender alloc] initWithDeviceIdentifier:*(a1 + 40) messagingService:v5];

  [v4 addObject:v6];
}

void sub_100148B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) type];
  v4 = v2;
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v1 _getGenerationsForDataTypes:v3 andPushToDeviceWithIdentifier:0];
}

void sub_100148D68(uint64_t a1)
{
  v3 = [*(a1 + 32) _sessionWithDeviceIdentifier:*(a1 + 40)];
  v2 = [v3 messageReceiver];
  [v2 receiveMessage:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_100148F20(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100148FE0;
  v4[3] = &unk_100512FC8;
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  [v3 invalidate];
}

void sub_100149140(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001491F0;
  v4[3] = &unk_100512FC8;
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = [*(a1 + 32) _sessionWithDeviceIdentifier:*(a1 + 40)];
  [*(a1 + 32) _getGenerationsForDataTypes:0 andPushToDeviceWithIdentifier:*(a1 + 40)];
}

void sub_100149BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100149BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADServerFallbackConfigManager _registerUpdateHandler]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s New ADServerFallbackConfigManager client update", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] refresh];
    [v6 _populateConfiguration];
  }
}

void sub_100149EE0(id a1)
{
  v1 = objc_alloc_init(ADServerFallbackConfigManager);
  v2 = qword_100590328;
  qword_100590328 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10014A100(void *a1, void *a2, int a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    [WeakRetained appLaunchHandler:a1[4] didLaunchAppForRequestId:a1[5]];
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7);
  }
}

void sub_10014A4F4(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 40))
  {
    v7 = [v5 domain];
    v8 = off_10058BBB0();
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [v6 userInfo];
      v11 = [v10 objectForKey:NSUnderlyingErrorKey];

      if (v11)
      {
        v12 = v11;

        v6 = v12;
      }
    }

    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = objc_alloc_init(SACommandSucceeded);
      v15 = [v13 createResponseWithReplyCommand:v14];

      (*(*(a1 + 40) + 16))();
      v6 = 0;
    }
  }
}

id sub_10014A658()
{
  if (qword_100590370 != -1)
  {
    dispatch_once(&qword_100590370, &stru_100513130);
  }

  v1 = qword_100590338;

  return v1;
}

void sub_10014A6AC(id a1)
{
  if (qword_100590350 != -1)
  {
    dispatch_once(&qword_100590350, &stru_1005130F0);
  }

  v1 = dlsym(qword_100590358, "FBSOpenApplicationServiceErrorDomain");
  if (!v1)
  {
    __assert_rtn("initFBSOpenApplicationServiceErrorDomain_block_invoke", "ADSiriAppLaunchRequestHandler.m", 24, "constant");
  }

  objc_storeStrong(&qword_100590338, *v1);
  off_10058BBB0 = sub_10014A744;
}

id sub_10014A77C()
{
  if (qword_100590360 != -1)
  {
    dispatch_once(&qword_100590360, &stru_100513110);
  }

  v1 = qword_100590368;

  return v1;
}

void sub_10014A7D0(id a1)
{
  if (qword_100590350 != -1)
  {
    dispatch_once(&qword_100590350, &stru_1005130F0);
  }

  qword_100590368 = objc_getClass("FBSOpenApplicationOptions");
  off_10058BBA8 = sub_10014A834;
}

id sub_10014A840()
{
  if (qword_100590340 != -1)
  {
    dispatch_once(&qword_100590340, &stru_1005130D0);
  }

  v1 = qword_100590348;

  return v1;
}

void sub_10014A894(id a1)
{
  if (qword_100590350 != -1)
  {
    dispatch_once(&qword_100590350, &stru_1005130F0);
  }

  qword_100590348 = objc_getClass("FBSOpenApplicationService");
  off_10058BBA0 = sub_10014A8F8;
}

void sub_10014AFE4(uint64_t a1, void *a2)
{
  v40 = a2;
  v2 = [v40 localizedName];
  v3 = v2;
  v4 = &stru_10051F508;
  if (v2)
  {
    v4 = v2;
  }

  v37 = v4;

  v39 = [v40 appState];
  v38 = [v40 applicationType];
  if ([v39 isValid] && (!objc_msgSend(v38, "isEqualToString:", @"System") || (objc_msgSend(v40, "isLaunchProhibited") & 1) == 0))
  {
    v35 = [v40 appTags];
    if ([v35 containsObject:@"hidden"])
    {
    }

    else
    {
      [v40 bundleURL];
      Unique = _CFBundleCreateUnique();
      if (Unique)
      {
        v6 = Unique;
        v33 = CFBundleGetValueForInfoDictionaryKey(Unique, @"INAlternativeAppNames");
        obj = +[NSMutableArray array];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v33;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v43 objects:v54 count:16];
          if (v8)
          {
            v9 = *v44;
            do
            {
              for (i = 0; i != v8; i = i + 1)
              {
                if (*v44 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v43 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = [v11 objectForKeyedSubscript:@"INAlternativeAppName"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v13 = CFBundleGetValueForInfoDictionaryKey(v6, v12);

                    if (v13)
                    {
                      [obj addObject:v13];
                    }
                  }

                  else
                  {
                    v13 = v12;
                  }
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v43 objects:v54 count:16];
            }

            while (v8);
          }
        }

        _CFBundleFlushBundleCaches();
        CFRelease(v6);
        v14 = [obj copy];

        Unique = v14;
      }

      v15 = [(__CFBundle *)Unique arrayByAddingObject:v37, Unique];
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = v16;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obja = v17;
      v19 = [obja countByEnumeratingWithState:&v43 objects:v54 count:16];
      if (v19)
      {
        v20 = *v44;
        while (2)
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(obja);
            }

            v22 = *(*(&v43 + 1) + 8 * j);
            if ([v22 length])
            {
              v23 = v22;
              v24 = v18;
              v50 = 0;
              v51 = &v50;
              v52 = 0x2020000000;
              v53 = 0;
              v25 = [v23 stringByReplacingOccurrencesOfString:@" " withString:@" "];

              if ([v25 localizedStandardContainsString:v24])
              {
                v26 = [v24 length];
                if (v26 == [v25 length])
                {
                  *(v51 + 24) = 1;
                  _Block_object_dispose(&v50, 8);

LABEL_38:
                  v29 = objc_alloc_init(SASyncNamedAppIdentifyingInfo);
                  v30 = [v40 bundleIdentifier];
                  [v29 setBundleId:v30];

                  [v29 setLocalizedBundleDisplayName:v37];
                  v31 = [v40 shortVersionString];
                  [v29 setVersion:v31];

                  v32 = [v40 bundleVersion];
                  [v29 setBuildNumber:v32];

                  [*(a1 + 40) addObject:v29];
                  goto LABEL_39;
                }
              }

              v27 = [v25 length];
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_10014B5D0;
              v47[3] = &unk_100513158;
              v28 = v24;
              v48 = v28;
              v49 = &v50;
              [v25 enumerateSubstringsInRange:0 options:v27 usingBlock:{3, v47}];

              LOBYTE(v27) = *(v51 + 24);
              _Block_object_dispose(&v50, 8);

              if (v27)
              {
                goto LABEL_38;
              }
            }
          }

          v19 = [obja countByEnumeratingWithState:&v43 objects:v54 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_39:
}

void sub_10014B5D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  if ([v10 localizedStandardContainsString:*(a1 + 32)])
  {
    v9 = [*(a1 + 32) length];
    if (v9 == [v10 length])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a7 = 1;
    }
  }
}

id sub_10014BA80(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _synchronizeSharedZones];
  }

  return result;
}

void sub_10014BB9C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 136315394;
      v11 = "[ADCloudKitShareeOperations deleteShareForUser:markForReinvitation:completion:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Found updater for share owner (%@)", buf, 0x16u);
    }

    v5 = [v2 sharedZone];
    v6 = [[ADCloudKitZoneShareCreator alloc] initWithQueue:*(*(a1 + 32) + 8) container:*(*(a1 + 32) + 16) sharedZone:v5];
    [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
    v7 = *(a1 + 56);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10014BD38;
    v8[3] = &unk_10051D2F0;
    v9 = *(a1 + 48);
    [(ADCloudKitZoneShareCreator *)v6 deleteZoneShare:0 markForReinvitation:v7 completion:v8];
  }
}

void sub_10014BD38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADCloudKitShareeOperations deleteShareForUser:markForReinvitation:completion:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error encountered while deleting share record : (%@)", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCloudKitShareeOperations deleteShareForUser:markForReinvitation:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Deleted zone share - effectively removed myself as participant", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_10014BF08(uint64_t a1)
{
  v2 = dispatch_group_create();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        dispatch_group_enter(v2);
        v9 = *(a1 + 32);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10014C0EC;
        v13[3] = &unk_10051DFE8;
        v14 = v2;
        [v9 deleteShareForUser:v8 markForReinvitation:0 completion:v13];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014C0F4;
  v12[3] = &unk_10051DFE8;
  v12[4] = v10;
  dispatch_group_notify(v2, v11, v12);
}

void sub_10014C0F4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCloudKitShareeOperations reset]_block_invoke_3";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Done clearing sharee", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
}

void sub_10014C264(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitShareeOperations setServerChangeToken:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while encoding account status server change token: %@", &v4, 0x16u);
  }
}

void sub_10014C3A0(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitShareeOperations serverChangeToken]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while decoding acount status server change token: %@", &v4, 0x16u);
  }
}

void sub_10014C664(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedZone];
  v1 = [v2 dataStore];
  [v1 synchronizeUsingActivity:0 completion:&stru_100513218];
}

void sub_10014C6CC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitShareeOperations _synchronizeSharedZones]_block_invoke_2";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Synchronization completed with (%d)", &v4, 0x12u);
  }
}

void sub_10014C934(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[ADCloudKitShareeOperations deleteZones:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error encountered while deleting (%@) error is (%@)", &v6, 0x20u);
    }
  }
}

void sub_10014CD84(uint64_t a1)
{
  v4 = [*(a1 + 32) sharedZone];
  v2 = [v4 zone];

  if (!v2)
  {
    [v4 setZone:*(a1 + 40)];
  }

  v3 = +[ADCloudKitManager sharedManager];
  [v3 fetchChangesWithZoneInfo:v4 useSharedDatabase:1];
}

void sub_10014D350(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v3 - 168), 8);
  _Block_object_dispose((v3 - 120), 8);
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_10014D3A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014D3C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ADCloudKitShareeOperations _fetchSharedZonesIfAny]_block_invoke";
    v8 = 2112;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ zone %@ changed", &v6, 0x20u);
  }

  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_10014D4BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ADCloudKitShareeOperations _fetchSharedZonesIfAny]_block_invoke";
    v8 = 2112;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ zone %@ deleted", &v6, 0x20u);
  }

  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_10014D5B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCloudKitShareeOperations _fetchSharedZonesIfAny]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s server token updated", &v5, 0xCu);
  }

  [*(a1 + 32) setServerChangeToken:v3];
}

void sub_10014D684(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = AFSiriLogContextDaemon;
  v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v12 = 136315394;
      v13 = "[ADCloudKitShareeOperations _fetchSharedZonesIfAny]_block_invoke";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s error is (%@)", &v12, 0x16u);
    }

    v11 = +[ADCloudKitManager sharedManager];
    [v11 handleSharedDBCloudKitError:v8 operationType:8];
  }

  else
  {
    if (v10)
    {
      v12 = 136315394;
      v13 = "[ADCloudKitShareeOperations _fetchSharedZonesIfAny]_block_invoke";
      v14 = 1024;
      LODWORD(v15) = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Fetching zone data on shared zones. See moreComing (%d)", &v12, 0x12u);
    }

    [*(a1 + 32) setServerChangeToken:v7];
    [*(a1 + 32) fetchZones:*(*(*(a1 + 40) + 8) + 40)];
    [*(a1 + 32) deleteZones:*(*(*(a1 + 48) + 8) + 40)];
  }
}

void sub_10014DA5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADCloudKitShareeOperations _setupSharedDatabaseView]_block_invoke";
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Zone subscription creation failed: (%@)", &v11, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADCloudKitShareeOperations _setupSharedDatabaseView]_block_invoke";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Zone subscription saved: (%@)", &v11, 0x16u);
    }

    [*(a1 + 32) fetchSharedZones];
  }
}

id sub_10014DC2C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitShareeOperations _setupSharedDatabase]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Start secondary user fetches", &v4, 0xCu);
  }

  return [*(a1 + 32) _setupSharedDatabaseView];
}

void sub_10014E380(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSequence:v3];
  [v4 setType:9];
  v5 = [[ADDeviceSyncCommandPullSnapshotRequest alloc] initWithDataType:*(a1 + 32)];
  [v4 setCommandPullSnapshotRequest:v5];
}

void sub_10014E40C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40))
  {
    v8 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014E4F0;
    v11[3] = &unk_10051C0D8;
    v12 = v6;
    v14 = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 48);
    v13 = v9;
    v15 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_10014E4F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pullSnapshotForDataType:completion:]_block_invoke_3";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v8 = [AFError errorWithCode:2412 description:@"There's no reply message." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      (*(*(a1 + 48) + 16))();

      return;
    }

LABEL_16:
    *buf = 136315394;
    v13 = "[ADDeviceSyncSession _pullSnapshotForDataType:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    goto LABEL_15;
  }

  if ([v4 sequence] != *(a1 + 56))
  {
    v8 = [AFError errorWithCode:2407 description:@"The sequence of the reply message is invalid." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014E838;
  v10[3] = &unk_1005135C0;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  if ((sub_1002EF4DC(v5, 0, 0, 0, 0, v10) & 1) == 0)
  {
    v6 = [AFError errorWithCode:2409 description:@"There's no supported response in reply message." underlyingError:0];
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pullSnapshotForDataType:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10014E838(uint64_t a1, void *a2)
{
  v3 = [a2 snapshot];
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADDeviceSyncSession _pullSnapshotForDataType:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s snapshot = %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10014EB3C(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 setSequence:v3];
  [v4 setType:7];
  v5 = [[ADDeviceSyncCommandPullDeltaRequest alloc] initWithDataType:a1[4] generation:a1[6] limit:a1[7]];
  [v4 setCommandPullDeltaRequest:v5];
}

void sub_10014EBCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40))
  {
    v8 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014ECB0;
    v11[3] = &unk_10051C0D8;
    v12 = v6;
    v14 = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 48);
    v13 = v9;
    v15 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_10014ECB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pullDeltaForDataType:generation:limit:completion:]_block_invoke_3";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v8 = [AFError errorWithCode:2412 description:@"There's no reply message." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      (*(*(a1 + 48) + 16))();

      return;
    }

LABEL_16:
    *buf = 136315394;
    v13 = "[ADDeviceSyncSession _pullDeltaForDataType:generation:limit:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    goto LABEL_15;
  }

  if ([v4 sequence] != *(a1 + 56))
  {
    v8 = [AFError errorWithCode:2407 description:@"The sequence of the reply message is invalid." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014EFF8;
  v10[3] = &unk_100513598;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  if ((sub_1002EF4DC(v5, 0, 0, 0, v10, 0) & 1) == 0)
  {
    v6 = [AFError errorWithCode:2409 description:@"There's no supported response in reply message." underlyingError:0];
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pullDeltaForDataType:generation:limit:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10014EFF8(uint64_t a1, void *a2)
{
  v3 = [a2 incrementalChanges];
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADDeviceSyncSession _pullDeltaForDataType:generation:limit:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s incrementalChanges = %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10014F2D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSequence:v3];
  [v4 setType:5];
  v5 = [[ADDeviceSyncCommandPullGenerationsRequest alloc] initWithDataTypes:*(a1 + 32)];
  [v4 setCommandPullGenerationsRequest:v5];
}

void sub_10014F35C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40))
  {
    v8 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014F440;
    v11[3] = &unk_10051C0D8;
    v12 = v6;
    v14 = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 48);
    v13 = v9;
    v15 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_10014F440(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pullGenerationsForDataTypes:completion:]_block_invoke_3";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v8 = [AFError errorWithCode:2412 description:@"There's no reply message." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      (*(*(a1 + 48) + 16))();

      return;
    }

LABEL_16:
    *buf = 136315394;
    v13 = "[ADDeviceSyncSession _pullGenerationsForDataTypes:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    goto LABEL_15;
  }

  if ([v4 sequence] != *(a1 + 56))
  {
    v8 = [AFError errorWithCode:2407 description:@"The sequence of the reply message is invalid." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014F788;
  v10[3] = &unk_100513548;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  if ((sub_1002EF4DC(v5, 0, 0, v10, 0, 0) & 1) == 0)
  {
    v6 = [AFError errorWithCode:2409 description:@"There's no supported response in reply message." underlyingError:0];
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pullGenerationsForDataTypes:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10014F788(uint64_t a1, void *a2)
{
  v3 = [a2 generationsByDataType];
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADDeviceSyncSession _pullGenerationsForDataTypes:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s generationsByDataType = %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10014FA60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSequence:v3];
  [v4 setType:3];
  v5 = [[ADDeviceSyncCommandPushGenerationsRequest alloc] initWithGenerationsByDataType:*(a1 + 32)];
  [v4 setCommandPushGenerationsRequest:v5];
}

void sub_10014FAEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40))
  {
    v8 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10014FBD0;
    v11[3] = &unk_10051C0D8;
    v12 = v6;
    v14 = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 48);
    v13 = v9;
    v15 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_10014FBD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pushGenerationsByDataType:completion:]_block_invoke_3";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v8 = [AFError errorWithCode:2412 description:@"There's no reply message." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      (*(*(a1 + 48) + 16))();

      return;
    }

LABEL_16:
    *buf = 136315394;
    v13 = "[ADDeviceSyncSession _pushGenerationsByDataType:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    goto LABEL_15;
  }

  if ([v4 sequence] != *(a1 + 56))
  {
    v8 = [AFError errorWithCode:2407 description:@"The sequence of the reply message is invalid." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014FF0C;
  v10[3] = &unk_100513520;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  if ((sub_1002EF4DC(v5, 0, v10, 0, 0, 0) & 1) == 0)
  {
    v6 = [AFError errorWithCode:2409 description:@"There's no supported response in reply message." underlyingError:0];
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pushGenerationsByDataType:completion:]_block_invoke_2";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1001500D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSequence:v2];
  [v3 setType:1];
}

void sub_10015012C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40))
  {
    v8 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100150210;
    v11[3] = &unk_10051C0D8;
    v12 = v6;
    v14 = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 48);
    v13 = v9;
    v15 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_100150210(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pingWithCompletion:]_block_invoke_3";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v8 = [AFError errorWithCode:2412 description:@"There's no reply message." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      (*(*(a1 + 48) + 16))();

      return;
    }

LABEL_16:
    *buf = 136315394;
    v13 = "[ADDeviceSyncSession _pingWithCompletion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    goto LABEL_15;
  }

  if ([v4 sequence] != *(a1 + 56))
  {
    v8 = [AFError errorWithCode:2407 description:@"The sequence of the reply message is invalid." underlyingError:0];
    v9 = AFSiriLogContextDeviceSync;
    if (!os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015054C;
  v10[3] = &unk_10051CF58;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  if ((sub_1002EF4DC(v5, v10, 0, 0, 0, 0) & 1) == 0)
  {
    v6 = [AFError errorWithCode:2409 description:@"There's no supported response in reply message." underlyingError:0];
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADDeviceSyncSession _pingWithCompletion:]_block_invoke_2";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100150A78(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150B4C;
  block[3] = &unk_10051E088;
  v9 = a2;
  v10 = a3;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = v10;
  v7 = v9;
  dispatch_async(v5, block);
}

uint64_t sub_100150B4C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADDeviceSyncSession _handlePullSnapshotForDataType:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s snapshot = %@", &v7, 0x16u);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADDeviceSyncSession _handlePullSnapshotForDataType:completion:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
    }
  }

  return (*(a1[6] + 16))();
}

void sub_100150F10(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150FE4;
  block[3] = &unk_10051E088;
  v9 = a2;
  v10 = a3;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = v10;
  v7 = v9;
  dispatch_async(v5, block);
}

uint64_t sub_100150FE4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADDeviceSyncSession _handlePullDeltaForDataType:generation:limit:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s incrementalChanges = %@", &v7, 0x16u);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADDeviceSyncSession _handlePullDeltaForDataType:generation:limit:completion:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
    }
  }

  return (*(a1[6] + 16))();
}

void sub_10015145C(uint64_t a1, uint64_t a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001516D4;
  v8[3] = &unk_10051DBB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_async(v4, v8);
}

void sub_10015150C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v9 = "[ADDeviceSyncSession _handlePullGenerationsForDataTypes:completion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s generationsByDataType = %@", buf, 0x16u);
    }

    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) copy];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    v6 = [[NSString alloc] initWithFormat:@"No data provider for data types %@.", *(a1 + 40)];
    v5 = [AFError errorWithCode:2410 description:v6 underlyingError:0];

    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[ADDeviceSyncSession _handlePullGenerationsForDataTypes:completion:]_block_invoke_3";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v5);
  }
}

void sub_1001516D4(void *a1)
{
  v2 = a1[4];
  v3 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  [v2 setObject:v3 forKey:a1[5]];

  v4 = a1[6];

  dispatch_group_leave(v4);
}

void sub_100151994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001519B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = [v5 _handlePushedOrPulledGeneration:objc_msgSend(a3 forDataType:{"unsignedLongLongValue"), v6}];

  *(*(*(a1 + 40) + 8) + 24) |= a3;
}

void sub_100151FD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001529D0;
  v3[3] = &unk_10051DD98;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _handlePingWithCompletion:v3];
}

void sub_100152074(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 generationsByDataType];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100152870;
  v5[3] = &unk_10051DD98;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 _handlePushGenerationsByDataType:v4 completion:v5];
}

void sub_100152138(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 dataTypes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001526DC;
  v5[3] = &unk_100514DE0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 _handlePullGenerationsForDataTypes:v4 completion:v5];
}

void sub_1001521FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 dataType];
  v6 = [v4 generation];
  v7 = [v4 limit];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100152548;
  v8[3] = &unk_10051DDC0;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  [v3 _handlePullDeltaForDataType:v5 generation:v6 limit:v7 completion:v8];
}

void sub_1001522F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 dataType];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001523B4;
  v5[3] = &unk_100513460;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 _handlePullSnapshotForDataType:v4 completion:v5];
}

void sub_1001523B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001524B0;
      v9[3] = &unk_100513370;
      v10 = *(a1 + 32);
      v11 = v5;
      v8 = [ADDeviceSyncMessage newWithBuilder:v9];

      v7 = *(a1 + 40);
    }

    (*(v7 + 16))(v7, v8, v6);
  }
}

void sub_1001524B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSequence:{objc_msgSend(v3, "sequence")}];
  [v4 setType:10];
  v5 = [[ADDeviceSyncCommandPullSnapshotResponse alloc] initWithSnapshot:*(a1 + 40)];
  [v4 setCommandPullSnapshotResponse:v5];
}

void sub_100152548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100152644;
      v9[3] = &unk_100513370;
      v10 = *(a1 + 32);
      v11 = v5;
      v8 = [ADDeviceSyncMessage newWithBuilder:v9];

      v7 = *(a1 + 40);
    }

    (*(v7 + 16))(v7, v8, v6);
  }
}

void sub_100152644(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSequence:{objc_msgSend(v3, "sequence")}];
  [v4 setType:8];
  v5 = [[ADDeviceSyncCommandPullDeltaResponse alloc] initWithIncrementalChanges:*(a1 + 40)];
  [v4 setCommandPullDeltaResponse:v5];
}

void sub_1001526DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001527D8;
      v9[3] = &unk_100513370;
      v10 = *(a1 + 32);
      v11 = v5;
      v8 = [ADDeviceSyncMessage newWithBuilder:v9];

      v7 = *(a1 + 40);
    }

    (*(v7 + 16))(v7, v8, v6);
  }
}

void sub_1001527D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSequence:{objc_msgSend(v3, "sequence")}];
  [v4 setType:6];
  v5 = [[ADDeviceSyncCommandPullGenerationsResponse alloc] initWithGenerationsByDataType:*(a1 + 40)];
  [v4 setCommandPullGenerationsResponse:v5];
}

void sub_100152870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10015294C;
      v6[3] = &unk_100513320;
      v7 = *(a1 + 32);
      v5 = [ADDeviceSyncMessage newWithBuilder:v6];

      v4 = *(a1 + 40);
    }

    (*(v4 + 16))(v4, v5, v3);
  }
}

void sub_10015294C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSequence:{objc_msgSend(v2, "sequence")}];
  [v3 setType:4];
  v4 = objc_alloc_init(ADDeviceSyncCommandPushGenerationsResponse);
  [v3 setCommandPushGenerationsResponse:v4];
}

void sub_1001529D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100152AAC;
      v6[3] = &unk_100513320;
      v7 = *(a1 + 32);
      v5 = [ADDeviceSyncMessage newWithBuilder:v6];

      v4 = *(a1 + 40);
    }

    (*(v4 + 16))(v4, v5, v3);
  }
}

void sub_100152AAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSequence:{objc_msgSend(v2, "sequence")}];
  [v3 setType:2];
}

void sub_100152D34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100152D50(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) preferredPullingModeForDeviceWithIdentifier:*(*(a1 + 40) + 56) fromGeneration:*(a1 + 72) toGeneration:a2];
  if (v4 == 2)
  {
    v10 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100152F98;
    block[3] = &unk_10051C650;
    v6 = &v13;
    objc_copyWeak(&v13, (a1 + 64));
    v7 = &v12;
    v12 = *(a1 + 56);
    v8 = block;
    v9 = v10;
  }

  else
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100152EB0;
    v14[3] = &unk_10051BCD0;
    v6 = v16;
    objc_copyWeak(v16, (a1 + 64));
    v7 = &v15;
    v15 = *(a1 + 56);
    v16[1] = a2;
    v8 = v14;
    v9 = v5;
  }

  dispatch_async(v9, v8);

  objc_destroyWeak(v6);
}

void sub_100152EB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001530D8;
  v5[3] = &unk_1005132A8;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  [WeakRetained _pullDeltaForDataType:v3 generation:v4 limit:0 completion:v5];

  objc_destroyWeak(&v7);
}

void sub_100152F98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015306C;
  v4[3] = &unk_1005132D0;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  [WeakRetained _pullSnapshotForDataType:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void sub_10015306C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handlePulledSnapshot:v4 forDataType:*(a1 + 32)];
  }
}

void sub_1001530D8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7 || v5)
  {
    WeakRetained = [v5 domain];
    if ([WeakRetained isEqualToString:kAFAssistantErrorDomain])
    {
      [v5 code];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handlePulledDeltaWithIncrementalChanges:v7 forDataType:*(a1 + 32)];
  }
}

id sub_100153624(uint64_t a1, void *a2)
{
  v3 = [a2 deviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001549AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose((v53 - 192), 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100154A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100154A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 136315394;
    v22 = "[ADSettingsService _setNoiseManagement:completion:]_block_invoke";
    v23 = 2048;
    v24 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %lu connected devices", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = +[ADBluetoothManager sharedInstance];
        v13 = [v11 identifier];
        v14 = [v12 deviceWithUID:v13];

        v15 = sub_100154C58(v14, *(*(*(a1 + 40) + 8) + 24));

        if (!v15)
        {
          [*(*(*(a1 + 48) + 8) + 40) enqueueObject:v14];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_100154C58(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    *&v54 = 0;
    *(&v54 + 1) = &v54;
    v55 = 0x2020000000;
    v56 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v4 = dispatch_group_create();
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    dispatch_group_enter(v4);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001553CC;
    v30[3] = &unk_100513710;
    v32 = &v54;
    v33 = &v34;
    v5 = v4;
    v31 = v5;
    [v3 getHeadphoneInEarDetectionState:v30];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    dispatch_group_enter(v5);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100155460;
    v20 = &unk_100513738;
    v22 = &v46;
    v23 = &v42;
    v24 = &v38;
    v25 = &v26;
    v6 = v5;
    v21 = v6;
    [v3 getDeviceInfo:&v17];
    v7 = dispatch_time(0, 4000000000);
    dispatch_group_wait(v6, v7);
    if ((v35[3] & 1) != 0 || *(v27 + 24) == 1)
    {
      v8 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        v9 = &SASettingNoHeadsetConnectedErrorCode;
LABEL_6:
        v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:*v9 userInfo:0, v17, v18, v19, v20];
LABEL_7:

        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(&v34, 8);

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(&v54, 8);
        goto LABEL_11;
      }

      *buf = 136315138;
      v51 = "ADValidateBluetoothDeviceForNoiseManagement";
      v14 = "%s Bluetooth device timed out when trying to query in-ear or listening mode status";
LABEL_26:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      goto LABEL_5;
    }

    if ((*(*(&v54 + 1) + 24) & 1) == 0)
    {
      v8 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      *buf = 136315138;
      v51 = "ADValidateBluetoothDeviceForNoiseManagement";
      v14 = "%s Bluetooth device is not in-ear or not connected";
      goto LABEL_26;
    }

    v10 = 0;
    if (a2 > 3)
    {
      if (a2 != 4)
      {
        if (a2 != 5)
        {
          goto LABEL_7;
        }

        if (v39[3])
        {
LABEL_32:
          v10 = 0;
          goto LABEL_7;
        }

LABEL_33:
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = AFBluetoothHeadphoneListeningModeGetName();
          *buf = 136315394;
          v51 = "ADValidateBluetoothDeviceForNoiseManagement";
          v52 = 2112;
          v53 = v16;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Bluetooth device does not support noise management for listening mode: %@", buf, 0x16u);
        }

        v9 = &SASettingConnectedHeadsetNoiseManagementUnsupportedErrorCode;
        goto LABEL_6;
      }

      v13 = v43;
    }

    else if (a2)
    {
      if (a2 != 3)
      {
        goto LABEL_7;
      }

      v13 = v47;
    }

    else
    {
      if (v43[3] & 1) != 0 || (v47[3])
      {
        goto LABEL_32;
      }

      v13 = v39;
    }

    if (*(v13 + 24))
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v54) = 136315138;
    *(&v54 + 4) = "ADValidateBluetoothDeviceForNoiseManagement";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unable to determine noise management mode because there is no bluetooth device", &v54, 0xCu);
  }

  v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:SASettingNoHeadsetConnectedErrorCode userInfo:0];
LABEL_11:

  return v10;
}

void sub_100155140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1001551A8(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001551C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADSettingsService _setNoiseManagement:completion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to set device noise management mode, %@", &v8, 0x16u);
    }

    v5 = [NSError errorWithDomain:kAFAssistantErrorDomain code:SASettingConnectedHeadsetNoiseManagementSiriControlUnsupportedErrorCode userInfo:0];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001552F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[ADSettingsService _setNoiseManagement:completion:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to set device noise management mode for secondary device, %@", &v5, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001553CC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 primaryInEarStatus];
  v4 = [v6 secondaryInEarStatus];
  v5 = 1;
  if (v3 != 3 && v4 != 3)
  {
    v5 = [v6 isEnabled] ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100155460(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 supportsListeningModeANC];
  *(*(*(a1 + 48) + 8) + 24) = [v3 supportsListeningModeTransparency];
  *(*(*(a1 + 56) + 8) + 24) = [v3 supportsListeningModeAutomatic];
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v3 name];
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = *(*(*(a1 + 56) + 8) + 24);
    v10 = 136316162;
    v11 = "ADValidateBluetoothDeviceForNoiseManagement_block_invoke_2";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Bluetooth device %@ supportsNoiseCancellationMode:%d supportsAudioTransparencyMode:%d supportsAutomaticMode: %d", &v10, 0x28u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100155BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100155C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 136315394;
    v22 = "[ADSettingsService _getNoiseManagement:completion:]_block_invoke";
    v23 = 2048;
    v24 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %lu connected devices", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = +[ADBluetoothManager sharedInstance];
        v13 = [v11 identifier];
        v14 = [v12 deviceWithUID:v13];

        v15 = sub_100154C58(v14, 0);

        if (!v15)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100155E48(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100155FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if ([*(a1 + 32) isEqualToString:SASettingAudioCategorySIRIValue])
    {
      v4 = @"VoiceCommand";
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:SASettingAudioCategoryMUSICValue])
      {
        v7 = 0;
LABEL_11:
        v8 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v14 = 136315394;
          v15 = "[ADSettingsService _getPlaybackAudioRoute:completion:]_block_invoke";
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioRoute = %@", &v14, 0x16u);
        }

        if ([v7 isEqualToString:@"Speaker"])
        {
          v9 = &SASettingAudioRouteTypeBUILT_INValue;
        }

        else if ([v7 isEqualToString:@"MicrophoneWired"])
        {
          v9 = &SASettingAudioRouteTypeWIRED_HEADSETValue;
        }

        else if ([v7 isEqualToString:@"HeadsetBT"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"HeadphonesBT"))
        {
          v9 = &SASettingAudioRouteTypeBLUETOOTH_HEADSETValue;
        }

        else if ([v7 isEqualToString:@"CarAudioOutput"])
        {
          v9 = &SASettingAudioRouteTypeCAR_AUDIOValue;
        }

        else
        {
          if (![v7 isEqualToString:@"AirTunes"])
          {
            goto LABEL_21;
          }

          v9 = &SASettingAudioRouteTypeAIRPLAYValue;
        }

        v10 = *v9;
        if (v10)
        {
LABEL_22:
          v11 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v14 = 136315394;
            v15 = "[ADSettingsService _getPlaybackAudioRoute:completion:]_block_invoke";
            v16 = 2112;
            v17 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s audioRouteType = %@", &v14, 0x16u);
          }

          v12 = objc_alloc_init(SASettingAudioRoute);
          [v12 setAudioRouteType:v10];
          v13 = objc_alloc_init(SASettingGetAudioRouteResponse);
          [v13 setAudioRoute:v12];
          (*(*(a1 + 40) + 16))();

          goto LABEL_25;
        }

LABEL_21:
        v10 = SASettingAudioRouteTypeOTHERValue;
        goto LABEL_22;
      }

      v4 = @"Audio/Video";
    }

    v7 = [v3 routeForCategory:v4];
    goto LABEL_11;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "[ADSettingsService _getPlaybackAudioRoute:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of AVSystemController.", &v14, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [AFError errorWithCode:37];
  (*(v6 + 16))(v6, 0, v7);
LABEL_25:
}

void sub_100156C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100156C1C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADOpportuneSpeakingVoiceActivityModel setSpeakable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s OPPSPK - Listening for voice pause", buf, 0xCu);
  }

  v3 = +[(AFHeadphonesAnnouncementRequestCapabilityProvider *)ADHeadphonesAnnouncementRequestCapabilityProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100156D50;
  v5[3] = &unk_1005137C8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:v5];
}

void sub_100156D50(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 32);
      *buf = 136315394;
      v21 = "[ADOpportuneSpeakingVoiceActivityModel setSpeakable:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s OPPSPK - Chose device %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(CSOpportuneSpeakListenerOption);
    [v7 setDeviceId:*(*(a1 + 32) + 32)];
    [v7 setOpportuneSpeakListeningType:0];
    v8 = [*(a1 + 32) _detector];
    v9 = *(*(*(a1 + 48) + 8) + 24);
    v10 = *(*(*(a1 + 56) + 8) + 24);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100156FEC;
    v18[3] = &unk_100513778;
    v11 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001570C0;
    v16[3] = &unk_1005137A0;
    v12 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v12;
    *&v13 = v9;
    *&v14 = v10;
    [v8 listenForPauseWithOptions:v7 forPause:1 maxDelay:v18 stopOnDetection:v16 executeOnSuccess:v13 onFail:v14];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[ADOpportuneSpeakingVoiceActivityModel setSpeakable:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s No preferred external headphones route found", buf, 0xCu);
    }

    [*(*(a1 + 32) + 8) modelWithIdentifier:*(*(a1 + 32) + 48) didUpdateScore:*(a1 + 40) forSpeakable:0.0];
  }
}

uint64_t sub_100156FEC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADOpportuneSpeakingVoiceActivityModel setSpeakable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s OPPSPK - Voice pause detected", &v7, 0xCu);
  }

  LODWORD(v3) = 1.0;
  [*(*(a1 + 32) + 8) modelWithIdentifier:*(*(a1 + 32) + 48) didUpdateScore:*(a1 + 40) forSpeakable:v3];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  return 0;
}

uint64_t sub_1001570C0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADOpportuneSpeakingVoiceActivityModel setSpeakable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s OPPSPK - Voice pause not detected", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 8) modelWithIdentifier:*(*(a1 + 32) + 48) didUpdateScore:*(a1 + 40) forSpeakable:0.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  return 0;
}

void sub_100157818(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 _service];
    [v3 reset];
    [*(a1 + 32) _configureWithCurrentASBD];
    *(*(a1 + 32) + 32) = 0;
  }
}

void sub_100157904(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32) / *(v2 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001579F8;
  v6[3] = &unk_100517D00;
  v6[4] = v2;
  *&v6[5] = v3;
  v4 = [v2 _serviceWithErrorHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100157AEC;
  v5[3] = &unk_100513840;
  v5[4] = *(a1 + 32);
  *&v5[5] = v3;
  [v4 getSignature:v5];
}

void sub_1001579F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADAcousticFingerprinter flush]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:0 duration:*(a1 + 40)];
}

void sub_100157AEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:v4 duration:*(a1 + 40)];
}

void sub_100157BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) length] / *(*(a1 + 40) + 64);
  v3 = [*(a1 + 40) _convertPCMDataForFingerprinting:*(a1 + 32)];
  v4 = [*(a1 + 40) _service];
  [v4 appendAcousticData:v3 sampleCount:v2 sampleRate:sub_100157E1C(*(*(a1 + 40) + 48))];

  *(*(a1 + 40) + 32) += v2;
  v5 = *(a1 + 40);
  if (v5[4] > v5[5])
  {
    *(*(a1 + 40) + 40) += [v5 _samplesPerInterval];
    v6 = *(a1 + 40);
    v7 = *(v6 + 32) / *(v6 + 48);
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[ADAcousticFingerprinter appendPCMData:]_block_invoke";
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Getting signature for duration %lf", buf, 0x16u);
      v6 = *(a1 + 40);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100157F5C;
    v11[3] = &unk_100517D00;
    v11[4] = v6;
    *&v11[5] = v7;
    v9 = [v6 _serviceWithErrorHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100158050;
    v10[3] = &unk_100513840;
    v10[4] = *(a1 + 40);
    *&v10[5] = v7;
    [v9 getSignature:v10];
  }
}

uint64_t sub_100157E1C(uint64_t a1)
{
  if (a1 > 31999)
  {
    if (a1 == 32000)
    {
      return 32000;
    }

    if (a1 != 44100)
    {
      if (a1 == 48000)
      {
        return 48000;
      }

      goto LABEL_12;
    }

    return 44100;
  }

  else
  {
    if (a1 == 8000)
    {
      return 8000;
    }

    if (a1 != 11025)
    {
      if (a1 == 16000)
      {
        return 16000;
      }

LABEL_12:
      v3 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "ASXSampleRateFromInt";
        v6 = 2050;
        v7 = a1;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Fingerprinter doesn't support rate %{public}ld", &v4, 0x16u);
      }

      return 16000;
    }

    return 11025;
  }
}

void sub_100157F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADAcousticFingerprinter appendPCMData:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:0 duration:*(a1 + 40)];
}

void sub_100158050(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:v4 duration:*(a1 + 40)];
}

uint64_t sub_1001582DC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a2 = *(a1 + 40);
  *a3 = 1;
  *(a3 + 8) = 1;
  *(a3 + 16) = [*(a1 + 32) bytes];
  *(a3 + 12) = [*(a1 + 32) length];
  return 0;
}

uint64_t sub_100158334(int a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v8 = objc_retainBlock(a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

double sub_100158624(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 88) = result;
  return result;
}

void sub_100158A58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100158A88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void sub_100158AC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

void sub_100159118(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"status" value:&off_1005339B0 negation:0];
    v7[0] = v2;
    v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v4 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"delivery_stream" value:v3 negation:0];
    v7[1] = v4;
    v5 = [NSArray arrayWithObjects:v7 count:2];
    v6 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v5];

    [*(a1 + 32) _countQueuedEventRecordsWithCriteria:v6 withCompletion:*(a1 + 40)];
  }
}

void sub_1001592DC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"status" value:&off_1005339B0 negation:0];
    [*(a1 + 32) _countQueuedEventRecordsWithCriteria:v2 withCompletion:*(a1 + 40)];
  }
}

void sub_10015C29C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[SiriCoreSQLiteIndexDescription alloc] initWithName:v6 tableName:@"events" columnNames:v5 options:0];

  [v4 createIndex:v7 error:0];
}

void sub_10015C7C8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 _updateRecordsWithSpeechId:v3 toUpdatedSpeechId:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10015C988(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015CA18;
  v4[3] = &unk_10051E038;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_10015CA18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v8 = 0;
  v3 = [v2 checkpointWriteAheadLogWithError:&v8];
  v4 = v8;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 32);
    *buf = 136315394;
    v10 = "[ADAnalyticsStore checkpointWithCompletion:]_block_invoke_2";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Checkpointed write-ahead log (%@)...", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, v4);
  }
}

void sub_10015CC5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 _resetForReason:@"Settings Client" error:&v8];
  v4 = v8;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 32);
    *buf = 136315394;
    v10 = "[ADAnalyticsStore resetWithCompletion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Reset analytics store (%@).", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, v4);
  }
}

void sub_10015CEA4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:*(*(a1 + 32) + 32) isDirectory:0];

  v4 = 0;
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = *(*(a1 + 32) + 32);
  v25 = 0;
  v7 = [v5 attributesOfItemAtPath:v6 error:&v25];
  v4 = v25;

  if (!v7)
  {
    v17 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(a1 + 32) + 32);
      *buf = 136315394;
      v27 = "[ADAnalyticsStore purgeWithCompletion:]_block_invoke";
      v28 = 2112;
      v29 = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to get file attributes of analytics store (%@).", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v8 = [v7 objectForKey:NSFileSize];
  v9 = v8;
  if (!v8)
  {
    v19 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(a1 + 32) + 32);
      *buf = 136315394;
      v27 = "[ADAnalyticsStore purgeWithCompletion:]_block_invoke";
      v28 = 2112;
      v29 = v20;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Unable to get file size of analytics store (%@).", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if ([v8 unsignedLongLongValue] <= 0x10000000)
  {
    [ADCoreAnalyticsSideChannel logAnalyticsLocalStorageSnapshotWithSize:v9];
LABEL_13:

    goto LABEL_14;
  }

  v10 = *(a1 + 32);
  v11 = [[NSString alloc] initWithFormat:@"Large File Size (%@)", v9];
  v24 = v4;
  v12 = [v10 _resetForReason:v11 error:&v24];
  v13 = v24;

  [ADCoreAnalyticsSideChannel logAnalyticsLocalStoragePurgedWithSize:v9];
  if (v12)
  {
    v14 = AFSiriLogContextAnalytics;
    v15 = 1;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(a1 + 32) + 32);
      *buf = 136315394;
      v27 = "[ADAnalyticsStore purgeWithCompletion:]_block_invoke";
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Purged data from analytics store (%@)...", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v4 = v13;
LABEL_14:
  v21 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v23 = *(*(a1 + 32) + 32);
    *buf = 136315650;
    v27 = "[ADAnalyticsStore purgeWithCompletion:]_block_invoke";
    v28 = 2112;
    v29 = v23;
    v30 = 2112;
    v31 = v4;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Failed to purge data from analytics store (%@) due to error %@.", buf, 0x20u);
  }

  v15 = 0;
  v13 = v4;
LABEL_17:
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v15, v13);
  }
}

void sub_10015D2E4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v8 = 0;
  v5 = [v3 _fetchEventRecordsCreatedAfterDate:v4 error:&v8];
  v6 = v8;
  objc_autoreleasePoolPop(v2);
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10015D4C4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _purgeDeletedEventRecordsBeforeOrEqualToDate:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

void sub_10015D610(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[4];
  v6 = a1[5];
  v9 = 0;
  [v5 _deleteEventRecordsFromStartTime:v3 toEndTime:v4 eventStreamUID:v6 error:&v9];
  v7 = v9;
  objc_autoreleasePoolPop(v2);
  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v7);
  }
}

void sub_10015D7FC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v8 = 0;
  v5 = [v3 _deleteEventRecordsWithRecordIDs:v4 error:&v8];
  v6 = v8;
  objc_autoreleasePoolPop(v2);
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10015D974(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v11 = 0;
  v8 = [v5 _deleteEventRecordsBeforeOrEqualToTimestamp:v3 deliveryStream:v4 eventStreamUID:v6 streamSpeechId:v7 error:&v11];
  v9 = v11;
  objc_autoreleasePoolPop(v2);
  v10 = a1[7];
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v9);
  }
}

void sub_10015DB1C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[10];
  v12 = 0;
  v9 = [v5 _fetchEventRecords:v3 afterTimestamp:v4 eventStreamUID:v6 streamSpeechId:v7 deliveryStream:v8 error:&v12];
  v10 = v12;
  objc_autoreleasePoolPop(v2);
  v11 = a1[7];
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v10);
  }
}

void sub_10015DC48(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 _fetchEventStreamUIDsWithError:&v7];
  v5 = v7;
  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

void sub_10015DDAC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015DE54;
  block[3] = &unk_10051E088;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_10015DE54(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v8 = 0;
  v5 = [v3 _insertEventRecords:v4 error:&v8];
  v6 = v8;
  objc_autoreleasePoolPop(v2);
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10015E9F8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADFlowServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Flow Service Connection Invalidated (pid=%d)", &v4, 0x12u);
  }
}

void sub_10015EAB4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADFlowServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Flow Service Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

void *sub_10015EBE4(void *result)
{
  if (!*(result[4] + 8))
  {
    v1 = result;
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[ADFlowServiceListener setupListener]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
    }

    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:kAssistantFlowServiceName];
    v5 = v1[4];
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    [*(v1[4] + 8) setDelegate:?];
    return [*(v1[4] + 8) resume];
  }

  return result;
}

void sub_100160DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001613C8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 40);

    [v1 _sendCommandToServer:?];
  }

  else
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[ADCommandCenter(NanoServices) taskmaster:didReceivePunchoutOutcome:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s called with nil punchoutOutcome.", &v3, 0xCu);
    }
  }
}

void sub_100163594(uint64_t a1)
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016363C;
  v6[3] = &unk_10051E010;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

id sub_10016363C(uint64_t a1)
{
  [*(a1 + 32) _setAVSystemController:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _flushPendingCompletions];
}

void sub_1001638FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    v2 = *(a1 + 40);

    [v2 invokeWithValue:?];
  }

  else
  {
    v3 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 8);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100163A04;
    v10 = &unk_10051E010;
    v11 = v5;
    v12 = v4;
    dispatch_after(v3, v6, &v7);
    [*(*(a1 + 32) + 32) addObject:{*(a1 + 40), v7, v8, v9, v10, v11}];
    [*(a1 + 32) fetchAVSystemControllerInBackground];
  }
}

id sub_100163A04(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v2 invokeWithValue:v3];
}

void sub_100163BCC(id a1)
{
  v1 = objc_alloc_init(ADAVSystemControllerLifecycleManager);
  v2 = qword_100590380;
  qword_100590380 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10016404C(uint64_t a1)
{
  v10 = +[AFPreferences sharedPreferences];
  v2 = [v10 languageCode];
  if (![(__CFString *)v2 length])
  {
    v3 = [v10 bestSupportedLanguageCodeForLanguageCode:0];

    v2 = v3;
  }

  if (![(__CFString *)v2 length])
  {

    v2 = @"en-US";
  }

  v4 = [v10 outputVoice];
  v5 = [v4 languageCode];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = AFOutputVoiceLanguageForRecognitionLanguage();
    v8 = [[AFVoiceInfo alloc] initWithLanguageCode:v7 gender:objc_msgSend(v4 isCustom:"gender") name:1 footprint:0 contentVersion:0 masteredVersion:{0, 0}];

    v4 = v8;
  }

  v9 = [*(a1 + 32) _bundle];
  [*(a1 + 32) _getLocalRequestWithType:*(a1 + 48) bundle:v9 languageCode:v2 outputVoiceInfo:v4 completion:*(a1 + 40)];
}

void sub_1001642A8(id a1)
{
  v1 = objc_alloc_init(ADLocalRequestProvider);
  v2 = qword_100590390;
  qword_100590390 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100164688(uint64_t a1)
{
  v2 = +[ADDeviceProximityManager sharedManager];
  [v2 performProximityScan];

  result = *(*(a1 + 32) + 48);
  if (result)
  {
    result = [result cancel];
  }

  if (*(a1 + 40) == 1)
  {
    v4 = [AFWatchdogTimer alloc];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100164770;
    v10[3] = &unk_10051DFE8;
    v10[4] = v5;
    v7 = [v4 initWithTimeoutInterval:v6 onQueue:v10 timeoutHandler:195.0];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    return [*(*(a1 + 32) + 48) start];
  }

  return result;
}

id sub_100164770(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001647E4;
  v4[3] = &unk_10051BF08;
  v4[4] = v1;
  return [v2 getPlaybackStateWithCompletion:v4];
}

void sub_1001647E4(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[6] = v2;
    v6[7] = v3;
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100164868;
    v6[3] = &unk_10051D770;
    v6[4] = v4;
    v6[5] = 1;
    dispatch_async(v5, v6);
  }
}

id sub_100164868(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSDate date];
  [v2 _updateExpirationDateForMediaPlaybackSnapshotBasedOnDate:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _updateProximityObservationsForPlayState:v5 afterDelay:0.0];
}

void sub_100164EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose((v63 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_100164F24(uint64_t a1, char a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if ((a2 & 2) != 0)
  {
    v4 = +[ADSpeechManager sharedManager];
    v5 = [v4 audioSessionController];
    v6 = [v5 getAudioSessionID];

    v7 = [AVAudioSession retrieveSessionWithID:v6];
    if ([v7 lastActivationStoppedNowPlayingApp])
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 64);
        v10 = 136315394;
        v11 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
        v12 = 2048;
        v13 = v9;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal %llu suppressing play state change caused by siri activation interruption", &v10, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100165078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100165090(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = AFValidatedNowPlayingInfo();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:kMRMediaRemoteNowPlayingInfoMediaType];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 48);
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v15 = 136315650;
      v16 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
      v17 = 2048;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal %llu mediaType = %@", &v15, 0x20u);
    }
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = 136315650;
      v16 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
      v17 = 2048;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s #hal %llu Failed fetching Now Playing Info with error: %@", &v15, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100165240(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 48);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 136315650;
    v9 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal %llu groupIdentifier = %@", &v8, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100165348(uint64_t a1, void *a2)
{
  [*(a1 + 32) invokeWithSignal:-3];
  if (a2)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 104);
      v31 = 136315650;
      v32 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal %llu Cancelling donation because signal %zd is received.", &v31, 0x20u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v6 = [*(*(a1 + 40) + 24) mediaType];
    v7 = [*(*(a1 + 40) + 24) groupIdentifier];
    [*(*(a1 + 40) + 24) playbackState];
    v8 = [*(*(a1 + 40) + 24) nowPlayingTimestamp];
    v9 = *(a1 + 48);
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 104);
      v24 = v10;
      v25 = AFMediaPlaybackStateGetName();
      v31 = 136315906;
      v32 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
      v33 = 2048;
      v34 = v23;
      v35 = 2112;
      v36 = v25;
      v37 = 2112;
      v38 = v8;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s #hal %llu Previous playbackState: %@, lastPlayingDate: %@", &v31, 0x2Au);

      v10 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 104);
      v27 = v10;
      v28 = AFMediaPlaybackStateGetName();
      v31 = 136315906;
      v32 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
      v33 = 2048;
      v34 = v26;
      v35 = 2112;
      v36 = v28;
      v37 = 2112;
      v38 = v9;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s      #hal %llu New playbackState: %@, lastPlayingDate: %@", &v31, 0x2Au);
    }

    if (*(*(a1 + 40) + 24) && (*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && ((v11 = *(*(*(a1 + 88) + 8) + 40)) == 0 ? (v12 = v6 == 0) : (v12 = 1), v12 && (!v11 || [v11 isEqualToString:v6]) && (objc_msgSend(v9, "timeIntervalSinceDate:", v8), fabs(v13) <= 0.5) && ((v14 = *(*(*(a1 + 96) + 8) + 40)) != 0 || !v7) && (!v14 || objc_msgSend(v14, "isEqualToString:", v7)) && (v15 = *(a1 + 40), v16 = *(v15 + 32), v16 == objc_msgSend(*(v15 + 24), "isProxyGroupPlayer"))))
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 104);
        v31 = 136315394;
        v32 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
        v33 = 2048;
        v34 = v30;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s #hal %llu Skipped donation because there's no change.", &v31, 0x16u);
      }

      v18 = *(a1 + 64);
      if (v18)
      {
        (*(v18 + 16))(v18, 0);
      }
    }

    else
    {
      v19 = [[AFMediaPlaybackStateSnapshot alloc] initWithPlaybackState:*(*(*(a1 + 72) + 8) + 24) nowPlayingTimestamp:v9 mediaType:*(*(*(a1 + 88) + 8) + 40) groupIdentifier:*(*(*(a1 + 96) + 8) + 40) isProxyGroupPlayer:*(*(a1 + 40) + 32)];
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 104);
        v31 = 136315650;
        v32 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
        v33 = 2048;
        v34 = v29;
        v35 = 2112;
        v36 = v19;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s #hal %llu Donating %@...", &v31, 0x20u);
      }

      [*(a1 + 40) _donateMediaPlaybackContextWithSnapshot:v19 date:*(a1 + 56)];
      v21 = *(a1 + 64);
      if (v21)
      {
        (*(v21 + 16))(v21, 1);
      }
    }
  }
}

void sub_100165804(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = Current - *(a1 + 56);
    v16 = 136315650;
    v17 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
    v18 = 2048;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal %llu Finished aggregation, took %f seconds.", &v16, 0x20u);
  }

  v4 = [*(a1 + 32) invokeWithSignal:0];
  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 48);
    v16 = 136315394;
    v17 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
    v18 = 2048;
    v19 = v7;
    v8 = "%s #hal %llu Donation invoked.";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 48);
    v16 = 136315394;
    v17 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
    v18 = 2048;
    v19 = v14;
    v8 = "%s #hal %llu Donation cancelled.";
  }

  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v8, &v16, 0x16u);
LABEL_7:
  v9 = *(a1 + 40);
  v10 = *(v9 + 80);
  if (*(a1 + 32) == v10)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 48);
      v16 = 136315394;
      v17 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]_block_invoke";
      v18 = 2048;
      v19 = v15;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #hal %llu Donation cleared.", &v16, 0x16u);
      v9 = *(a1 + 40);
      v10 = *(v9 + 80);
    }

    *(v9 + 80) = 0;
  }
}

void sub_100166090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166134;
  block[3] = &unk_10051E128;
  v10 = v5;
  v11 = a2;
  block[4] = v6;
  v8 = v5;
  dispatch_async(v7, block);
}

void sub_100166134(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = [v2[3] playbackState];
  v5 = +[NSDate date];
  [v2 _handlePlaybackStateDidChangeToState:v3 fromState:v4 onDate:v5 lastPlayingDate:a1[5] completion:0];
}

void sub_1001662C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166364;
  block[3] = &unk_10051E128;
  v10 = v5;
  v11 = a2;
  block[4] = v6;
  v8 = v5;
  dispatch_async(v7, block);
}

void sub_100166364(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = [v2[3] playbackState];
  v5 = +[NSDate date];
  [v2 _handlePlaybackStateDidChangeToState:v3 fromState:v4 onDate:v5 lastPlayingDate:a1[5] completion:0];
}

void sub_10016652C(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = +[NSDate date];
  [v2 _handlePlaybackStateDidChangeToState:v3 fromState:v4 onDate:v5 lastPlayingDate:a1[5] completion:0];
}

void sub_100166844(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166A28;
  block[3] = &unk_10051E128;
  v9 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, block);
}

void sub_1001668E0(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100166958;
  v4[3] = &unk_10051CBD8;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

id sub_100166958(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADMediaPlaybackContextProvider _fetchStateForReason:]_block_invoke_2";
    v7 = 1024;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal initial fetch isProxyGroupPlayer = %d", &v5, 0x12u);
  }

  return [*(a1 + 32) _handleProxyGroupPlayerDidChangeFrom:*(*(a1 + 32) + 32) to:*(a1 + 40)];
}

void sub_100166A28(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = v2;
    v9 = AFMediaPlaybackStateGetName();
    v10 = a1[4];
    v11 = 136315650;
    v12 = "[ADMediaPlaybackContextProvider _fetchStateForReason:]_block_invoke_2";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal fetch playback state = %@ for reason = %@", &v11, 0x20u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v5 = [v3[3] playbackState];
  v6 = +[NSDate date];
  v7 = [*(a1[5] + 24) nowPlayingTimestamp];
  [v3 _handlePlaybackStateDidChangeToState:v4 fromState:v5 onDate:v6 lastPlayingDate:v7 completion:0];
}

void sub_100167810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100167830(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) _isAnnounceNotificationRequest:v7 equalToRequest:*(a1 + 40)])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "[ADExternalNotificationRequestQueue removeAnnouncementRequest:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2048;
      v14 = a3;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s found request to remove: %@ in request queue at index: %lu", &v9, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_100167A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100167A6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100167A84(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 136315394;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 notification];
        v13 = [v12 request];
        v14 = [v13 identifier];
        v15 = [v14 isEqualToString:*(a1 + 32)];

        if (v15)
        {
          v16 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(a1 + 32);
            *buf = v18;
            v25 = "[ADExternalNotificationRequestQueue notificationRequestForNotificationIdentifierInAnnouncementQueue:]_block_invoke";
            v26 = 2112;
            v27 = v17;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s found request with notification identifier: %@ in request queue", buf, 0x16u);
          }

          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
          *a4 = 1;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

void sub_100169188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 length])
  {
    v8 = objc_alloc_init(NSMutableArray);
    [v8 addObject:v5];
    [*(*(a1 + 32) + 24) setObject:v8 forKey:v7];
    [*(*(a1 + 32) + 16) enqueueObject:v7];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s unable to enqueue request, invalid identifier %@", &v10, 0x16u);
    }
  }
}

void *sub_1001692BC(void *result, uint64_t a2)
{
  if (a2 != -1)
  {
    v2 = result;
    [*(result[4] + 48) cancel];
    [*(v2[4] + 56) cancel];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(v2[4] + 8);
      v5 = 136315394;
      v6 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s announcement ready to be announced: %@", &v5, 0x16u);
    }

    return [*(v2[4] + 32) announcementRequestReadyToBeAnnounced:*(v2[4] + 8)];
  }

  return result;
}

id sub_1001693B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Max time enqueueable timer firing, announcing request: %@", &v5, 0x16u);
  }

  return [*(a1 + 40) invoke];
}

id sub_100169478(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Resetting burst timer firing", &v4, 0xCu);
  }

  result = [*(a1 + 32) summaryDecision];
  if (result != 2)
  {
    return [*(a1 + 40) invoke];
  }

  return result;
}