NSObject *sub_100002548()
{
  v0 = AXLogAssetDaemon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Installing SIGTERM handler.", v4, 2u);
  }

  signal(15, 1);
  v1 = dispatch_get_global_queue(2, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);

  dispatch_source_set_event_handler(v2, &stru_100018700);
  dispatch_resume(v2);

  return v2;
}

void sub_10000261C(id a1)
{
  v1 = AXLogAssetDaemon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received SIGTERM. Terminating now.", v2, 2u);
  }

  exit(15);
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  v1 = AXLogAssetDaemon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[NSProcessInfo processInfo];
    v3 = [v2 environment];
    v4 = [v3 objectForKey:@"MallocStackLogging"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "axasstsd is starting up. MallocStackLogging=%@", &buf, 0xCu);
  }

  v5 = sub_100002548();
  v6 = qword_10001DFE0;
  qword_10001DFE0 = v5;

  v7 = objc_autoreleasePoolPush();
  v8 = +[AXAssetsDaemon sharedInstance];
  v9 = +[AXImageCaptionModelAssetPolicy policy];
  v10 = [AXManagedAsset assetWithPolicy:v9];
  v47[0] = v10;
  v11 = +[AXUltronModelAssetPolicy policy];
  v12 = [AXManagedAsset assetWithPolicy:v11];
  v47[1] = v12;
  v13 = +[AXMagnifierAssetPolicy policy];
  v14 = [AXManagedAsset assetWithPolicy:v13];
  v47[2] = v14;
  v15 = [NSArray arrayWithObjects:v47 count:3];
  [v8 registerManagedAssets:v15];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v16 = off_10001DFF8;
  v46 = off_10001DFF8;
  if (!off_10001DFF8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v49 = sub_100002E0C;
    v50 = &unk_100018728;
    v51 = &v43;
    v17 = sub_100002E5C();
    v18 = dlsym(v17, "AXDeviceSupportsBackTap");
    *(v51[1] + 24) = v18;
    off_10001DFF8 = *(v51[1] + 24);
    v16 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v16)
  {
    goto LABEL_33;
  }

  if (v16())
  {
    v19 = +[AXPhoenixAssetPolicy policy];
    v20 = [AXManagedAsset assetWithPolicy:v19];
    [v8 registerManagedAsset:v20];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v21 = off_10001E008;
  v46 = off_10001E008;
  if (!off_10001E008)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v49 = sub_100002FD0;
    v50 = &unk_100018728;
    v51 = &v43;
    v22 = sub_100002E5C();
    v23 = dlsym(v22, "AXDeviceSupportsVoiceTriggers");
    *(v51[1] + 24) = v23;
    off_10001E008 = *(v51[1] + 24);
    v21 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v21)
  {
LABEL_33:
    sub_10000DB94();
    __break(1u);
  }

  if (v21())
  {
    v24 = +[AXVoiceTriggerAssetPolicy policy];
    v25 = [AXManagedAsset assetWithPolicy:v24];
    [v8 registerManagedAsset:v25];
  }

  v26 = +[NSProcessInfo processInfo];
  if ([v26 physicalMemory] > 0x773593FF && AXRuntimeCheck_HasANE())
  {

LABEL_18:
    v26 = +[AXElementVisionModelAssetPolicy policy];
    v27 = [AXManagedAsset assetWithPolicy:v26];
    [v8 registerManagedAsset:v27];
    goto LABEL_19;
  }

  v27 = +[NSProcessInfo processInfo];
  if ([v27 physicalMemory] > 0x773593FF)
  {
    v28 = AXRuntimeCheck_HasANE();

    if (!v28)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_19:

LABEL_20:
  v29 = +[AXIconVisionModelAssetPolicy policy];
  v30 = [AXManagedAsset assetWithPolicy:v29];
  [v8 registerManagedAsset:v30];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v31 = off_10001E010;
  v46 = off_10001E010;
  if (!off_10001E010)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v49 = sub_100003020;
    v50 = &unk_100018728;
    v51 = &v43;
    v32 = sub_100002E5C();
    v33 = dlsym(v32, "AXDeviceSupportsAudiogramIngestion");
    *(v51[1] + 24) = v33;
    off_10001E010 = *(v51[1] + 24);
    v31 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v31)
  {
    goto LABEL_33;
  }

  if (v31())
  {
    v34 = +[AXAudiogramIngestionAssetPolicy policy];
    v35 = [AXManagedAsset assetWithPolicy:v34];
    [v8 registerManagedAsset:v35];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v36 = off_10001E018;
  v46 = off_10001E018;
  if (!off_10001E018)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v49 = sub_100003070;
    v50 = &unk_100018728;
    v51 = &v43;
    v37 = sub_100002E5C();
    v38 = dlsym(v37, "AXDeviceSupportsComfortSounds");
    *(v51[1] + 24) = v38;
    off_10001E018 = *(v51[1] + 24);
    v36 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v36)
  {
    goto LABEL_33;
  }

  if (v36())
  {
    v39 = +[AXComfortSoundsAssetPolicy policy];
    v40 = [AXManagedAsset assetWithPolicy:v39];
    [v8 registerManagedAsset:v40];
  }

  objc_autoreleasePoolPop(v7);
  v41 = AXLogAssetDaemon();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "axassetsd will begin servicing requests", &buf, 2u);
  }

  [v8 run];
  return 0;
}

void sub_100002DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100002E0C(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsBackTap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001DFF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002E5C()
{
  v3[0] = 0;
  if (!qword_10001E000)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100002F5C;
    v3[4] = &unk_100018760;
    v3[5] = v3;
    v4 = off_100018748;
    v5 = 0;
    qword_10001E000 = _sl_dlopen();
  }

  v0 = qword_10001E000;
  v1 = v3[0];
  if (!qword_10001E000)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100002F5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001E000 = result;
  return result;
}

void *sub_100002FD0(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsVoiceTriggers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003020(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsAudiogramIngestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E010 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003070(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsComfortSounds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000032B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dequeueNextTask];
}

void sub_1000034AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000034D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AXAssetsXPCActivity alloc] initWithActivity:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [(AXAssetsXPCActivity *)v4 state];
  v7 = AXLogAssetDaemon();
  v8 = v7;
  if (v6 == 2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "XPC Activity handler called. %@. Asset:%@", &v11, 0x16u);
    }

    [(AXAssetsXPCActivity *)v4 updateState:4];
    v8 = [AXManagedAssetTaskContext contextWithActivity:v4];
    [WeakRetained enqueueAssetUpdateTaskWithContext:v8];
  }

  else if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000DBB8(v4, a1, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "XPC Activity handler called. %@. Asset:%@", &v11, 0x16u);
  }
}

void sub_100003884(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) policy];
    v4 = [v3 assetType];
    v5 = *(a1 + 40);
    v6 = [*(*(a1 + 32) + 24) count];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[AXManagedAsset: %@]: enqeueing task: [%@]. Total queued: %lu", &v8, 0x20u);
  }

  v7 = *(a1 + 32);
  if (!*(v7 + 32))
  {
    dispatch_source_merge_data(*(v7 + 16), 1uLL);
  }
}

void sub_100003A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003AB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003ACC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    [v3 removeObserver:? forKeyPath:? context:?];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v2 = *(a1 + 32);
  }

  if ([*(v2 + 24) count])
  {
    v6 = [*(*(a1 + 32) + 24) objectAtIndex:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    [*(*(a1 + 32) + 32) addObserver:*(a1 + 32) forKeyPath:@"finished" options:1 context:off_10001DDF0];
    [*(*(a1 + 32) + 24) removeObjectAtIndex:0];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = AXLogAssetDaemon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [*(a1 + 32) policy];
      v13 = [v12 assetType];
      v14 = *(a1 + 32);
      v15 = *(*(*(a1 + 40) + 8) + 40);
      v16 = [*(v14 + 24) count];
      v21 = 138412802;
      v22 = v13;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v17 = "[AXManagedAsset: %@]: dequeuing next task: [%@]. Total queued: %lu";
      v18 = v10;
      v19 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    }
  }

  else if (v11)
  {
    v12 = [*(a1 + 32) policy];
    v13 = [v12 assetType];
    v20 = [*(*(a1 + 32) + 24) count];
    v21 = 138412546;
    v22 = v13;
    v23 = 2048;
    v24 = v20;
    v17 = "[AXManagedAsset: %@]: Did finish dequeueing all queued tasks. (confirming queue count: %lu)";
    v18 = v10;
    v19 = 22;
    goto LABEL_10;
  }
}

void sub_100005310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_100005344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted from PID %d", v3, 8u);
  }

  [WeakRetained invalidate];
}

void sub_100005404(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated from PID %d", v3, 8u);
  }
}

void sub_1000056A0(id a1)
{
  v1 = [[AXAssetsDaemon alloc] _init];
  v2 = qword_10001E020;
  qword_10001E020 = v1;

  v3 = +[_TtC9axassetsd14TTSTraceServer shared];
}

void sub_1000058BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000058E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshAssetCatalogForAssetType:v8 withOverrideTimeout:v7 forceCatalogRefresh:a4];
}

void sub_100005968(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAssetForAssetType:v3];
}

void sub_100005CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005D24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005D4C(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithCString:xpc_dictionary_get_string(xdict encoding:_xpc_event_key_name), 4];
  v4 = AXLogAssetDaemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recieved notification %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDarwinNotification:v3];
}

uint64_t sub_1000061C4(uint64_t a1)
{
  CFPreferencesFlushCaches();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_100006964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A10;
  block[3] = &unk_100018938;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void sub_100006A10(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = AXLogAssetDaemon();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AXATM: Delegate completed but active reason added while transitioning to idle. Keeping transaction alive", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AXATM: Delegate completed and no new reason added. Will end os_transaction now", buf, 2u);
    }

    [*(a1 + 32) setTransaction:0];
  }
}

void sub_100006C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AXAssetMetadataStore store];
  v5 = [*(a1 + 32) assetType];
  [v4 recordAssetRefreshEventForAssetType:v5];

  v9 = v3;
  v6 = +[AXAssetMetadataStore store];
  v7 = [*(a1 + 32) assetType];
  v8 = [AXUpdateAssetTaskRestorationState restoreOrCreateStateFromStore:v6 assetType:v7];
  [v9 setRestorationState:v8];

  [v9 _housekeeping_op1_refreshAssets];
}

void sub_100006F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006F90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = AXLogAssetDaemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE4(v8, v6);
    }

    [v8 _completeWithResult:1];
  }

  else if (([WeakRetained _deferIfNeeded] & 1) == 0)
  {
    [v8 _housekeeping_op2_purgeAssets:v5];
  }
}

void sub_100007508(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = AXLogAssetDaemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000DE78(v6, v4);
    }

    [v6 _completeWithResult:1];
  }

  else if (([WeakRetained _deferIfNeeded] & 1) == 0)
  {
    [v6 _housekeeping_op3_downloadAssets:*(a1 + 32)];
  }
}

void sub_100007AFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100007B28(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
LABEL_7:
    v6 = AXLogAssetDaemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Finished all subtasks with success.", &v7, 0xCu);
    }

    [WeakRetained _completeWithResult:0];
    goto LABEL_10;
  }

  v4 = _AXAssetMakeError();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000DF50(WeakRetained, v4);
  }

  [WeakRetained _completeWithResult:1];
LABEL_10:
}

void sub_100008054(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_100008074()
{
  result = [objc_allocWithZone(type metadata accessor for VoiceManagerWrapper()) init];
  static VoiceManagerWrapper.shared = result;
  return result;
}

id VoiceManagerWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *VoiceManagerWrapper.shared.unsafeMutableAddressor()
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  return &static VoiceManagerWrapper.shared;
}

id static VoiceManagerWrapper.shared.getter()
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static VoiceManagerWrapper.shared;

  return v0;
}

void static VoiceManagerWrapper.shared.setter(uint64_t a1)
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static VoiceManagerWrapper.shared;
  static VoiceManagerWrapper.shared = a1;
}

uint64_t (*static VoiceManagerWrapper.shared.modify())()
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t variable initialization expression of VoiceManagerWrapper.daemon()
{
  sub_10000854C(&qword_10001DF28, &qword_100010840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100010830;
  v1 = type metadata accessor for TTSVBVoiceLoader();
  v2 = TTSVBVoiceLoader.__allocating_init()();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_100008594();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for VoiceDatabaseDaemon();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)();
}

void sub_100008494(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activityTransactionManager];

  v6 = String._bridgeToObjectiveC()();
  [v5 *a3];
}

uint64_t sub_10000854C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008594()
{
  result = qword_10001DF30;
  if (!qword_10001DF30)
  {
    type metadata accessor for TTSVBVoiceLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DF30);
  }

  return result;
}

uint64_t sub_10000860C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon);
  v2 = *(&async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize() + 1);
  v5 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize() + async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1000086BC;

  return v5();
}

uint64_t sub_1000086BC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_100008930(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000089A8, 0, 0);
}

uint64_t sub_1000089A8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon);
  v2 = *(&async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize() + 1);
  v5 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize() + async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize());
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100008A58;

  return v5();
}

uint64_t sub_100008A58()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100008BB4, 0, 0);
  }

  else
  {

    v5 = *(v2 + 24);
    v5[2](v5);
    _Block_release(v5);
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100008BB4()
{
  v1 = *(v0 + 24);
  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VoiceManagerWrapper.handleDarwinNotification(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100008C54, 0, 0);
}

uint64_t sub_100008C54()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon);
  v2 = *(&async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:) + 1);
  v7 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:) + async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100008D0C;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_100008D0C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008F88(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_100009014, 0, 0);
}

uint64_t sub_100009014()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon);
  v2 = *(&async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:) + 1);
  v7 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:) + async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1000090CC;
  v5 = v0[4];
  v4 = v0[5];

  return v7(v5, v4);
}

uint64_t sub_1000090CC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id VoiceManagerWrapper.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon;
  sub_10000854C(&qword_10001DF28, &qword_100010840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100010830;
  v4 = type metadata accessor for TTSVBVoiceLoader();
  v5 = TTSVBVoiceLoader.__allocating_init()();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_100008594();
  *(v3 + 32) = v5;
  v6 = type metadata accessor for VoiceDatabaseDaemon();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v1[v2] = VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VoiceManagerWrapper();
  return objc_msgSendSuper2(&v10, "init");
}

id VoiceManagerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceManagerWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000949C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000A358;

  return v7();
}

uint64_t sub_100009584(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000966C;

  return v8();
}

uint64_t sub_10000966C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100009F9C(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000A00C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10000A00C(a3);

    return v22;
  }

LABEL_8:
  sub_10000A00C(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100009A1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009B14;

  return v7(a1);
}

uint64_t sub_100009B14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100009C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000854C(&qword_10001DF70, &unk_1000108F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000C440(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100009D10()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009D58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000966C;

  return sub_100008F88(v2, v3, v4);
}

uint64_t sub_100009E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A358;

  return sub_10000949C(v2, v3, v5);
}

uint64_t sub_100009ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A358;

  return sub_100009584(a1, v4, v5, v7);
}

uint64_t sub_100009F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000854C(&qword_10001DF68, &qword_100010888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A00C(uint64_t a1)
{
  v2 = sub_10000854C(&qword_10001DF68, &qword_100010888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A074()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A0AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A358;

  return sub_100009A1C(a1, v5);
}

uint64_t sub_10000A164(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000966C;

  return sub_100009A1C(a1, v5);
}

uint64_t sub_10000A21C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A25C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000A358;

  return sub_100008930(v2, v3);
}

uint64_t sub_10000A308()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10000A35C()
{
  result = [objc_allocWithZone(type metadata accessor for TTSTraceServer()) init];
  static TTSTraceServer.shared = result;
  return result;
}

uint64_t *TTSTraceServer.shared.unsafeMutableAddressor()
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  return &static TTSTraceServer.shared;
}

id static TTSTraceServer.shared.getter()
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static TTSTraceServer.shared;

  return v0;
}

void static TTSTraceServer.shared.setter(uint64_t a1)
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TTSTraceServer.shared;
  static TTSTraceServer.shared = a1;
}

uint64_t (*static TTSTraceServer.shared.modify())()
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_10000A664()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC9axassetsd14TTSTraceServer_clientTimeoutTasks;
  *&v1[v6] = sub_100009C0C(&_swiftEmptyArrayStorage);
  v7 = type metadata accessor for TTSTraceServer();
  v12.receiver = v1;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, "init");
  if (TTSIsInternalBuild())
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = ObjectType;
    sub_10000B2A4(0, 0, v5, &unk_100010928, v10);
  }

  return v8;
}

uint64_t sub_10000A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = *(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_10000854C(&qword_10001DFA8, &qword_100010930);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = sub_10000854C(&qword_10001DFB0, &qword_100010938);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000A938, 0, 0);
}

uint64_t sub_10000A938()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  type metadata accessor for TTSSettings();
  static TTSSettings.shared.getter();
  dispatch thunk of TTSSettings.speechTraceClientsStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10000AA48;
  v7 = v0[15];
  v8 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 6, 0, 0, v8);
}

uint64_t sub_10000AA48()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_10000AB44, 0, 0);
}

uint64_t sub_10000AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 8;
    v8 = -1;
    v9 = -1 << *(v5 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v5[8];
    v11 = (63 - v9) >> 6;
    v36 = v11;
    v37 = v5 + 8;
    v38 = v4[6];
    while (v10)
    {
LABEL_11:
      v14 = v4[8];
      v13 = v4[9];
      v39 = v4[7];
      v15 = (v5[6] + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = *v15;
      v17 = v15[1];
      v18 = type metadata accessor for TaskPriority();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 1, 1, v18);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = v39;
      sub_100009F9C(v13, v14);
      LODWORD(v14) = (*(v19 + 48))(v14, 1, v18);

      v21 = v4[8];
      if (v14 == 1)
      {
        sub_10000DA6C(v4[8], &qword_10001DF68, &qword_100010888);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v19 + 8))(v21, v18);
      }

      v22 = v20[2];
      v23 = v20[3];
      swift_unknownObjectRetain();

      if (v22)
      {
        swift_getObjectType();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      sub_10000DA6C(v4[9], &qword_10001DF68, &qword_100010888);
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_100010948;
      *(v27 + 24) = v20;
      if (v26 | v24)
      {
        v4[2] = 0;
        v4[3] = 0;
        v4[4] = v24;
        v4[5] = v26;
      }

      v10 &= v10 - 1;
      swift_task_create();

      v7 = v37;
      v5 = v38;
      v11 = v36;
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v5, a2, a3, a4);
      }

      if (v12 >= v11)
      {
        break;
      }

      v10 = v7[v12];
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_11;
      }
    }

    v28 = *(&async function pointer to AsyncStream.Iterator.next(isolation:) + 1);
    v29 = swift_task_alloc();
    v4[16] = v29;
    *v29 = v4;
    v29[1] = sub_10000AA48;
    v30 = v4[15];
    a4 = v4[13];
    v5 = v4 + 6;
    a2 = 0;
    a3 = 0;

    return AsyncStream.Iterator.next(isolation:)(v5, a2, a3, a4);
  }

  else
  {
    v31 = v4[12];
    v33 = v4[8];
    v32 = v4[9];
    (*(v4[14] + 8))(v4[15], v4[13]);

    v34 = v4[1];

    return v34();
  }
}

uint64_t sub_10000AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000AF54, 0, 0);
}

uint64_t sub_10000AF54()
{
  sub_10000D53C(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10000AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100009F9C(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000DA6C(v11, &qword_10001DF68, &qword_100010888);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100009F9C(a3, v23 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000DA6C(v10, &qword_10001DF68, &qword_100010888);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000B564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000B660, 0, 0);
}

uint64_t sub_10000B660()
{
  v1 = *(v0 + 88);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10000B72C;
  v3 = *(v0 + 88);

  return sub_10000BF88(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_10000B72C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10000BA10;
  }

  else
  {
    v6 = sub_10000B89C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000B89C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  v8[5] = v4;
  sub_10000AFB4(0, 0, v2, &unk_100010988, v8);

  swift_beginAccess();

  sub_10000BDBC(0, v5, v4);
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000BA10()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_10000BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(sub_10000854C(&qword_10001DFC0, &qword_100010990) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000BB5C, v8, v7);
}

uint64_t sub_10000BB5C()
{
  v1 = v0[10];

  type metadata accessor for TTSSettings();
  static TTSSettings.shared.getter();
  v2 = dispatch thunk of TTSSettings.speechTraceClients.getter();

  if (*(v2 + 16) && (v3 = sub_10000C440(v0[6], v0[7]), (v4 & 1) != 0))
  {
    v5 = v3;
    v6 = v0[8];
    v7 = v0[9];
    v18 = v0[6];
    v19 = v0[7];
    v8 = *(v2 + 56);
    v9 = type metadata accessor for TTSSettings.SpeechTracingClient();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, v8 + *(v10 + 72) * v5, v9);

    (*(v10 + 56))(v7, 0, 1, v9);
    sub_10000DA6C(v7, &qword_10001DFC0, &qword_100010990);
    static TTSSettings.shared.getter();
    v11 = dispatch thunk of TTSSettings.speechTraceClients.modify();
    sub_10000C570(v18, v19, v6);
    sub_10000DA6C(v6, &qword_10001DFC0, &qword_100010990);
    v11(v0 + 2, 0);
  }

  else
  {
    v12 = v0[9];

    v13 = type metadata accessor for TTSSettings.SpeechTracingClient();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_10000DA6C(v12, &qword_10001DFC0, &qword_100010990);
  }

  v15 = v0[8];
  v14 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10000BDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10000CD24(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10000C440(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10000CEA0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_10000C988(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_10000BEB4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v7 = a3;
    sub_10000D53C(v4, v6);
  }
}

id TTSTraceServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSTraceServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000C088, 0, 0);
}

uint64_t sub_10000C088()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10000DACC(&qword_10001DFD0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000DACC(&qword_10001DFD8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10000C218;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10000C218()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10000C3D4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10000C3D4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_10000C440(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000C4B8(a1, a2, v6);
}

unint64_t sub_10000C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000C570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000C440(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000D010();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for TTSSettings.SpeechTracingClient();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_10000CB38(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for TTSSettings.SpeechTracingClient();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10000C6E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000854C(&qword_10001DF70, &unk_1000108F8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000C988(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10000CB38(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for TTSSettings.SpeechTracingClient() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000CD24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C440(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000C6E0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000C440(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000CEA0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_10000CEA0()
{
  v1 = v0;
  sub_10000854C(&qword_10001DF70, &unk_1000108F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10000D010()
{
  v1 = v0;
  v36 = type metadata accessor for TTSSettings.SpeechTracingClient();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000854C(&qword_10001DFC8, &qword_100010998);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10000D290()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A358;

  return sub_10000A7C0(a1, v4, v5, v6);
}

uint64_t sub_10000D384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A358;

  return sub_10000AF34(a1, v4, v5, v6, v7);
}

uint64_t sub_10000D44C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D484(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A358;

  return sub_100009A1C(a1, v5);
}

void sub_10000D53C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v25 - v5;
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static TTSTraceServer.shared;
  v8 = OBJC_IVAR____TtC9axassetsd14TTSTraceServer_clientTimeoutTasks;
  swift_beginAccess();
  v9 = *&v7[v8];
  v10 = *(v9 + 16);
  v11 = v7;
  if (v10)
  {

    v12 = sub_10000C440(a1, a2);
    if (v13)
    {
      v14 = *(*(v9 + 56) + 8 * v12);

      sub_10000854C(&qword_10001DFB8, &qword_100010970);
      Task.cancel()();
    }

    else
    {
    }
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v11;
  v17 = v11;

  v18 = sub_10000B2A4(0, 0, v6, &unk_100010968, v16);
  swift_beginAccess();
  v19 = *&v7[v8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *&v7[v8];
  *&v7[v8] = 0x8000000000000000;
  sub_10000CD24(v18, a1, a2, isUniquelyReferenced_nonNull_native);
  *&v7[v8] = v25;
  swift_endAccess();
  v21 = CFNotificationCenterGetDarwinNotifyCenter();
  v22 = String._bridgeToObjectiveC()();
  CFNotificationCenterRemoveObserver(v21, 0, v22, 0);

  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  v24 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v23, 0, sub_10000BEB4, v24, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_10000D848()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000966C;

  return sub_10000B564(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000D960(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10000D9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000966C;

  return sub_10000BA80(a1, v4, v5, v7, v6);
}

uint64_t sub_10000DA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000854C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DACC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000DB1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "task [%@] being asked to complete, but is already fiinished!", &v2, 0xCu);
}

uint64_t sub_10000DB94()
{
  dlerror();
  v0 = abort_report_np();
  return sub_10000DBB8(v0, v1, v2);
}

void sub_10000DBB8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "XPC Activity handler called with unexpected state. %@. Asset:%@", &v4, 0x16u);
}

void sub_10000DC44(void *a1, uint64_t a2, NSObject *a3)
{
  v5[0] = 67109378;
  v5[1] = [a1 processIdentifier];
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Rejecting connecting client with pid:(%d) appID:(%@). Missing required entitlement", v5, 0x12u);
}

void sub_10000DCF4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXATM: Active reason already exists for adding: '%@'. This will almost certainly lead to unwanted os_transaction problems.", &v2, 0xCu);
}

void sub_10000DD6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXATM: Active reason does not exist for removal: '%@'. This will almost certainly lead to unwanted os_transaction problems", &v2, 0xCu);
}

void sub_10000DDE4(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000803C();
  sub_100008054(&_mh_execute_header, v3, v4, "%@: Could not refresh assets: %@", v5, v6, v7, v8, v9);
}

void sub_10000DE78(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000803C();
  sub_100008054(&_mh_execute_header, v3, v4, "%@: Could not purge assets: %@", v5, v6, v7, v8, v9);
}

void sub_10000DF50(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000803C();
  sub_100008054(&_mh_execute_header, v3, v4, "%@: Could not kick off asset downloads: %@", v5, v6, v7, v8, v9);
}