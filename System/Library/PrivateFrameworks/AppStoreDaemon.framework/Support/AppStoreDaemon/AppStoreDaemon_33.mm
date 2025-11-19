void sub_10037EDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037EE04(uint64_t a1, int a2, void *a3, unint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 40))
  {
    v12 = ASDLogHandleForCategory();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v22 = v20;
        if (WeakRetained)
        {
          Property = objc_getProperty(WeakRetained, v21, 122, 1);
        }

        else
        {
          Property = 0;
        }

        v24 = Property;
        v25 = *(a1 + 32);
        *buf = 138544130;
        v29 = v20;
        v30 = 2114;
        v31 = v24;
        v32 = 2114;
        v33 = v25;
        v34 = 2114;
        v35 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Complete for clientID: %{public}@ with error: %{public}@", buf, 0x2Au);
      }

      v14 = ASDErrorWithSafeUserInfo();
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = v26;
        if (WeakRetained)
        {
          v16 = objc_getProperty(WeakRetained, v15, 122, 1);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        v18 = *(a1 + 32);
        v19 = sub_1002C69B4(a4);
        *buf = 138544386;
        v29 = v26;
        v30 = 2114;
        v31 = v17;
        v32 = 2114;
        v33 = v18;
        v34 = 2114;
        v35 = v19;
        v36 = 1024;
        v37 = a2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Complete for clientID: %{public}@ with changeType: %{public}@  success: %{BOOL}d", buf, 0x30u);
      }

      v14 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void *sub_10037F0E4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = StoreSinfArray;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

id sub_10037F164()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037F208;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAD40 != -1)
  {
    dispatch_once(&qword_1005AAD40, block);
  }

  v0 = qword_1005AAD38;

  return v0;
}

void sub_10037F208()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1005AAD38;
  qword_1005AAD38 = v0;
}

id sub_10037F344(id result)
{
  if (result)
  {
    v1 = +[UMUserManager sharedManager];
    v2 = [v1 isMultiUser];

    return v2;
  }

  return result;
}

void sub_10037F38C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  ASDSetIsDaemon();
  sub_10029BF9C(Storage, @"com.apple.appstored");
  v2 = objc_alloc_init(ASDLogFileOptions);
  [v2 setLogFileBaseName:@"appstored"];
  v3 = MGGetBoolAnswer();
  v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
  v5 = [v4 stringByAppendingPathComponent:@"Logs"];

  if (v3)
  {
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.appstored"];
    [v2 setLogDirectoryPath:v6];
  }

  else
  {
    v6 = [v5 stringByAppendingPathComponent:@"CrashReporter"];
    v7 = [v6 stringByAppendingPathComponent:@"com.apple.appstored"];
    [v2 setLogDirectoryPath:v7];
  }

  ASDDebugSetFileLoggingOptions();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v170 = 136315394;
    v171 = "Oct 22 2025";
    v172 = 2080;
    v173 = "22:45:30";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting appstored (Built: %s %s)", &v170, 0x16u);
  }

  v9 = sub_1003BBF50();
  v10 = [v9 isHRNMode];

  if ((v10 & 1) == 0)
  {
    v11 = +[BagService appstoredService];
    [v11 warmUpCache];
  }

  v12 = sub_1002DEAF8();
  v13 = ASDLogHandleForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Daemon] Migrations needed", &v170, 2u);
    }

    v15 = sub_1002DE264();
  }

  else
  {
    if (v14)
    {
      v16 = sub_1003D684C();
      v170 = 138543362;
      v171 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Daemon] No migration required for build: %{public}@", &v170, 0xCu);
    }
  }

  [AMSEphemeralDefaults setHARLoggingItemLimit:200];
  [AMSMetrics setFlushDelayEnabled:1];
  if (sub_1003D3E2C(AppDefaultsManager, @"EnablePurchaseAccountFallback", 0))
  {
    [AMSEphemeralDefaults setPurchaseAccountFallback:1];
  }

  v17 = sub_1003710C0();
  sub_10037120C(v17);

  v18 = sub_1003BBF50();
  v19 = [v18 isHRNMode];

  if (v19)
  {
    sub_100380B10(a1);
  }

  else
  {
    notify_register_dispatch("com.apple.adid.midchangedV1.5", (a1 + 8), *(a1 + 16), &stru_100525640);
    notify_register_dispatch("com.apple.fairplayd.resync-fpkeybag", (a1 + 48), *(a1 + 16), &stru_100525660);
    v20 = sub_1001DA8BC();
    [_TtC9appstored42TestFlightExtensionSyncActivityManagerObjC bootstrapWithCompletionHandler:&stru_1005255E0];
    v21 = sub_1003DC0F4();
    v22 = sub_1003DC770(v21, &byte_1005AAD30);
    v23 = ASDLogHandleForCategory();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v170) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Daemon] Registering for XPC Maintenance Task", &v170, 2u);
      }

      xpc_activity_register("com.apple.ondemandd.PeriodicLaunchServicesSyncActivity", XPC_ACTIVITY_CHECK_IN, &stru_100525CE0);
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v170) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Daemon] Registering for XPC Data Migration Event", &v170, 2u);
      }

      v26 = +[NSNotificationCenter defaultCenter];
      [v26 addObserver:a1 selector:"_handleMigrationDidFinishNotification:" name:@"com.apple.datamigrator.migrationDidFinish" object:0];

      v27 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v170) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Daemon] Initializing ODRManager", &v170, 2u);
      }

      v28 = sub_100220330();
      v29 = sub_1003F281C();
      sub_1003F5048(v29);

      v30 = objc_opt_new();
      v31 = *(a1 + 64);
      *(a1 + 64) = v30;

      v32 = sub_100380C20(@"com.apple.ondemandd.appreview", *(a1 + 64));
      v33 = *(a1 + 72);
      *(a1 + 72) = v32;

      v34 = objc_opt_new();
      v35 = *(a1 + 80);
      *(a1 + 80) = v34;

      v36 = sub_100380C20(@"com.apple.ondemandd.odrctl", *(a1 + 80));
      v37 = *(a1 + 88);
      *(a1 + 88) = v36;

      v38 = objc_opt_new();
      v39 = *(a1 + 96);
      *(a1 + 96) = v38;

      v40 = sub_100380C20(@"com.apple.ondemandd.devtools", *(a1 + 96));
      v41 = *(a1 + 104);
      *(a1 + 104) = v40;

      sub_100380B10(a1);
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v170) = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Daemon] Failed to initialize ODR library paths", &v170, 2u);
      }
    }

    sub_1003C9768();
    v42 = sub_1001DD6F8();
    v43 = sub_1002EDEC8();
    v44 = sub_1001DFF60();
    v45 = dispatch_get_global_queue(21, 0);
    dispatch_async(v45, &stru_100525CC0);
  }

  notify_post("com.apple.appstored.daemon.launched");
  v46 = objc_alloc_init(LaunchServicesObserver);
  v47 = *(a1 + 56);
  *(a1 + 56) = v46;

  v48 = objc_alloc_init(CleanupManager);
  sub_1002CDE64(v48);
  v49 = sub_1003E9190();
  v50 = sub_1003FACA0();
  sub_1003FAE3C(v50);

  v51 = sub_1002C0D84();
  sub_1002C13BC(v51, 8);

  v52 = sub_1002EB36C();
  v53 = objc_alloc_init(JobManagerListener);
  v54 = *(a1 + 32);
  *(a1 + 32) = v53;

  v55 = sub_100380C20(@"com.apple.appstored.xpc.jobmanager", *(a1 + 32));
  v56 = *(a1 + 40);
  *(a1 + 40) = v55;

  v57 = objc_opt_new();
  v58 = *(a1 + 152);
  *(a1 + 152) = v57;

  v59 = objc_opt_new();
  v60 = *(a1 + 184);
  *(a1 + 184) = v59;

  v61 = sub_100380C20(@"com.apple.appstored.xpc.updates", *(a1 + 184));
  v62 = *(a1 + 176);
  *(a1 + 176) = v61;

  v63 = objc_opt_new();
  v64 = *(a1 + 200);
  *(a1 + 200) = v63;

  v65 = sub_100380C20(@"com.apple.appstored.xpc.storequeue", *(a1 + 200));
  v66 = *(a1 + 192);
  *(a1 + 192) = v65;

  v67 = objc_opt_new();
  v68 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v170) = 0;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Diagnostic service", &v170, 2u);
  }

  v69 = @"Diagnostic";
  if (v67)
  {
    sub_10023B09C(v67, v69, 0);
    objc_setProperty_atomic_copy(v67, v70, &stru_1005256A0, 16);
  }

  else
  {
  }

  v71 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v170) = 0;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Installation service", &v170, 2u);
  }

  v72 = sub_1001F6394();
  v73 = @"Install";
  if (v67)
  {
    sub_10023B66C(v67, v73, 0);
    objc_setProperty_atomic_copy(v67, v74, &stru_1005256E0, 72);
  }

  else
  {
  }

  v75 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v170) = 0;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Library service", &v170, 2u);
  }

  v76 = @"Library";
  if (v67)
  {
    sub_10023B9EC(v67, v76, 0);
    objc_setProperty_atomic_copy(v67, v77, &stru_100525720, 104);
  }

  else
  {
  }

  v78 = sub_10038CA18();
  v79 = sub_1003BBF50();
  if (![v79 isHRNMode])
  {

    goto LABEL_51;
  }

  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
LABEL_51:
    v81 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Purchase service", &v170, 2u);
    }

    v82 = @"Purchase";
    if (v67)
    {
      sub_10023BE9C(v67, v82, 0);
      objc_setProperty_atomic_copy(v67, v83, &stru_100525760, 152);
    }

    else
    {
    }

    v84 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Purchase History service", &v170, 2u);
    }

    v85 = @"PurchaseHistory";
    if (v67)
    {
      sub_10023BDBC(v67, v85, 0);
      objc_setProperty_atomic_copy(v67, v86, &stru_1005257A0, 144);
    }

    else
    {
    }
  }

  v87 = sub_1003BBF50();
  v88 = [v87 isHRNMode];

  if ((v88 & 1) == 0)
  {
    v89 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Clip service", &v170, 2u);
    }

    v90 = @"Clip";
    if (v67)
    {
      sub_10023B33C(v67, v90, 0);
      objc_setProperty_atomic_copy(v67, v91, &stru_1005257E0, 40);
    }

    else
    {
    }

    v92 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting AppStore service", &v170, 2u);
    }

    v93 = @"AppStore";
    if (v67)
    {
      sub_10023AFBC(v67, v93, 0);
      objc_setProperty_atomic_copy(v67, v94, &stru_100525820, 8);
    }

    else
    {
    }

    v95 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting FairPlay service", &v170, 2u);
    }

    v96 = +[_TtC9appstored15FairPlayService entitlement];
    if (v67)
    {
      sub_10023B4FC(v67, v96, 0);
      objc_setProperty_atomic_copy(v67, v97, &stru_100525860, 56);
    }

    else
    {
    }

    v98 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting IAP Info service", &v170, 2u);
    }

    v99 = @"IAPHistory";
    v100 = @"com.apple.appstored.iap-info";
    if (v67)
    {
      sub_10023B58C(v67, v99, v100);
      objc_setProperty_atomic_copy(v67, v101, &stru_1005258A0, 64);
    }

    else
    {
    }

    v102 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Install Attribution service", &v170, 2u);
    }

    v103 = @"InstallAttribution";
    if (v67)
    {
      sub_10023B74C(v67, v103, 0);
      objc_setProperty_atomic_copy(v67, v104, &stru_1005258E0, 80);
    }

    else
    {
    }

    v105 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Install Web Attribution service", &v170, 2u);
    }

    v106 = +[_TtC9appstored28InstallWebAttributionService entitlement];
    if (v67)
    {
      sub_10023B82C(v67, v106, 0);
      objc_setProperty_atomic_copy(v67, v107, &stru_100525920, 88);
    }

    else
    {
    }

    v108 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting SKAN Interop service", &v170, 2u);
    }

    v109 = +[_TtC9appstored26SKANInteropProviderService entitlement];
    if (v67)
    {
      sub_10023B90C(v67, v109, 0);
      objc_setProperty_atomic_copy(v67, v110, &stru_100525960, 96);
    }

    else
    {
    }

    v111 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Metrics service", &v170, 2u);
    }

    v112 = @"AppMetrics";
    if (v67)
    {
      sub_10023BACC(v67, v112, 0);
      objc_setProperty_atomic_copy(v67, v113, &stru_1005259A0, 112);
    }

    else
    {
    }

    v114 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Repair service", &v170, 2u);
    }

    v115 = @"Repair";
    if (v67)
    {
      sub_10023BF7C(v67, v115, 0);
      objc_setProperty_atomic_copy(v67, v116, &stru_1005259E0, 160);
    }

    else
    {
    }

    v117 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Restore service", &v170, 2u);
    }

    v118 = @"Restore";
    if (v67)
    {
      sub_10023C05C(v67, v118, 0);
      objc_setProperty_atomic_copy(v67, v119, &stru_100525A20, 168);
    }

    else
    {
    }

    v120 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Skanner service", &v170, 2u);
    }

    v121 = +[_TtC9appstored14SkannerService entitlement];
    if (v67)
    {
      sub_10023C13C(v67, v121, 0);
      objc_setProperty_atomic_copy(v67, v122, &stru_100525A60, 176);
    }

    else
    {
    }

    v123 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting StoreKit External Notification service", &v170, 2u);
    }

    v124 = @"StoreKitExternalNotification";
    if (v67)
    {
      sub_10023C21C(v67, v124, 0);
      objc_setProperty_atomic_copy(v67, v125, &stru_100525AA0, 184);
    }

    else
    {
    }

    v126 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Update service", &v170, 2u);
    }

    v127 = @"Update";
    if (v67)
    {
      sub_10023C3DC(v67, v127, 0);
      objc_setProperty_atomic_copy(v67, v128, &stru_100525AE0, 200);
    }

    else
    {
    }

    v129 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Personalization service", &v170, 2u);
    }

    v130 = @"Personalization";
    if (v67)
    {
      sub_10023BCDC(v67, v130, 0);
      objc_setProperty_atomic_copy(v67, v131, &stru_100525B20, 136);
    }

    else
    {
    }

    v132 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Crossfire service", &v170, 2u);
    }

    v133 = @"Crossfire";
    if (v67)
    {
      sub_10023B41C(v67, v133, 0);
      objc_setProperty_atomic_copy(v67, v134, &stru_100525B60, 48);
    }

    else
    {
    }

    v135 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Ocelot service", &v170, 2u);
    }

    v136 = @"Ocelot";
    if (v67)
    {
      sub_10023BBFC(v67, v136, 0);
      objc_setProperty_atomic_copy(v67, v137, &stru_100525BA0, 128);
    }

    else
    {
    }

    v138 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting TestFlightFeedback service", &v170, 2u);
    }

    v139 = @"TestFlightFeedback";
    if (v67)
    {
      sub_10023C2FC(v67, v139, 0);
      objc_setProperty_atomic_copy(v67, v140, &stru_100525BE0, 192);
    }

    else
    {
    }

    v141 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Capabilities service", &v170, 2u);
    }

    v142 = +[_TtC9appstored22AppCapabilitiesService entitlement];
    if (v67)
    {
      sub_10023B17C(v67, v142, 0);
      objc_setProperty_atomic_copy(v67, v143, &stru_100525C20, 24);
    }

    else
    {
    }

    v144 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v170) = 0;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "[Daemon] Starting Background Assets service", &v170, 2u);
    }

    v145 = +[_TtC9appstored23BackgroundAssetsService entitlement];
    if (v67)
    {
      sub_10023B25C(v67, v145, 0);
      objc_setProperty_atomic_copy(v67, v146, &stru_100525C60, 32);
    }

    else
    {
    }
  }

  v147 = sub_10023F308(XPCServiceBroker, v67, ASDServiceDaemonMachPort);
  v148 = *(a1 + 224);
  *(a1 + 224) = v147;

  v149 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 0x10uLL, 0);
  v150 = *(a1 + 24);
  *(a1 + 24) = v149;

  dispatch_source_set_event_handler(*(a1 + 24), &stru_100525600);
  dispatch_resume(*(a1 + 24));
  sub_10020023C();
  v151 = sub_1003BBF50();
  v152 = [v151 isHRNMode];

  if ((v152 & 1) == 0)
  {
    v153 = sub_1002404C0();
    sub_1002457D8(v153);

    v154 = sub_1002856D4();
    v155 = sub_10023A2DC();
    sub_10023A6B8(v155);

    v156 = sub_10021CA38();
    sub_10021DB24(v156, 5, 0, &stru_100525C80);

    v157 = sub_100005CD4();
    v158 = sub_1003FA4F0(XPCRequestToken, 1);
    sub_10034B5E0(v157, v158, &stru_100525CA0);

    v159 = +[SubscriptionEntitlementsCoordinator sharedInstance];
    v160 = sub_1003A4EE0();
    v161 = sub_100405768();
    v162 = sub_10020BE10();
    v163 = sub_1002B5560();
    v164 = sub_100336524();
    v165 = v164;
    if (v164)
    {
      sub_100336A7C(v164, 0, 0);
    }
  }

  v166 = objc_alloc_init(SpotlightIndexMonitor);
  v167 = *(a1 + 240);
  *(a1 + 240) = v166;

  v168 = sub_10035387C();
  sub_100353B48(v168);

  v169 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v170) = 0;
    _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "[Daemon] Startup complete", &v170, 2u);
  }
}

void sub_100380B10(uint64_t a1)
{
  v2 = sub_1003DC0F4();
  v3 = *(a1 + 112);
  *(a1 + 112) = v2;

  v4 = sub_100380C20(@"com.apple.ondemandd.client", *(a1 + 112));
  v5 = *(a1 + 120);
  *(a1 + 120) = v4;

  v6 = objc_opt_new();
  v7 = *(a1 + 128);
  *(a1 + 128) = v6;

  v8 = sub_100380C20(@"com.apple.ondemandd.launchservices", *(a1 + 128));
  v9 = *(a1 + 136);
  *(a1 + 136) = v8;
}

void sub_100380BB0(id a1)
{
  v1 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[Daemon] Received memory process limit warning", v2, 2u);
  }
}

id sub_100380C20(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Daemon] Creating listener for service name: %@", &v7, 0xCu);
  }

  v5 = [[NSXPCListener alloc] initWithMachServiceName:v3];
  [v5 setDelegate:v4];
  [v5 resume];

  return v5;
}

void sub_100380D1C(id a1, int a2)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Daemon] Update MID changed notification", v7, 2u);
  }

  v3 = objc_alloc_init(RefreshMIDBasedAppSINFsTask);
  v4 = sub_100284B90();
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  if (v4)
  {
    [v4[1] addOperations:v5 waitUntilFinished:1];
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Daemon] Update MID changed notification complete", v7, 2u);
  }
}

void sub_100380E68(id a1, int a2)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Daemon][%@] FairPlay sync keybag notification", buf, 0xCu);
  }

  v4 = objc_alloc_init(RefetchKeybag);
  v6 = v4;
  if (v4)
  {
    objc_setProperty_atomic_copy(v4, v5, v2, 32);
    v6->_userInitiated = 0;
  }

  v7 = sub_10020A3C4(v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100380FCC;
  v9[3] = &unk_10051B348;
  v10 = v2;
  v8 = v2;
  [v7 resultWithCompletion:v9];
}

void sub_100380FCC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Daemon][%@] Keybag refresh complete with result: %d (error=%{public}@)", &v8, 0x1Cu);
  }
}

void sub_1003813F0(id a1)
{
  v2 = sub_10029869C();
  v1 = sub_100220330();
  if (v2)
  {
    objc_storeWeak(v2 + 7, v1);
  }
}

void sub_10038146C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Daemon] Running the registered maintenance block", &v8, 2u);
  }

  v3 = [[KeepAlive alloc] initWithName:@"ODR Maintenance"];
  state = xpc_activity_get_state(v2);
  if (!state)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Daemon] XPC Maintenance activity checking in", &v8, 2u);
    }

    v6 = xpc_activity_copy_criteria(v2);
    if (!v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[Daemon] No criteria set, correcting that", &v8, 2u);
      }

      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
      xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[Daemon] Setting the criteria to: %@", &v8, 0xCu);
      }

      xpc_activity_set_criteria(v2, v7);

      v6 = 0;
    }

    goto LABEL_14;
  }

  if (state == 2)
  {
    v5 = sub_1001C13C8();
    sub_1001C14D8(v5);

    v6 = sub_1001C13C8();
    sub_1001C15E8(v6);
LABEL_14:
  }
}

void *sub_100381860(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = CampaignTokens;
    a1 = objc_msgSendSuper2(&v25, "init");
    if (a1)
    {
      if (v3)
      {
        v4 = v3;
        v5 = +[NSMutableArray array];
        v6 = sub_100258DEC(v4);

        v7 = [v6 objectForKeyedSubscript:@"ct"];

        if (v7)
        {
          v8 = [v6 objectForKeyedSubscript:@"ct"];
          v9 = a1[3];
          a1[3] = v8;

          v10 = [v6 objectForKeyedSubscript:@"ct"];
          v11 = [NSString stringWithFormat:@"ct=%@", v10];
          [v5 addObject:v11];
        }

        v12 = [v6 objectForKeyedSubscript:@"pt"];

        if (v12)
        {
          v13 = [v6 objectForKeyedSubscript:@"pt"];
          v14 = a1[4];
          a1[4] = v13;

          v15 = [v6 objectForKeyedSubscript:@"pt"];
          v16 = [NSString stringWithFormat:@"pt=%@", v15];
          [v5 addObject:v16];
        }

        v17 = [v6 objectForKeyedSubscript:@"at"];

        if (v17)
        {
          v18 = [v6 objectForKeyedSubscript:@"at"];
          v19 = a1[1];
          a1[1] = v18;

          v20 = [v6 objectForKeyedSubscript:@"at"];
          v21 = [NSString stringWithFormat:@"at=%@", v20];
          [v5 addObject:v21];
        }

        if ([v5 count])
        {
          v22 = [v5 componentsJoinedByString:@"&"];
          v23 = a1[2];
          a1[2] = v22;
        }
      }
    }
  }

  return a1;
}

id sub_100381B80(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = AppMetadata;
    a1 = objc_msgSendSuper2(&v30, "init");
    if (a1)
    {
      if (v3)
      {
        v4 = [v3[15] platform];
      }

      else
      {
        v4 = 0;
      }

      v5 = [NSNumber numberWithUnsignedInteger:v4];
      sub_10023E000(a1, v5, @"app_platform");

      v6 = sub_1003D0F60(v3);
      sub_10023E000(a1, v6, @"bundle_id");

      v7 = sub_1003D251C(v3);

      if (v7)
      {
        v8 = sub_1003D251C(v3);
        sub_10023E000(a1, v8, @"bundle_version");
      }

      v9 = sub_1003D266C(v3);

      if (v9)
      {
        v10 = sub_1003D266C(v3);
        sub_10023E000(a1, v10, @"item_name");
      }

      v11 = sub_1003D2EF0(v3);

      if (v11)
      {
        v12 = sub_1003D2EF0(v3);
        sub_10023E000(a1, v12, @"cohort");
      }

      if (sub_1003D2F7C(v3) >= 1)
      {
        v13 = [NSNumber numberWithLongLong:sub_1003D2F7C(v3)];
        sub_10023E000(a1, v13, @"evid");
      }

      v14 = [NSNumber numberWithBool:sub_1003D2BDC(v3)];
      sub_10023E000(a1, v14, @"is_arcade");

      if (v3)
      {
        v15 = [v3[15] isBeta];
      }

      else
      {
        v15 = 0;
      }

      v16 = [NSNumber numberWithBool:v15];
      sub_10023E000(a1, v16, @"is_beta");

      v17 = [NSNumber numberWithBool:sub_1003D2404(v3)];
      sub_10023E000(a1, v17, @"is_clip");

      if (sub_1003D2AE4(v3) == 1)
      {
        sub_10023E000(a1, &__kCFBooleanTrue, @"is_system_app");
      }

      v18 = sub_1003D2CD8(v3);
      if (v18)
      {
        v19 = v18;
        v20 = sub_1003D2404(v3);

        if ((v20 & 1) == 0)
        {
          v21 = sub_1003D2CD8(v3);
          sub_10023E000(a1, v21, @"device_vendor_id");
        }
      }

      if (sub_1003D0F1C(v3))
      {
        v22 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v3)];
        sub_10023E000(a1, v22, @"item_id");
      }

      v23 = sub_1003D26A0(v3);

      if (v23)
      {
        v24 = sub_1003D26A0(v3);
        sub_10023E000(a1, v24, @"short_version");
      }

      v25 = sub_1003D2FC0(v3);

      if (v25)
      {
        v26 = sub_1003D2FC0(v3);
        sub_10023E000(a1, v26, @"storefront");
      }

      v27 = sub_1003D26D4(v3);

      if (v27)
      {
        v28 = sub_1003D26D4(v3);
        sub_10023E000(a1, v28, @"vendor_name");
      }
    }
  }

  return a1;
}

id sub_100382084(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1003820BC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"item_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1003820F4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"evid");
    v1 = vars8;
  }

  return a1;
}

id sub_10038212C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"timestamp");
    if (objc_opt_respondsToSelector())
    {
      [v1 doubleValue];
      v2 = [NSDate dateWithTimeIntervalSince1970:?];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v3 = 0;
        goto LABEL_8;
      }

      v2 = v1;
    }

    v3 = v2;
LABEL_8:

    goto LABEL_9;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id sub_1003821D8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"cohort");
    v1 = vars8;
  }

  return a1;
}

id sub_100382668(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"device_vendor_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1003826A0(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_version");
    v1 = vars8;
  }

  return a1;
}

id sub_1003826D8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"item_name");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100382710(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_clip");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_100382758(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_arcade");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_1003827A0(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_beta");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_1003827E8(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_system_app");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

id sub_100382830(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"short_version");
    v1 = vars8;
  }

  return a1;
}

id sub_100382868(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"storefront");
    v1 = vars8;
  }

  return a1;
}

id sub_1003828E4(void *a1)
{
  if (a1)
  {
    v1 = [a1 objectForKeyedSubscript:@"primary_content_hash"];
    v2 = sub_1002402E4(ODRContentHash, v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_100382950(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 objectForKeyedSubscript:@"local_url"];
    if (v2)
    {
      v3 = [NSURL URLWithString:v2];
      v4 = sub_1003828E4(v1);
      v5 = sub_1002403E8(v4);
      v1 = sub_1001FE144(ODRAssetPack, v3, v5);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

char *sub_100382A0C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = HashDigest;
  v3 = objc_msgSendSuper2(&v6, "init");
  v4 = v3;
  if (v3)
  {
    *(v3 + 1) = a2;
    switch(a2)
    {
      case 2:
        CC_SHA256_Init((v3 + 16));
        break;
      case 1:
        CC_SHA1_Init((v3 + 16));
        break;
      case 0:
        CC_MD5_Init((v3 + 16));
        break;
    }
  }

  return v4;
}

id sub_100382AA0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1 == 2)
    {
      v4 = 0u;
      v5 = 0u;
      CC_SHA256_Final(&v4, (a1 + 16));
      v2 = 32;
    }

    else if (v1 == 1)
    {
      v4 = 0uLL;
      LODWORD(v5) = 0;
      CC_SHA1_Final(&v4, (a1 + 16));
      v2 = 20;
    }

    else
    {
      if (v1)
      {
        goto LABEL_9;
      }

      v4 = 0uLL;
      CC_MD5_Final(&v4, (a1 + 16));
      v2 = 16;
    }

    a1 = sub_100382B90(HashDigest, &v4, v2);
  }

LABEL_9:

  return a1;
}

id sub_100382B90(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  objc_opt_self();
  for (i = [[NSMutableString alloc] initWithCapacity:2 * a3]; a3; --a3)
  {
    v6 = *a2++;
    [i appendFormat:@"%02x", v6];
  }

  v7 = [i copy];

  return v7;
}

uint64_t sub_100382C2C(uint64_t result, const void *a2, CC_LONG a3)
{
  if (result)
  {
    v3 = *(result + 8);
    switch(v3)
    {
      case 2:
        return CC_SHA256_Update((result + 16), a2, a3);
      case 1:
        return CC_SHA1_Update((result + 16), a2, a3);
      case 0:
        return CC_MD5_Update((result + 16), a2, a3);
    }
  }

  return result;
}

id sub_100382C64(id result, void *a2)
{
  if (result)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100382CDC;
    v2[3] = &unk_10051DA38;
    v2[4] = result;
    return [a2 enumerateByteRangesUsingBlock:v2];
  }

  return result;
}

uint64_t sub_100382CDC(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (HIDWORD(a4))
  {
    v9 = 0;
    v10 = a4;
    do
    {
      result = sub_100382C2C(*(a1 + 32), &a2[v9], v10);
      v9 += 0xFFFFFFFFLL;
      ++v10;
    }

    while (v9 < a4);
  }

  else
  {
    v7 = *(a1 + 32);

    return sub_100382C2C(v7, a2, a4);
  }

  return result;
}

PurchaseHistoryUpdateRequestContext *sub_100382D88(uint64_t a1, void *a2, int64_t a3, void *a4, void *a5, unint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v13 = a2;
  objc_opt_self();
  v14 = [PurchaseHistoryUpdateRequestContext alloc];
  v15 = v13;
  v16 = v12;
  v17 = v11;
  if (v14)
  {
    v20.receiver = v14;
    v20.super_class = PurchaseHistoryUpdateRequestContext;
    v18 = objc_msgSendSuper2(&v20, "init");
    v14 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_revision, a2);
      v14->_accountID = a3;
      objc_storeStrong(&v14->_requestingAccount, a4);
      objc_storeStrong(&v14->_clientInfo, a5);
      v14->_purchaseHistoryContext = a6;
    }
  }

  return v14;
}

__CFString *sub_100382EEC(uint64_t a1)
{
  if (a1 > 14)
  {
    if (a1 > 39)
    {
      switch(a1)
      {
        case '(':
          v2 = @"Install";

          return v2;
        case '-':
          v2 = @"PostProcess";

          return v2;
        case '2':
          v2 = @"Postamble";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 15:
          v2 = @"Started";

          return v2;
        case 20:
          v2 = @"Preamble";

          return v2;
        case 30:
          v2 = @"Download";

          return v2;
      }
    }

LABEL_52:
    v2 = [NSString stringWithFormat:@"Unknown (%ld)", a1];

    return v2;
  }

  if (a1 > -16)
  {
    switch(a1)
    {
      case -15:
        v2 = @"Policy";

        return v2;
      case -10:
        v2 = @"Paused";

        return v2;
      case 10:
        v2 = @"Waiting";

        return v2;
    }

    goto LABEL_52;
  }

  switch(a1)
  {
    case -40:
      v2 = @"Finished";

      break;
    case -30:
      v2 = @"Canceled";

      break;
    case -20:
      v2 = @"Failed";

      return v2;
    default:
      goto LABEL_52;
  }

  return v2;
}

id sub_1003830D0(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = *(&off_100525D00 + a1);
  }

  return v2;
}

const __CFString *sub_100383140(uint64_t a1)
{
  v1 = @"Unknown compression method.";
  if (!a1)
  {
    v1 = @"Passthrough";
  }

  if (a1 == 1)
  {
    return @"LZMA";
  }

  else
  {
    return v1;
  }
}

__CFString *sub_10038316C(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = -21;
    while (1)
    {
      v4 = (1 << (v3 + 22));
      if ((v4 & a1) != 0)
      {
        break;
      }

LABEL_56:
      if (__CFADD__(v3++, 1))
      {
        v7 = [v2 componentsJoinedByString:{@", "}];

        goto LABEL_60;
      }
    }

    if (v4 > 2047)
    {
      if (v4 < 0x10000)
      {
        if (v4 < 0x2000)
        {
          if (v4 == 2048)
          {
            v5 = @"diagnostics ping";
            goto LABEL_55;
          }

          if (v4 == 4096)
          {
            v5 = @"policy";
            goto LABEL_55;
          }
        }

        else
        {
          switch(v4)
          {
            case 0x2000:
              v5 = @"prioritized";
              goto LABEL_55;
            case 0x4000:
              v5 = @"purchased";
              goto LABEL_55;
            case 0x8000:
              v5 = @"phase reset";
              goto LABEL_55;
          }
        }
      }

      else if (v4 >= 0x80000)
      {
        switch(v4)
        {
          case 0x80000:
            v5 = @"upgrade to interactive";
            goto LABEL_55;
          case 0x100000:
            v5 = @"vpp";
            goto LABEL_55;
          case 0x200000:
            v5 = @"cleanup";
            goto LABEL_55;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x10000:
            v5 = @"resumed installations";
            goto LABEL_55;
          case 0x20000:
            v5 = @"scheduled";
            goto LABEL_55;
          case 0x40000:
            v5 = @"timer";
            goto LABEL_55;
        }
      }
    }

    else if (v4 <= 31)
    {
      if (v4 <= 3)
      {
        v5 = @"none (0)";
        if (!v4)
        {
          goto LABEL_55;
        }

        if (v4 == 2)
        {
          v5 = @"device security";
          goto LABEL_55;
        }
      }

      else
      {
        switch(v4)
        {
          case 4:
            v5 = @"bootstrapped installations";
            goto LABEL_55;
          case 8:
            v5 = @"daemon start";
            goto LABEL_55;
          case 0x10:
            v5 = @"finished installations";
            goto LABEL_55;
        }
      }
    }

    else if (v4 > 255)
    {
      switch(v4)
      {
        case 0x100:
          v5 = @"non ordered restores completed";
          goto LABEL_55;
        case 0x200:
          v5 = @"ordered restores completed";
          goto LABEL_55;
        case 0x400:
          v5 = @"paused installations";
          goto LABEL_55;
      }
    }

    else
    {
      switch(v4)
      {
        case 0x20:
          v5 = @"hydrate job";
          goto LABEL_55;
        case 0x40:
          v5 = @"imported installations";
          goto LABEL_55;
        case 0x80:
          v5 = @"optimal download window reached";
LABEL_55:
          [v2 addObject:v5];

          goto LABEL_56;
      }
    }

    v5 = [NSString stringWithFormat:@"unknown (%lu)", (1 << (v3 + 22))];
    goto LABEL_55;
  }

  v7 = @"none (0)";
LABEL_60:

  return v7;
}

uint64_t sub_100383448()
{
  objc_opt_self();
  if (sub_100383878())
  {
    if (qword_1005AAD60 != -1)
    {
      dispatch_once(&qword_1005AAD60, &stru_100525D40);
    }

    os_unfair_lock_lock(&stru_1005ABBE0);
    if ((byte_1005ABBE4 & 1) == 0)
    {
      byte_1005AAD58 = _os_feature_enabled_impl();
      byte_1005ABBE4 = 1;
    }

    if (byte_1005ABBE5 & 1) != 0 || (byte_1005AAD58)
    {
      goto LABEL_32;
    }

    switch(qword_1005ABBE8)
    {
      case -1:
        v22 = @"DeviceConfigurationFlags";
        v23 = &off_100548250;
        v1 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        if (v1)
        {
          goto LABEL_24;
        }

        break;
      case 0:
        v17 = 0;
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v3 = off_1005AAD68;
        v21 = off_1005AAD68;
        if (!off_1005AAD68)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v27 = sub_100383D10;
          v28 = &unk_10051E318;
          v29 = &v18;
          v4 = sub_100383878();
          v5 = dlsym(v4, "MAECopyActivationRecordWithError");
          *(v29[1] + 24) = v5;
          off_1005AAD68 = *(v29[1] + 24);
          v3 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
        if (!v3)
        {
          dlerror();
          abort_report_np();
          __break(1u);
        }

        v1 = v3(&v17);
        v6 = v17;
        if (!v1)
        {
          v7 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v6;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[HRNSupport] Failed to copy activation record. Error: %{public}@", &buf, 0xCu);
          }
        }

LABEL_12:
        if (!v1)
        {
          break;
        }

LABEL_24:
        byte_1005ABBE5 = 1;
        v8 = [v1 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 integerValue];
          byte_1005AAD58 = (v10 & 0x21) == 33;
          if ((v10 & 0x21) != 0x21)
          {
LABEL_31:

            break;
          }

          v11 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = objc_opt_class();
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v12;
            v13 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device supports HRN", &buf, 0xCu);
          }
        }

        else
        {
          v11 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v14;
            v15 = v14;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] No cloud configuration flags found in activation record", &buf, 0xCu);
          }
        }

        goto LABEL_31;
      case 1:
        v24 = @"DeviceConfigurationFlags";
        v0 = [NSNumber numberWithUnsignedInteger:33];
        v25 = v0;
        v1 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

        goto LABEL_12;
    }

LABEL_32:
    os_unfair_lock_unlock(&stru_1005ABBE0);
    v2 = byte_1005AAD58;
    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

void sub_100383858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100383878()
{
  v3[0] = 0;
  if (!qword_1005AAD48)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1003839DC;
    v3[4] = &unk_10051BD00;
    v3[5] = v3;
    v4 = off_100525D28;
    v5 = 0;
    qword_1005AAD48 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_1005AAD48;
    if (qword_1005AAD48)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_1005AAD48;
}

void sub_100383988()
{
  objc_opt_self();
  os_unfair_lock_lock(&stru_1005ABBE0);
  byte_1005ABBE4 = 0;
  byte_1005ABBE5 = 0;

  os_unfair_lock_unlock(&stru_1005ABBE0);
}

uint64_t sub_1003839DC()
{
  result = _sl_dlopen();
  qword_1005AAD48 = result;
  return result;
}

void sub_100383A50(id a1)
{
  v1 = sub_100383B34();

  if (v1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = sub_100383B34();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100383C48, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[HRNSupport] Unable to register for activation state changed notification", buf, 2u);
    }
  }
}

id sub_100383B34()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1005AAD50;
  v8 = qword_1005AAD50;
  if (!qword_1005AAD50)
  {
    v1 = sub_100383878();
    v6[3] = dlsym(v1, "kNotificationActivationStateChanged");
    qword_1005AAD50 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_100383C48()
{
  v0 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "[HRNSupport] Activation state changed", v1, 2u);
  }

  sub_100383988();
}

void *sub_100383CC0(uint64_t a1)
{
  v2 = sub_100383878();
  result = dlsym(v2, "kNotificationActivationStateChanged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005AAD50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100383D10(uint64_t a1)
{
  v2 = sub_100383878();
  result = dlsym(v2, "MAECopyActivationRecordWithError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1005AAD68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100383D60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  objc_opt_self();
  v8 = objc_opt_new();
  v9 = v8[5];
  v8[5] = v6;
  v10 = v6;

  v8[6] = a2;
  v11 = [v7 copy];

  v12 = v8[7];
  v8[7] = v11;

  return v8;
}

void sub_1003840D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003840F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10038410C(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void *sub_1003841D0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = v6[5];
  v6[5] = v5;
  v8 = v5;

  v9 = v6[6];
  v6[6] = v4;

  return v6;
}

void sub_100384790(uint64_t a1, void *a2)
{
  v15 = a2;
  if (sub_1003D0F1C(v15))
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v15)];
    LOBYTE(v3) = [v3 containsObject:v4];

    if ((v3 & 1) == 0)
    {
      if (v15)
      {
        if (([v15[15] applicationHasMIDBasedSINF] & 1) == 0 && (objc_msgSend(v15[15], "isBeta") & 1) == 0 && (objc_msgSend(v15[15], "isProfileValidated") & 1) == 0 && (sub_1003D2404(v15) & 1) == 0 && (objc_msgSend(v15[15], "isPlaceholder") & 1) == 0 && ((objc_msgSend(v15[15], "isPlaceholder") & 1) != 0 || (objc_msgSend(v15[15], "applicationMissingRequiredSINF") & 1) == 0))
        {
LABEL_11:
          v5 = sub_1003D2B98(v15);
          if (v5)
          {
            v6 = [*(a1 + 40) containsObject:v5];
            v7 = v6;
            v8 = (a1 + 48);
            if (!*(a1 + 48))
            {
              if (!v6)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }
          }

          else
          {
            v8 = (a1 + 48);
            if (!*(a1 + 48))
            {
LABEL_21:

              goto LABEL_22;
            }

            v7 = 0;
          }

          v9 = sub_1003D248C(v15);
          v10 = [NSString stringWithFormat:@"%@/Info.plist", v9];
          v11 = [NSDictionary dictionaryWithContentsOfFile:v10];

          v12 = [v11 objectForKeyedSubscript:@"ITSDRMScheme"];
          if (v12)
          {
            v13 = v12;
            v7 |= ~[v12 isEqualToString:*v8];
          }

          if ((v7 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          v14 = sub_100307D1C([UpdatableApp alloc], v15, &off_100548268);
          [*(a1 + 56) addObject:v14];

          goto LABEL_21;
        }
      }

      else if ((sub_1003D2404(0) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_22:
}

void sub_1003849C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountWithDSID:v3];

  if (v5)
  {
    v6 = sub_1002AF17C([UpdatesTask alloc], v5, *(a1 + 32), 1);
    v8 = v6;
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v7, *(*(a1 + 40) + 40), 64);
    }

    v9 = *(a1 + 40);
    v21 = 0;
    v10 = [v9 runSubTask:v8 returningError:&v21];
    v11 = v21;
    if (v10)
    {
      if (v8)
      {
        v12 = v8[9];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = sub_1003B4A00(v13);

      if ([v14 count])
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*(a1 + 40) + 40);
          v17 = [v14 count];
          v18 = [v5 ams_DSID];
          *buf = 138412802;
          v23 = v16;
          v24 = 2048;
          v25 = v17;
          v26 = 2114;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@]: Found %lu forced updates for account: %{public}@", buf, 0x20u);
        }

        [*(a1 + 48) addObjectsFromArray:v14];
      }
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 40) + 40);
        v20 = [v5 ams_DSID];
        *buf = 138412802;
        v23 = v19;
        v24 = 2114;
        v25 = v20;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: Failed to fetch forced updates for account: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }
}

id sub_100384CC4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 isUpdate];
  v4 = [v2 name];
  v5 = [v2 bytes];
  [v2 isRemaining];
  v6 = [v2 logKey];
  v7 = v4;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(AMSDialogRequest);
  v10 = [v6 description];

  [v9 setLogKey:v10];
  v11 = ASDLocalizedString();
  [v9 setTitle:v11];

  if (v3)
  {
    v12 = ASDLocalizedString();
    if (v5)
    {
      v13 = [_TtC9appstored17EvaluatorDownload formatSize:v5];
      v14 = [NSString stringWithFormat:v12, v7, v13];

      [v9 setMessage:v14];
    }

    else
    {
      v13 = [NSString stringWithFormat:v12, v7];

      [v9 setMessage:v13];
    }

    v16 = @"constrainedNetworkUpdate";
  }

  else
  {
    v12 = ASDLocalizedString();
    if (v5)
    {
      v13 = [_TtC9appstored17EvaluatorDownload formatSize:v5];
      v15 = [NSString stringWithFormat:v12, v7, v13];

      [v9 setMessage:v15];
    }

    else
    {
      v13 = [NSString stringWithFormat:v12, v7];

      [v9 setMessage:v13];
    }

    v16 = @"constrainedNetworkDownload";
  }

  v17 = ASDLocalizedString();
  v18 = sub_100385170(v8, v17);
  [v9 setButtonActions:v18];

  v19 = [v9 buttonActions];
  v20 = [v19 lastObject];
  [v9 setDefaultAction:v20];

  sub_100406DAC(v9, v16);

  return v9;
}

id sub_100384FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = objc_alloc_init(AMSDialogRequest);
  v7 = [v4 description];

  [v6 setLogKey:v7];
  v8 = ASDLocalizedString();
  [v6 setTitle:v8];

  v9 = ASDLocalizedString();
  v10 = [_TtC9appstored17EvaluatorDownload formatSize:a2];
  v11 = [NSString stringWithFormat:v9, v10];
  [v6 setMessage:v11];

  v12 = ASDLocalizedString();
  v13 = sub_100385170(v5, v12);
  [v6 setButtonActions:v13];

  v14 = [v6 buttonActions];
  v15 = [v14 lastObject];
  [v6 setDefaultAction:v15];

  sub_100406DAC(v6, @"constrainedNetworkUpdates");

  return v6;
}

id sub_100385170(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(AMSDialogAction);
  [v3 setTitle:v2];

  [v3 setIdentifier:@"LowDataModePromptActionDownload"];
  sub_10022DA8C(v3, @"download");
  v4 = objc_alloc_init(AMSDialogAction);
  v5 = ASDLocalizedString();
  [v4 setTitle:v5];

  [v4 setIdentifier:@"LowDataModePromptActionCancel"];
  [v4 setStyle:2];
  sub_10022DA8C(v4, @"cancel");
  v8[0] = v4;
  v8[1] = v3;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

id *sub_1003852B0(id *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v137.receiver = a1;
    v137.super_class = StoreItem;
    a1 = objc_msgSendSuper2(&v137, "init");
    if (a1)
    {
      v6 = v5;
      v7 = objc_alloc_init(NSMutableArray);
      v8 = objc_alloc_init(NSMutableArray);
      v9 = sub_100237D58(v6, @"thinned-app");
      *(a1 + 21) = a3;
      *(a1 + 23) = v9 == 0;
      *(a1 + 22) = [v9 count] != 0;
      if (v9 && (a3 & 1) == 0)
      {
        v10 = sub_1002E20A4(StoreAsset, v9);
        [v7 addObject:v10];

        v11 = sub_1002E257C(StoreAsset, v9);
        [v8 addObjectsFromArray:v11];
      }

      v12 = sub_1002E20A4(StoreAsset, v6);
      [v7 addObject:v12];
      v13 = sub_1002E257C(StoreAsset, v6);
      [v8 addObjectsFromArray:v13];

      v14 = sub_1002E2678(StoreAsset, v7, a3);
      v15 = a1[9];
      a1[9] = v14;

      v16 = [v8 copy];
      v17 = a1[8];
      a1[8] = v16;

      if (os_variant_has_internal_content())
      {
        v20 = sub_10023814C(v6, @"metadata.softwareVersionBundleId");
        if (v12)
        {
          Property = objc_getProperty(v12, v19, 32, 1);
        }

        else
        {
          Property = 0;
        }

        v22 = Property;
        v24 = [BAApplicationConfigurationOverrides asd_overriddenDictionaryForBundleIdentifier:v20 startingDictionary:v22];
        if (v12)
        {
          objc_setProperty_atomic_copy(v12, v23, v24, 32);
        }
      }

      v136 = v5;
      if (v12)
      {
        v26 = objc_getProperty(v12, v18, 32, 1);
        if (v26)
        {
          v135 = v7;
          v27 = a1[9];
          if (v27)
          {
            objc_setProperty_atomic_copy(v27, v25, v26, 32);
          }

          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v28 = a1[8];
          v29 = [v28 countByEnumeratingWithState:&v138 objects:buf count:16];
          if (v29)
          {
            v31 = v29;
            v32 = *v139;
            do
            {
              v33 = 0;
              do
              {
                if (*v139 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                v34 = *(*(&v138 + 1) + 8 * v33);
                if (v34)
                {
                  objc_setProperty_atomic_copy(v34, v30, v26, 32);
                }

                v33 = v33 + 1;
              }

              while (v31 != v33);
              v31 = [v28 countByEnumeratingWithState:&v138 objects:buf count:16];
            }

            while (v31);
          }

          v7 = v135;
        }
      }

      else
      {
        v26 = 0;
      }

      v35 = v6;
      v36 = sub_100237D58(v35, @"metadata");
      v37 = sub_1002380D8(v36, @"alternateIconName");
      v38 = a1[3];
      a1[3] = v37;

      if (a1[3])
      {
        v39 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v134 = a1[3];
          *buf = 138412290;
          v143 = v134;
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "(StoreItem) Received value for 'alternateIconName': %@", buf, 0xCu);
        }
      }

      if (v36 && sub_1002378BC(v36, @"isCustomBrowserEngineApp", 0))
      {
        v40 = a1[4];
        a1[4] = &off_100549608;
      }

      v41 = sub_1002380D8(v36, @"artistName");
      v42 = a1[6];
      a1[6] = v41;

      v43 = sub_1002380D8(v36, @"kind");
      v44 = a1[29];
      a1[29] = v43;

      v45 = sub_10023790C(v36, @"itemId");
      v46 = a1[27];
      a1[27] = v45;

      v47 = sub_1002380D8(v36, @"itemName");
      v48 = a1[28];
      a1[28] = v47;

      v49 = sub_10023790C(v36, @"softwareVersionExternalIdentifier");
      v50 = a1[18];
      a1[18] = v49;

      v51 = [NSString stringWithFormat:@"%@.%@.%@", @"artwork-urls", @"default", @"url"];
      v52 = sub_10023814C(v35, v51);
      v53 = a1[7];
      a1[7] = v52;

      if (!a1[7])
      {
        v54 = sub_1002380D8(v35, @"artworkURL");
        v55 = a1[7];
        a1[7] = v54;
      }

      v56 = sub_1002380D8(v36, @"softwareVersionBundleId");
      v57 = a1[12];
      a1[12] = v56;

      v58 = sub_1002380D8(v36, @"bundleDisplayName");
      v59 = a1[11];
      a1[11] = v58;

      v60 = sub_1002380D8(v36, @"bundleShortVersionString");
      v61 = a1[13];
      a1[13] = v60;

      v62 = sub_1002380D8(v36, @"bundleVersion");
      v63 = a1[14];
      a1[14] = v62;

      if (v36)
      {
        *(a1 + 11) = sub_1002378BC(v36, @"hasMessagesExtension", 0);
        v64 = sub_1002378BC(v36, @"launchProhibited", 0);
      }

      else
      {
        v64 = 0;
        *(a1 + 11) = 0;
      }

      *(a1 + 18) = v64;
      v65 = sub_1002380D8(v36, @"messagesIconUrl");
      v66 = a1[30];
      a1[30] = v65;

      v67 = sub_10023790C(v36, @"hasOrEverHasHadIAP");
      v68 = a1[22];
      a1[22] = v67;

      if (v36)
      {
        *(a1 + 12) = sub_1002378BC(v36, @"appleWatchEnabled", 0);
        *(a1 + 13) = sub_1002378BC(v36, @"WKRunsIndependentlyOfCompanionApp", 0);
        v69 = sub_1002378BC(v36, @"WKWatchOnly", 0);
      }

      else
      {
        v69 = 0;
        *(a1 + 6) = 0;
      }

      *(a1 + 14) = v69;
      v70 = sub_1002380D8(v36, @"genre");
      v71 = a1[20];
      a1[20] = v70;

      v72 = sub_10023790C(v36, @"genreId");
      v73 = a1[21];
      a1[21] = v72;

      v74 = sub_100237778(v36, @"subgenres");
      v75 = sub_100396BF0(v74);
      v76 = sub_1004024C4(v75, &stru_100525D90);
      v77 = a1[41];
      a1[41] = v76;

      v78 = sub_100237D58(v36, @"appAgeRatings");
      v79 = [v78 allKeys];
      v80 = [v79 firstObject];

      if (v80)
      {
        v81 = [v78 objectForKeyedSubscript:v80];
        v82 = sub_1002380D8(v81, @"label");
        v83 = sub_10023790C(v81, @"clientId");
        v84 = v83;
        if (v82 && v83)
        {
          objc_storeStrong(a1 + 35, v82);
          objc_storeStrong(a1 + 36, v84);
        }
      }

      if (!a1[35] || !a1[36])
      {
        v85 = sub_100237D58(v36, @"rating");
        v86 = v85;
        if (v85)
        {
          v87 = sub_1002380D8(v85, @"label");
          v88 = a1[35];
          a1[35] = v87;

          v89 = sub_10023790C(v86, @"rank");
          v90 = a1[36];
          a1[36] = v89;
        }
      }

      if (v36)
      {
        *(a1 + 9) = sub_1002378BC(v36, @"gameCenterEnabled", 0);
        v91 = sub_1002378BC(v36, @"gameCenterEverEnabled", 0);
      }

      else
      {
        v91 = 0;
        *(a1 + 9) = 0;
      }

      *(a1 + 10) = v91;
      if (v35)
      {
        *(a1 + 8) = sub_1002378BC(v35, @"is-auto-download", 0);
        *(a1 + 16) = sub_1002378BC(v35, @"isPreorder", 0);
        *(a1 + 17) = sub_1002378BC(v35, @"isRedownload", 0);
        v92 = sub_1002378BC(v35, @"is-purchased-redownload", 0);
      }

      else
      {
        v92 = 0;
        *(a1 + 8) = 0;
        *(a1 + 8) = 0;
      }

      *(a1 + 19) = v92;
      v93 = sub_1002380D8(v35, @"redownload-params");
      v94 = a1[33];
      a1[33] = v93;

      v95 = sub_1002380D8(v35, @"purchaseDate");
      v96 = a1[32];
      a1[32] = v95;

      v97 = sub_1002380D8(v36, @"releaseDate");
      v98 = a1[34];
      a1[34] = v97;

      v99 = sub_1002380D8(v36, @"s");
      v100 = a1[38];
      a1[38] = v99;

      if (!a1[38])
      {
        v101 = sub_10023790C(v36, @"s");
        v102 = [v101 stringValue];
        v103 = a1[38];
        a1[38] = v102;
      }

      if (v36)
      {
        v104 = sub_1002378BC(v36, @"iad-attribution", 0);
      }

      else
      {
        v104 = 0;
      }

      v105 = [NSNumber numberWithBool:v104];
      v106 = a1[23];
      a1[23] = v105;

      v107 = sub_1002380D8(v36, @"iad-conversion-date");
      v108 = a1[24];
      a1[24] = v107;

      v109 = sub_1002380D8(v36, @"iad-impression-date");
      v110 = a1[25];
      a1[25] = v109;

      v111 = sub_1002380D8(v35, @"install-verification-token");
      v112 = a1[26];
      a1[26] = v111;

      if (v35)
      {
        v113 = sub_1002378BC(v35, @"b2bCustomApp", 0);
      }

      else
      {
        v113 = 0;
      }

      *(a1 + 15) = v113;
      v114 = sub_1002380D8(v36, @"storeCohort");
      v115 = a1[40];
      a1[40] = v114;

      v116 = sub_100237D58(v36, @"UIRequiredDeviceCapabilities");
      v117 = a1[16];
      a1[16] = v116;

      if (v36)
      {
        v118 = sub_1002378BC(v36, @"is32BitOnly", 0);
      }

      else
      {
        v118 = 0;
      }

      *(a1 + 20) = v118;
      v119 = sub_100237D58(v36, @"nameTranscriptions");
      v120 = a1[43];
      a1[43] = v119;

      v121 = sub_1002380D8(v35, @"cancel-download-url");
      v122 = a1[15];
      a1[15] = v121;

      v123 = sub_1002380D8(v35, @"download-id");
      v124 = a1[39];
      a1[39] = v123;

      v125 = sub_100237B38(v35, @"app-receipt");
      v126 = a1[5];
      a1[5] = v125;

      v127 = sub_100238210(v35, @"preflightPackageURL");
      v128 = a1[31];
      a1[31] = v127;

      v129 = sub_100237D58(v35, @"externalPurchaseLinkOutTokenInfo");
      v130 = a1[44];
      a1[44] = v129;

      v131 = sub_1002380D8(v36, @"software-platform");
      if ([v131 isEqualToString:@"ios"] || !objc_msgSend(v131, "isEqualToString:", @"macos"))
      {
        v132 = 1;
      }

      else
      {
        v132 = 2;
      }

      a1[37] = v132;

      v5 = v136;
    }
  }

  return a1;
}

void *sub_100385EB4(void *a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_1003E2F24(MIStoreMetadata, a1);
    a1 = v6;
    if ((a3 & 1) == 0)
    {
      [v6 setVariantID:0];
    }

    if (v5)
    {
      sub_1003E38F0(a1, v5);
      v7 = [v5 ams_DSID];
      [a1 setPurchaserID:v7];
    }
  }

  return a1;
}

id sub_100385FF4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_10027C144([StoreItemSubGenre alloc], v2);

  return v3;
}

id sub_10038604C(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 56, 1);
  }

  return result;
}

id sub_100386060(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 96, 1);
  }

  return result;
}

id sub_100386074(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 144, 1);
  }

  return result;
}

uint64_t sub_100386088(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id sub_1003860A0(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 216, 1);
  }

  return result;
}

id sub_1003860B4(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 224, 1);
  }

  return result;
}

uint64_t sub_1003860C8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 19);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

XDCInstallResponse *sub_1003862F8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(XDCInstallResponse);
  if (v3)
  {
    v4 = sub_10036FDEC(v2, &stru_100525DF0);
    v5 = [v4 mutableCopy];
    objc_storeStrong(&v3->_externalIDStrings, v5);
  }

  return v3;
}

id sub_100386398(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = sub_10036FDEC(v1, &stru_100525DB0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100386400(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[NSUUID alloc] initWithUUIDString:v2];

  return v3;
}

id sub_100386460(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = sub_10036FDEC(v1, &stru_100525E10);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1003864C8(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[_TtC9appstored6LogKey alloc] initWithBaseUUIDString:v2];

  return v3;
}

void *sub_100386520(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v27.receiver = a1;
  v27.super_class = MetricsContext;
  v3 = objc_msgSendSuper2(&v27, "init");
  v4 = v3;
  if (v3)
  {
    v3[4] = a2;
    v5 = [_TtC9appstored6LogKey alloc];
    v6 = sub_10038680C(MetricsContext, v4[4]);
    v7 = [(LogKey *)v5 initWithBase:v6];
    v8 = v4[9];
    v4[9] = v7;

    v9 = [NSString stringWithFormat:@"com.apple.appstored.%@.events", v4[9]];
    v10 = sub_1002B57AC(MetricsCoordinator, v4[4]);
    v11 = v4[8];
    v4[8] = v10;

    v12 = [[KeepAlive alloc] initWithName:v9];
    v13 = v4[7];
    v4[7] = v12;

    v14 = +[NSDate date];
    v15 = v4[12];
    v4[12] = v14;

    [v4[12] timeIntervalSince1970];
    v4[11] = v16;
    v17 = v4[8];
    if (v17 || (v22 = v4[4]) == 0 || v22 == 7)
    {
      [v17 timeIntervalSince1970];
      v4[15] = v18;
    }

    else
    {
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v4[9];
        *buf = 138412290;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Interval start date not set", buf, 0xCu);
      }
    }

    v19 = 0;
    v20 = v4[4];
    if (v20 > 3)
    {
      switch(v20)
      {
        case 4:
          v21 = @"xp_amp_usage_detailed";
          if (!os_variant_has_internal_content())
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        case 5:
          v19 = @"on_device_personalization";
          break;
        case 7:
          v21 = @"xp_ase_arcade_subs";
          if (!os_variant_has_internal_content())
          {
            goto LABEL_24;
          }

          goto LABEL_22;
      }
    }

    else
    {
      switch(v20)
      {
        case 1:
          v21 = @"xp_amp_app_usage_analytics";
          if (!os_variant_has_internal_content())
          {
LABEL_24:
            v19 = v21;
            break;
          }

LABEL_22:
          if (sub_1003D4A10())
          {
            v21 = @"itsmetrics_test";
          }

          goto LABEL_24;
        case 2:
          v21 = @"xp_amp_app_usage_dnu";
          if (!os_variant_has_internal_content())
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        case 3:
          v21 = @"xp_amp_app_usage_arcade";
          if (!os_variant_has_internal_content())
          {
            goto LABEL_24;
          }

          goto LABEL_22;
      }
    }

    v25 = v4[19];
    v4[19] = v19;
  }

  return v4;
}

const __CFString *sub_10038680C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 6)
  {
    return @"None";
  }

  else
  {
    return off_100525E30[a2 - 1];
  }
}

void *sub_100386854(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = sub_100386520([MetricsContext alloc], a2);

  return v3;
}

void *sub_10038689C(void *a1)
{
  if (a1)
  {
    if ((a1[4] - 1) > 4)
    {
      v2 = 0;
    }

    else
    {
      v2 = objc_opt_class();
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

void sub_1003868F4(uint64_t a1)
{
  if (a1)
  {
    sub_1002B54D4(MetricsCoordinator, *(a1 + 32));
    v2 = sub_1002B57AC(MetricsCoordinator, *(a1 + 32));
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 72);
      if (v2)
      {
        [v2 timeIntervalSince1970];
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Recorded start interval as: %{time_t}ld", &v7, 0x16u);
    }
  }
}

void sub_1003869F8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100386C98(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  sub_100389EA8(ODRLaunchServicesObserver, v5, a2);
  if (a2)
  {
    v37 = a1;
    v6 = objc_opt_new();
    v39 = +[LSDatabaseContext sharedDatabaseContext];
    v38 = [v39 startAccessingReturningError:0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [LSApplicationRecord alloc];
          v42 = 0;
          v14 = [v13 initForInstallMachineryWithBundleIdentifier:v11 placeholder:1 error:&v42];
          v15 = v42;
          if (v15)
          {
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v48 = v11;
              v49 = 2114;
              v50 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to fetch record for placeholder app %{public}@: %{public}@", buf, 0x16u);
            }
          }

          if ([v14 installType] == 7 || objc_msgSend(v14, "installType") == 8 || objc_msgSend(v14, "installType") == 9)
          {
            [v6 addObject:v11];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v8);
    }

    if (v38)
    {
      [v39 stopAccessing];
    }

    if ([v6 count])
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [v6 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v48 = v18;
        v49 = 2114;
        v50 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Apps offloaded: [%{public}@]", buf, 0x16u);
      }

      v21 = +[UpdatesManager sharedManager];
      v22 = +[BagService appstoredService];
      v23 = [v22 lastBag];
      [v21 verifyPendingUpdates:v6 bag:v23];

      v24 = +[_TtC9appstored13LaunchHistory shared];
      [v24 clearLaunchHistoryWithBundleIDs:obj];

      v25 = sub_1002A20A8(ASDNotification, v6);
      v26 = sub_100003984();
      sub_1003B8178(v26, v25);
    }

    v5 = v40;
  }

  else
  {
    v27 = +[UpdatesManager sharedManager];
    [v27 verifyUpdatesFollowingExternalAppInstall:v5];

    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v5 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Checking to see if apps need to be migrated to managed: [%{public}@]", buf, 0xCu);
    }

    v30 = objc_alloc_init(MigrateToManagedTask);
    v6 = v30;
    if (v30)
    {
      objc_setProperty_nonatomic_copy(v30, v31, v5, 80);
    }

    v32 = sub_100284B90();
    v33 = v32;
    if (v32)
    {
      [*(v32 + 8) addOperation:v6];
    }

    v34 = sub_10029869C();
    sub_100299A24(v34);

    v35 = sub_1002AB1B0();
    sub_1002AB28C(v35, v5);

    v36 = sub_1002404C0();
    sub_100245B20(v36, v5);

    [GaletteAppDeleteAlertManager handleInstalledAppsWithBundleIDs:v5];
  }
}

void sub_1003871A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 userInfo];
    if (v6)
    {
      v7 = objc_alloc_init(NSArray);
      v8 = [v6 objectForKeyedSubscript:@"isPlaceholder"];

      if (v8)
      {
        v8 = sub_1002378BC(v6, @"isPlaceholder", 0);
      }

      v9 = [v6 objectForKeyedSubscript:@"bundleIDs"];

      if (v9)
      {
        v10 = sub_100237778(v6, @"bundleIDs");

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = v10;
        v11 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v7);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_18;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      if ([v7 count])
      {
        v5[2](v5, v8, v7);
      }

LABEL_18:
    }
  }
}

void sub_100387654(id a1, BOOL a2, NSArray *a3)
{
  v4 = a3;
  sub_10038A6D0(ODRLaunchServicesObserver, v4);
  if (!a2)
  {
    v5 = sub_10029869C();
    sub_100299C74(v5, v4);

    v6 = +[_TtC9appstored13LaunchHistory shared];
    [v6 clearLaunchHistoryWithBundleIDs:v4];

    v7 = +[UpdatesManager sharedManager];
    v8 = +[BagService appstoredService];
    v9 = [v8 lastBag];
    [v7 verifyPendingUpdates:v4 bag:v9];

    v10 = sub_1002404C0();
    sub_100245B20(v10, v4);

    v11 = sub_1002B5560();
    sub_1002B74F8(v11, v4, 3);

    sub_1003CE294(ManageSubscriptionsPrompter, v4);
    [GaletteAppDeleteAlertManager handleUninstalledAppsWithBundleIDs:v4];
    sub_1003539C0(StoreKitExternalNotificationService, v4);
    sub_1003AEE1C(InstallAttributionManager, v4);
    v12 = sub_1002AB1B0();
    sub_1002AC6A0(v12, v4);

    [_TtC9appstored29ManagedBackgroundAssetsBridge handleAppUninstallsWithBundleIDs:v4];
  }

  if ([(NSArray *)v4 containsObject:@"com.apple.AppStore"])
  {
    v13 = +[UpdatesManager sharedManager];
    [v13 dropAllUpdatesIncludingVPP:0 completionHandler:&stru_100525EF8];

    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 removePersistentDomainForName:@"com.apple.AppStore"];

    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Reset App Store defaults on uninstall", v16, 2u);
    }
  }
}

id *sub_1003878A4(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = RequestThrottleRecord;
    v14 = objc_msgSendSuper2(&v16, "init");
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 2, a5);
      objc_storeStrong(a1 + 4, a2);
    }
  }

  return a1;
}

double sub_100387988(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a2;
  [v3 timeIntervalSinceDate:{objc_getProperty(a1, v4, 32, 1)}];
  v6 = v5;

  return v6;
}

id sub_1003879EC(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v5 = [objc_getProperty(v2 v4];

    return v5;
  }

  return result;
}

char *sub_100387D4C(char *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v19[0] = @"artwork_url";
    v19[1] = @"automatic_type";
    v19[2] = @"arcade";
    v19[3] = @"bundle_id";
    v19[4] = @"bundle_name";
    v19[5] = @"bundle_url";
    v19[6] = @"bundle_version";
    v19[7] = @"cancel_if_duplicate";
    v19[8] = @"client_id";
    v19[9] = @"client_type";
    v19[10] = @"companion_bundle_id";
    v19[11] = @"coordinator_id";
    v19[12] = @"coordinator_intent";
    v19[13] = @"download_volume";
    v19[14] = @"external_id";
    v19[15] = @"gizmo_pairing_id";
    v19[16] = @"has_messages_extension";
    v19[17] = @"install_volume";
    v19[18] = @"item_id";
    v19[19] = @"launch_prohibited";
    v19[20] = @"log_code";
    v19[21] = @"messages_artwork_url";
    v19[22] = @"metrics_install_type";
    v19[23] = @"placeholder_entitlements";
    v19[24] = @"post_processing_state";
    v19[25] = @"priority";
    v19[26] = @"remote_install";
    v19[27] = @"requires_rosetta";
    v19[28] = @"restore_type";
    v19[29] = @"runs_on_apple_silicon";
    v19[30] = @"runs_on_intel";
    v19[31] = @"software_platform";
    v19[32] = @"source_type";
    v19[33] = @"store_metadata";
    v19[34] = @"supports_32bit_only";
    v19[35] = @"update_type";
    v19[36] = @"IFNULL(app_install.priority, 0)";
    v5 = a3;
    v6 = a2;
    v7 = [NSArray arrayWithObjects:v19 count:37];
    v8 = [(SQLiteMemoryEntity *)[AppInstall alloc] initWithDatabaseEntity:v6 properties:v7];

    v18[0] = @"archive_type";
    v18[1] = @"bytes_offset";
    v18[2] = @"package_type";
    v18[3] = @"data_promise_id";
    v18[4] = @"initial_odr_size";
    v18[5] = @"package_url";
    v18[6] = @"variant_id";
    v9 = [NSArray arrayWithObjects:v18 count:7];
    v10 = [v5 connection];

    v11 = sub_1004093BC(v8, v10, v9);

    v12 = v8;
    v13 = v11;
    v17.receiver = v3;
    v17.super_class = AppInstallPreambleTask;
    v14 = objc_msgSendSuper2(&v17, "init");
    v15 = v14;
    if (v14)
    {
      objc_storeStrong((v14 + 42), v8);
      objc_storeStrong((v15 + 50), v11);
    }

    v3 = v15;
  }

  return v3;
}

id sub_100388098(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = *(v1 + 66);
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_100388100(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  objc_opt_self();
  v8 = sub_100389614([AppInstallPreambleResponse alloc], a2, 0, v7, v6);

  return v8;
}

id *sub_100388188(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_100389614([AppInstallPreambleResponse alloc], a2, 2, 0, v4);

  return v5;
}

id *sub_100388200(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  objc_opt_self();
  v8 = sub_100389614([AppInstallPreambleResponse alloc], a2, 2, v7, v6);

  return v8;
}

void sub_1003894FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 66);
  *(v5 + 66) = v3;
  v7 = v3;

  objc_sync_exit(v4);
  (*(*(a1 + 40) + 16))();
}

id *sub_100389614(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = AppInstallPreambleResponse;
    v12 = objc_msgSendSuper2(&v14, "init");
    a1 = v12;
    if (v12)
    {
      v12[1] = a2;
      v12[4] = a3;
      objc_storeStrong(v12 + 2, a4);
      objc_storeStrong(a1 + 3, a5);
    }
  }

  return a1;
}

void sub_100389CC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Purchase completed with error: %{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Purchase completed successfully", &v11, 0xCu);
  }

  sub_100389E00(*(a1 + 40), v6);
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100389E00(_BYTE *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    sub_10020F258(a1, v3);
    a1[24] = [v3 success];
    v6 = [v3 error];

    v4 = ASDErrorWithSafeUserInfo();
    objc_setProperty_atomic_copy(a1, v5, v4, 32);
  }
}

void sub_100389EA8(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.ODRLaunchServicesObserver"];
  v7 = sub_1001C13C8();
  sub_1001C14D8(v7);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100389F90;
  v8[3] = &unk_100525F68;
  v9 = a3;
  v8[4] = v5;
  [v4 enumerateObjectsUsingBlock:v8];
}

void sub_100389F90(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v16];
  v5 = v16;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v3;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error looking up app with id %{public}@: %{public}@", buf, 0x16u);
    }
  }

  if (*(a1 + 40) == 1)
  {
    v7 = [v4 installType];
    objc_opt_self();
    if ((v7 - 7) < 3)
    {
      v8 = [ODRApplication alloc];
      v9 = [v4 bundleIdentifier];
      v10 = sub_100399CD8(v8, v9);

      v11 = v10;
      objc_opt_self();
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handling application demotion: %{public}@", buf, 0xCu);
      }

      v13 = sub_1001C2464([ODRApplicationPurgeTask alloc], v11, 4);
      sub_10023EDE4(ODRTaskQueue, v13, 17);

      goto LABEL_20;
    }

    if (*(a1 + 40))
    {
      goto LABEL_15;
    }
  }

  if (!v4)
  {
LABEL_15:
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v18 = v3;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Application %{public}@ is invalid, ignoring the install notification from LaunchServices", buf, 0xCu);
    }
  }

  else
  {
    v14 = sub_10039A1F4(ODRApplication, v4);
    if (v14)
    {
      v11 = v14;
      sub_10038A2A0(*(a1 + 32), v14);
    }

    else
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Application %{public}@ wasn't installed, ignoring the install notification from LaunchServices", buf, 0xCu);
      }

      v11 = 0;
    }
  }

LABEL_20:
}

void sub_10038A2A0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling application installation: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x2020000000;
  v17 = 1;
  v4 = sub_100208FBC();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10038A924;
  v10[3] = &unk_10051DC00;
  p_buf = &buf;
  v5 = v2;
  v11 = v5;
  [v4 readUsingSession:v10];

  v6 = *(*(&buf + 1) + 24);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        *v13 = 138543362;
        v14 = v5;
        v8 = "Handling installation for %{public}@ as an updated ODR application";
        break;
      case 4:
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 138543362;
          v14 = v5;
          v8 = "Handling installation for %{public}@ as an ODR application needing repair";
          break;
        }

        goto LABEL_23;
      case 5:
        v7 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        *v13 = 138543362;
        v14 = v5;
        v8 = "Ignoring installation for %{public}@ as it already up to date";
        break;
      default:
        goto LABEL_24;
    }

LABEL_22:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v13, 0xCu);
    goto LABEL_23;
  }

  if (!v6)
  {
    v7 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *v13 = 138543362;
    v14 = v5;
    v8 = "Cleaning up after installation for %{public}@ as ODR is no longer supported";
    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_24;
    }

    v7 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *v13 = 138543362;
    v14 = v5;
    v8 = "Handling installation for %{public}@ as a new ODR application";
    goto LABEL_22;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 138543362;
    v14 = v5;
    v8 = "Ignoring installation for %{public}@ as it does not appear to support ODR";
    goto LABEL_22;
  }

LABEL_23:

  v6 = *(*(&buf + 1) + 24);
LABEL_24:
  if ((v6 - 2) < 2)
  {
    v9 = sub_100338694([ODRApplicationImportTask alloc], v5);
    sub_10023EDE4(ODRTaskQueue, v9, 17);
    goto LABEL_30;
  }

  if (v6 == 4)
  {
    v9 = sub_100253964([ODRApplicationRepairTask alloc], v5);
    sub_10023EDE4(ODRTaskQueue, v9, 17);
    goto LABEL_30;
  }

  if (!v6)
  {
    v9 = sub_10036ABA4([ODRApplicationCleanTask alloc], v5);
    sub_10023EDE4(ODRTaskQueue, v9, 17);
LABEL_30:
  }

  _Block_object_dispose(&buf, 8);
}

void sub_10038A68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10038A6D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.ODRLaunchServicesObserver"];
  v5 = sub_1001C13C8();
  sub_1001C14D8(v5);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038A7A8;
  v6[3] = &unk_100525F88;
  v6[4] = v3;
  [v2 enumerateObjectsUsingBlock:v6];
}

void sub_10038A7A8(uint64_t a1, void *a2)
{
  v3 = sub_100399B78(ODRApplication, a2);
  if (sub_10039B3C8(v3))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Placeholder for application %{public}@ removed, re-verifying installed application", &v8, 0xCu);
    }

    sub_10038A2A0(*(a1 + 32), v3);
  }

  else
  {
    v5 = v3;
    objc_opt_self();
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling application un-installation: %{public}@", &v8, 0xCu);
    }

    v7 = sub_10036ABA4([ODRApplicationCleanTask alloc], v5);
    sub_10023EDE4(ODRTaskQueue, v7, 17);
  }
}

uint64_t sub_10038A924(uint64_t a1, uint64_t a2)
{
  result = sub_1001C4560(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10038AA5C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = LaunchEvent;
  v3 = objc_msgSendSuper2(&v6, "init");
  if (v3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a2];
    sub_10023E000(v3, v4, @"event_source");
  }

  return v3;
}

id sub_10038AD6C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_10038ADA4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"launch_start_time");
    v2 = v1;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = +[NSDate distantPast];
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10038AE18(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"launch_end_time");
    v2 = v1;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = +[NSDate distantFuture];
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10038AE8C(void *a1)
{
  if (a1)
  {
    v1 = sub_10038B22C(a1);
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"lr"];
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

id sub_10038AEFC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10023E0F8(a1, @"is_extension");
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10038AF64(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"containing_bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_10038AF9C(void *a1)
{
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = sub_10038AE18(a1);
    v4 = sub_1002525A8(v3);
    [v2 setObject:v4 forKeyedSubscript:@"Last Launch"];

    v5 = sub_10038AD6C(a1);
    [v2 setObject:v5 forKeyedSubscript:@"bundleID"];

    v6 = sub_10038B1E4(a1);
    if (v6 > 8)
    {
      v7 = @"App Launch";
    }

    else
    {
      v7 = *(&off_100525FA8 + v6);
    }

    v8 = v7;
    [v2 setObject:v8 forKeyedSubscript:@"Type"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

AppLaunchEvent *sub_10038B0A0(AppLaunchEvent *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc_init(AppLaunchEvent);
    v5 = sub_10038ADA4(v2);
    if (v3)
    {
      objc_setProperty_nonatomic_copy(v3, v4, v5, 24);
    }

    v6 = sub_10038AD6C(v2);
    v8 = v6;
    if (v3)
    {
      objc_setProperty_nonatomic_copy(v3, v7, v6, 40);

      v3->_isExtensionUsage = sub_10038AEFC(v2);
      v9 = sub_10038AF64(v2);
      objc_setProperty_nonatomic_copy(v3, v10, v9, 128);
    }

    else
    {

      sub_10038AEFC(v2);
      v9 = sub_10038AF64(v2);
    }

    v12 = sub_10038AE8C(v2);
    if (v3)
    {
      objc_setProperty_nonatomic_copy(v3, v11, v12, 32);
    }

    v13 = sub_10038B1E4(v2) - 5;
    if (v13 >= 3)
    {
      a1 = v3;
    }

    else
    {
      a1 = 0;
    }

    if (v13 <= 2 && v3)
    {
      v3->_sourceStream = v13 | 4;
      a1 = v3;
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t sub_10038B1E4(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"event_source");
    v2 = [v1 unsignedCharValue];

    return v2;
  }

  return result;
}

id sub_10038B22C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E7A0(a1, @"payload");
    v1 = vars8;
  }

  return a1;
}

id sub_10038B264(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E590(a1, @"timestamp");
    v1 = vars8;
  }

  return a1;
}

void sub_10038B29C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_10023E000(a1, a2, @"bundle_id");
  }
}

void sub_10038B2B0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_10023E000(a1, a2, @"containing_bundle_id");
  }
}

void sub_10038B2C4(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_10023E000(a1, a2, @"launch_end_time");
  }
}

void sub_10038B2D8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_10023E000(a1, a2, @"launch_start_time");
  }
}

void sub_10038B2EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    sub_10023E000(a1, v3, @"is_extension");
  }
}

void sub_10038B35C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = sub_10038B22C(a1);
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = +[NSMutableDictionary dictionary];
    }

    [v5 setObject:v6 forKeyedSubscript:@"lr"];
    sub_10023E000(a1, v5, @"payload");

    v3 = v6;
  }
}

uint64_t sub_10038B93C(uint64_t a1, void *a2)
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
      LOBYTE(v45) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v45 & 0x7F) << v5;
      if ((v45 & 0x80) == 0)
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
        goto LABEL_51;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_51;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 8;
        goto LABEL_51;
      case 4u:
        v28 = objc_alloc_init(TFDisplay);
        objc_storeStrong((a1 + 64), v28);
        v45 = 0;
        v46 = 0;
        if (PBReaderPlaceMark() && sub_100370AE4(v28, a2))
        {
          goto LABEL_44;
        }

        goto LABEL_89;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_51;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_51;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 24;
        goto LABEL_51;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 32;
LABEL_51:
        v29 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_87;
      case 9u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v45 & 0x7F) << v36;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v38;
        }

LABEL_85:
        v42 = 40;
        goto LABEL_86;
      case 0xAu:
        v28 = objc_alloc_init(TFMemoryUsage);
        objc_storeStrong((a1 + 56), v28);
        v45 = 0;
        v46 = 0;
        if (PBReaderPlaceMark() && sub_1002BEBA4(v28, a2))
        {
LABEL_44:
          PBReaderRecallMark();

LABEL_87:
          v43 = [a2 position];
          if (v43 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_89:

        return 0;
      case 0xBu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v45 & 0x7F) << v30;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v32;
        }

LABEL_81:
        v42 = 16;
        goto LABEL_86;
      case 0xCu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 104) |= 4u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v45 & 0x7F) << v15;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_73;
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

LABEL_73:
        v42 = 44;
        goto LABEL_86;
      case 0xDu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 104) |= 8u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45 & 0x7F) << v22;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_77:
        v42 = 48;
LABEL_86:
        *(a1 + v42) = v21;
        goto LABEL_87;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_87;
    }
  }
}

void sub_10038C250(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_10038C268(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_10038C280(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_10038C298(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_10038C2B0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_10038C2C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_10038C2E0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_10038C2F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_10038C310(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

id sub_10038CA18()
{
  objc_opt_self();
  if (qword_1005AAD78 != -1)
  {
    dispatch_once(&qword_1005AAD78, &stru_1005260F0);
  }

  v0 = qword_1005AAD70;

  return v0;
}

void sub_10038CA70(id a1)
{
  v1 = objc_alloc_init(LibraryService);
  v2 = qword_1005AAD70;
  qword_1005AAD70 = v1;
}

void sub_10038CDC4(uint64_t a1)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10038D200;
  v34 = sub_10038D210;
  v35 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  obj = 0;
  v4 = sub_10038D218(v2, v3, &obj);
  objc_storeStrong(&v35, obj);
  if (v4)
  {
    [*(a1 + 40) allowEvaluation];
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = [v6 processInfo];
      v8 = [v7 bundleIdentifier];
      v9 = [*(a1 + 40) predicateFormat];
      *buf = 138543874;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting query for %{public}@: %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = sub_10038D200;
    *&v38 = sub_10038D210;
    *(&v38 + 1) = +[NSMutableArray array];
    v10 = +[NSMutableSet set];
    v11 = *(*(a1 + 32) + 16);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10038D2A0;
    v24[3] = &unk_100526140;
    v25 = *(a1 + 40);
    v12 = v10;
    v26 = v12;
    v27 = buf;
    v28 = &v30;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10038D474;
    v19[3] = &unk_100526208;
    v22 = buf;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v23 = &v30;
    [v11 lib_enumerateObjectsUsingAsyncBlock:v24 completionHandler:v19];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = [v14 processInfo];
      v16 = [v15 bundleIdentifier];
      v17 = [*(a1 + 40) predicateFormat];
      v18 = v31[5];
      *buf = 138544130;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2114;
      v37 = v17;
      LOWORD(v38) = 2114;
      *(&v38 + 2) = v18;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@ Query failed for %{public}@: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v30, 8);
}

uint64_t sub_10038D200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10038D218(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    if (qword_1005AAD88 != -1)
    {
      dispatch_once(&qword_1005AAD88, &stru_100526298);
    }

    v6 = sub_1002EA684(qword_1005AAD80, v5, a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10038D2A0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a1[4];
  v6 = a1[5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10038D378;
  v10[3] = &unk_100526118;
  v13 = a1[6];
  v8 = v6;
  v14 = a1[7];
  v11 = v8;
  v12 = v5;
  v9 = v5;
  [a2 executeQuery:v7 excludingBundleIDs:v8 completionHandler:v10];
}

void sub_10038D378(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (v13)
  {
    [*(*(a1[6] + 8) + 40) addObjectsFromArray:?];
    v7 = a1[4];
    v8 = [*(*(a1[6] + 8) + 40) valueForKey:@"bundleID"];
    [v7 addObjectsFromArray:v8];
  }

  else
  {
    v9 = *(a1[7] + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  (*(a1[5] + 16))();
}

void sub_10038D474(void *a1)
{
  if (![*(*(a1[6] + 8) + 40) count])
  {
    v3 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v7 = a1[4];
    v15 = 138543362;
    v16 = v7;
    v8 = "%{public}@ Completed with no results";
    v9 = v3;
    v10 = 12;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
    goto LABEL_10;
  }

  v2 = [*(*(a1[6] + 8) + 40) count];
  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 != 1)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v11 = a1[4];
    v12 = [*(*(a1[6] + 8) + 40) count];
    v15 = 138543618;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v8 = "%{public}@ Completed with %lu result(s)";
    v9 = v3;
    v10 = 22;
    goto LABEL_9;
  }

  if (v4)
  {
    v5 = a1[4];
    v6 = [*(*(a1[6] + 8) + 40) firstObject];
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed with 1 result: %{public}@", &v15, 0x16u);
  }

LABEL_10:

  v13 = a1[5];
  v14 = [*(*(a1[6] + 8) + 40) copy];
  (*(v13 + 16))(v13, v14, *(*(a1[7] + 8) + 40));
}

void sub_10038D784(uint64_t a1)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10038D200;
  v37 = sub_10038D210;
  v38 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  obj = 0;
  v4 = sub_10038D218(v2, v3, &obj);
  objc_storeStrong(&v38, obj);
  if (v4)
  {
    [*(a1 + 40) allowEvaluation];
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = [v6 processInfo];
      v9 = [v8 bundleIdentifier];
      v10 = [*(a1 + 40) predicateFormat];
      *buf = 138544130;
      v40 = v6;
      v41 = 2114;
      v42 = v7;
      v43 = 2114;
      v44 = v9;
      v45 = 2114;
      v46 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting query on device %{public}@ for %{public}@: %{public}@", buf, 0x2Au);
    }

    v11 = +[NSMutableArray array];
    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = [v12 deviceForPairingID:*(a1 + 56)];

    if (v13)
    {
      v14 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 56)];
      if (!v14)
      {
        v15 = *(*(a1 + 32) + 48);
        v16 = *(a1 + 56);
        v14 = sub_10029CD64([PairedDeviceApplicationCatalog alloc], v13);
        [v15 setObject:v14 forKeyedSubscript:v16];
      }

      v17 = *(a1 + 40);
      v18 = +[NSSet set];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10038DBE8;
      v27[3] = &unk_100526168;
      v28 = v11;
      v31 = &v33;
      v29 = *(a1 + 48);
      v30 = *(a1 + 64);
      [v14 executeQuery:v17 excludingBundleIDs:v18 completionHandler:v27];
    }

    else
    {
      v20 = *(a1 + 64);
      v14 = ASDErrorWithDescription();
      (*(v20 + 16))(v20, 0, v14);
    }
  }

  else
  {
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = [v21 processInfo];
      v24 = [v23 bundleIdentifier];
      v25 = [*(a1 + 40) predicateFormat];
      v26 = v34[5];
      *buf = 138544386;
      v40 = v21;
      v41 = 2114;
      v42 = v22;
      v43 = 2114;
      v44 = v24;
      v45 = 2114;
      v46 = v25;
      v47 = 2114;
      v48 = v26;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ Query on device %{public}@ failed for %{public}@: %{public}@ error: %{public}@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(&v33, 8);
}

void sub_10038DBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10038DBE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) addObjectsFromArray:v5];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  if (![*(a1 + 32) count])
  {
    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 40);
    v20 = 138543362;
    v21 = v12;
    v13 = "%{public}@ Completed with no results";
    v14 = v8;
    v15 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
    goto LABEL_13;
  }

  v7 = [*(a1 + 32) count];
  v8 = ASDLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 != 1)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) count];
    v20 = 138543618;
    v21 = v16;
    v22 = 2048;
    v23 = v17;
    v13 = "%{public}@ Completed with %lu result(s)";
    v14 = v8;
    v15 = 22;
    goto LABEL_12;
  }

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) firstObject];
    v20 = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed with 1 result: %{public}@", &v20, 0x16u);
  }

LABEL_13:

  v18 = *(a1 + 48);
  v19 = [*(a1 + 32) copy];
  (*(v18 + 16))(v18, v19, *(*(*(a1 + 56) + 8) + 40));
}

void sub_10038DF68(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10038D200;
  v41 = sub_10038D210;
  v42 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  obj = 0;
  v4 = sub_10038D218(v2, v3, &obj);
  objc_storeStrong(&v42, obj);
  if (v4)
  {
    [*(a1 + 40) allowEvaluation];
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = [v6 processInfo];
      v8 = [v7 bundleIdentifier];
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting query for remote app library for: %{public}@ ", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = sub_10038D200;
    *&v49 = sub_10038D210;
    *(&v49 + 1) = 0;
    v9 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 56)];
    if (!v9)
    {
      v9 = [[_TtC9appstored16RemoteAppLibrary alloc] initWithSerialNumber:*(a1 + 56)];
      [*(*(a1 + 32) + 56) setObject:v9 forKeyedSubscript:*(a1 + 56)];
    }

    v10 = objc_autoreleasePoolPush();
    v11 = dispatch_semaphore_create(0);
    v12 = *(a1 + 40);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10038E458;
    v32 = &unk_100526190;
    v34 = &v37;
    v35 = buf;
    v13 = v11;
    v33 = v13;
    [(RemoteAppLibrary *)v9 fetchAppsWithPredicate:v12 completionHandler:&v29];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

    objc_autoreleasePoolPop(v10);
    if ([*(*&buf[8] + 40) count])
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 48);
        v16 = [*(*&buf[8] + 40) count];
        *v43 = 138543618;
        v44 = v15;
        v45 = 2048;
        v46 = v16;
        v17 = "%{public}@ Completed with %lu result(s)";
        v18 = v14;
        v19 = 22;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, v43, v19);
      }
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 48);
        *v43 = 138543362;
        v44 = v21;
        v17 = "%{public}@ Completed with no results";
        v18 = v14;
        v19 = 12;
        goto LABEL_14;
      }
    }

    v22 = *(a1 + 64);
    v23 = [*(*&buf[8] + 40) copy];
    (*(v22 + 16))(v22, v23, v38[5]);

    _Block_object_dispose(buf, 8);
    goto LABEL_16;
  }

  v20 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 48);
    v25 = [v24 processInfo];
    v26 = [v25 bundleIdentifier];
    v27 = [*(a1 + 40) predicateFormat];
    v28 = v38[5];
    *buf = 138544130;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v26;
    *&buf[22] = 2114;
    v48 = v27;
    LOWORD(v49) = 2114;
    *(&v49 + 2) = v28;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ Query for remote app library failed for %{public}@: %{public}@ error: %{public}@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
LABEL_16:
  _Block_object_dispose(&v37, 8);
}

void sub_10038E404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10038E458(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10038E5CC(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10038D200;
  v18[4] = sub_10038D210;
  v19 = 0;
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    v6 = *(a1 + 56);
    *buf = 138543874;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    LODWORD(v21) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting query for updates for: %{public}@ Reloading from server: %{BOOL}d", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = sub_10038D200;
  v22 = sub_10038D210;
  v23 = 0;
  v7 = *(*(a1 + 40) + 16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10038E88C;
  v13[3] = &unk_1005261E0;
  v17 = *(a1 + 56);
  v14 = *(a1 + 32);
  v15 = buf;
  v16 = v18;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10038EA20;
  v8[3] = &unk_100526208;
  v11 = buf;
  v12 = v18;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v7 lib_enumerateObjectsUsingAsyncBlock:v13 completionHandler:v8];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v18, 8);
}

void sub_10038E854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10038E88C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v9 = a2;
  if (v7)
  {
    Property = objc_getProperty(v7, v8, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10038E984;
  v13[3] = &unk_1005261B8;
  v14 = v5;
  v15 = *(a1 + 40);
  v12 = v5;
  [v9 executeQueryForUpdatesReloadingFromServer:v6 logKey:v11 completionHandler:v13];
}

void sub_10038E984(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = v9;
  if (v9)
  {
    v8 = 40;
LABEL_5:
    objc_storeStrong((*(*(a1 + v8) + 8) + 40), v7);
    goto LABEL_6;
  }

  if (v5)
  {
    v8 = 48;
    v7 = v5;
    goto LABEL_5;
  }

LABEL_6:
  (*(*(a1 + 32) + 16))();
}

void sub_10038EA20(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) count];
  v3 = ASDLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = [*(*(a1[6] + 8) + 40) count];
      v14 = 138543618;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      v7 = "%{public}@ Completed with %lu result(s)";
      v8 = v4;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v14, 0x16u);
    }
  }

  else
  {
    v10 = *(*(a1[7] + 8) + 40);
    if (os_log_type_enabled(v3, (16 * (v10 != 0))))
    {
      v11 = a1[4];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v10;
      v7 = "%{public}@ Completed with no results (error: %{public}@)";
      v8 = v4;
      v9 = 16 * (v10 != 0);
      goto LABEL_6;
    }
  }

  v12 = a1[5];
  v13 = [*(*(a1[6] + 8) + 40) copy];
  (*(v12 + 16))(v12, v13, *(*(a1[7] + 8) + 40));
}

void sub_10038F1F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
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

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v3 bundleIDForSystemAppWithItemID:{objc_msgSend(v10, "unsignedLongLongValue", v12)}];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10038F53C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
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

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v3 itemIDForSystemAppWithBundleID:{v10, v12}];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10038F87C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
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

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v3 bundleIDForSystemAppForWatchWithItemID:{objc_msgSend(v10, "unsignedLongLongValue", v12)}];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10038FBC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
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

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v3 itemIDForSystemAppForWatchWithBundleID:{v10, v12}];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10038FEE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bundleID];

  if (v3 || !v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = +[BagService appstoredService];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10038FFE8;
    v6[3] = &unk_10051ED90;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 bagWithCompletionHandler:v6];
  }
}

uint64_t sub_10038FFE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UpdatesManager sharedManager];
  v5 = [*(a1 + 32) bundleID];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 verifyPendingUpdates:v6 bag:v3];

  return (*(*(a1 + 40) + 16))();
}

NSArray *__cdecl sub_100390220(id a1, NSArray *a2)
{
  v7 = ASDAppLibraryServiceNotificationKeyAction;
  v8 = ASDAppLibraryServiceNotificationActionRefresh;
  v2 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v3 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v2];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

void sub_100390318(id a1)
{
  v1 = objc_alloc_init(PredicateValidator);
  v2 = qword_1005AAD80;
  qword_1005AAD80 = v1;

  v3 = qword_1005AAD80;
  if (qword_1005AAD80)
  {
    *(qword_1005AAD80 + 8) = 257;
  }

  v4 = sub_10036BD08();
  if (v3)
  {
    v7 = v4;
    v5 = [v4 copy];
    v6 = *(v3 + 40);
    *(v3 + 40) = v5;

    v4 = v7;
    *(v3 + 11) = 1;
    *(v3 + 18) = 1;
  }
}

void sub_100390448(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:?];
    if (v2)
    {
      v3 = v2;
      v4 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 138543362;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing remote catalog after unpairing finished for: %{public}@", &v6, 0xCu);
      }

      [*(*(a1 + 40) + 48) removeObjectForKey:*(a1 + 32)];
    }
  }
}

id sub_100390F18(id *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = sub_1002B5480(MetricsCoordinator, 5);
    if (v6)
    {
      v7 = +[NSMutableArray array];
      v41 = v6;
      v8 = sub_100393548(a1, v6);
      if ([v8 count])
      {
        [v7 addObjectsFromArray:v8];
      }

      v40 = v8;
      v9 = +[NSMutableArray array];
      v10 = sub_10036C90C();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100393F1C;
      v52 = &unk_1005247C8;
      v54 = a2;
      v11 = v9;
      v53 = v11;
      [v10 readUsingSession:buf];

      if ([v11 count])
      {
        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [a1 logKey];
          v14 = [v11 count];
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Found %ld unposted events", buf, 0x16u);
        }

        [v7 addObjectsFromArray:v11];
      }

      v39 = v11;
      v15 = v7;
      v43 = +[NSMutableArray array];
      v42 = +[NSMutableArray array];
      v45 = +[NSMutableArray array];
      v44 = +[NSMutableArray array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = v15;
      v16 = [obj countByEnumeratingWithState:&v47 objects:buf count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v48;
        do
        {
          v19 = 0;
          do
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v47 + 1) + 8 * v19);
            if (!v20)
            {
LABEL_26:
              v29 = [AppMetricsEvent engagementData]_0(v20);
              v22 = [v29 mutableCopy];

              if (a2)
              {
                if (v20)
                {
                  v30 = sub_10023E4DC(v20, @"has_been_posted");
                }

                else
                {
                  v30 = 0;
                }

                v31 = [NSNumber numberWithBool:v30];
                [v22 setObject:v31 forKeyedSubscript:@"posted"];
              }

              v28 = v43;
              goto LABEL_31;
            }

            if (sub_10023E604(*(*(&v47 + 1) + 8 * v19), @"event_type") == 2)
            {
              v21 = [AppMetricsEvent engagementData]_0(v20);
              v22 = [v21 mutableCopy];

              v23 = sub_10023E0F8(v20, @"timestamp");

              if (v23)
              {
                sub_10023E0F8(v20, @"timestamp");
                v25 = v24 = a2;
                v26 = sub_100308F30(MetricsHandler, v25);
                [v22 setObject:v26 forKeyedSubscript:@"eventTime"];

                a2 = v24;
              }

              if (a2)
              {
                v27 = [NSNumber numberWithBool:sub_10023E4DC(v20, @"has_been_posted")];
                [v22 setObject:v27 forKeyedSubscript:@"posted"];
              }

              v28 = v45;
            }

            else
            {
              if (!sub_10023E604(v20, @"event_type"))
              {
                goto LABEL_26;
              }

              if (sub_10023E604(v20, @"event_type") != 1 || sub_10023E604(v20, @"event_subtype") != 4 || (sub_10023E4DC(v20, @"has_been_posted") & 1) != 0)
              {
                [v44 addObject:v20];
                goto LABEL_32;
              }

              v32 = [AppMetricsEvent engagementData]_0(v20);
              v22 = [v32 mutableCopy];

              if (a2)
              {
                v33 = [NSNumber numberWithBool:sub_10023E4DC(v20, @"has_been_posted")];
                [v22 setObject:v33 forKeyedSubscript:@"posted"];
              }

              v28 = v42;
            }

LABEL_31:
            [v28 addObject:v22];

LABEL_32:
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v34 = [obj countByEnumeratingWithState:&v47 objects:buf count:16];
          v17 = v34;
        }

        while (v34);
      }

      v6 = v41;
      if ([v43 count])
      {
        v35 = sub_100393DF0(v43, 6);
        if (v35)
        {
          [v44 addObject:v35];
        }
      }

      if ([v45 count])
      {
        v36 = sub_100393DF0(v45, 8);
        if (v36)
        {
          [v44 addObject:v36];
        }
      }

      if ([v42 count])
      {
        v37 = sub_100393DF0(v42, 7);
        if (v37)
        {
          [v44 addObject:v37];
        }
      }
    }

    else if (a3)
    {
      ASDErrorWithTitleAndMessage();
      *a3 = v44 = 0;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

void sub_100391588(uint64_t a1, void *a2)
{
  obj = a2;
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v20;
      do
      {
        v6 = 0;
        do
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v19 + 1) + 8 * v6);
          v8 = *(a1 + 64);
          if (!v8)
          {
            v9 = [AMSEngagement alloc];
            v10 = +[BagService appstoredService];
            v11 = [v10 amsBag];
            v12 = [v9 initWithBag:v11];
            v13 = *(a1 + 64);
            *(a1 + 64) = v12;

            v8 = *(a1 + 64);
          }

          v14 = v8;
          v15 = [v7 engagementData];
          v16 = [v14 enqueueData:v15];

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1003940F8;
          v18[3] = &unk_1005262C0;
          v18[4] = a1;
          [v16 resultWithCompletion:v18];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v4);
    }
  }
}

id sub_100391DE0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[NSMutableDictionary dictionary];
    [v7 setObject:v5 forKeyedSubscript:@"bundleId"];
    v8 = a1[3];

    if (v8)
    {
      v9 = a1[3];
      [v7 setObject:v9 forKeyedSubscript:@"dsid"];
    }

    v10 = [a1 deviceID];
    [v7 setObject:v10 forKeyedSubscript:@"usageClientId"];

    v11 = sub_10030ACA0(a1);
    [v7 setObject:v11 forKeyedSubscript:@"os"];

    v12 = +[AMSDevice productVersion];
    [v7 setObject:v12 forKeyedSubscript:@"osBuildNumber"];

    v13 = sub_10030AC20(a1);
    [v7 setObject:v13 forKeyedSubscript:@"platform"];

    v14 = [a1 topic];
    [v7 setObject:v14 forKeyedSubscript:@"topic"];

    if (v6)
    {
      v15 = sub_1003826A0(v6);
      [v7 setObject:v15 forKeyedSubscript:@"bundleVersion"];

      v16 = sub_1003820F4(v6);
      [v7 setObject:v16 forKeyedSubscript:@"externalVersionId"];

      if (sub_100382758(v6))
      {
        [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isArcade"];
      }

      v17 = sub_1003820BC(v6);
      [v7 setObject:v17 forKeyedSubscript:@"itemId"];

      v18 = sub_100382830(v6);
      [v7 setObject:v18 forKeyedSubscript:@"shortAppVersion"];

      v19 = sub_100382868(v6);
      [v7 setObject:v19 forKeyedSubscript:@"storefront"];
    }

    v20 = sub_100393D44(a1);
    if (v20)
    {
      v21 = v20;
      v22 = sub_100393D44(a1);
      v23 = [v22 objectForKeyedSubscript:v5];

      if (v23)
      {
        v24 = sub_100393D44(a1);
        v25 = [v24 objectForKeyedSubscript:v5];
        v26 = [v25 objectForKeyedSubscript:@"powerUsage"];
        [v7 setObject:v26 forKeyedSubscript:@"batteryUsage"];

        v27 = sub_100393D44(a1);
        v28 = [v27 objectForKeyedSubscript:v5];
        v29 = [v28 objectForKeyedSubscript:@"DRAMUsage"];
        [v7 setObject:v29 forKeyedSubscript:@"batteryDRAMUsage"];
      }
    }

    v30 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
    v31 = sub_10040CF04(v30);
    v32 = v31;
    if (v31)
    {
      v33 = [v31 artistName];

      if (v33)
      {
        v34 = [v32 artistName];
        [v7 setObject:v34 forKeyedSubscript:@"artistName"];
      }

      v35 = [v32 genreID];

      if (v35)
      {
        v36 = [v32 genreID];
        [v7 setObject:v36 forKeyedSubscript:@"genreID"];
      }

      v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 isGameCenterEnabled]);
      [v7 setObject:v37 forKeyedSubscript:@"gameCenterEnabled"];

      v38 = [v32 hasOrEverHasHadIAP];

      if (v38)
      {
        v39 = [v32 hasOrEverHasHadIAP];
        [v7 setObject:v39 forKeyedSubscript:@"hasOrEverHasHadIAP"];
      }

      v40 = [v32 ratingRank];
      if (v40)
      {
        v41 = v40;
        v42 = [v32 ratingLabel];

        if (v42)
        {
          v63[0] = @"rank";
          v43 = [v32 ratingRank];
          v63[1] = @"label";
          v64[0] = v43;
          v44 = [v32 ratingLabel];
          v64[1] = v44;
          v45 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
          [v7 setObject:v45 forKeyedSubscript:@"rating"];
        }
      }

      v46 = [v32 subGenres];

      if (v46)
      {
        v57 = v5;
        v47 = +[NSMutableArray array];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v48 = [v32 subGenres];
        v49 = [v48 countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v59;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v59 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = [*(*(&v58 + 1) + 8 * i) genreID];
              [v47 addObject:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v58 objects:v62 count:16];
          }

          while (v50);
        }

        [v7 setObject:v47 forKeyedSubscript:@"subGenreIDs"];
        v5 = v57;
      }

      v54 = [v32 sourceApp];

      if (v54)
      {
        v55 = [v32 sourceApp];
        [v7 setObject:v55 forKeyedSubscript:@"sourceApp"];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003924A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1003924C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = sub_1003F0BA0(a2, v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  return 1;
}

uint64_t sub_100392A88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = sub_1003F0BA0(a2, v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  return 1;
}

BOOL sub_100393268(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = sub_1003F0BA0(a2, v4, &v10);
  v6 = v10;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) logKey];
      *buf = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Error persisting launch events: %{public}@", buf, 0x16u);
    }
  }

  return v6 == 0;
}

id sub_100393548(id *a1, void *a2)
{
  v3 = a2;
  v21 = v3;
  if (a1)
  {
    v4 = v3;
    v23 = +[NSMutableArray array];
    [a1 getCrashEventsSinceDate:v4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v27 = 0u;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = sub_1001FCF14(v9);
          v11 = a1[5];
          v12 = [v11 objectForKeyedSubscript:v10];

          if (v12)
          {
            v13 = a1[5];
            v14 = [v13 objectForKeyedSubscript:v10];
            v15 = sub_100391DE0(a1, v10, v14);

            [v15 setObject:@"crashes" forKeyedSubscript:@"eventType"];
            v16 = sub_1001FD45C(v9);
            v17 = sub_100308F30(MetricsHandler, v16);
            [v15 setObject:v17 forKeyedSubscript:@"eventTime"];

            v18 = objc_alloc_init(AppMetricsEvent);
            sub_100209F4C(v18, v10);
            sub_10020A020(v18, 0);
            sub_10020A090(v18, 5);
            sub_10020A100(v18, v15);
            [v23 addObject:v18];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    v19 = [v23 copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_1003937E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = sub_1003F0BA0(a2, v4, &v10);
  v6 = v10;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) logKey];
      *buf = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Supplemental crash metrics event import resulted in error: %{public}@", buf, 0x16u);
    }
  }

  return 1;
}

uint64_t sub_100393B18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"metrics_type" equalToValue:&off_100548280];
  v5 = [v3 connection];
  v6 = sub_1002D3F5C(AppMetricsEventEntity, v5, v4);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100393C28;
  v10[3] = &unk_10051CA10;
  v7 = *(a1 + 32);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  [v6 enumeratePersistentIDsUsingBlock:v10];

  return 1;
}

void sub_100393C28(uint64_t a1, uint64_t a2)
{
  v4 = [AppMetricsEventEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 40) logKey];
    v9 = 138412546;
    v10 = v8;
    v11 = 2048;
    v12 = a2;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%@] Removed posted event with pid: %lld", &v9, 0x16u);
  }

  [(SQLiteEntity *)v6 deleteFromDatabase];
}

id sub_100393D44(uint64_t a1)
{
  if (_os_feature_enabled_impl() && !*(a1 + 72))
  {
    v2 = sub_10039751C();
    v3 = sub_1003975F8(v2);
    v4 = *(a1 + 72);
    *(a1 + 72) = v3;
  }

  v5 = *(a1 + 72);

  return v5;
}

AppMetricsEvent *sub_100393DF0(void *a1, uint64_t a2)
{
  v4 = *(&off_1005262E0)[a2 - 6];
  v10[0] = @"topic";
  v10[1] = @"eventType";
  v11[0] = @"on_device_personalization";
  v11[1] = v4;
  v10[2] = @"events";
  v11[2] = a1;
  v5 = @"on_device_personalization";
  v6 = a1;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = objc_alloc_init(AppMetricsEvent);
  sub_10020A020(v8, a2);
  sub_10020A100(v8, v7);

  return v8;
}

void sub_100393F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"metrics_type" equalToValue:&off_100548280];
  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = v4;
  }

  else
  {
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"has_been_posted" equalToValue:&__kCFBooleanFalse];
    v14[0] = v5;
    v14[1] = v7;
    v8 = [NSArray arrayWithObjects:v14 count:2];
    v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  }

  v9 = [v3 connection];
  v10 = sub_1002D3F5C(AppMetricsEventEntity, v9, v6);

  v11 = sub_1003B8B1C();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003940EC;
  v12[3] = &unk_10051B038;
  v13 = *(a1 + 32);
  [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v12];
}

void sub_1003940F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logKey];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] AMSEngagement enqueue resulted in error: %{public}@", &v8, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) logKey];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] AMSEngagement enqueued", &v8, 0xCu);
    goto LABEL_6;
  }
}

id sub_100394290()
{
  objc_opt_self();
  if (qword_1005AAD90 != -1)
  {
    dispatch_once(&qword_1005AAD90, &stru_1005262F8);
  }

  v0 = qword_1005AAD98;

  return v0;
}

void sub_1003942E8(id a1)
{
  v1 = objc_alloc_init(DevicePairingMonitor);
  v2 = qword_1005AAD98;
  qword_1005AAD98 = v1;
}

void sub_1003944E0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_deviceDidBecomeActiveNotification:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
  [v2 addObserver:*(a1 + 32) selector:"_deviceDidBecomeInactiveNotification:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];
  [v2 addObserver:*(a1 + 32) selector:"_deviceDidPairNotification:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];
  [v2 addObserver:*(a1 + 32) selector:"_deviceDidUnpairNotification:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
  sub_1003945C4(*(a1 + 32));
}

void sub_1003945C4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 8));
  }

  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v16 = [v3 getActivePairedDevice];

  if (!v16)
  {
LABEL_7:
    v7 = *(a1 + 8);
    if (v7)
    {
      dispatch_assert_queue_V2(*(v7 + 8));
    }

    v8 = *(a1 + 40);
    v9 = ASDLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(DevicePairingMonitor) Stopped observing paired devices", buf, 2u);
      }

      *(a1 + 40) = 0;
      v9 = +[ACXDeviceConnection sharedDeviceConnection];
      [v9 removeObserver:a1];
      goto LABEL_25;
    }

    if (v10)
    {
      *v20 = 0;
      v14 = "(DevicePairingMonitor) Paired devices are not currently being observed";
      v15 = v20;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v4 = v16;
  objc_opt_self();
  v5 = [v4 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 BOOLValue];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    dispatch_assert_queue_V2(*(v11 + 8));
  }

  v12 = *(a1 + 40);
  v9 = ASDLogHandleForCategory();
  v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v12 != 1)
  {
    if (v13)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(DevicePairingMonitor) Started observing paired devices", v17, 2u);
    }

    *(a1 + 40) = 1;
    v9 = +[ACXDeviceConnection sharedDeviceConnection];
    [v9 addObserver:a1];
    goto LABEL_25;
  }

  if (v13)
  {
    v18 = 0;
    v14 = "(DevicePairingMonitor) Paired devices are already being observed";
    v15 = &v18;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
  }

LABEL_25:
}

void sub_1003948DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100394984;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

void sub_100394990(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100394A5C;
    v7[3] = &unk_100526320;
    v8 = v5;
    v9 = v6;
    sub_100394A68(a1, "applicationsUninstalled:onDeviceWithPairingID:", v7);
  }
}

void sub_100394A68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100395304;
    v8[3] = &unk_100520B50;
    v8[4] = a1;
    v10 = a2;
    v9 = v5;
    sub_100379C5C(v7, v8);
  }
}

void sub_100394B18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100394BC0;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

void sub_100394C68(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 pairingID];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(DevicePairingMonitor) Polling after device became active: %{public}@", &v6, 0xCu);
  }

  sub_1003945C4(*(a1 + 40));
}

void sub_100394E00(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 pairingID];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(DevicePairingMonitor) Polling after device became inactive: %{public}@", &v6, 0xCu);
  }

  sub_1003945C4(*(a1 + 40));
}

void sub_100394F98(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 pairingID];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(DevicePairingMonitor) Polling after device finished pairing: %{public}@", &v6, 0xCu);
  }

  sub_1003945C4(*(a1 + 40));
}

void sub_100395130(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 pairingID];
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(DevicePairingMonitor) Polling after device finished unpairing: %{public}@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003952A0;
    v7[3] = &unk_100526348;
    v8 = v3;
    sub_100394A68(v6, "deviceUnpairedWithPairingID:", v7);
  }

  sub_1003945C4(*(a1 + 40));
}

void sub_1003952A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 pairingID];
  [v3 deviceUnpairedWithPairingID:v4];
}

void sub_100395304(uint64_t a1)
{
  v2 = sub_1002DC288();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_10039549C;
          v10[3] = &unk_10051B790;
          v9 = *(a1 + 40);
          v10[4] = v8;
          v11 = v9;
          if (v2)
          {
            dispatch_async(v2[1], v10);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

id sub_100395974(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    if (v3)
    {
      v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
    }

    else
    {
      v5 = 0;
    }

    v6 = [a1 connection];
    v7 = sub_1002D3F5C(BetaAppInfoEntity, v6, v5);

    v17[0] = @"bundle_id";
    v17[1] = @"bundle_version";
    v17[2] = @"platform";
    v17[3] = @"bundle_short_version";
    v8 = [NSArray arrayWithObjects:v17 count:4];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100395B48;
    v15 = &unk_10051B038;
    v16 = v4;
    v9 = v4;
    [v7 enumerateMemoryEntitiesWithProperties:v8 usingBlock:&v12];

    v10 = [NSArray arrayWithArray:v9, v12, v13, v14, v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100395B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = sub_10023E644(v3, @"bundle_id");
  v4 = sub_10023E644(v3, @"bundle_version");
  v5 = sub_10023E604(v3, @"platform");
  v6 = sub_10023E644(v3, @"bundle_short_version");

  if (v10)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v9 = [ASDBetaAppVersion versionWithBundleID:v10 bundleVersion:v4 platform:v5 andShortVersion:v6];
    [*(a1 + 32) addObject:v9];
  }
}

id sub_100395C4C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 connection];
    v5 = sub_100395CF4(v3);

    v6 = sub_1002D4B20(BetaAppFeedbackMetadataMemoryEntity, v4, v5);

    v2 = sub_10036BA8C(v6);
  }

  return v2;
}

id sub_100395CF4(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v2];

  v4 = [v1 exactBundleVersion];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_version" equalToValue:v4];

  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"platform" equalToLongLong:[ASDBetaAppVersion platformForRecord:v1]];
  v7 = [v1 shortVersionString];

  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_short_version" equalToValue:v7];

  v12[0] = v3;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:4];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

id sub_100395EAC(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 connection];
    v5 = sub_100395CF4(v3);
    v6 = sub_1002D4B20(BetaAppLaunchInfoMemoryEntity, v4, v5);

    v2 = sub_100235C00(v6);
    v7 = [v3 iTunesMetadata];

    v8 = [v7 artistName];
    [v2 setArtistName:v8];
  }

  return v2;
}

id sub_100395F88(uint64_t a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_100396024(a1, a2);
    v4 = [v2 connection];
    v5 = sub_1002D4B20(BetaAppLaunchInfoMemoryEntity, v4, v3);

    v2 = sub_100235C00(v5);
  }

  return v2;
}

id sub_100396024(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = [v2 bundleID];
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];

    v5 = [v2 bundleVersion];
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_version" equalToValue:v5];

    v7 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"platform", [v2 platform]);
    v8 = [v2 shortVersion];

    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_short_version" equalToValue:v8];

    v13[0] = v4;
    v13[1] = v6;
    v13[2] = v7;
    v13[3] = v9;
    v10 = [NSArray arrayWithObjects:v13 count:4];
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1003961E0(void *a1)
{
  if (a1)
  {
    v1 = [a1 connection];
    v2 = sub_1002D4C68(BetaAppFeedbackMemoryEntity, v1, 0);

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003962EC;
    v6[3] = &unk_10051B038;
    v7 = objc_opt_new();
    v3 = v7;
    [v2 enumerateMemoryEntitiesUsingBlock:v6];
    v4 = [NSArray arrayWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1003962F8(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 connection];
    v5 = sub_100395CF4(v3);

    v6 = sub_1002D4B20(BetaAppLaunchInfoMemoryEntity, v4, v5);

    v2 = sub_100235B6C(v6);
  }

  return v2;
}

id sub_1003963A0(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 connection];
    v5 = sub_100395CF4(v3);

    v6 = sub_1002D4B20(BetaAppFeedbackMetadataMemoryEntity, v4, v5);

    v2 = sub_10023E0F8(v6, @"email");
  }

  return v2;
}

id sub_100396450(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [NSNumber numberWithLongLong:a2];
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"ROWID" equalToValue:v3];

    v5 = [v2 connection];
    v2 = sub_1002D4B20(BetaAppFeedbackMemoryEntity, v5, v4);
  }

  return v2;
}

id sub_10039650C(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v2 connection];
    v5 = sub_100395CF4(v3);

    v6 = sub_1002D4B20(BetaAppLaunchInfoMemoryEntity, v4, v5);

    v7 = sub_10023E0F8(v6, @"feedback_enabled");
    v8 = [v7 BOOLValue];

    return v8;
  }

  return result;
}

id sub_1003965BC(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v2 connection];
    v5 = sub_100395CF4(v3);

    v6 = sub_1002D4B20(BetaAppLaunchInfoMemoryEntity, v4, v5);

    v7 = sub_10023E0F8(v6, @"launch_screen_enabled");
    v8 = [v7 BOOLValue];

    return v8;
  }

  return result;
}

_DWORD *sub_100396684(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 data];
  v2 = malloc_type_malloc([v1 length] + 200, 0x1000040BEF03554uLL);
  *v2 = 2;
  __strlcpy_chk();
  v3 = objc_opt_class();
  class_getName(v3);
  __strlcpy_chk();
  __strlcpy_chk();
  v2[1] = [v1 length];
  memcpy(v2 + 50, [v1 bytes], objc_msgSend(v1, "length"));

  return v2;
}

id sub_100396B08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = sub_1002A1F80(TypeCheckedArrayReader, a2);
    v5 = [WeakRetained filteredArrayUsingPredicate:v4];
    v6 = [v5 objectEnumerator];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100396BB8(void *a1)
{
  if (a1)
  {
    a1 = [a1 componentsJoinedByString:@"."];
    v1 = vars8;
  }

  return a1;
}

id sub_100396BF0(void *a1)
{
  if (a1)
  {
    v1 = [a1 _tcr_associatedReader];
    v2 = objc_opt_class();
    v3 = sub_100396B08(v1, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100396C5C(void *a1)
{
  if (a1)
  {
    v1 = [a1 _tcr_associatedReader];
    v2 = objc_opt_class();
    v3 = sub_100396B08(v1, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100396CC8(void *a1)
{
  if (a1)
  {
    v1 = [a1 _tcr_associatedReader];
    v2 = objc_opt_class();
    v3 = sub_100396B08(v1, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

_TtC9appstored17EvaluatorDownload *sub_100396E20(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_100408EB0(a1);
    v5 = sub_10023E0F8(a1, @"bundle_name");
    v6 = sub_10023E604(a1, @"automatic_type");
    v7 = sub_10023E604(a1, @"update_type");
    v9 = v7 == 1 || v6 != 0;
    v10 = sub_10023E51C(v3, @"bytes_total");
    v11 = [v10 unsignedLongLongValue];
    v12 = sub_10023E51C(v3, @"initial_odr_size");
    v13 = v12;
    if (v12)
    {
      v11 = &v11[[v12 unsignedLongLongValue]];
    }

    v14 = sub_10023E7A0(v3, @"background_asset_metadata");
    v15 = v14;
    if (v14)
    {
      v11 = &v11[sub_1001C08FC(v14)];
    }

    v16 = [[_TtC9appstored17EvaluatorDownload alloc] initWithBytes:v11 isAutomatic:v9 isRemaining:0 isUpdate:v7 != 0 name:v5 clientID:0 logKey:v4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

_TtC9appstored17EvaluatorDownload *sub_100396F9C(_TtC9appstored17EvaluatorDownload *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_10029430C(result);
    v3 = sub_100340328(v1, @"client_id");
    v4 = [(EvaluatorDownload *)v1 valueForProperty:@"bundle_name"];
    v5 = sub_1003402E8(v1, @"automatic_type");
    v6 = sub_1003402E8(v1, @"update_type");
    v8 = v6 == 1 || v5 != 0;
    v9 = sub_1002947DC(v1);
    v10 = sub_100340154(v9, @"bytes_total");
    v11 = [v10 unsignedLongLongValue];
    v12 = sub_100340154(v9, @"initial_odr_size");
    v13 = v12;
    if (v12)
    {
      v11 = &v11[[v12 unsignedLongLongValue]];
    }

    v14 = sub_1003401CC(v9, @"background_asset_metadata");
    v15 = v14;
    if (v14)
    {
      v11 = &v11[sub_1001C08FC(v14)];
    }

    v16 = [[_TtC9appstored17EvaluatorDownload alloc] initWithBytes:v11 isAutomatic:v8 isRemaining:0 isUpdate:v6 != 0 name:v4 clientID:v3 logKey:v2];

    return v16;
  }

  return result;
}

id sub_100397130(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ODRLaunchServicesClient;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRLaunchServicesProtocol];
      [v3 setExportedInterface:v4];

      v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRLaunchServicesProtocol];
      [v3 setRemoteObjectInterface:v5];

      [v3 setExportedObject:a1];
      [v3 resume];
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Created the launch services client.", v8, 2u);
      }
    }
  }

  return a1;
}

void sub_100397450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100397478(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100397490(uint64_t a1, void **a2)
{
  v3 = sub_1001C4E18(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10039751C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003975C0;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AADA8 != -1)
  {
    dispatch_once(&qword_1005AADA8, block);
  }

  v0 = qword_1005AADA0;

  return v0;
}

void sub_1003975C0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AADA0;
  qword_1005AADA0 = v1;
}

id sub_1003975F8(uint64_t a1)
{
  if (!a1)
  {
    v32 = 0;
    goto LABEL_30;
  }

  v32 = +[NSMutableDictionary dictionary];
  v1 = +[NSMutableDictionary dictionary];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100397B10;
  v46 = sub_100397B20;
  v47 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(2, 0);
  v4 = 3;
  while (1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100397B28;
    block[3] = &unk_10051BEB8;
    v41 = &v42;
    v38 = @"PLBatteryUIQueryFunctionKey";
    v30 = v1;
    v39 = v30;
    dsema = v2;
    v40 = dsema;
    dispatch_async(v3, block);

    v5 = dispatch_time(0, 60000000000);
    if (!dispatch_semaphore_wait(dsema, v5))
    {
      break;
    }

LABEL_9:

    if (!--v4)
    {
      goto LABEL_12;
    }
  }

  if ([@"PLBatteryUIQueryFunctionKey" isEqualToString:@"PLBatteryUIQueryFunctionKey"])
  {
    v6 = v43[5];
    if (!v6 || ([v6 objectForKeyedSubscript:@"PLBatteryUIXPCVersionKey"], (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v43[5], "objectForKeyedSubscript:", @"PLBatteryUIXPCVersionKey"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "doubleValue"), v10 = v9 == 1.0, v8, v7, !v10))
    {
      [NSThread sleepForTimeInterval:5.0];
      goto LABEL_9;
    }
  }

LABEL_12:
  v11 = v43[5];
  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"Breakdown"];
    v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
    v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v20)
          {
            v21 = +[NSMutableDictionary dictionary];
            v22 = sub_100237E50(v19, @"PLBatteryUIAppEnergyValueKey");
            if ((*&v22 + 0.5) >= 1)
            {
              v23 = [NSNumber numberWithInt:?];
              [v21 setObject:v23 forKeyedSubscript:@"powerUsage"];
            }

            v24 = sub_100237E50(v19, @"PLBatteryUIAppForegroundRuntimeKey");
            if ((*&v24 + 0.5) >= 1)
            {
              v25 = [NSNumber numberWithInt:?];
              [v21 setObject:v25 forKeyedSubscript:@"foregroundDuration"];
            }

            v26 = sub_100237E50(v19, @"DRAM");
            if ((roundf(*&v26 * 100.0) / 100.0) > 0.0)
            {
              v27 = [NSNumber numberWithFloat:?];
              [v21 setObject:v27 forKeyedSubscript:@"DRAMUsage"];
            }

            v28 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [v32 setObject:v21 forKeyedSubscript:v28];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v48 count:16];
      }

      while (v16);
    }
  }

  _Block_object_dispose(&v42, 8);
LABEL_30:

  return v32;
}

uint64_t sub_100397B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100397B28(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = off_1005AADB0;
  v15 = off_1005AADB0;
  if (!off_1005AADB0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100397C5C;
    v11[3] = &unk_10051E318;
    v11[4] = &v12;
    sub_100397C5C(v11);
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    dlerror();
    v10 = abort_report_np();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v10);
  }

  v6 = v5(v3, v4);

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 48));
}

void *sub_100397C5C(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1005AADB8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100397D9C;
    v5[4] = &unk_10051BD00;
    v5[5] = v5;
    v6 = off_1005263C8;
    v7 = 0;
    qword_1005AADB8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1005AADB8;
    if (qword_1005AADB8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1005AADB8;
LABEL_5:
  result = dlsym(v2, "PLBatteryUsageUIQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1005AADB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100397D9C()
{
  result = _sl_dlopen();
  qword_1005AADB8 = result;
  return result;
}

id sub_100397E10()
{
  objc_opt_self();
  if (qword_1005AADC8 != -1)
  {
    dispatch_once(&qword_1005AADC8, &stru_1005263E0);
  }

  v0 = qword_1005AADC0;

  return v0;
}

void sub_100397E68(id a1)
{
  v1 = objc_alloc_init(PurchaseHistoryService);
  v2 = qword_1005AADC0;
  qword_1005AADC0 = v1;
}

id *sub_100398254(id *result, void *a2, void *a3)
{
  if (result)
  {
    return sub_10039826C(result, a2, 1, -1, a3);
  }

  return result;
}

id *sub_10039826C(id *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (!a1)
  {
    goto LABEL_28;
  }

  v40.receiver = a1;
  v40.super_class = RestoreAppInstall;
  a1 = objc_msgSendSuper2(&v40, "init");
  if (!a1)
  {
    goto LABEL_28;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = +[NSUUID UUID];
  [v11 setObject:v12 forKeyedSubscript:@"external_id"];

  v13 = &off_10051D238;
  v14 = &off_10051D240;
  if (a3 != 3)
  {
    v14 = &off_10051D230;
  }

  if (a3 != 2)
  {
    v13 = v14;
  }

  [v11 setObject:*v13 forKeyedSubscript:@"log_code"];
  v15 = [v9 softwareVersionBundleID];
  [v11 setObject:v15 forKeyedSubscript:@"bundle_id"];

  v16 = [v9 itemID];
  [v11 setObject:v16 forKeyedSubscript:@"item_id"];

  v17 = [v9 storefront];
  [v11 setObject:v17 forKeyedSubscript:@"storefront"];

  v18 = [v9 softwareVersionExternalIdentifier];
  [v11 setObject:v18 forKeyedSubscript:@"evid"];

  v19 = [v9 downloaderID];

  if (v19)
  {
    v20 = [v9 downloaderID];
    [v11 setObject:v20 forKeyedSubscript:@"downloader_id"];
  }

  v21 = [v9 altDSID];

  if (v21)
  {
    v22 = [v9 altDSID];
    [v11 setObject:v22 forKeyedSubscript:@"alt_dsid"];
  }

  v23 = [v9 purchaserID];
  [v11 setObject:v23 forKeyedSubscript:@"account_id"];

  v24 = [v9 appleID];
  [v11 setObject:v24 forKeyedSubscript:@"apple_id"];

  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 deviceBasedVPP]);
  [v11 setObject:v25 forKeyedSubscript:@"device_based_vpp"];

  [v11 setObject:&off_1005482B0 forKeyedSubscript:@"bootstrapped"];
  [v11 setObject:&off_1005482B0 forKeyedSubscript:@"source_type"];
  v26 = [NSNumber numberWithInteger:a4];
  [v11 setObject:v26 forKeyedSubscript:@"priority"];

  v27 = [NSNumber numberWithInteger:a3];
  [v11 setObject:v27 forKeyedSubscript:@"restore_type"];

  v28 = [v9 artistName];
  v29 = [v9 softwareVersionBundleID];
  v30 = v29;
  if (v28 && v29)
  {
    v31 = +[LSApplicationWorkspace defaultWorkspace];
    v32 = [v31 createDeviceIdentifierWithVendorName:v28 bundleIdentifier:v30];
    [v11 setObject:v32 forKeyedSubscript:@"vid"];
  }

  if (a3 == 3)
  {
    v34 = &__kCFBooleanTrue;
    v35 = &off_100520128;
    v36 = &off_100548328;
LABEL_24:
    v37 = &off_100520098;
    goto LABEL_25;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      if (+[AMSDevice deviceIsAppleTV])
      {
        v33 = &off_1005482C8;
      }

      else
      {
        v33 = &off_1005482E0;
      }

      [v11 setObject:v33 forKeyedSubscript:@"metrics_install_type"];
    }

    v34 = &__kCFBooleanTrue;
    v35 = &off_100520128;
    v36 = &off_100548310;
    goto LABEL_24;
  }

  v34 = &off_100548328;
  v35 = &off_100520098;
  v36 = &off_1005482F8;
  v37 = off_100520250;
LABEL_25:
  [v11 setObject:v36 forKeyedSubscript:*v37];
  [v11 setObject:v34 forKeyedSubscript:*v35];
  if (v10)
  {
    v38 = [v10[1] copy];
  }

  else
  {
    v38 = 0;
  }

  [v11 setObject:v38 forKeyedSubscript:@"policy"];

  [a1[2] addEntriesFromDictionary:v11];
LABEL_28:

  return a1;
}

id sub_10039872C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"account_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100398764(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"downloader_id");
    if ([v1 longLongValue])
    {
      v2 = v1;
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

  return v2;
}

_BYTE *sub_1003987D0(_BYTE *a1)
{
  if (a1)
  {
    if (a1[64])
    {
      a1 = 0;

      return a1;
    }

    a1 = sub_10023E0F8(a1, @"evid");
  }

  return a1;
}

id sub_10039882C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"storefront");
    v1 = vars8;
  }

  return a1;
}

id sub_100398864(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"vid");
    v1 = vars8;
  }

  return a1;
}

id sub_10039889C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"failure_error");
    if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:0];
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

  return v2;
}

void sub_100398948(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10039889C(a1);
    if (v4 && ([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "code"), IsEqual = ASDErrorIsEqual(), v5, (IsEqual & 1) != 0))
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = sub_100408EB0(a1);
        v11 = 138412546;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%@] Nothing change about hard fail error: %{public}@", &v11, 0x16u);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_100408EB0(a1);
        v11 = 138412546;
        v12 = v10;
        v13 = 2114;
        v14 = v3;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Marking restore as hard failed with error: %{public}@", &v11, 0x16u);
      }

      v7 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
      sub_10023E000(a1, v7, @"failure_error");
    }

    sub_10023E000(a1, &off_100548340, @"phase");
    sub_10023E000(a1, &off_100548358, @"restore_state");
  }
}

void sub_100398B5C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_100408EB0(a1);
      v10 = 138412546;
      v11 = v9;
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Restore failed temporarily with error: %{public}@", &v10, 0x16u);
    }

    v5 = sub_10023E0F8(a1, @"restore_retry_count");
    v6 = [v5 integerValue];

    v7 = [NSNumber numberWithInteger:v6 + 1];
    sub_10023E000(a1, v7, @"restore_retry_count");

    v8 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
    sub_10023E000(a1, v8, @"failure_error");

    sub_10023E000(a1, &off_100548370, @"restore_state");
  }
}

void *sub_100398F44(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v10.receiver = a1;
    v10.super_class = SubscriptionEntitlementsResponse;
    v5 = objc_msgSendSuper2(&v10, "init");
    if (v5)
    {
      v6 = [v4 copy];
      v7 = v5[1];
      v5[1] = v6;
    }

    a1 = v5;
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void **sub_100398FDC(void **a1)
{
  if (a1)
  {
    a1 = sub_100237A3C(a1[1], @"user.dsId");
    v1 = vars8;
  }

  return a1;
}

id sub_100399018(uint64_t a1)
{
  if (a1)
  {
    v33 = objc_alloc_init(NSMutableArray);
    v2 = sub_100237778(*(a1 + 8), @"subscriptions");
    v3 = sub_100396BF0(v2);

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v3;
    v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v31)
    {
      v30 = *v39;
      *&v4 = 138412546;
      v28 = v4;
      do
      {
        v5 = 0;
        do
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v38 + 1) + 8 * v5);
          v7 = sub_10023790C(v6, @"appAdamId");
          v8 = sub_1002380D8(v6, @"segment");
          v32 = v5;
          if ([v8 isEqualToString:@"AppStore"])
          {
            v9 = 1;
          }

          else if ([v8 isEqualToString:@"News"])
          {
            v9 = 0;
          }

          else if ([v8 isEqualToString:@"Activity"])
          {
            v9 = 2;
          }

          else if ([v8 isEqualToString:@"Music"])
          {
            v9 = 3;
          }

          else if ([v8 isEqualToString:@"TV"])
          {
            v9 = 4;
          }

          else if ([v8 isEqualToString:@"iCloud"])
          {
            v9 = 5;
          }

          else if ([v8 isEqualToString:@"Podcasts"])
          {
            v9 = 6;
          }

          else if ([v8 isEqualToString:@"HWBundle"])
          {
            v9 = 7;
          }

          else
          {
            v10 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v25 = objc_opt_class();
              *buf = v28;
              v45 = v25;
              v46 = 2114;
              v47 = v8;
              v26 = v25;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Error parsing unknown segment string: %{public}@", buf, 0x16u);
            }

            v9 = -1;
          }

          v11 = sub_100237778(v6, @"inAppSubscriptions");
          v12 = sub_100396BF0(v11);

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            do
            {
              v17 = 0;
              do
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v34 + 1) + 8 * v17);
                v19 = [ASDSubscriptionEntitlement alloc];
                v20 = *(a1 + 8);
                if (v20)
                {
                  v21 = sub_1002379EC(v20, @"user.hasFamily", 0);
                }

                else
                {
                  v21 = 0;
                }

                v22 = [v19 initWithDictionary:v18 forAppAdamID:v7 segment:v9 hasFamily:{v21, v28}];
                v23 = v22;
                if (v22 && [v22 segment] == v9)
                {
                  [v33 addObject:v23];
                }

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v24 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
              v15 = v24;
            }

            while (v24);
          }

          v5 = v32 + 1;
        }

        while ((v32 + 1) != v31);
        v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v31);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

id sub_10039944C(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = sub_100237778(*(a1 + 8), @"subscriptions");
    v4 = sub_100396BF0(v3);

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = sub_100237778(*(*(&v23 + 1) + 8 * i), @"introOfferConsumedFamilyIds");
          v11 = sub_100396C5C(v10);

          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [v2 addObject:*(*(&v19 + 1) + 8 * j)];
              }

              v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    v17 = [NSArray arrayWithArray:v2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void *sub_100399680(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = SQLiteDatabaseStoreDescriptor;
    a1 = objc_msgSendSuper2(&v16, "init");
    if (a1)
    {
      v11 = [v9 copy];
      v12 = a1[1];
      a1[1] = v11;

      v13 = [v10 copy];
      v14 = a1[2];
      a1[2] = v13;

      a1[3] = a4;
      a1[4] = a5;
    }
  }

  return a1;
}

id sub_100399778(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(MIStoreMetadata);
  if (v3)
  {
    v4 = v2;
    v5 = [v4 artistName];
    [v3 setArtistName:v5];

    v6 = [v4 kind];
    [v3 setKind:v6];

    v7 = [v4 itemID];
    [v3 setItemID:v7];

    v8 = [v4 title];
    [v3 setItemName:v8];

    v9 = [v4 softwareVersionExternalIdentifier];
    [v3 setSoftwareVersionExternalIdentifier:v9];

    v10 = [v4 betaExternalVersionIdentifier];
    [v3 setBetaExternalVersionIdentifier:v10];

    v11 = [v4 bundleID];
    [v3 setSoftwareVersionBundleID:v11];

    v12 = [v4 bundleVersion];
    [v3 setBundleVersion:v12];

    [v3 setHasMessagesExtension:{objc_msgSend(v4, "hasMessagesExtension")}];
    [v3 setLaunchProhibited:{objc_msgSend(v4, "launchProhibited")}];
    v13 = [v4 genre];
    [v3 setGenre:v13];

    v14 = [v4 genreID];
    [v3 setGenreID:v14];

    v15 = [v4 ratingLabel];
    [v3 setRatingLabel:v15];

    v16 = [v4 ratingRank];
    [v3 setRatingRank:v16];

    [v3 setGameCenterEnabled:{objc_msgSend(v4, "isGameCenterEnabled")}];
    [v3 setIsAutoDownload:{objc_msgSend(v4, "isAutomatic")}];
    v17 = [v4 purchaseDate];
    v18 = sub_1002524C4(v17);
    [v3 setPurchaseDate:v18];

    [v3 setPurchasedRedownload:{objc_msgSend(v4, "isPurchasedRedownload")}];
    v19 = [v4 buyParams];
    [v3 setRedownloadParams:v19];

    v20 = [v4 releaseDate];
    v21 = sub_1002524C4(v20);
    [v3 setReleaseDate:v21];

    v22 = [v4 storefront];
    v23 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v22 longLongValue]);
    [v3 setStorefront:v23];

    v24 = [v4 iAdConversionDate];
    v25 = sub_1002524C4(v24);
    [v3 setIAdConversionDate:v25];

    v26 = [v4 iAdImpressionDate];
    v27 = sub_1002524C4(v26);
    [v3 setIAdImpressionDate:v27];

    v28 = [v4 iAdAttribution];
    v29 = [v28 stringValue];
    [v3 setIAdAttribution:v29];

    v30 = [v4 storeCohort];
    [v3 setStoreCohort:v30];

    [v3 setDeviceBasedVPP:{objc_msgSend(v4, "isDeviceBasedVPP")}];
    v31 = [v4 variantID];

    [v3 setVariantID:v31];
  }

  return v3;
}

id sub_100399B78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v10 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = v5;
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v12 = v2;
      v13 = 2114;
      v14 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Error finding app for bundle ID %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = sub_100399CD8([ODRApplication alloc], v2);
  }

  else
  {
    v8 = sub_100399D6C(v3, v4, 1);
    v6 = v4;
  }

  return v8;
}

void *sub_100399CD8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ODRApplication;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = dispatch_queue_create("com.apple.appstored.ODRApplication", &_dispatch_queue_attr_concurrent);
      v5 = a1[7];
      a1[7] = v4;

      v6 = [v3 copy];
      v7 = a1[3];
      a1[3] = v6;
    }
  }

  return a1;
}

id sub_100399D6C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  if (a3 && (!v4 || ([v4 isPlaceholder] & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    v6 = [ODRMutableApplication alloc];
    v7 = [v4 bundleIdentifier];
    v5 = sub_100399CD8(v6, v7);

    if (v5)
    {
      v8 = v5[7];
      block = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_10039C9F4;
      v31 = &unk_10051C8F8;
      v32 = v5;
      LOBYTE(v33) = 1;
      dispatch_barrier_sync(v8, &block);
    }

    v9 = [v4 URL];
    v10 = [v9 URLByResolvingSymlinksInPath];
    v11 = v10;
    if (v5)
    {
      v12 = [v10 copy];
      v13 = v5[7];
      block = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_10039AF08;
      v31 = &unk_10051B570;
      v32 = v5;
      v33 = v12;
      v14 = v12;
      dispatch_barrier_async(v13, &block);
    }

    v15 = [v4 shortVersionString];
    sub_10039C2A4(v5, v15);

    v16 = [v4 exactBundleVersion];
    sub_10039C348(v5, v16);

    v17 = [v4 iTunesMetadata];
    v18 = [v17 variantID];
    sub_10039C3EC(v5, v18);

    v19 = [v4 iTunesMetadata];
    v20 = [v19 storeItemIdentifier];

    if (v20)
    {
      v21 = [v4 iTunesMetadata];
      v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v21 storeItemIdentifier]);
      sub_10039C490(v5, v22);

      sub_10039C534(v5, [v4 applicationHasMIDBasedSINF]);
      if ([v4 isBeta])
      {
        sub_10039C5B4(v5, 1);
        v23 = [v4 iTunesMetadata];
        v24 = [v23 betaVersionIdentifier];
      }

      else
      {
        v23 = [v4 iTunesMetadata];
        v24 = [v23 versionIdentifier];
      }

      v25 = [NSString stringWithFormat:@"%lld", v24];
      sub_10039C634(v5, v25);
    }
  }

  v26 = [v5 copy];

  return v26;
}

id sub_10039A094(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v10 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v2 allowPlaceholder:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = v5;
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v12 = v2;
      v13 = 2114;
      v14 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Error finding app for bundle ID %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = sub_100399CD8([ODRApplication alloc], v2);
  }

  else
  {
    v8 = sub_100399D6C(v3, v4, 0);
    v6 = v4;
  }

  return v8;
}

id sub_10039A1F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_100399D6C(v3, v2, 1);

  return v4;
}

id sub_10039A250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    objc_opt_self();
    if (qword_1005AADD8 != -1)
    {
      dispatch_once(&qword_1005AADD8, &stru_100526430);
    }

    v6 = qword_1005AADD0;
    v7 = [v6 numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];

    if (v7)
    {
      v8 = [NSURL URLWithString:v5];
      v9 = 0;
      if (!a3)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v10 = sub_10039A474(a1);
      if (v10)
      {
        v11 = [v5 stringByRemovingPercentEncoding];
        v12 = [v10 URLByAppendingPathComponent:v11];

        v13 = +[NSFileManager defaultManager];
        v14 = [v12 path];
        v15 = [v13 fileExistsAtPath:v14];

        if (v15)
        {
          v16 = [v12 path];
          v8 = [NSURL fileURLWithPath:v16];

          v9 = 0;
        }

        else
        {
          v9 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:120 userInfo:0];
          v8 = 0;
        }
      }

      else
      {
        v9 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:102 userInfo:0];
        v8 = 0;
      }

      if (!a3)
      {
        goto LABEL_16;
      }
    }

    if (!v8)
    {
      v17 = v9;
      *a3 = v9;
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

id sub_10039A474(uint64_t a1)
{
  v4 = *(a1 + 112);
  v2 = (a1 + 112);
  v3 = v4;
  if (!v4)
  {
    objc_storeStrong(v2, *(a1 + 40));
    v3 = *(a1 + 112);
  }

  return v3;
}

id sub_10039A4BC(id result, uint64_t a2)
{
  if (result)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v2 = *(result + 7);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10039A5C0;
    block[3] = &unk_100526410;
    block[4] = result;
    block[5] = &v5;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = v6[5];
    _Block_object_dispose(&v5, 8);

    return v3;
  }

  return result;
}

uint64_t sub_10039A5A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10039A5C0(uint64_t *a1)
{
  v2 = sub_10039C7D0(a1[4]);
  if (v2)
  {
    v8 = v2;
    v3 = [ODRManifest alloc];
    v4 = sub_10039A6A0(a1[4]);
    v5 = sub_100280620(v3, v8, v4, a1[6]);
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    if (!a1[6])
    {
      goto LABEL_6;
    }

    v8 = 0;
    *a1[6] = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:100 userInfo:0];
  }

  v2 = v8;
LABEL_6:
}

id sub_10039A6A0(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v1 = *(a1 + 56);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10039AC2C;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10039A79C(id result, uint64_t a2)
{
  if (result)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10039A5A8;
    v9 = sub_10039A5B8;
    v10 = 0;
    v2 = *(result + 7);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10039A888;
    block[3] = &unk_100526410;
    block[4] = result;
    block[5] = &v5;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = v6[5];
    _Block_object_dispose(&v5, 8);

    return v3;
  }

  return result;
}