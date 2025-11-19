void sub_100000F90(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "Notification");
  if (string)
  {
    v4 = string;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained notification:v4];
  }
}

void sub_10000108C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueRecheck];
}

BOOL sub_100001278(int a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 && a2)
  {
    v10 = *a2;
    *a2 = 0;
    sub_10000B908(a1, kCFErrorDomainMach, v10, a2, @"aks_get_lock_state failed: %x", &a9);
  }

  return a1 == 0;
}

void sub_100001608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000176C(uint64_t a1)
{
  v2 = [*(a1 + 32) listeners];
  [v2 removePointer:*(a1 + 40)];
}

void sub_100001874(uint64_t a1)
{
  v2 = [*(a1 + 32) listeners];
  [v2 compact];

  v3 = [*(a1 + 32) listeners];
  [v3 addPointer:*(a1 + 40)];
}

void sub_100001AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001B50(id a1)
{
  qword_10001DE28 = objc_alloc_init(XPCNotificationDispatcher);

  _objc_release_x1();
}

void sub_100002224(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = +[NSNull null];

  if (v6 == v7)
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
  }
}

id sub_1000022C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000AE54("processing keys");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pending:%@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) account];
  v6 = *(a1 + 40);
  v9 = 0;
  v7 = [v5 keysChanged:v6 error:&v9];

  return v7;
}

void sub_1000024B4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (!v3)
  {
    v3 = +[NSNull null];
  }

  [*(a1 + 40) setObject:v3 forKey:v4];
}

void *sub_100002AAC(void *result)
{
  if ((*(result[4] + 20) & 1) == 0)
  {
    v1 = result;
    v2 = sub_10000AE54("event");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ received darwin notification before first NSNotification", &v7, 0xCu);
    }

    v4 = v1[4];
    v5 = [v4 copyAllKeyInterests];
    v6 = [v4 pendKeysAndGetNewlyPended:v5];

    return [v1[4] processPendingKeysForCurrentLockState];
  }

  return result;
}

void sub_100003128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v9 = a6;
  v10 = a7;
  v11 = *(a1 + 32);
  v20 = 0;
  v12 = [v11 syncWithAllPeers:&v20];
  v13 = v20;
  if (!v12)
  {
    v14 = sub_10000AE54("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to syncWithAllPeers: %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003294;
  block[3] = &unk_100018DB8;
  v18 = v13;
  v19 = v10;
  v15 = v13;
  v16 = v10;
  dispatch_async(v9, block);
}

void sub_10000334C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = sub_10000AE54("syncwith");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = [v11 allObjects];
    v18 = [v17 componentsJoinedByString:@" "];
    *buf = 138412546;
    v46 = v16;
    v47 = 2112;
    v48 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ syncwith peers: %@", buf, 0x16u);
  }

  v19 = sub_10000AE54("syncwith");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = [v12 allObjects];
    v22 = [v21 componentsJoinedByString:@" "];
    *buf = 138412546;
    v46 = v20;
    v47 = 2112;
    v48 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ syncwith backups: %@", buf, 0x16u);
  }

  v23 = *(a1 + 40);
  v44 = 0;
  v24 = [v23 syncWithPeers:v11 backups:v12 error:&v44];
  v25 = v44;
  v26 = sub_10000AE54("syncwith");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v13;
    v28 = v12;
    v29 = v14;
    v30 = v11;
    v31 = *(a1 + 32);
    v32 = [v24 allObjects];
    [v32 componentsJoinedByString:@" "];
    v33 = v38 = a1;
    *buf = 138412546;
    v46 = v31;
    v11 = v30;
    v14 = v29;
    v12 = v28;
    v13 = v27;
    v47 = 2112;
    v48 = v33;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ syncwith handled: %@", buf, 0x16u);

    a1 = v38;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000369C;
  block[3] = &unk_1000189E0;
  v34 = *(a1 + 32);
  v40 = v24;
  v41 = v34;
  v42 = v25;
  v43 = v13;
  v35 = v25;
  v36 = v13;
  v37 = v24;
  dispatch_async(v14, block);
}

uint64_t sub_10000369C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = [*(a1 + 40) lockMonitor];
    [v2 recheck];

    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

void sub_1000037AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v9 = a6;
  v10 = a7;
  [*(a1 + 32) setEnsurePeerRegistrationEnqueuedButNotStarted:0];
  v11 = *(a1 + 40);
  v26 = 0;
  v12 = [v11 ensurePeerRegistration:&v26];
  v13 = v26;
  v14 = sub_10000AE54("EnsurePeerRegistration");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = @"failure";
    *buf = 138412802;
    if (v12)
    {
      v16 = @"success";
    }

    v28 = v15;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ ensurePeerRegistration called, %@ (%@)", buf, 0x20u);
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v18 = [*(a1 + 32) lockMonitor];
    [v18 recheck];

    v19 = [*(a1 + 32) lockMonitor];
    v17 = [v19 locked] ^ 1;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000399C;
  v22[3] = &unk_100018990;
  v25 = v17;
  v23 = v13;
  v24 = v10;
  v20 = v13;
  v21 = v10;
  dispatch_async(v9, v22);
}

void sub_100003A34(uint64_t a1)
{
  if ([*(a1 + 32) ensurePeerRegistration])
  {
    if (*(a1 + 40) != 1 || ([*(a1 + 32) lockMonitor], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "locked"), v2, (v3 & 1) == 0))
    {
      if ([*(a1 + 32) ensurePeerRegistrationEnqueuedButNotStarted])
      {
        v4 = sub_10000AE54("EnsurePeerRegistration");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 32);
          v7 = 138412290;
          v8 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ ensurePeerRegistration block already enqueued, not starting a new one", &v7, 0xCu);
        }
      }

      else
      {
        v6 = *(a1 + 32);

        [v6 doEnsurePeerRegistration];
      }
    }
  }
}

void sub_100003C04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v10 = a2;
  v11 = a7;
  v12 = a6;
  v13 = sub_10000AE54("CloudKeychainProxy");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "send keys: %@", buf, 0xCu);
  }

  v14 = *(a1 + 40);
  v26 = 0;
  v15 = (*(v14 + 16))();
  v16 = v26;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003DB0;
  block[3] = &unk_1000189E0;
  v17 = *(a1 + 32);
  v22 = v15;
  v23 = v17;
  v24 = v16;
  v25 = v11;
  v18 = v11;
  v19 = v16;
  v20 = v15;
  dispatch_async(v12, block);
}

uint64_t sub_100003DB0(void *a1)
{
  if (!a1[4])
  {
    v2 = sub_10000AE54("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v4 = a1[6];
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ ensurePeerRegistration failed: %@", &v8, 0x16u);
    }

    v5 = a1[4];
  }

  v6 = a1[6];
  return (*(a1[7] + 16))();
}

void sub_100003F38(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000041B4;
  v27 = sub_1000041C4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000041B4;
  v21 = sub_1000041C4;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000041B4;
  v15 = sub_1000041C4;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -86;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = -86;
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000041CC;
  block[3] = &unk_1000188F0;
  block[4] = v2;
  block[5] = &v23;
  block[6] = &v17;
  block[7] = &v11;
  block[8] = &v7;
  block[9] = v5;
  dispatch_sync(v3, block);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v24[5], v18[5], v12[5], *(v8 + 24), *(*(a1 + 32) + 176));
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void sub_10000416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Block_object_dispose((v33 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000041B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000041CC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 120) copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(a1 + 32) + 136) copy];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 21);
  v11 = [*(a1 + 32) lockMonitor];
  *(*(*(a1 + 72) + 8) + 24) = [v11 locked];

  *(*(a1 + 32) + 24) = 1;
  v12 = +[NSMutableSet set];
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  *(v13 + 96) = v12;

  v15 = +[NSMutableSet set];
  v16 = *(a1 + 32);
  v17 = *(v16 + 128);
  *(v16 + 128) = v15;

  v18 = +[NSMutableSet set];
  v19 = *(a1 + 32);
  v20 = *(v19 + 144);
  *(v19 + 144) = v18;

  return _objc_release_x1();
}

void sub_1000042F4(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v69 = a2;
  v9 = a3;
  *(*(a1 + 32) + 24) = 0;
  v10 = *(a1 + 32);
  if (*(v10 + 21) == 1 && a4 == 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v10 + 23);
  }

  *(v10 + 21) = v12 & 1;
  *(*(a1 + 32) + 23) = 0;
  v13 = 1;
  [*(a1 + 32) handlePendingEnsurePeerRegistrationRequests:1];
  if ([*(*(a1 + 32) + 128) isEmpty])
  {
    v13 = [*(*(a1 + 32) + 144) isEmpty] ^ 1;
  }

  if (v9)
  {
    [*(*(a1 + 32) + 120) minusSet:v9];
    [*(*(a1 + 32) + 136) minusSet:v9];
    if (([v9 isEmpty] & 1) == 0)
    {
      v14 = sub_10000AE54("sync-ids");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v9 logIDs];
        *buf = 138412290;
        v71 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handled syncIDs: %@", buf, 0xCu);
      }

      v16 = sub_10000AE54("sync-ids");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(*(a1 + 32) + 120) logIDs];
        *buf = 138412290;
        v71 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "remaining peerIDs: %@", buf, 0xCu);
      }

      v18 = sub_10000AE54("sync-ids");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(*(a1 + 32) + 136) logIDs];
        *buf = 138412290;
        v71 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "remaining backupIDs: %@", buf, 0xCu);
      }

      if (v13)
      {
        v20 = sub_10000AE54("sync-ids");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(*(a1 + 32) + 128) logIDs];
          *buf = 138412290;
          v71 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "signaled peerIDs: %@", buf, 0xCu);
        }

        v22 = sub_10000AE54("sync-ids");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(*(a1 + 32) + 144) logIDs];
          *buf = 138412290;
          v71 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "signaled backupIDs: %@", buf, 0xCu);
        }
      }
    }

    v24 = *(a1 + 32);
    v25 = *(v24 + 128);
    *(v24 + 128) = 0;

    v26 = *(a1 + 32);
    v27 = *(v26 + 144);
    *(v26 + 144) = 0;
  }

  v28 = *(*(a1 + 32) + 88);
  v29 = +[NSNull null];
  [v28 removeObject:v29];

  [*(*(a1 + 32) + 88) minusSet:v69];
  v30 = [*(*(a1 + 32) + 96) count];
  v31 = *(*(a1 + 32) + 96);
  v32 = *(a1 + 32);
  v33 = *(v32 + 96);
  *(v32 + 96) = 0;

  v34 = [*(a1 + 32) pendKeysAndGetPendingForCurrentLockState:v31];
  v35 = sub_10000AE54("keytrace");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v9;
    v37 = *(a1 + 32);
    [v69 allObjects];
    v38 = v64 = v31;
    v67 = v13;
    [v38 componentsJoinedByString:@" "];
    v39 = v65 = a5;
    v40 = [v34 allObjects];
    v41 = [v40 componentsJoinedByString:@" "];
    *buf = 138412802;
    v71 = v37;
    v9 = v36;
    v72 = 2112;
    *v73 = v39;
    *&v73[8] = 2112;
    v74 = v41;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ account handled: %@ pending: %@", buf, 0x20u);

    v31 = v64;
    v13 = v67;

    a5 = v65;
  }

  [*(a1 + 32) persistState];
  if (v13)
  {
    v42 = [*(a1 + 32) lockMonitor];
    v43 = [v42 locked];

    if ((v43 & 1) == 0)
    {
      v44 = sub_10000AE54("event");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(a1 + 32);
        v46 = [v45 hasPendingSyncIDs];
        v47 = *(a1 + 32);
        v66 = v30;
        v48 = v9;
        v49 = v47[24];
        [v47 lockMonitor];
        v68 = v34;
        v51 = v50 = a5;
        v52 = [v51 locked];
        *buf = 138413058;
        v71 = v45;
        v72 = 1024;
        *v73 = v46;
        *&v73[4] = 1024;
        *&v73[6] = v49;
        v9 = v48;
        v30 = v66;
        LOWORD(v74) = 1024;
        *(&v74 + 2) = v52;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@ syncWithPeersPending: %d inCallout: %d isLocked: %d", buf, 0x1Eu);

        a5 = v50;
        v34 = v68;
      }

      if ([*(a1 + 32) hasPendingSyncIDs])
      {
        v53 = *(a1 + 32);
        if ((v53[24] & 1) == 0)
        {
          v54 = [v53 lockMonitor];
          v55 = [v54 locked];

          if ((v55 & 1) == 0)
          {
            [*(a1 + 32) doSyncWithPendingPeers];
          }
        }
      }
    }
  }

  v56 = *(a1 + 32);
  if (v30)
  {
    goto LABEL_35;
  }

  v58 = [*(a1 + 32) lockMonitor];
  if (([v58 locked]& 1) != 0)
  {
LABEL_39:

    v56 = *(a1 + 32);
    goto LABEL_40;
  }

  v63 = *(*(*(a1 + 40) + 8) + 24);

  v56 = *(a1 + 32);
  if (v63 == 1)
  {
LABEL_35:
    v57 = [v56 copyValues:v34];
    [v56 processKeyChangedEvent:v57];

    v56 = *(a1 + 32);
    if (!*(v56 + 184))
    {
      goto LABEL_40;
    }

    v58 = sub_10000AE54("SecError");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Flush block is not null and sending new keys", buf, 2u);
    }

    goto LABEL_39;
  }

LABEL_40:
  v59 = *(v56 + 184);
  if (v59)
  {
    dispatch_async(*(v56 + 168), v59);
    v60 = *(a1 + 32);
    v61 = *(v60 + 184);
    *(v60 + 184) = 0;
  }

  if (a5)
  {
    v62 = [*(a1 + 32) lockMonitor];
    [v62 recheck];
  }

  xpc_transaction_end();
}

void sub_100005190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000AE54("proxy");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removing from KVS store: %@", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) store];
  [v5 removeObjectForKey:v3];
}

void sub_100005744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_10000AE54("fresh");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "EFRESH";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s WFS Done", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100005824(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v11 = 0;
  v3 = [v2 pullUpdates:&v11];
  v4 = v11;

  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000058F8;
  v8[3] = &unk_1000188A0;
  v10 = v3;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void sub_100005CC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 || (+[NSNull null], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v6))
  {
    v13 = [*(a1 + 32) store];
    [v13 removeObjectForKey:v5];
  }

  else
  {
    if ([v5 hasPrefix:@"ak|"])
    {
      v8 = [*(a1 + 32) store];
      v9 = [v8 objectForKey:v5];

      if ([v9 isEqual:v6])
      {
        v10 = sub_10000AE54("keytrace");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "forcing resend of key write: %@", &v14, 0xCu);
        }

        v11 = [*(a1 + 32) store];
        [v11 removeObjectForKey:v5];
      }
    }

    v12 = [*(a1 + 32) store];
    [v12 addOneToOutGoing];

    v13 = [*(a1 + 32) store];
    [v13 setObject:v6 forKey:v5];
  }
}

void sub_1000071C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) objectForKey:v3];
  v5 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "get: key: %@, object: %@", &v8, 0x16u);
  }

  if (v4)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = v6;
  xpc_dictionary_set_value(*(a1 + 40), [v3 UTF8String], v6);
}

void sub_1000072F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
  }

  else
  {
    v6 = xpc_null_create();
  }

  value = v6;
  v7 = *(a1 + 32);
  v8 = [v5 UTF8String];

  xpc_dictionary_set_value(v7, v8, value);
}

void sub_100007E10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315394;
    *&v19[4] = "EFRESH";
    *&v19[12] = 2112;
    *&v19[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Result from [Proxy waitForSynchronization:]: %@", v19, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (v4)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      Domain = CFErrorGetDomain(v4);
      *v19 = _NSConcreteStackBlock;
      *&v19[8] = 0x40000000;
      *&v19[16] = sub_10000DA2C;
      v20 = &unk_100018FC0;
      v21 = v7;
      v22 = "domain";
      sub_10000B544(Domain, v19);
      Code = CFErrorGetCode(v4);
      xpc_dictionary_set_int64(v7, "code", Code);
      v10 = CFErrorCopyUserInfo(v4);
      v14 = sub_10000BC8C(v10, 0, v11, v12, v13);
      if (v14)
      {
        v15 = v14;
        v16 = malloc_type_malloc(v14, 0xD5244697uLL);
        v17 = &v16[v15];
        v18 = sub_10000BF20(v10, 0, 0, v16, v17);
        if (v18)
        {
          xpc_dictionary_set_data(v7, "userinfo", v18, v17 - v18);
        }

        free(v16);
      }

      CFRelease(v10);
      xpc_dictionary_set_value(*(a1 + 32), "error", v7);
    }

    else
    {
      xpc_dictionary_set_string(v6, "value", "ACK");
    }

    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }
}

void sub_100008034(uint64_t a1)
{
  [*(a1 + 32) sendAckResponse:*(a1 + 40) forEvent:*(a1 + 48)];
  v1 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "flush reply sent", v2, 2u);
  }
}

void sub_1000080B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xdict = xpc_dictionary_create_reply(v3);
  v5 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(xdict, "value", v5);
  xpc_connection_send_message(*(a1 + 40), xdict);
}

void sub_1000082D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000082F0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isNSString];
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_1000086E4(id a1)
{
  v1 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "exiting due to SIGTERM", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100008758(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v4 = xpc_connection_copy_entitlement_value();
    v3 = v4;
    if (v4 && xpc_get_type(v4) == &_xpc_type_BOOL && xpc_BOOL_get_value(v3))
    {
      v5 = +[CloudKeychainProxy sharedObject];
      v6 = [v5 proxyID];
      v7 = [v6 ckdkvsproxy_queue];
      xpc_connection_set_target_queue(v2, v7);

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100008984;
      v10[3] = &unk_100018CA0;
      v8 = v2;
      v11 = v8;
      xpc_connection_set_event_handler(v8, v10);
      xpc_connection_resume(v8);
    }

    else
    {
      v9 = sub_10000AE54("xpcproxy");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v10[0]) = 67109120;
        HIDWORD(v10[0]) = xpc_connection_get_pid(v2);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cloudkeychainproxy_event_handler: rejected client %d", v10, 8u);
      }

      xpc_connection_cancel(v2);
    }
  }

  else
  {
    v3 = sub_10000AE54("xpcproxy");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "expected XPC_TYPE_CONNECTION", v10, 2u);
    }
  }
}

void sub_100008984(uint64_t a1, void *a2)
{
  v4 = a2;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v3 = +[CloudKeychainProxy sharedObject];
    [v3 cloudkeychainproxy_peer_dictionary_handler:*(a1 + 32) forEvent:v4];
  }
}

void sub_100008A00()
{
  v0 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "finalize_connection", v3, 2u);
  }

  v1 = +[CloudKeychainProxy sharedObject];
  v2 = [v1 proxyID];
  [v2 synchronizeStore];

  xpc_transaction_end();
}

void sub_100008AF8(id a1)
{
  qword_10001DE30 = objc_opt_new();

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v4 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting CloudKeychainProxy", v21, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = +[CloudKeychainProxy sharedObject];
  v7 = v6;
  if (argc < 2)
  {
    objc_autoreleasePoolPop(v5);
    if (SOSCompatibilityModeEnabled())
    {
      out_token = -1;
      v11 = kSOSCCSOSIsNowOFF;
      v12 = dispatch_get_global_queue(17, 0);
      notify_register_dispatch(v11, &out_token, v12, &stru_100018C78);
    }

    if ((SOSCCIsSOSTrustAndSyncingEnabledCachedValue() & 1) == 0)
    {
      v13 = sub_10000AE54("xpcproxy");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SOS is currently not supported or enabled; exiting when possible", buf, 2u);
      }

      xpc_transaction_exit_clean();
    }

    if (v7)
    {
      v14 = sub_10000AE54("xpcproxy");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Starting mainRunLoop", v18, 2u);
      }

      v15 = +[NSRunLoop mainRunLoop];
      [v15 run];
    }

    v16 = sub_10000AE54("xpcproxy");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Exiting CloudKeychainProxy", v17, 2u);
    }

    return 1;
  }

  else
  {
    v8 = [v6 proxyID];
    v9 = [v8 copyAsDictionary];

    NSLog(@"All: %@", v9);
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

void sub_100008D8C(id a1, int a2)
{
  v2 = sub_10000AE54("xpcproxy");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SOS has been turned off! Exiting when clean 🖖", v3, 2u);
  }

  xpc_transaction_exit_clean();
}

void *sub_1000092B0(uint64_t a1)
{
  result = [*(a1 + 32) perfCounters];
  ++result[3];
  return result;
}

id sub_100009388(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000094F8;
  v12 = sub_100009508;
  v13 = 0;
  v2 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009510;
  v7[3] = &unk_100018DE0;
  v7[4] = &v8;
  [v2 perfCounters:v7];
  v3 = [*(a1 + 32) perfQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009520;
  v6[3] = &unk_100018D18;
  v6[4] = *(a1 + 32);
  dispatch_sync(v3, v6);

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void sub_1000094E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000094F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double sub_100009520(uint64_t a1)
{
  v1 = [*(a1 + 32) perfCounters];
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 6) = 0;
  return result;
}

void sub_100009600(uint64_t a1)
{
  v11[0] = CKDKVSPerfCounterSynchronize;
  v2 = *(a1 + 40);
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *[*(a1 + 32) perfCounters]);
  v12[0] = v3;
  v11[1] = CKDKVSPerfCounterSynchronizeWithCompletionHandler;
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([*(a1 + 32) perfCounters] + 1));
  v12[1] = v4;
  v11[2] = CKDKVSPerfCounterIncomingMessages;
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([*(a1 + 32) perfCounters] + 2));
  v12[2] = v5;
  v11[3] = CKDKVSPerfCounterOutgoingMessages;
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([*(a1 + 32) perfCounters] + 3));
  v12[3] = v6;
  v11[4] = CKDKVSPerfCounterTotalWaitTimeSynchronize;
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([*(a1 + 32) perfCounters] + 4));
  v12[4] = v7;
  v11[5] = CKDKVSPerfCounterLongestWaitTimeSynchronize;
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([*(a1 + 32) perfCounters] + 5));
  v12[5] = v8;
  v11[6] = CKDKVSPerfCounterSynchronizeFailures;
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([*(a1 + 32) perfCounters] + 6));
  v12[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
  (*(v2 + 16))(v2, v10);
}

void sub_100009A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100009AAC(uint64_t a1)
{
  result = [*(a1 + 32) perfCounters];
  ++result[1];
  return result;
}

void sub_100009AD4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) perfQueue];
  v6 = v5;
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009D0C;
    block[3] = &unk_100018D18;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v7 = sub_10000AE54("fresh");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v16 = "EFRESH";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v4;
      v9 = "%s RETURNING FROM syncdefaultsd SWCH: %@: %@";
      v10 = v7;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100009D34;
    v13[3] = &unk_100018D18;
    v13[4] = *(a1 + 32);
    dispatch_async(v5, v13);

    v7 = sub_10000AE54("fresh");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 136315394;
      v16 = "EFRESH";
      v17 = 2112;
      v18 = v12;
      v9 = "%s RETURNING FROM syncdefaultsd SWCH: %@";
      v10 = v7;
      v11 = 22;
      goto LABEL_6;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_100009D0C(uint64_t a1)
{
  result = [*(a1 + 32) perfCounters];
  ++result[6];
  return result;
}

void *sub_100009D34(uint64_t a1)
{
  result = [*(a1 + 32) perfCounters];
  ++*result;
  return result;
}

void sub_100009E00(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  if (v2)
  {
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
    v5 = [v3 objectForKey:NSUbiquitousKeyValueStoreChangedKeysKey];
    if (v5)
    {
      v6 = [NSSet setWithArray:v5];
      if (!v4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
      if (!v4)
      {
        goto LABEL_20;
      }
    }

    v7 = [v4 integerValue];
    if (v7 <= 1)
    {
      if (!v7)
      {
        v8 = v2;
        v9 = v6;
        v10 = 0;
        goto LABEL_16;
      }

      if (v7 == 1)
      {
        v8 = v2;
        v9 = v6;
        v10 = 1;
LABEL_16:
        [v8 storeKeysChanged:v9 initial:v10];
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    if (v7 == 2)
    {
      v11 = sub_10000AE54("SecCritical");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received NSUbiquitousKeyValueStoreQuotaViolationChange", &v12, 2u);
      }

      goto LABEL_19;
    }

    if (v7 != 3)
    {
LABEL_13:
      v11 = sub_10000AE54("kvsstore");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ignoring unknown notification: %@", &v12, 0xCu);
      }

LABEL_19:

      goto LABEL_20;
    }

    [v2 storeAccountChanged];
LABEL_20:
  }
}

void *sub_10000A1A8(uint64_t a1)
{
  result = [*(a1 + 32) perfCounters];
  ++result[2];
  return result;
}

void sub_10000A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sRingPrefix;
  v8 = v3;
  if ([v3 containsString:sRingPrefix])
  {
    goto LABEL_4;
  }

  v5 = sCirclePrefix;
  if ([v8 containsString:sCirclePrefix])
  {

LABEL_4:
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_6;
  }

  v6 = kSOSKVSKeyParametersKey;
  v7 = [v8 containsString:kSOSKVSKeyParametersKey];

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:
}

void sub_10000A658(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v2 = [v1 pullUpdates:&v10];
  v3 = v10;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = sub_10000AE54("pushWrites");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "successfully synced with KVS!";
      v8 = v6;
      v9 = 2;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = sub_10000AE54("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      v7 = "pushWrites: failed to synchronize with KVS: %@";
      v8 = v6;
      v9 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }
}

void *sub_10000A778(uint64_t a1)
{
  result = [*(a1 + 32) perfCounters];
  ++*result;
  return result;
}

void sub_10000A864(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cloudStore];
  [v4 removeObjectForKey:v3];
}

const void *sub_10000AD04(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_10001DE48;
  if (!qword_10001DE48)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_10001DE48 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10000AE04;
    v5[3] = &unk_100018E28;
    v5[4] = v1;
    sub_10000B544(v1, v5);
    Value = CFDictionaryGetValue(qword_10001DE48, v1);
  }

  os_unfair_lock_unlock(&unk_10001DE40);
  return Value;
}

void sub_10000AE04(uint64_t a1, const char *a2)
{
  v2 = qword_10001DE48;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

const void *sub_10000AE54(const char *a1)
{
  pthread_mutex_lock(&stru_10001DDE0);
  pthread_mutex_unlock(&stru_10001DDE0);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_10000AD04(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_10000AD04(0);
  }
}

uint64_t sub_10000AEE4(const __CFDictionary *a1, uint64_t a2)
{
  v3 = xmmword_100010AD0;
  v4 = a2;
  CFDictionaryApplyFunction(a1, sub_10000AF4C, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000AF4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    result = sub_10000AF9C(result, a2, *(a3 + 16));
    if (result)
    {
      *(a3 + 8) += result;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_10000AF9C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (sub_10000BC8C(a1, a3) && sub_10000BC8C(a2, a3))
  {

    return ccder_sizeof();
  }

  else
  {
    sub_10000BBBC(-6, v5, v6, a3, v7, @"null input");
    return 0;
  }
}

uint64_t sub_10000B02C(const __CFDictionary *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v14[0] = 0xAAAAAAAAAAAAAA01;
  v14[1] = a2;
  BYTE1(v14[0]) = a3;
  v14[2] = Mutable;
  v14[3] = 0;
  CFDictionaryApplyFunction(a1, sub_10000B264, v14);
  if ((v14[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  CFArraySortValues(Mutable, v15, sub_10000B1A8, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_10000BBBC(-7, v11, v12, a2, v13, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_10000B1A8(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_10000B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v6 = sub_10000AF9C(a1, a2, *(a3 + 8));
    if (!v6)
    {
      *a3 = 0;
      return;
    }

    v7 = v6;
    Mutable = CFDataCreateMutable(*(a3 + 24), v6);
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v10 = *(a3 + 8);
    v11 = *(a3 + 1);
    v12 = sub_10000BF20(a2, v10, v11, MutableBytePtr, &MutableBytePtr[v7]);
    sub_10000BF20(a1, v10, v11, MutableBytePtr, v12);
    v13 = ccder_encode_constructed_tl();
    if (v13)
    {
      v18.length = v13 - MutableBytePtr;
      v18.location = 0;
      CFDataDeleteBytes(Mutable, v18);
      CFArrayAppendValue(*(a3 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      sub_10000BBBC(-7, v14, v15, v10, v16, @"ccder failed to encode");
      *a3 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_10000B3A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_10001DE60 != -1)
  {
    dispatch_once(&qword_10001DE60, &stru_100018F00);
  }

  v2 = qword_10001DE68;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_10000B414(id a1)
{
  qword_10001DE68 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFCalendarSetTimeZone(qword_10001DE68, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t sub_10000B4C4(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void sub_10000B544(const __CFString *a1, uint64_t a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v8 = sub_10000B68C;
  v9 = &unk_100018EA0;
  v10 = a2;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v4 = CStringPtr;
    v5 = strlen(CStringPtr);
    (v8)(v7, v4, v5);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10000B4C4;
    v11[3] = &unk_100018E78;
    v11[6] = 0;
    v11[7] = Length;
    v11[8] = usedBufLen;
    v11[4] = v7;
    v11[5] = a1;
    sub_10000D8A4(usedBufLen + 1, v11);
  }
}

uint64_t sub_10000B69C(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_10000B700(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v6 = 9;
      v7 = 48;
      do
      {
        if ((v6 - 2) < 2)
        {
          break;
        }

        v8 = valuePtr >> v7;
        --v6;
        v7 -= 8;
      }

      while (HIBYTE(valuePtr) == v8);
    }

    return ccder_sizeof();
  }

  else
  {
    sub_10000BBBC(-4, v3, v4, a2, v5, @"Unable to get number from data");
    return 0;
  }
}

uint64_t sub_10000B7D0(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    sub_10000BBBC(-4, v7, v8, a2, v9, @"Unable to get number from data");
    return 0;
  }

  v10 = valuePtr;
  v11 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v16 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 9;
    v13 = 48;
    v14 = 1;
    while ((v12 - 2) >= 2)
    {
      v15 = valuePtr >> v13;
      --v12;
      v13 -= 8;
      if (v11 != v15)
      {
        v14 = v12 - 1;
        goto LABEL_11;
      }
    }

    v12 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v14 - 8)) ^ v11) & 0x80) != 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v16)
  {
LABEL_22:
    sub_10000BBBC(-3, v16, v8, a2, v9, @"Unknown size");
    return 0;
  }

  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  do
  {
    *--a4 = v10;
    v10 >>= 8;
    --v17;
  }

  while (v17);
  valuePtr = v10;
  result = ccder_encode_tl();
  if (!result)
  {
    sub_10000BBBC(-7, v19, v20, a2, v21, @"ccder failed to encode");
    return 0;
  }

  return result;
}

void sub_10000B908(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v28 = 0;
  if (!cf)
  {
    goto LABEL_30;
  }

  v11 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v11, kCFErrorDescriptionKey);
  if (Value)
  {
    v13 = CFStringCompare(v10, Value, 0) == kCFCompareEqualTo;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if (v11)
  {
LABEL_11:
    CFRelease(v11);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v16 = CFStringCompare(a2, Domain, 0);
  v18 = Code == a1 && v16 == kCFCompareEqualTo;
  v19 = cf;
  if (v18 && v13)
  {
    goto LABEL_19;
  }

  v21 = CFErrorCopyUserInfo(cf);
  if (v21)
  {
    v22 = v21;
    v23 = kSOSCountKey;
    if (CFDictionaryContainsKey(v21, kSOSCountKey) == 1)
    {
      v24 = CFDictionaryGetValue(v22, v23);
      if (v24)
      {
        valuePtr = 0;
        CFNumberGetValue(v24, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v22);
          v19 = cf;
LABEL_19:
          CFRetain(v19);
          *a4 = cf;
          CFRelease(cf);
          if (!v10)
          {
            return;
          }

          v20 = v10;
          goto LABEL_44;
        }

        v28 = valuePtr + 1;
      }
    }

    CFRelease(v22);
  }

LABEL_30:
  v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v28);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v27 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, cf);
  }

  if (v25)
  {
    CFDictionaryAddValue(v27, kSOSCountKey, v25);
  }

  if (v10)
  {
    CFDictionaryAddValue(v27, kCFErrorDescriptionKey, v10);
  }

  *a4 = CFErrorCreate(kCFAllocatorDefault, a2, a1, v27);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    v20 = cf;
LABEL_44:
    CFRelease(v20);
  }
}

void sub_10000BBF8(uint64_t a1, __CFString **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  cf = 0;
  if (a2)
  {
    sub_10000B908(-1, kCFErrorDomainOSStatus, *a2, &cf, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", &a9);
    *a2 = cf;
  }

  else
  {
    sub_10000B908(-1, kCFErrorDomainOSStatus, 0, &cf, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", &a9);
    v10 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v10);
    }
  }
}

uint64_t sub_10000BC8C(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_10000BBBC(-5, a2, a3, a2, a5, @"Null CFType");
    return 0;
  }

  v7 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v7)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v9 = 0;
      v10 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 2);
        v9 += sub_10000BC8C(ValueAtIndex, a2);
        --v10;
      }

      while (v10 > 1);
    }

    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v7)
  {
LABEL_14:

    return ccder_sizeof();
  }

  if (CFDataGetTypeID() == v7)
  {
    Length = CFDataGetLength(a1);

    return _ccder_sizeof_raw_octet_string(Length);
  }

  if (CFDateGetTypeID() == v7)
  {
    CFDateGetAbsoluteTime(a1);
    __dtoa();
    __freedtoa();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v7)
  {

    return sub_10000AEE4(a1, a2);
  }

  if (CFSetGetTypeID() == v7)
  {

    return sub_10000D3F8(a1, a2);
  }

  if (CFStringGetTypeID() == v7)
  {

    return sub_10000CA18(a1);
  }

  if (CFNumberGetTypeID() != v7)
  {
    if (CFNullGetTypeID() == v7)
    {
      goto LABEL_14;
    }

    sub_10000BBBC(-5, v14, v15, a2, v16, @"Unsupported CFType");
    return 0;
  }

  return sub_10000B700(a1, a2);
}

uint64_t sub_10000BF20(const __CFString *a1, CFTypeRef *a2, uint64_t a3, UInt8 *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_10000BBBC(-5, a2, a3, a2, a5, @"Null CFType");
    return 0;
  }

  v10 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v10)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count + 1;
      v13 = a5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12 - 2);
        v13 = sub_10000BF20(ValueAtIndex, a2, a3, a4, v13);
        --v12;
      }

      while (v12 > 1);
    }

LABEL_6:
    v15 = ccder_encode_constructed_tl();
    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v10)
  {
    buf[0] = CFBooleanGetValue(a1);
    ccder_encode_body();
LABEL_13:
    v15 = ccder_encode_tl();
LABEL_14:
    v19 = v15;
    if (!v15)
    {
      sub_10000BBBC(-7, v16, v17, a2, v18, @"ccder failed to encode");
    }

    return v19;
  }

  if (CFDataGetTypeID() == v10)
  {
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccder_encode_body();
    goto LABEL_13;
  }

  if (CFDateGetTypeID() == v10)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2000000000;
    v74 = -86;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_10000B69C;
    v78 = &unk_100018F28;
    v79 = &v71;
    v80 = AbsoluteTime;
    v81 = &v70 + 4;
    v82 = &v70;
    v83 = &v69 + 4;
    v84 = &v69;
    v85 = &v68 + 4;
    v86 = &v68;
    if (qword_10001DE50 != -1)
    {
      dispatch_once(&qword_10001DE50, &stru_100018EC0);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000B3A8;
    block[3] = &unk_100018E50;
    block[4] = buf;
    dispatch_sync(qword_10001DE58, block);
    if (*(v72 + 24) == 1)
    {
      _Block_object_dispose(&v71, 8);
    }

    else
    {
      sub_10000BBBC(-1, v22, v23, a2, v24, @"Failed to encode date.");
      v32 = *(v72 + 24);
      _Block_object_dispose(&v71, 8);
      if ((v32 & 1) == 0)
      {
        v37 = sub_10000AE54("SecError");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v38 = *a2;
          }

          else
          {
            v38 = 0;
          }

          *buf = 138412290;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
        }

        goto LABEL_6;
      }
    }

    block[0] = 0;
    v34 = v70;
    v33 = HIDWORD(v70);
    if ((v70 & 0x300000000) != 0)
    {
      v35 = 0;
    }

    else
    {
      HIDWORD(v36) = -1030792151 * HIDWORD(v70) + 85899344;
      LODWORD(v36) = HIDWORD(v36);
      if ((v36 >> 2) <= 0x28F5C28)
      {
        HIDWORD(v40) = -1030792151 * HIDWORD(v70) + 85899344;
        LODWORD(v40) = HIDWORD(v40);
        v35 = (v40 >> 4) < 0xA3D70B;
      }

      else
      {
        v35 = 1;
      }
    }

    v41 = HIDWORD(v69);
    v42 = HIDWORD(v68);
    if (v68 > 61 || SHIDWORD(v68) > 59 || v69 > 23 || (v70 - 13) < 0xFFFFFFF4 || (HIDWORD(v69) - 32) < 0xFFFFFFE1 || v70 == 2 && (v35 | 0x1Cu) < HIDWORD(v69))
    {
      goto LABEL_54;
    }

    if (v70 == 2)
    {
      v34 = 2;
      goto LABEL_68;
    }

    if (dword_100010B28[v70] - dword_100010B28[(v70 - 1)] < SHIDWORD(v69))
    {
LABEL_54:
      sub_10000BBF8(v25, block, v26, v27, v28, v29, v30, v31, SBYTE4(v70));
      v43 = CFErrorCopyDescription(block[0]);
      sub_10000D7D0(v43, 1405091842);
      if (v43)
      {
        CFRelease(v43);
      }

      v44 = sub_10000AE54("SecError");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = "continuing";
        if (a3)
        {
          v45 = "setting default value";
        }

        *buf = 138412546;
        *&buf[4] = block[0];
        *&buf[12] = 2080;
        *&buf[14] = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
      }

      v46 = block[0];
      if (block[0])
      {
        block[0] = 0;
        CFRelease(v46);
      }

      if (a3)
      {
        v33 = 2001;
        v42 = 1;
        v70 = 0x7D100000001;
        HIDWORD(v69) = 1;
        HIDWORD(v68) = 1;
        v41 = 1;
        v34 = 1;
      }

      else
      {
        v34 = v70;
        v33 = HIDWORD(v70);
        v41 = HIDWORD(v69);
        v42 = HIDWORD(v68);
      }
    }

LABEL_68:
    if ((a4 + 1) <= a5)
    {
      *(a5 - 1) = 90;
      v47 = a5 - 1;
    }

    else
    {
      v47 = 0;
    }

    v66 = v69;
    v67 = v68;
    LODWORD(v71) = -1431655766;
    v75 = -1431655766;
    *buf = 0xAAAAAAAAAAAAAAAALL;
    v48 = __dtoa();
    v49 = v71;
    v50 = *buf;
    if (AbsoluteTime < 0.0)
    {
      v51 = v48 + (v71 & ~(v71 >> 31));
      if (v51 < *buf)
      {
        v52 = (*buf - 1);
        for (*v52 = 106 - *(*buf - 1); v52 > v51; *v52 = 105 - v53)
        {
          v53 = *--v52;
        }
      }

      v49 = v71;
      v50 = *buf;
    }

    if (v50 - v48 <= v49)
    {
      goto LABEL_92;
    }

    if (v49 < 0)
    {
      v65 = v33;
      ccder_encode_body();
      v54 = -v71;
      v55 = ccder_encode_body_nocopy();
      v47 = v55;
      if (!v55)
      {
        v33 = v65;
        goto LABEL_92;
      }

      if (AbsoluteTime >= 0.0)
      {
        v56 = 48;
      }

      else
      {
        v56 = 57;
      }

      memset(v55, v56, v54);
      v33 = v65;
    }

    else
    {
      v47 = ccder_encode_body();
    }

    if ((a4 + 1) <= v47)
    {
      *--v47 = 46;
    }

    else
    {
      v47 = 0;
    }

LABEL_92:
    __freedtoa();
    if (!v47)
    {
      goto LABEL_100;
    }

    v63 = (a4 + 2);
    if ((a4 + 2) > v47)
    {
      goto LABEL_100;
    }

    *(v47 - 2) = v67 / 10 + 48;
    *(v47 - 1) = v67 % 10 + 48;
    if (v63 > v47 - 2)
    {
      goto LABEL_100;
    }

    *(v47 - 4) = v42 / 10 + 48;
    *(v47 - 3) = v42 % 10 + 48;
    if (v63 > v47 - 4)
    {
      goto LABEL_100;
    }

    *(v47 - 6) = v66 / 10 + 48;
    *(v47 - 5) = v66 % 10 + 48;
    if (v63 > v47 - 6)
    {
      goto LABEL_100;
    }

    *(v47 - 8) = v41 / 10 + 48;
    *(v47 - 7) = v41 % 10 + 48;
    if (v63 <= v47 - 8 && (*(v47 - 10) = v34 / 10 + 48, *(v47 - 9) = v34 % 10 + 48, v63 <= v47 - 10) && (v64 = (((103 * (v33 % 100)) >> 15) & 1) + ((103 * (v33 % 100)) >> 10), *(v47 - 12) = v64 + 48, *(v47 - 11) = v33 % 100 - 10 * v64 + 48, v63 <= v47 - 12))
    {
      *(v47 - 14) = v33 / 1000 + 48;
      *(v47 - 13) = v33 / 100 % 10 + 48;
    }

    else
    {
LABEL_100:
      sub_10000BBBC(-7, v60, v61, a2, v62, @"ccder failed to encode");
    }

    goto LABEL_6;
  }

  if (CFDictionaryGetTypeID() == v10)
  {

    return sub_10000B02C(a1, a2, a3);
  }

  if (CFSetGetTypeID() == v10)
  {

    return sub_10000D4B0(a1, a2, a3);
  }

  if (CFStringGetTypeID() == v10)
  {

    return sub_10000CA98(a1, a2, a4, a5, v39);
  }

  if (CFNumberGetTypeID() == v10)
  {

    return sub_10000B7D0(a1, a2, a4, a5);
  }

  if (CFNullGetTypeID() != v10)
  {
    sub_10000BBBC(-5, v57, v58, a2, v59, @"Unsupported CFType");
    return 0;
  }

  return sub_10000D3A4(a2);
}

uint64_t sub_10000CA18(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, MaximumSizeForEncoding, &usedBufLen);
  return ccder_sizeof();
}

uint64_t sub_10000CA98(const __CFString *a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v18.location = 0;
    v18.length = Length;
    if (CFStringGetBytes(a1, v18, 0x8000100u, 0, 0, a3, a4 - a3, &usedBufLen) == Length)
    {
      ccder_encode_body();
      result = ccder_encode_tl();
      if (result)
      {
        return result;
      }

      sub_10000BBBC(-7, v14, v15, a2, v16, @"ccder failed to encode");
    }

    else
    {
      sub_10000BBBC(-5, v10, v11, a2, v12, @"String extraction failed");
    }
  }

  else
  {
    sub_10000BBBC(-6, a2, a3, a2, a5, @"null input");
  }

  return 0;
}

void sub_10000CD20(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
  }

  else
  {
    v3 = [v7 description];
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 && v5 < [v3 length])
  {
    v6 = [v4 substringToIndex:*(a1 + 40)];

    v4 = v6;
  }

  [*(a1 + 32) insertObject:v4 atIndex:0];
}

void sub_10000CEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000CEDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_10000D078(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 stringByAppendingString:@":"];
  [v5 addObject:v7];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = *(a1 + 32);
  if (isKindOfClass)
  {
    [v6 componentsJoinedByString:@" "];
  }

  else
  {
    [NSString stringWithFormat:@"%@", v6];
  }
  v10 = ;

  [v9 addObject:v10];
}

uint64_t sub_10000D3A4(CFTypeRef *a1)
{
  v5 = ccder_encode_tl();
  if (!v5)
  {
    sub_10000BBBC(-7, v2, v3, a1, v4, @"ccder failed to encode");
  }

  return v5;
}

uint64_t sub_10000D3F8(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_100010AD0;
  v4 = a2;
  CFSetApplyFunction(a1, sub_10000D460, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D460(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = sub_10000BC8C(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_10000D4B0(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v14[0] = 0xAAAAAAAAAAAAAA01;
  v14[1] = a2;
  BYTE1(v14[0]) = a3;
  v14[2] = Mutable;
  v14[3] = 0;
  CFSetApplyFunction(a1, sub_10000D6E8, v14);
  if ((v14[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  CFArraySortValues(Mutable, v15, sub_10000D62C, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_10000BBBC(-7, v11, v12, a2, v13, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_10000D62C(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_10000D6E8(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v7 = sub_10000BC8C(a1, *(a2 + 8), a3, a4, a5);
    if (!v7)
    {
      *a2 = 0;
      return;
    }

    v8 = v7;
    Mutable = CFDataCreateMutable(*(a2 + 24), v7);
    CFDataSetLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v11 = sub_10000BF20(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v8]);
    if (v11)
    {
      v13.length = v11 - MutableBytePtr;
      v13.location = 0;
      CFDataDeleteBytes(Mutable, v13);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_10000D7D0(uint64_t a1, int a2)
{
  v4 = sub_10000AE54("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v6, 0x12u);
  }

  getpid();
  return SimulateCrash();
}

void sub_10000D8A4(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}