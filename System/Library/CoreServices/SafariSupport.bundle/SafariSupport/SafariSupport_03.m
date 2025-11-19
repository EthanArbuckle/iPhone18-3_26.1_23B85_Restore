void sub_10009E380(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E44C;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_10009E44C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudTabsZoneCompletedWithError:*(a1 + 32) inOperationGroup:*(a1 + 40)];
}

void sub_10009E6B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] openDatabaseIfNecessary];
    [v3 _continueFetchingTabsInOperationGroup:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_10009E960(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009EA04;
  v2[3] = &unk_100132420;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_10009EA04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudTabStoreError];
    v5 = sub_100001B78();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3814();
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v4 inOperationGroup:*(a1 + 32)];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 safari_logDescription];
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished removing deleted records from SQLite with %{public}@", &v11, 0xCu);
      }

      v10 = v3[39];
      v3[39] = 0;

      [v3 _continueFetchingTabsInOperationGroup:*(a1 + 32)];
    }
  }
}

void sub_10009EDEC(uint64_t a1, int a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009EEA0;
  block[3] = &unk_100135860;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v6);
}

void sub_10009EEA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[36];
    WeakRetained[36] = 0;

    v5 = v3[37];
    v3[37] = 0;

    v6 = v3[38];
    v3[38] = 0;

    v7 = [v3 _cloudTabStoreError];
    if (v7)
    {
      v8 = sub_100001B78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000A38BC();
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v7 inOperationGroup:*(a1 + 32)];
    }

    else
    {
      v9 = *(a1 + 48);
      v10 = sub_100001B78();
      v11 = v10;
      if (v9 == 101)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v13 = v11;
          v14 = [v12 safari_logDescription];
          v15 = 138543362;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Finished saving modified device, tab, and close request records to the SQLite database with %{public}@", &v15, 0xCu);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3964((a1 + 48), a1, v11);
      }

      [v3 _continueFetchingTabsInOperationGroup:*(a1 + 32)];
    }
  }
}

void sub_10009F284(uint64_t a1, int a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F338;
  block[3] = &unk_100135860;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v6);
}

void sub_10009F338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudTabStoreError];
    if (v4)
    {
      v5 = sub_100001B78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3A54();
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v4 inOperationGroup:*(a1 + 32)];
    }

    else
    {
      v6 = *(a1 + 48);
      v7 = sub_100001B78();
      v8 = v7;
      if (v6 == 101)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = v8;
          v11 = [v9 safari_logDescription];
          v12 = 138543362;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished saving server change token to SQLite with %{public}@", &v12, 0xCu);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3AFC((a1 + 48), a1, v8);
      }

      [v3 _continueFetchingTabsInOperationGroup:*(a1 + 32)];
    }
  }
}

void sub_10009F6D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009F7BC;
  v9[3] = &unk_100134990;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v13);
}

void sub_10009F7BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudTabStoreError];
    v5 = sub_100001B78();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3BA0();
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v4 inOperationGroup:*(a1 + 32)];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 safari_logDescription];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished loading devices, tabs, and close requests from SQLite with %{public}@", &v10, 0xCu);
      }

      objc_storeStrong(v3 + 40, *(a1 + 40));
      objc_storeStrong(v3 + 41, *(a1 + 48));
      [v3 _continueFetchingTabsInOperationGroup:*(a1 + 32)];
    }
  }
}

id sub_10009FB30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  *(v2 + 256) = 0;
  if (v3 == 2)
  {
    v4 = objc_retainBlock(*(*(a1 + 32) + 272));
    v13 = *(a1 + 32);
    v14 = *(v13 + 272);
    *(v13 + 272) = 0;

    if (v4)
    {
      v4[2](v4, *(a1 + 40));
    }
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    v4 = *(*(a1 + 32) + 320);
    v5 = *(a1 + 32);
    v6 = *(v5 + 320);
    *(v5 + 320) = 0;

    v7 = *(*(a1 + 32) + 328);
    v8 = *(a1 + 32);
    v9 = *(v8 + 328);
    *(v8 + 328) = 0;

    v10 = objc_retainBlock(*(*(a1 + 32) + 264));
    v11 = *(a1 + 32);
    v12 = *(v11 + 264);
    *(v11 + 264) = 0;

    if (v10)
    {
      v10[2](v10, v4, v7, *(a1 + 40));
    }
  }

LABEL_9:
  v15 = *(a1 + 32);

  return [v15 _resumeFetchingQueue];
}

void sub_10009FC50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FCD4;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000A0128(id *a1)
{
  if ([a1[4] _isBeingTornDown])
  {
    v2 = *(a1[7] + 2);

    v2();
  }

  else
  {
    [a1[4] _suspendSavingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0234;
    block[3] = &unk_1001315B0;
    v6 = *(a1 + 2);
    v3 = *(&v6 + 1);
    v4 = a1[7];
    *&v5 = a1[6];
    *(&v5 + 1) = v4;
    v8 = v6;
    v9 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_1000A0234(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 168), *(a1 + 40));
  *(*(a1 + 32) + 160) = 0;
  v2 = objc_retainBlock(*(a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = 0;

  [*(*(a1 + 32) + 8) openDatabaseIfNecessary];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);

  return [v7 _continueDeletingDevicesInOperationGroup:v8];
}

void sub_1000A06CC(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A07AC;
  v5[3] = &unk_100134990;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v9);
}

void sub_1000A07AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = sub_100001B78();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3EB8((a1 + 32), v4);
      }

      v5 = [*(a1 + 32) safari_onlyCloudKitPartialError];
      v6 = [v5 safari_isCloudKitLimitExceededError];

      if (v6)
      {
        v7 = sub_100001B78();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 40);
          v9 = v7;
          v10 = [v8 safari_logDescription];
          v11 = 138543362;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to delete device record with CKErrorLimitExceeded, attempting to delete device's tab records first with %{public}@", &v11, 0xCu);
        }

        [v3 _deleteTabsFromCloudKitForDeviceWithUUIDString:*(a1 + 48) inOperationGroup:*(a1 + 40)];
      }

      else
      {
        objc_storeStrong(v3 + 22, *(a1 + 32));
        [v3 _continueDeletingDevicesInOperationGroup:*(a1 + 40)];
      }
    }

    else
    {
      [WeakRetained _deleteNextDeviceRecordFromCloudKitInOperationGroup:*(a1 + 40)];
    }
  }
}

void sub_1000A0A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A0A50(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A0B2C;
  v6[3] = &unk_1001358D8;
  objc_copyWeak(&v10, a1 + 6);
  v7 = a1[4];
  v4 = a1[5];
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v10);
}

void sub_1000A0B2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudTabStoreError];
    if (v4)
    {
      v5 = sub_100001B78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3F5C();
      }

      [v3 set_cloudTabStoreError:0];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v6 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
      v7 = [*(a1 + 40) tabs];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000A0C94;
      v10[3] = &unk_1001358B0;
      v11 = v6;
      v8 = v6;
      v9 = [v7 safari_mapAndFilterObjectsUsingBlock:v10];

      (*(*(a1 + 48) + 16))();
    }
  }
}

id sub_1000A0C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKRecordID alloc];
  v5 = [v3 tabUUIDString];

  v6 = [v4 initWithRecordName:v5 zoneID:*(a1 + 32)];

  return v6;
}

void sub_1000A0DF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A0E14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100001B78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4004(v8, v6, a1);
      }

      objc_storeStrong(WeakRetained + 22, a3);
      [WeakRetained _continueDeletingDevicesInOperationGroup:*(a1 + 32)];
    }

    else
    {
      v9 = [v5 count];
      v10 = sub_100001B78();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          v12 = *(a1 + 32);
          v13 = v10;
          v14 = [v12 safari_logDescription];
          *buf = 138543362;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting all tab records for a device from CloudKit with %{public}@", buf, 0xCu);
        }

        v15 = WeakRetained[43];
        v16 = *(a1 + 32);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000A10B4;
        v22[3] = &unk_100135798;
        objc_copyWeak(&v24, (a1 + 40));
        v23 = *(a1 + 32);
        [v15 deleteCloudTabRecords:v5 inOperationGroup:v16 completionHandler:v22];

        objc_destroyWeak(&v24);
      }

      else
      {
        if (v11)
        {
          v17 = *(a1 + 32);
          v18 = v10;
          v19 = [v17 safari_logDescription];
          *buf = 138543362;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deleting device record failed with CKErrorLimitExceeded, but the device has no tabs to individually delete with %{public}@", buf, 0xCu);
        }

        v20 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:3 userInfo:0];
        v21 = WeakRetained[22];
        WeakRetained[22] = v20;

        [WeakRetained _continueDeletingDevicesInOperationGroup:*(a1 + 32)];
      }
    }
  }
}

void sub_1000A10B4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1180;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000A1180(uint64_t a1)
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
        sub_1000A40CC((a1 + 32), v5);
      }

      objc_storeStrong(WeakRetained + 22, *(a1 + 32));
      [WeakRetained _continueDeletingDevicesInOperationGroup:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = v5;
        v8 = [v6 safari_logDescription];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished deleting all tab records for a device from CloudKit with %{public}@", &v9, 0xCu);
      }

      WeakRetained[20] = WeakRetained[20] - 1;
      [WeakRetained _deleteNextDeviceRecordFromCloudKitInOperationGroup:*(a1 + 40)];
    }
  }
}

void sub_1000A1450(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A151C;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000A151C(uint64_t a1)
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
        sub_1000A4170((a1 + 32), v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished updating SQLite store from CloudKit after deleting device records with %{public}@", &v9, 0xCu);
    }

    [WeakRetained _continueDeletingDevicesInOperationGroup:*(a1 + 40)];
  }
}

void sub_1000A17F8(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 152));
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = *(*(a1 + 32) + 176);
  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_1000A189C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1920;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000A1B50(id *a1)
{
  if ([a1[4] _isBeingTornDown])
  {
    v2 = *(a1[7] + 2);

    v2();
  }

  else
  {
    [a1[4] _suspendSavingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A1C5C;
    block[3] = &unk_1001315B0;
    v6 = *(a1 + 2);
    v3 = *(&v6 + 1);
    v4 = a1[7];
    *&v5 = a1[6];
    *(&v5 + 1) = v4;
    v8 = v6;
    v9 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_1000A1C5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _recordIDsFromUUIDStrings:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  v5 = objc_retainBlock(*(a1 + 56));
  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  *(v6 + 192) = v5;

  v8 = *(a1 + 32);
  v9 = *(v8 + 208);
  *(v8 + 208) = 0;

  [*(*(a1 + 32) + 8) openDatabaseIfNecessary];
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);

  return [v10 _continueDeletingCloseRequestsInOperationGroup:v11];
}

void sub_1000A1FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A20BC;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000A20BC(uint64_t a1)
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
        sub_1000A4214((a1 + 32), v5);
      }

      objc_storeStrong(WeakRetained + 26, *(a1 + 32));
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished deleting close request records from CloudKit with %{public}@", &v9, 0xCu);
    }

    [WeakRetained _continueDeletingCloseRequestsInOperationGroup:*(a1 + 40)];
  }
}

void sub_1000A2374(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2440;
  block[3] = &unk_1001339E0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_1000A2440(uint64_t a1)
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
        sub_1000A42B8((a1 + 32), v5);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished updating SQLite store from CloudKit after deleting close request records with %{public}@", &v9, 0xCu);
    }

    [WeakRetained _continueDeletingCloseRequestsInOperationGroup:*(a1 + 40)];
  }
}

void sub_1000A2718(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 192));
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  v4 = *(*(a1 + 32) + 208);
  v5 = *(a1 + 32);
  v6 = *(v5 + 208);
  *(v5 + 208) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_1000A27BC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2840;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000A2A10(id *a1)
{
  if ([a1[4] _isBeingTornDown])
  {
    v2 = *(a1[6] + 2);

    v2();
  }

  else
  {
    [a1[4] _suspendSavingQueue];
    v3 = a1[5];
    v4 = *(a1[4] + 43);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000A2B34;
    v5[3] = &unk_100135950;
    objc_copyWeak(&v8, a1 + 7);
    v7 = a1[6];
    v6 = a1[5];
    [v4 deleteCloudTabsZoneInOperationGroup:v3 completionHandler:v5];

    objc_destroyWeak(&v8);
  }
}

void sub_1000A2B34(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (v3 || !WeakRetained)
  {
    (*(a1[5] + 2))();
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A2C28;
    v7[3] = &unk_1001315B0;
    v7[4] = WeakRetained;
    v8 = a1[4];
    v6 = a1[5];
    v9 = 0;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_1000A2C28(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A2CF4;
  v8[3] = &unk_100132EA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 deleteDatabaseWithCompletionHandler:v8];
}

id sub_1000A2CF4(uint64_t a1)
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 safari_logDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sync coordinator successfully deleted CloudTabs zone and local database with %{public}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  return [*(a1 + 48) _resumeSavingQueue];
}

void sub_1000A3084()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000A3060() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while merging device with existing device: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A312C(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Did fail to save iCloud Tab record batch with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A31D0(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete obsolete tab records with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3274(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Updating SQLite store from CloudKit after saving tabs failed with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3318(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Did fail to save iCloud Tab record batch with close requests with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A33BC(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Updating SQLite store from CloudKit after saving close request failed with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3460(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v7 = [*(a3 + 32) safari_logDescription];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1000A3528()
{
  sub_1000A304C();
  sub_10008BF18(v2, v3, v4, 5.8382e-34);
  sub_1000676D8(&_mh_execute_header, v7, v5, "Failed to read from server change token data: %{public}@ with %{public}@", v6);
}

void sub_1000A3574()
{
  sub_1000A304C();
  sub_10008BF18(v2, v3, v4, 5.8382e-34);
  sub_1000676D8(&_mh_execute_header, v7, v5, "Failed to decode server change token with exception: %{public}@ with %{public}@", v6);
}

void sub_1000A35C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000A3660(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000A3700(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 safari_privacyPreservingDescription];
  v7 = [*(a3 + 40) safari_logDescription];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1000A37C8()
{
  sub_1000A304C();
  sub_10008BF18(v2, v3, v4, 5.8382e-34);
  sub_1000676D8(&_mh_execute_header, v7, v5, "Failed to create CloudTabs zone when fetching changes with error: %{public}@ with %{public}@", v6);
}

void sub_1000A3814()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000A3060() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while deleting records: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A38BC()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000A3060() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while saving records: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3964(unsigned int *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  v6 = a3;
  v7 = [sub_10000807C() safari_logDescription];
  sub_1000A306C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
}

void sub_1000A3A08()
{
  sub_1000A304C();
  sub_10008BF18(v2, v3, v4, 5.8382e-34);
  sub_1000676D8(&_mh_execute_header, v7, v5, "Failed to archive server change token: %{public}@ with %{public}@", v6);
}

void sub_1000A3A54()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000A3060() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while saving server change token: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3AFC(unsigned int *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  v6 = a3;
  v7 = [sub_10000807C() safari_logDescription];
  sub_1000A306C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
}

void sub_1000A3BA0()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000A3060() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while loading records: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3C48()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() recordType];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Fetched an unrecognized record from CloudKit of type %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3CF0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000A3D88(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000A3E20(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000A3EB8(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete device record with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A3F5C()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000A3060() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while calculating tabs to delete for a device: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A4004(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v7 = [*(a3 + 32) safari_logDescription];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1000A40CC(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete tab records with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A4170(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Updating SQLite store from CloudKit after deleting device records failed with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A4214(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete close request records with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A42B8(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Updating SQLite store from CloudKit after deleting close request records failed with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A435C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000A5098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A50B4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A517C;
  block[3] = &unk_1001359F0;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_1000A517C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      v6 = *(WeakRetained + 3);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000A5254;
      v7[3] = &unk_100132030;
      v7[4] = WeakRetained;
      v8 = *(a1 + 40);
      [v6 startCoordinatingMigrationInOperationGroup:0 completionHandler:v7];

      goto LABEL_7;
    }

    v5 = *(a1 + 40);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
  }

  (*(v5 + 16))(v5, v4);
LABEL_7:
}

void sub_1000A5254(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) _errorWithCode:0];
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

void sub_1000A594C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000A5A48;
  v12 = &unk_100135A40;
  v13 = *(a1 + 32);
  v6 = v5;
  v14 = v6;
  v7 = [a3 safari_mapAndFilterKeysAndObjectsUsingBlock:&v9];
  if ([v7 count])
  {
    [CloudBookmark applyPendingReferences:v7 toItemWithRecordName:v6 inDatabase:*(*(a1 + 32) + 16) databaseAccessor:*(*(a1 + 32) + 24) updater:*(a1 + 40)];
  }

  else
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5C90(v8);
    }
  }
}

id sub_1000A5A48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v8 = [v6 first];
  v9 = [v8 recordID];
  v10 = [v9 recordName];
  v11 = [v7 copyItemWithServerId:v10 database:*(*(a1 + 32) + 16)];

  if (v11)
  {
    CFRelease(v11);
    v12 = v6;
  }

  else
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = v13;
      v19 = [v6 first];
      v20 = [v6 second];
      v21 = *(a1 + 40);
      v22 = 138544130;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      v26 = 2114;
      v27 = v5;
      v28 = 2114;
      v29 = v21;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot apply reference: %{public}@ with generation: %{public}@ to attribute %{public}@ of record name: %{public}@ because the item is missing locally.", &v22, 0x2Au);
    }

    v14 = [WBSPair alloc];
    v15 = +[NSNull null];
    v16 = [v6 second];
    v12 = [v14 initWithFirst:v15 second:v16];
  }

  return v12;
}

id sub_1000A5E20(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 recordID];
  v5 = [v3 recordID];

  v6 = [v4 isEqual:v5];
  return v6;
}

id sub_1000A5E90(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 hash];

  return v2;
}

uint64_t sub_1000A61D4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [a2 recordID];
  v4 = [v3 zoneID];
  LODWORD(v2) = [v2 containsObject:v4];

  return v2 ^ 1;
}

uint64_t sub_1000A62E0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [a2 zoneID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t sub_1000A63D4(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 recordName];
  v5 = [v4 isEqualToString:CKRecordNameZoneWideShare];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(*(a1 + 32) + 40);
    v8 = [v3 zoneID];
    v6 = [v7 containsObject:v8] ^ 1;
  }

  return v6;
}

uint64_t sub_1000A6518(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordName];
  v5 = [v4 isEqualToString:CKRecordNameZoneWideShare];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(*(a1 + 32) + 40);
    v8 = [v3 zoneID];
    v6 = [v7 containsObject:v8] ^ 1;
  }

  return v6;
}

void sub_1000A6DFC(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_100154058;
  qword_100154058 = v1;

  [qword_100154058 setUnitsStyle:1];
  v3 = qword_100154058;

  [v3 setZeroFormattingBehavior:1];
}

void sub_1000A70E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v7 = @"Pending";
    }

    else
    {
      v7 = @"Next";
    }

    v8 = [v5 safari_logDescription];
    v9 = [*(a1 + 40) safari_logDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "    %{public}@ %{public}@ before %{public}@", &v10, 0x20u);
  }
}

void sub_1000A7428(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v7 = @"Pending";
    }

    else
    {
      v7 = @"Next";
    }

    v8 = [v5 safari_logDescription];
    v9 = [*(a1 + 40) safari_logDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "    %{public}@ %{public}@ after %{public}@", &v10, 0x20u);
  }
}

void sub_1000A77A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v7 = @"Pending";
    }

    else
    {
      v7 = @"Next";
    }

    v8 = [v5 safari_logDescription];
    v9 = [*(a1 + 40) safari_logDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "    %{public}@ %{public}@ after %{public}@", &v10, 0x20u);
  }
}

void sub_1000A7B3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v7 = @"Pending";
    }

    else
    {
      v7 = @"Next";
    }

    v8 = [v5 safari_logDescription];
    v9 = [*(a1 + 40) safari_logDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "    %{public}@ %{public}@ for aborted %{public}@", &v10, 0x20u);
  }
}

void sub_1000A7D1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88) == 1)
  {
    [v2 _logCurrentOperationsForAbortedOperationGroup:*(a1 + 40)];
    v3 = *(a1 + 48);
    v24 = WBSPrivacyPreservingDescription;
    v25 = @"Ignoring sync request because a sync request is already pending";
    v4 = &v25;
    v5 = &v24;
LABEL_3:
    v6 = [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:1];
    v7 = [NSError safari_errorWithCloudBookmarksCode:9 userInfo:v6];
    (*(v3 + 16))(v3, 4, v7);

    return;
  }

  v8 = *(v2 + 72);
  if (v8 == 2)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      [v2 _logCurrentOperationsForAbortedOperationGroup:*(a1 + 40)];
      v3 = *(a1 + 48);
      v20 = WBSPrivacyPreservingDescription;
      v21 = @"Ignoring sync request for remote changes because a pre-sync down request is already running";
      v4 = &v21;
      v5 = &v20;
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (v8 != 1)
  {
LABEL_11:
    *(v2 + 88) = 1;
    [*(a1 + 32) _enqueueOperationGroup:*(a1 + 40)];
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(v15 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A7FC0;
    block[3] = &unk_100131A20;
    block[4] = v15;
    v18 = v14;
    v19 = *(a1 + 48);
    dispatch_async(v16, block);

    return;
  }

  [v2 _logCurrentOperationsForAbortedOperationGroup:*(a1 + 40)];
  v9 = *(a1 + 48);
  v22 = WBSPrivacyPreservingDescription;
  if (*(a1 + 56))
  {
    v10 = @"local";
  }

  else
  {
    v10 = @"remote";
  }

  v11 = [NSString stringWithFormat:@"Ignoring sync request for %@ changes because a pre-sync up request is already running", v10];
  v23 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v13 = [NSError safari_errorWithCloudBookmarksCode:9 userInfo:v12];
  (*(v9 + 16))(v9, 4, v13);
}

void sub_1000A7FC0(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000A806C(id *a1)
{
  [a1[4] _willBeginOperationGroup:a1[5]];
  *(a1[4] + 88) = 0;
  v2 = a1[4];
  v3 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A8134;
  v4[3] = &unk_100131480;
  v4[4] = v2;
  v6 = a1[6];
  v5 = a1[5];
  [v2 _beginSyncingWithOperationGroup:v3 completionHandler:v4];
}

void sub_1000A8134(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _didFinishOperationGroup:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_1000A8434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = [WeakRetained _log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE010(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v5 = [NSError safari_errorWithCloudBookmarksCode:6 userInfo:0];
    (*(*(a1 + 40) + 16))();
    v6 = v3[10];
    v3[10] = 0;
  }
}

void sub_1000A8504(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(*(a1 + 32) + 80) invalidate];
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  *(v9 + 80) = 0;

  v11 = *(*(a1 + 56) + 8);
  if (*(v11 + 24) == 1)
  {
    v12 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) safari_logDescription];
      v14 = [v8 safari_privacyPreservingError];
      v15 = 138543874;
      v16 = v13;
      v17 = 2050;
      v18 = a2;
      v19 = 2114;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Already aborted pre-sync for operation group %{public}@ after timeout. Ignoring result %{public}zu since completion already called. Error: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    *(v11 + 24) = 1;
    if (a2)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      *(*(a1 + 32) + 72) = 2;
      [*(a1 + 32) _runSyncingWithCollection:v7 inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
    }
  }
}

id sub_1000A8BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  [CloudTabGroupRecordZoneMetadata removeAllRecordZoneMetadataInCollection:*(a1 + 32)];
  [v3 setMinimumSyncAPIVersion:4];
  [v3 clearAllLastServerChangeTokens];

  return v3;
}

void sub_1000A8C38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A8D60;
  v21[3] = &unk_100135B78;
  v6 = *(a1 + 32);
  v21[4] = *(a1 + 40);
  [v6 updateDatabaseSyncDataUsingBlock:v21];
  v7 = *(a1 + 40);
  v8 = *(v7 + 128);
  *(v7 + 128) = 0;

  v9 = *(a1 + 40);
  v10 = *(v9 + 112);
  *(v9 + 112) = 0;

  v11 = *(a1 + 40);
  v12 = *(v11 + 168);
  *(v11 + 168) = 0;

  v13 = *(a1 + 40);
  v14 = *(v13 + 176);
  *(v13 + 176) = 0;

  v15 = *(a1 + 40);
  v16 = *(v15 + 192);
  *(v15 + 192) = 0;

  v17 = *(a1 + 40);
  v18 = *(v17 + 200);
  *(v17 + 200) = 0;

  v19 = *(a1 + 40);
  v20 = *(v19 + 208);
  *(v19 + 208) = 0;

  if (!a2)
  {
    [*(a1 + 32) removeUnusedPresenceRecords];
  }

  (*(*(a1 + 48) + 16))();
}

id sub_1000A8D60(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAuxiliaryRecordIDsToDelete:*(*(a1 + 32) + 112)];
  [v3 setRecordIDsToRefresh:*(*(a1 + 32) + 128)];
  [v3 setIdsOfRecordZonesToRefresh:*(*(a1 + 32) + 192)];

  return v3;
}

uint64_t sub_1000A93C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    return v4();
  }

  else
  {
    v6 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) safari_logDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sync coordinator did finish setting up local store with %{public}@", &v9, 0xCu);
    }

    v8 = *(a1 + 48);
    return (*(*(a1 + 56) + 16))();
  }
}

void sub_1000A94F8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = v3;
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }
}

id sub_1000A95E0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 _log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE128();
    }

    return [*(a1 + 40) _didFailToSyncWithError:*(a1 + 32) inCollection:*(a1 + 56) operationGroup:*(a1 + 48) completionHandler:*(a1 + 64)];
  }

  else
  {
    [v2 _updateLastKnownMinimumVersionsIfNeededInCollection:*(a1 + 56) operationGroup:*(a1 + 48)];
    v6 = *(*(a1 + 64) + 16);

    return v6();
  }
}

void sub_1000A9764(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000A9810(uint64_t a1)
{
  [*(a1 + 32) _willBeginOperationGroup:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A98D0;
  v7[3] = &unk_100132148;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  [v2 _beginMigrationWithOperationGroup:v3 completionHandler:v7];
}

void sub_1000A98D0(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _didFinishOperationGroup:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_1000A9E18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 56);
  v12 = v6;
  v7 = v5;
  v8 = v6;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_1000A9F14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) account];
  if (!v2 || (v3 = v2, v4 = [*(*(a1 + 32) + 48) isDataclassEnabled], v3, (v4 & 1) == 0))
  {
    v6 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) safari_logDescription];
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Discontinuing migration because Safari syncing is not enabled with %{public}@", &v15, 0xCu);
    }

    goto LABEL_10;
  }

  if (*(a1 + 56))
  {
    v5 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE370(a1 + 56);
    }

LABEL_10:
    [*(a1 + 48) setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:0];
    return (*(*(a1 + 72) + 16))();
  }

  result = [*(a1 + 64) migrationState];
  if (result + 1 < 2)
  {
    v11 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) safari_logDescription];
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Remote migration state requires migration with %{public}@", &v15, 0xCu);
    }

    return [*(a1 + 32) _tryToBecomeResponsibleForMigrationInCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 72)];
  }

  else if (result == 1)
  {
    v13 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) safari_logDescription];
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remote migration pending; will device whether we are responsible for resuming migration or should preempt migrator with %{public}@", &v15, 0xCu);
    }

    return [*(a1 + 32) _tryToResumePendingRemoteMigrationFromMigrationInfo:*(a1 + 64) inCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 72)];
  }

  else if (result == 2)
  {
    v9 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) safari_logDescription];
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Perform local-only migration with %{public}@", &v15, 0xCu);
    }

    [*(a1 + 48) setLocalMigrationState:3 generateDeviceIdentifierIfNeeded:1];
    return [*(a1 + 32) _runSyncingWithCollection:*(a1 + 48) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 72)];
  }

  return result;
}

void sub_1000AA3A0(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] _log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE3FC();
    }

    (*(a1[7] + 2))();
  }

  else
  {
    v9 = *(a1 + 2);
    v5 = *(&v9 + 1);
    v6 = a1[6];
    v7 = a1[7];
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v10 = v8;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }
}

void sub_1000AA4C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 40) safari_logDescription];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stealing right to migrate due to migration timeout with %{public}@", &v7, 0xCu);
  }

  v4 = [WBSCloudKitOperationRetryManager alloc];
  v5 = [*(a1 + 32) _log];
  v6 = [v4 initWithLog:v5];

  [v6 setOperationGroup:*(a1 + 40)];
  [v6 setTimeout:30.0];
  [*(a1 + 32) _tryToBecomeResponsibleForMigrationWithRetryManager:v6 inCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 56)];
}

void sub_1000AA77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000AA7A0(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  if (!WeakRetained)
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE6FC(a1, v6);
    }

    goto LABEL_24;
  }

  if (!v3)
  {
    v20 = a1[6];
    v21 = a1[5];
    v22 = a1[8];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    goto LABEL_13;
  }

  if (([v3 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(v3, "safari_isCloudKitNonExistentRecordError") & 1) != 0 || objc_msgSend(v3, "safari_isCloudKitBatchTooLargeError"))
  {
    v5 = a1[4];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE640(v5, v3);
    }

LABEL_24:
    (*(a1[8] + 2))();
    goto LABEL_13;
  }

  if ([v3 safari_isCloudKitWriteConflictError])
  {
    goto LABEL_18;
  }

  v7 = [v3 safari_onlyCloudKitPartialError];
  if ([v7 safari_isCloudKitWriteConflictError])
  {

LABEL_18:
    v9 = a1[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE584(v9, v3);
    }

    v27[1] = _NSConcreteStackBlock;
    v27[2] = 3221225472;
    v27[3] = sub_1000AAC04;
    v27[4] = &unk_100131650;
    v27[5] = WeakRetained;
    v28 = a1[6];
    v29 = a1[5];
    v30 = a1[8];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    goto LABEL_13;
  }

  v8 = [v3 safari_isAtomicWriteError];

  if (v8)
  {
    goto LABEL_18;
  }

  if ([v3 safari_isOrContainsCloudKitMissingZoneError])
  {
    v10 = a1[4];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE4E4(a1, v10);
    }

    goto LABEL_24;
  }

  v11 = a1[7];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000AAC14;
  v23[3] = &unk_100135C40;
  objc_copyWeak(v27, a1 + 9);
  v12 = a1[4];
  v13 = a1[5];
  v26 = a1[8];
  v14 = a1[7];
  v15 = a1[6];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v24 = v17;
  v25 = v16;
  v18 = [v11 scheduleRetryIfNeededForError:v3 usingBlock:v23];
  if (v18 != 1)
  {
    if (v18 == 2)
    {
      v19 = a1[4];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [a1[5] safari_logDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000CE4A0();
      }
    }

    (*(a1[8] + 2))();
  }

  objc_destroyWeak(v27);
LABEL_13:
}

void sub_1000AAC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _tryToBecomeResponsibleForMigrationWithRetryManager:*(a1 + 48) inCollection:*(a1 + 56) operationGroup:*(a1 + 40) completionHandler:*(a1 + 64)];
  }

  else
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE79C(a1, v4);
    }

    (*(*(a1 + 64) + 16))();
  }
}

id sub_1000AACA0(uint64_t a1)
{
  [*(a1 + 32) setLocalMigrationState:3 generateDeviceIdentifierIfNeeded:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _runSyncingWithCollection:v3 inOperationGroup:v4 completionHandler:v5];
}

void sub_1000AB21C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _determineCourseOfActionFromLocalStateInOperationGroup:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_1000AB368(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000AB434(uint64_t a1)
{
  [*(a1 + 32) _willBeginOperationGroup:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AB4FC;
  v8[3] = &unk_100135C90;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v8[4] = v6;
  v9 = v7;
  [v4 _beginSharingTabGroupWithUUID:v2 inOperationGroup:v3 completionHandler:v8];
}

void sub_1000AB4FC(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _didFinishOperationGroup:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_1000AB634(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [v7 setHasSharedTabGroups];
    v9 = [v7 bookmarkWithUUID:*(a1 + 32)];
    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = [v10 _configurationForBookmark:v9];
      v12 = [v11 recordType];
      v13 = [v12 isEqualToString:@"TabGroup"];

      if (v13)
      {
        *v56 = 0;
        *&v56[8] = v56;
        *&v56[16] = 0x3032000000;
        v57 = sub_1000014FC;
        v58 = sub_1000ABC1C;
        v59 = 0;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1000ABC24;
        v43[3] = &unk_100135CE0;
        v43[4] = v56;
        [v9 getReadOnlyCachedBookmarkSyncDataUsingBlock:v43];
        v14 = *(a1 + 40);
        if (*(*&v56[8] + 40))
        {
          v15 = [v14 _log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v9 privacyPreservingDescription];
            v17 = [v9 serverID];
            v18 = [*(*&v56[8] + 40) ckShortDescription];
            v19 = [*(a1 + 48) safari_logDescription];
            *buf = 138544130;
            v49 = v16;
            v50 = 2114;
            v51 = v17;
            v52 = 2114;
            v53 = v18;
            v54 = 2114;
            v55 = v19;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Tab group %{public}@ with record name %{public}@ already has a share record with ID %{public}@, checking if it is still valid with %{public}@", buf, 0x2Au);
          }

          v20 = [*(*&v56[8] + 40) safari_isInPrivateDatabase];
          v21 = [*(*(a1 + 40) + 256) container];
          if (v20)
          {
            [v21 privateCloudDatabase];
          }

          else
          {
            [v21 sharedCloudDatabase];
          }
          v28 = ;

          v29 = *(*(a1 + 40) + 256);
          v30 = [*(*&v56[8] + 40) zoneID];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1000ABC8C;
          v36[3] = &unk_100135D48;
          v31 = *(a1 + 48);
          v36[4] = *(a1 + 40);
          v37 = v9;
          v38 = *(a1 + 48);
          v32 = *(a1 + 56);
          v42 = v20;
          v40 = v32;
          v41 = v56;
          v39 = v7;
          [v29 fetchShareRecordForRecordZoneWithID:v30 inDatabase:v28 operationGroup:v31 completionHandler:v36];
        }

        else
        {
          [v14 _setUpSharingForTabGroup:v9 inCollection:v7 operationGroup:*(a1 + 48) completionHandler:*(a1 + 56)];
        }

        _Block_object_dispose(v56, 8);
      }

      else
      {
        v25 = [*(a1 + 40) _log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 32);
          v34 = [v11 recordType];
          v35 = [*(a1 + 48) safari_logDescription];
          *v56 = 138543874;
          *&v56[4] = v33;
          *&v56[12] = 2114;
          *&v56[14] = v34;
          *&v56[22] = 2114;
          v57 = v35;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Bookmark with UUID %{public}@ does not represent a sharable tab group, actual type: %{public}@ with %{public}@", v56, 0x20u);
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 48);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000ABC04;
        v44[3] = &unk_100135CB8;
        v45 = *(a1 + 56);
        [v26 _didFinishSyncingWithResult:4 error:0 inOperationGroup:v27 completionHandler:v44];
      }
    }

    else
    {
      v22 = [v10 _log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE9D8((a1 + 32), a1);
      }

      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000ABBEC;
      v46[3] = &unk_100135CB8;
      v47 = *(a1 + 56);
      [v23 _didFinishSyncingWithResult:4 error:0 inOperationGroup:v24 completionHandler:v46];
      v11 = v47;
    }
  }
}

void sub_1000ABC24(uint64_t a1, void *a2)
{
  v6 = [a2 shareRecord];
  v3 = [v6 recordID];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000ABC8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) privacyPreservingDescription];
      v10 = [*(a1 + 40) serverID];
      v11 = [*(a1 + 48) safari_logDescription];
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tab Group %{public}@ with record name %{public}@ is already shared, updating the local CKShare record with %{public}@", &v19, 0x20u);
    }

    v12 = *(*(a1 + 64) + 16);
    goto LABEL_12;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v13 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEA78();
    }

    goto LABEL_11;
  }

  if ([v6 safari_isOrContainsCloudKitMissingZoneError])
  {
    v13 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEBE8();
    }

LABEL_11:

    v12 = *(*(a1 + 64) + 16);
LABEL_12:
    v12();
    goto LABEL_13;
  }

  v14 = [v7 safari_isCloudKitNonExistentRecordError];
  v15 = [*(a1 + 32) _log];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(*(*(a1 + 72) + 8) + 40) ckShortDescription];
      v18 = [*(a1 + 48) safari_logDescription];
      v19 = 138543618;
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Local share record with ID %{public}@ does not exist remotely meaning the share was ended before the local record could be updated, beginning a new share with %{public}@", &v19, 0x16u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000CEB20();
  }

  [*(a1 + 56) updateSyncDataForBookmark:*(a1 + 40) usingBlock:&stru_100135D20];
  [*(a1 + 32) _setUpSharingForTabGroup:*(a1 + 40) inCollection:*(a1 + 56) operationGroup:*(a1 + 48) completionHandler:*(a1 + 64)];
LABEL_13:
}

WBBookmarkSyncData *__cdecl sub_1000ABF50(id a1, WBBookmarkSyncData *a2)
{
  v2 = a2;
  [(WBBookmarkSyncData *)v2 setShareRecord:0];

  return v2;
}

void sub_1000AC258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AC294(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v15 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = WeakRetained[8];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 syncCoordinatorDidFinishSyncUp:WeakRetained];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (v6)
  {
    v14 = [*(a1 + 32) title];
    [v6 setObject:v14 forKeyedSubscript:CKShareTitleKey];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000AC570(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = v8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v19 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v7;
  v18 = *(a1 + 56);
  v10 = v7;
  v11 = v9;
  v12 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000AC6A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 64);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000AC908;
    v21[3] = &unk_100135DC0;
    v4 = &v22;
    v22 = v2;
    v5 = *(a1 + 72);
    v6 = *(a1 + 40);
    v23 = v5;
    v24 = v6;
    [v3 updateDatabaseSyncDataUsingBlock:v21];
    v7 = [*(a1 + 72) zoneID];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 80) identifier];
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AC994;
    v16[3] = &unk_100135E10;
    v16[4] = *(a1 + 40);
    v17 = v10;
    v20 = *(a1 + 88);
    v18 = *(a1 + 80);
    v19 = *(a1 + 64);
    [v8 _beginSavingMigrationTombstonesForRootBookmarkID:v9 destinationRecordZoneID:v7 inCollection:v11 operationGroup:v17 completionHandler:v16];
  }

  else
  {
    v12 = [*(a1 + 40) _log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEC90();
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000AC8F0;
    v25[3] = &unk_100135CB8;
    v4 = &v26;
    v26 = *(a1 + 88);
    [v13 _didFailToSyncWithError:v14 inCollection:0 operationGroup:v15 completionHandler:v25];
  }
}

id sub_1000AC908(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneID];
  [v3 setHashGenerator:v4 forRecordZoneID:v5];

  v6 = *(a1 + 48);
  v7 = [v3 recordZoneIDsToHashGenerators];
  [v6 _didRetrieveHashGenerators:v7];

  return v3;
}

void sub_1000AC994(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = WBSStringFromCloudBookmarksSyncResult();
    v11 = [*(a1 + 40) safari_logDescription];
    *buf = 138543618;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did finish setting up shared secondary tab group zone, with result: %{public}@ with %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) isDataclassEnabled])
  {
    if (a2)
    {
      v12 = *(*(a1 + 64) + 16);
LABEL_16:
      v12();
      goto LABEL_17;
    }

    v17 = *(a1 + 32);
    v18 = v17[233];
    v19 = [v17 _log];
    v20 = v19;
    if ((v18 & 1) == 0)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v26 = [*(a1 + 40) safari_logDescription];
        *buf = 138543362;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Did finish saving migration tombstones and checking whether to create a legacy tab group but we do not need to create the placeholder with %{public}@", buf, 0xCu);
      }

      v12 = *(*(a1 + 64) + 16);
      goto LABEL_16;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 40) safari_logDescription];
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Will begin creating legacy placeholder tab group with %{public}@", buf, 0xCu);
    }

    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000ACD08;
    v27[3] = &unk_100135DE8;
    v27[4] = v25;
    v28 = v24;
    v30 = *(a1 + 64);
    v31 = 0;
    v29 = v7;
    [v25 _createLegacyPlaceholderForSharedTabGroup:v22 inCollection:v23 operationGroup:v28 completionHandler:v27];
  }

  else
  {
    v13 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) safari_logDescription];
      *buf = 138543362;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync with %{public}@", buf, 0xCu);
    }

    v15 = *(a1 + 64);
    v16 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    (*(v15 + 16))(v15, 4, 0, v16);
  }

LABEL_17:
}

void sub_1000ACD08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CED3C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) safari_logDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did successfully create legacy placeholder tab group with %{public}@", &v9, 0xCu);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

id sub_1000AD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [*(a1 + 32) _mergedRecordWithLocalRecord:a2 remoteRecord:a3 saveError:a4 successfulMerge:a5 collection:*(a1 + 40) operationGroup:*(a1 + 48)];
  if (v6)
  {
    v7 = [*(a1 + 32) _configurationForRecord:v6];
    if (v7)
    {
      [v6 setExpirationAfterTimeInterval:&off_10013C2D0];
    }

    v8 = v6;
  }

  return v6;
}

void sub_1000AD1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEDE0();
    }

    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000AD350;
    v10[3] = &unk_100135CB8;
    v11 = *(a1 + 64);
    [v8 _didFailToSyncWithError:v3 inCollection:v6 operationGroup:v7 completionHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) safari_logDescription];
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did finish saving migration tombstones to the default zone with %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _beginSavingMigratedRecordsForRootBookmarkID:*(a1 + 72) destinationRecordZoneID:*(a1 + 56) inCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 64)];
  }
}

void sub_1000AD624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEE84();
    }

    v6 = *(a1 + 32);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AD7CC;
    v11[3] = &unk_100135CB8;
    v12 = *(a1 + 64);
    [v6 _didFailToSyncWithError:v3 inCollection:v7 operationGroup:v8 completionHandler:v11];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) ckShortDescription];
      v10 = [*(a1 + 48) safari_logDescription];
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did finish saving records to the new zone %{public}@ with %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _setUpSharingInRecordZoneWithID:*(a1 + 40) collection:*(a1 + 56) operationGroup:*(a1 + 48) completionHandler:*(a1 + 64)];
  }
}

void sub_1000AD9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ADA20(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v14, a1 + 9);
  v7 = a1[4];
  v8 = a1[5];
  v13 = a1[8];
  v9 = v6;
  v10 = a1[6];
  v11 = a1[7];
  v12 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v14);
}

void sub_1000ADB6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 48))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000CEF2C();
      }

      v4 = *(a1 + 64);
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000ADD70;
      v12[3] = &unk_100135CB8;
      v13 = *(a1 + 80);
      [WeakRetained _didFailToSyncWithError:v5 inCollection:v4 operationGroup:v6 completionHandler:v12];
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 56);
        v9 = v3;
        v10 = [v8 ckShortDescription];
        v11 = [*(a1 + 40) safari_logDescription];
        *buf = 138543618;
        v15 = v10;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did save CKShare record to the new zone %{public}@ with %{public}@", buf, 0x16u);
      }

      [WeakRetained _performPostZoneMigrationSyncDownForRecordZoneID:*(a1 + 56) shareRecord:*(a1 + 72) inCollection:*(a1 + 64) operationGroup:*(a1 + 40) completionHandler:*(a1 + 80)];
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEFF8(a1, v7);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void sub_1000ADFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _didFinishSyncDownInCollection:*(a1 + 40) operationGroup:*(a1 + 48) isSuccessful:v3 == 0];
  v4 = [*(a1 + 32) _log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 56) ckShortDescription];
      v15 = [v3 safari_privacyPreservingDescription];
      v16 = [*(a1 + 48) safari_logDescription];
      *buf = 138543874;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed sync down records for new zone %{public}@, error: %{public}@ with %{public}@", buf, 0x20u);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000AE294;
    v20[3] = &unk_100135CB8;
    v9 = &v21;
    v21 = *(a1 + 72);
    [v6 _didFailToSyncWithError:v3 inCollection:v7 operationGroup:v8 completionHandler:v20];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 56) ckShortDescription];
      v11 = [*(a1 + 48) safari_logDescription];
      *buf = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did finish sync down of the new zone %{public}@ with %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000AE2AC;
    v17[3] = &unk_100135F78;
    v9 = &v19;
    v19 = *(a1 + 72);
    v18 = *(a1 + 64);
    [v12 _didFinishSyncingWithResult:0 error:0 inOperationGroup:v13 completionHandler:v17];
  }
}

id sub_1000AE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return (*(*(a1 + 64) + 16))();
  }

  else
  {
    return [*(a1 + 32) _saveNextMigrationRecordBatchWithBookmarkIDQueue:*(a1 + 40) inCollection:*(a1 + 48) operationGroup:*(a1 + 56) usingRecordBuilderBlock:*(a1 + 72) mergeHandler:*(a1 + 80) completionHandler:*(a1 + 64)];
  }
}

uint64_t sub_1000AEA60(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmarkWithID:*(a1 + 72)];
  v3 = [*(a1 + 32) syncDataForBookmark:v2];
  v4 = [v3 record];

  if (v4)
  {
    v5 = [v4 recordChangeTag];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v4 recordID];
      v8 = [v7 zoneID];
      v9 = [v8 isEqual:*(a1 + 40)];
      v10 = *(a1 + 48);
      if (v9)
      {
        v11 = [v10 _log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v7 ckShortDescription];
          v13 = [*(a1 + 56) safari_logDescription];
          v22 = 138543618;
          v23 = v12;
          v24 = 2114;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Record with ID %{public}@ is already in a tab group specific zone and does not need to be moved with %{public}@", &v22, 0x16u);

LABEL_6:
        }
      }

      else
      {
        v15 = [v10[32] bookmarksRecordZoneID];
        v16 = [v8 isEqual:v15];

        if (v16)
        {
          [v2 setSyncState:&off_10013C500];
          v17 = [NSNumber numberWithInteger:2];
          [v2 setMinimumSyncAPIVersion:v17];

          v14 = 1;
          [*(a1 + 32) saveBookmark:v2 incrementGenerations:1];
          v18 = [*(a1 + 48) _recordForBookmark:v2 inCollection:*(a1 + 32) changeType:1];
          [v18 setExpirationAfterTimeInterval:&off_10013C2D0];
          [*(a1 + 64) addObject:v18];

LABEL_12:
          goto LABEL_13;
        }

        v11 = [*(a1 + 48) _log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [v7 ckShortDescription];
          v20 = [*(a1 + 40) ckShortDescription];
          v21 = [*(a1 + 56) safari_logDescription];
          v22 = 138543874;
          v23 = v12;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v21;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Record with ID %{public}@ is neither in the default zone to become a tombstone nor in the destination zone %{public}@ with %{public}@", &v22, 0x20u);

          goto LABEL_6;
        }
      }

      v14 = 0;
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

uint64_t sub_1000AEE4C(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmarkWithID:*(a1 + 56)];
  [v2 setSyncState:&off_10013C518];
  [*(a1 + 32) saveBookmark:v2 incrementGenerations:1];
  v3 = [*(a1 + 40) _configurationForBookmark:v2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AEF70;
  v8[3] = &unk_100136018;
  v4 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = *(a1 + 48);
  v5 = v3;
  v6 = v2;
  [v4 updateSyncDataForBookmark:v6 usingBlock:v8];

  return 1;
}

id sub_1000AEF70(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 clearAllCKRecords];
  v4 = [*(a1 + 32) _recordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) changeType:0 inCollection:*(a1 + 56)];
  [*(a1 + 64) addObject:v4];
  v5 = [*(a1 + 32) _tabGroupParticipantExtrasRecordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) changeType:0 inCollection:*(a1 + 56)];
  if (v5)
  {
    [*(a1 + 64) addObject:v5];
    v6 = [*(a1 + 32) _makeRootRecordID];
    v7 = *(a1 + 56);
    v8 = [v6 recordName];
    v9 = [v7 generatePositionBeforeFirstRecordInParentWithServerID:v8];

    v10 = [WBSCRDTGeneration alloc];
    v11 = [*(a1 + 32) deviceIdentifier];
    v12 = [v10 initWithDeviceIdentifier:v11 generation:1];

    v13 = [[CKReference alloc] initWithRecordID:v6 action:0];
    [v4 setObject:v13 forKeyedSubscript:@"ParentFolder"];

    v14 = [*(a1 + 48) valueTransformerForAttributeKey:@"Position"];
    [v4 safari_setDefaultPosition:v9 usingValueTransformer:v14];

    [v4 safari_setGeneration:v12 forKey:@"ParentAndPosition"];
  }

  v15 = [*(a1 + 32) _readStatusRecordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) changeType:0 inCollection:*(a1 + 56)];
  [*(a1 + 64) safari_addObjectUnlessNil:v15];

  return v3;
}

void sub_1000AF260(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  v8 = *(a1 + 64);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000AF344(uint64_t a1)
{
  [*(a1 + 32) _willBeginOperationGroup:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AF418;
  v9[3] = &unk_100135C90;
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v9[4] = v7;
  v10 = v8;
  [v4 _acceptShareForURL:v2 invitationTokenData:v3 inOperationGroup:v5 completionHandler:v9];
}

void sub_1000AF418(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _didFinishOperationGroup:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_1000AF60C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] _log];
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [a1[5] safari_logDescription];
      *buf = 138740739;
      v27 = v7;
      v28 = 2160;
      v29 = 1752392040;
      v30 = 2117;
      v31 = v8;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Did fetch share metadata for shareURL %{sensitive, hash.mask}@, %{sensitive, mask.hash}@ with %{public}@", buf, 0x2Au);
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000AF858;
    v21 = &unk_100131650;
    v22 = a1[4];
    v23 = v8;
    v24 = a1[5];
    v25 = a1[6];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    v13 = v23;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF090(v7, a1);
    }

    v14 = a1[4];
    v15 = a1[5];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AF86C;
    v16[3] = &unk_100135CB8;
    v17 = a1[6];
    [v14 _didFailToSyncWithError:v9 inCollection:0 operationGroup:v15 completionHandler:v16];
    v13 = v17;
  }
}

void sub_1000AF9A4(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v8 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000AFA88(uint64_t a1)
{
  [*(a1 + 32) _willBeginOperationGroup:*(a1 + 40)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AFB4C;
  v6[3] = &unk_100135C90;
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v2;
  v6[4] = v3;
  v7 = v4;
  v5 = objc_retainBlock(v6);
  [*(a1 + 32) _acceptTabGroupShareForShareMetadata:*(a1 + 48) inProfileWithIdentifier:*(a1 + 56) operationGroup:*(a1 + 40) completionHandler:v5];
}

void sub_1000AFB4C(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _didFinishOperationGroup:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_1000AFCB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [v5 setHasSharedTabGroups];
    [*(a1 + 32) _acceptTabGroupShareForShareMetadata:*(a1 + 40) inProfileWithIdentifier:*(a1 + 48) collection:v6 operationGroup:*(a1 + 56) completionHandler:*(a1 + 64)];
  }
}

void sub_1000B028C(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  if (v3)
  {
    [v4 _didFinishSyncDownInCollection:v5 operationGroup:v6 isSuccessful:0];
    v7 = [a1[4] _log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v24 = [a1[7] ckShortDescription];
      v25 = [v3 safari_privacyPreservingDescription];
      v26 = [a1[6] safari_logDescription];
      *buf = 138543874;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      v36 = 2114;
      v37 = v26;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Did fail to perform sync down of zone %{public}@ shared by this user; error: %{public}@ with %{public}@", buf, 0x20u);
    }

    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000B0614;
    v30[3] = &unk_100135CB8;
    v31 = a1[10];
    [v8 _didFailToSyncWithError:v3 inCollection:v9 operationGroup:v10 completionHandler:v30];
    v11 = v31;
  }

  else
  {
    [v4 _didFinishSyncDownInCollection:v5 operationGroup:v6 isSuccessful:1];
    v11 = [*(a1[4] + 32) rootRecordNameForSecondaryRecordZoneID:a1[7]];
    v12 = [a1[5] bookmarkWithServerID:v11 excludeDeletedBookmarks:1];
    [a1[8] timeIntervalSinceNow];
    if (thresholdForRecentlyAcceptedShare > -v13)
    {
      WeakRetained = objc_loadWeakRetained(a1[4] + 31);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(a1[4] + 31);
        v17 = a1[4];
        v18 = [v12 UUID];
        [v16 cloudTabGroupSyncCoordinator:v17 didFetchRecentlyAcceptedSharedTabGroupWithUUID:v18 acceptedShareDate:a1[8]];
      }
    }

    v19 = [a1[4] _log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [a1[7] ckShortDescription];
      v21 = [a1[6] safari_logDescription];
      *buf = 138543618;
      v33 = v20;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully performed sync down for zone %{public}@ shared by this user with %{public}@", buf, 0x16u);
    }

    v22 = a1[4];
    v23 = a1[6];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B062C;
    v27[3] = &unk_100135F78;
    v29 = a1[10];
    v28 = a1[9];
    [v22 _didFinishSyncingWithResult:0 error:0 inOperationGroup:v23 completionHandler:v27];
  }
}

void sub_1000B0644(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] _log];
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v8 recordID];
      v12 = [v24 zoneID];
      v13 = [v12 ckShortDescription];
      v14 = [v8 URL];
      v15 = [a1[6] safari_logDescription];
      *buf = 138544131;
      v33 = v13;
      v34 = 2160;
      v35 = 1752392040;
      v36 = 2117;
      v37 = v14;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully accepted share with zoneID %{public}@ for shareURL: %{sensitive, mask.hash}@ with %{public}@", buf, 0x2Au);
    }

    v16 = v25;
    v17 = v8;
    v18 = a1[4];
    v25[0] = v17;
    v25[1] = v18;
    v26 = a1[6];
    v27 = a1[7];
    v29 = a1[9];
    v28 = a1[8];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = [a1[5] ckShortDescription];
      v22 = [v9 safari_privacyPreservingDescription];
      v23 = [a1[6] safari_logDescription];
      *buf = 138544387;
      v33 = v21;
      v34 = 2160;
      v35 = 1752392040;
      v36 = 2117;
      v37 = v7;
      v38 = 2114;
      v39 = v22;
      v40 = 2114;
      v41 = v23;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch accept share with zoneID %{public}@ for metadata %{sensitive, mask.hash}@; error: %{public}@ with %{public}@", buf, 0x34u);
    }

    v19 = a1[4];
    v20 = a1[6];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000B09B4;
    v30[3] = &unk_100135CB8;
    v16 = &v31;
    v31 = a1[9];
    [v19 _didFailToSyncWithError:v9 inCollection:0 operationGroup:v20 completionHandler:v30];
  }
}

void sub_1000B09CC(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  v3 = [v2 zoneID];

  v4 = [*(*(a1 + 40) + 256) rootRecordNameForSecondaryRecordZoneID:v3];
  v5 = [*(a1 + 40) _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 ckShortDescription];
    v7 = [*(a1 + 48) safari_logDescription];
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will perform sync down of zone %{public}@ with %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) _prepareForSyncDownInOperationGroup:*(a1 + 48)];
  v8 = *(a1 + 40);
  v24 = v3;
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  v10 = [*(*(a1 + 40) + 256) container];
  v11 = [v10 sharedCloudDatabase];
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B0C58;
  v16[3] = &unk_1001360E0;
  v16[4] = *(a1 + 40);
  v17 = v12;
  v18 = *(a1 + 48);
  v19 = v3;
  v20 = *(a1 + 32);
  v23 = *(a1 + 72);
  v21 = v4;
  v22 = *(a1 + 64);
  v14 = v4;
  v15 = v3;
  [v8 _performSyncDownForRecordZoneIDs:v9 perRecordZoneConfigurations:0 inDatabase:v11 collection:v17 operationGroup:v13 completionHandler:v16];
}

void sub_1000B0C58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v3)
  {
    [v5 _didFinishSyncDownInCollection:v6 operationGroup:v4 isSuccessful:0];
    v7 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF14C(a1, (a1 + 48));
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000B1170;
    v50[3] = &unk_100135CB8;
    v51 = *(a1 + 88);
    [v8 _didFailToSyncWithError:v3 inCollection:v9 operationGroup:v10 completionHandler:v50];
    v11 = v51;
  }

  else
  {
    [v5 _didFinishSyncDownInCollection:v6 operationGroup:v4 isSuccessful:1];
    v12 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 56) ckShortDescription];
      v14 = [*(a1 + 64) URL];
      v15 = [*(a1 + 48) safari_logDescription];
      *buf = 138544131;
      v54 = v13;
      v55 = 2160;
      v56 = 1752392040;
      v57 = 2117;
      v58 = v14;
      v59 = 2114;
      v60 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully performed sync down for zone %{public}@ of shareURL %{sensitive, mask.hash}@ with %{public}@", buf, 0x2Au);
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 184);
    *(v16 + 184) = 0;

    v18 = [*(a1 + 40) bookmarkWithServerID:*(a1 + 72) excludeDeletedBookmarks:1];
    v11 = v18;
    if (v18)
    {
      [v18 markAttributesAsModified:4];
      [*(a1 + 40) saveBookmark:v11 incrementGenerations:1];
      [*(a1 + 40) markChildrenInFolderAsRead:v11];
      [*(a1 + 80) timeIntervalSinceNow];
      if (thresholdForRecentlyAcceptedShare > -v19)
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = objc_loadWeakRetained((*(a1 + 32) + 248));
          v23 = *(a1 + 32);
          v24 = [v11 UUID];
          [v22 cloudTabGroupSyncCoordinator:v23 didFetchRecentlyAcceptedSharedTabGroupWithUUID:v24 acceptedShareDate:*(a1 + 80)];
        }
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v25 = *(*(a1 + 32) + 64);
      v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v45;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v45 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v44 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v30 syncCoordinatorDidBeginSyncUp:*(a1 + 32)];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v27);
      }

      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000B11A0;
      v40[3] = &unk_100135C18;
      v40[4] = v31;
      v41 = v33;
      v43 = *(a1 + 88);
      v42 = *(a1 + 64);
      [v31 _savePrivateParticipantRecordsForAcceptedSharedTabGroup:v11 inCollection:v32 operationGroup:v41 completionHandler:v40];

      v34 = v41;
    }

    else
    {
      v35 = [*(a1 + 32) _log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF214(a1, (a1 + 48));
      }

      v36 = *(a1 + 32);
      v37 = [NSError errorWithDomain:WBSCloudBookmarksErrorDomain code:4 userInfo:0];
      v38 = *(a1 + 40);
      v39 = *(a1 + 48);
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1000B1188;
      v48[3] = &unk_100135CB8;
      v49 = *(a1 + 88);
      [v36 _didFailToSyncWithError:v37 inCollection:v38 operationGroup:v39 completionHandler:v48];

      v34 = v49;
    }
  }
}

void sub_1000B11A0(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 syncCoordinatorDidFinishSyncUp:*(a1 + 32)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B134C;
  v10[3] = &unk_100135F78;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v8 _didFinishSyncingWithResult:0 error:0 inOperationGroup:v9 completionHandler:v10];
}

void sub_1000B185C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B1898(uint64_t a1, void *a2)
{
  v6 = [a2 record];
  v3 = [v6 recordID];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000B1CF8(uint64_t a1, void *a2)
{
  v6 = [a2 record];
  v3 = [v6 recordID];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_1000B1D74(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 recordID];
  if ([*(a1 + 32) containsObject:v11])
  {
LABEL_2:
    v12 = 0;
    goto LABEL_13;
  }

  v39 = a4;
  v13 = [v9 recordType];
  LODWORD(v14) = [v13 isEqualToString:@"TabGroupParticipantExtras"];

  if (v14)
  {
    v38 = [*(a1 + 40) deviceIdentifier];
    v15 = [v9 safari_encryptedValues];
    v16 = [v15 objectForKeyedSubscript:@"Position"];
    v17 = [v10 safari_encryptedValues];
    [v17 setObject:v16 forKeyedSubscript:@"Position"];

    v18 = [v9 objectForKeyedSubscript:@"ParentFolder"];
    [v10 setObject:v18 forKeyedSubscript:@"ParentFolder"];

    [v10 safari_incrementGenerationWithDeviceIdentifier:v38 forKey:@"ParentAndPosition"];
    v19 = [v9 objectForKeyedSubscript:@"LastSelectedTab"];
    [v10 setObject:v19 forKeyedSubscript:@"LastSelectedTab"];

    [v10 safari_incrementGenerationWithDeviceIdentifier:v38 forKey:@"LastSelectedTab"];
  }

  v20 = [v9 recordType];
  v21 = [v20 isEqualToString:@"TabGroupParticipantPosition"];

  if (v21)
  {
    v14 = [*(a1 + 40) deviceIdentifier];
    v22 = [v9 safari_encryptedValues];
    v23 = [v22 objectForKeyedSubscript:@"Position"];
    v24 = [v10 safari_encryptedValues];
    [v24 setObject:v23 forKeyedSubscript:@"Position"];

    [v10 safari_incrementGenerationWithDeviceIdentifier:v14 forKey:@"Position"];
    v25 = [v9 objectForKeyedSubscript:@"LastSelectedTab"];
    [v10 setObject:v25 forKeyedSubscript:@"LastSelectedTab"];

    [v10 safari_incrementGenerationWithDeviceIdentifier:v14 forKey:@"LastSelectedTab"];
    LOBYTE(v14) = 1;
  }

  v26 = [v9 recordType];
  v27 = [v26 isEqualToString:@"TabGroupTabParticipantStatus"];

  if (v27)
  {
    v28 = [v11 recordName];
    v29 = [v28 safari_substringFromPrefix:@"TabReadStatus_"];

    v30 = [*(a1 + 48) bookmarkWithServerID:v29 excludeDeletedBookmarks:1];
    [v30 markAsRead];
    v31 = [v30 lastReadGeneration];
    [v10 safari_setGeneration:v31 forKey:@"ReadStatus"];

    v32 = v39;
  }

  else
  {
    v32 = v39;
    if ((v14 & 1) == 0)
    {
      v36 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF524(v36, v10);
      }

      v37 = [*(a1 + 40) _mergedRecordWithLocalRecord:v9 remoteRecord:v10 saveError:v39 successfulMerge:a5 collection:*(a1 + 48) operationGroup:*(a1 + 56)];
      goto LABEL_2;
    }
  }

  [*(a1 + 32) addObject:v11];
  v33 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_1000CF5F0(v33, v10);
  }

  v34 = [*(a1 + 40) _mergedRecordWithLocalRecord:v9 remoteRecord:v10 saveError:v32 successfulMerge:a5 collection:*(a1 + 48) operationGroup:*(a1 + 56)];
  v12 = v10;
LABEL_13:

  return v12;
}

void sub_1000B216C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF6BC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(*(*(a1 + 56) + 8) + 40) ckShortDescription];
    v7 = [*(a1 + 40) safari_logDescription];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did finish saving participant records in private record zone for newly accepted tab group with ID %{public}@, %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

id sub_1000B241C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _tabGroupParticipantExtrasRecordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) changeType:0 inCollection:*(a1 + 56)];
  [*(a1 + 64) safari_addObjectUnlessNil:v4];
  v5 = *(a1 + 32);
  if (v4 && v5[234] == 1)
  {
    v6 = [*(a1 + 40) parentID];
    if (v6 == BookmarksRootID)
    {
      v7 = [*(a1 + 56) allSyncingAttributesForBookmark:*(a1 + 40)];
    }

    else
    {
      v12[0] = @"ParentFolder";
      v12[1] = @"Position";
      v13[0] = WBSCloudBookmarkListRecordNameTopBookmark;
      v8 = [*(a1 + 56) generatePositionBeforeFirstRecordInParentWithServerID:0];
      v13[1] = v8;
      v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    }

    v9 = [*(a1 + 32) _tabGroupParticipantPositionRecordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) modifiedAttributes:516 attributes:v7 inCollection:*(a1 + 56)];
    [*(a1 + 64) safari_addObjectUnlessNil:v9];

    v5 = *(a1 + 32);
  }

  v10 = [v5 _readStatusRecordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) changeType:0 inCollection:*(a1 + 56)];
  [*(a1 + 64) safari_addObjectUnlessNil:v10];

  return v3;
}

void sub_1000B2E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000B2EB4(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 safari_isMetadataDevice];
  v4 = v18;
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = [v18 safari_deviceOSVersionNumber];
  v6 = [v18 safari_deviceOSKind];
  if (!v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    if (v6 != 1 || [v5 compare:*(*(*(a1 + 40) + 8) + 40) options:64] != -1)
    {
      goto LABEL_11;
    }

    v7 = *(a1 + 40);
    goto LABEL_9;
  }

  if ([v5 compare:*(*(*(a1 + 48) + 8) + 40) options:64] == -1)
  {
    v7 = *(a1 + 48);
LABEL_9:
    objc_storeStrong((*(v7 + 8) + 40), v5);
  }

LABEL_11:
  v8 = [v18 safari_deviceSoftwareVersion];
  v9 = [v8 safari_stringByNormalizingVersionString];

  if ([v9 compare:*(*(*(a1 + 64) + 8) + 40) options:64] == -1)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
  }

  v10 = [v18 safari_deviceOSName];
  v11 = v10;
  v12 = @"<Unknown>";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
  v15 = v14;
  v16 = @"99999999";
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  if ([v9 compare:v17 options:64] == -1)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v13];
  }

  v4 = v18;
LABEL_20:
}

void sub_1000B309C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = *v2;
  v9 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v10 = *(a1 + 64);
  v13 = *(a1 + 80);
  v8 = v10;
  v14 = *(a1 + 96);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_1000B3194(uint64_t a1)
{
  v2 = +[NSDate now];
  v3 = *(a1 + 40);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;

  [*(a1 + 40) _didLoadLastKnownMinimumSafariVersionsPerOSNames:*(a1 + 48) inOperationGroup:*(a1 + 56)];
  [*(a1 + 40) _didLoadLastKnownMinimumIOSVersion:*(*(*(a1 + 72) + 8) + 40) minimumMacOSVersion:*(*(*(a1 + 80) + 8) + 40) encounteredUnknownOS:*(*(*(a1 + 88) + 8) + 24) inOperationGroup:*(a1 + 56)];
  v5 = *(a1 + 64);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 safari_normalizedVersion];
  [v5 syncSetString:v7 forKey:@"MinimumVersionsCacheLastSavedSafariVersion"];

  v8 = *(a1 + 64);
  v9 = +[NSProcessInfo processInfo];
  v10 = [v9 safari_operatingSystemVersionString];
  [v8 syncSetString:v10 forKey:@"MinimumVersionsCacheLastSavedOSVersion"];

  v11 = *(a1 + 64);
  v12 = [NSKeyedArchiver archivedDataWithRootObject:*(*(a1 + 40) + 224) requiringSecureCoding:1 error:0];
  [v11 setSyncData:v12 forKey:@"LastKnownMinimumVersionsInCircleCacheDate"];

  v13 = *(a1 + 64);
  v14 = [NSPropertyListSerialization dataWithPropertyList:*(a1 + 48) format:200 options:0 error:0];
  [v13 setSyncData:v14 forKey:@"LastKnownMinimumSafariVersionPerOSName"];

  [*(a1 + 64) syncSetString:*(*(*(a1 + 72) + 8) + 40) forKey:@"LastKnownMinimumIOSVersionInCircle"];
  [*(a1 + 64) syncSetString:*(*(*(a1 + 80) + 8) + 40) forKey:@"LastKnownMinimumMacOSVersionInCircle"];
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v15 = @"1";
  }

  else
  {
    v15 = @"0";
  }

  [*(a1 + 64) syncSetString:v15 forKey:@"encounteredUnknownOSVersionInCircle"];
  result = [*(a1 + 64) syncSetString:*(*(*(a1 + 96) + 8) + 40) forKey:@"LastKnownMinimumSafariVersionInCircle"];
  *(*(a1 + 40) + 232) = 0;
  return result;
}

void sub_1000B3450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B3468(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = sub_10003FE40(v9);
    if ((v8 - 1) >= 2)
    {
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else if ([v7 safari_isVersionStringGreaterThanOrEqualToVersionString:@"616.1.2"])
    {
      goto LABEL_7;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_7:
}

id sub_1000B3A74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) bookmarkWithID:a2];
  v4 = [*(a1 + 40) _recordForBookmark:v3 inCollection:*(a1 + 32) changeType:0];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000B3B44(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B3C0C;
  v8[3] = &unk_1001362B0;
  v9 = v4;
  v10 = *(a1 + 48);
  v5 = a2;
  [v9 performDatabaseUpdatesWithTransaction:v8 secureDelete:0];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7);
}

id sub_1000B3C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 bookmarkWithID:*(a1 + 40)];
  v3 = [v1 deleteBookmark:v2 leaveTombstone:0];

  return v3;
}

void sub_1000B49EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_1000CF788();
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 safari_logDescription];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Done deleting recordZoneID batch with %{public}@", &v11, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1000B4B20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_1000CF834();
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = [v11 safari_logDescription];
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Done saving record batch, posting highlights to Messages with %{public}@", buf, 0xCu);
    }

    v14 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B4D18;
    v17[3] = &unk_100136378;
    v18 = v7;
    v19 = *(a1 + 56);
    v20 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 64);
    v21 = v15;
    v22 = v16;
    v23 = *(a1 + 48);
    [v14 performDatabaseUpdatesWithTransaction:v17 secureDelete:0];
  }
}

uint64_t sub_1000B4D18(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v21 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v21)
  {
    v3 = *v29;
    *&v2 = 138543874;
    v19 = v2;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v6 = [v5 recordID];
        v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v8 = [v7 bookmark];

        v9 = *(a1 + 48);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = v9;
          [v6 ckShortDescription];
          v12 = v11 = v3;
          v13 = [v8 serverID];
          v14 = [*(a1 + 56) safari_logDescription];
          *buf = v19;
          v33 = v12;
          v34 = 2114;
          v35 = v13;
          v36 = 2114;
          v37 = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did successfully save record with ID %{public}@ associated with bookmark with serverID %{public}@ with %{public}@", buf, 0x20u);

          v3 = v11;
        }

        [*(a1 + 64) _processSavedRecord:v5 forBookmark:v8 inCollection:*(a1 + 72) operationGroup:*(a1 + 56)];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000B4FFC;
        v22[3] = &unk_100136350;
        v15 = *(a1 + 72);
        v22[4] = *(a1 + 64);
        v22[5] = v5;
        v23 = v8;
        v24 = v15;
        v25 = *(a1 + 48);
        v26 = *(a1 + 56);
        v27 = v6;
        v16 = v6;
        v17 = v8;
        [v15 updateSyncDataForBookmark:v17 usingBlock:v22];
      }

      v21 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v21);
  }

  return 1;
}

id sub_1000B4FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) recordType];
  v7 = [v5 _auxiliaryRecordKeyForRecordType:v6];

  if (v7)
  {
    [v3 setAuxiliaryRecord:*v4 forKey:v7];
    v8 = v3;
    goto LABEL_19;
  }

  if (+[WBSFeatureAvailability isNewTabAndWindowSyncingEnabled])
  {
    v9 = [*v4 recordType];
    v10 = [v9 isEqual:@"Setting"];

    if (v10)
    {
      [*(a1 + 32) _didSaveSettingRecord:*(a1 + 40) forBookmark:*(a1 + 48) withCollection:*(a1 + 56)];
      v8 = 0;
      goto LABEL_19;
    }
  }

  v11 = [*(a1 + 32) _configurationForRecord:*(a1 + 40)];
  if (!v11)
  {
    v20 = *(a1 + 64);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1000CF8E0((a1 + 40), v20, a1);
    }

    goto LABEL_17;
  }

  if ([*(*(a1 + 32) + 136) containsObject:*(a1 + 80)])
  {
    v12 = *(a1 + 64);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 80);
      v14 = v12;
      v15 = [v13 ckShortDescription];
      v16 = [v3 record];
      v17 = [v16 recordID];
      v18 = [v17 ckShortDescription];
      v19 = [*(a1 + 72) safari_logDescription];
      v34 = 138543874;
      v35 = v15;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Did successfully mark record with ID %{public}@ as deleted in source zone for destination record with ID %{public}@ with %{public}@", &v34, 0x20u);
    }

    [*(*(a1 + 32) + 136) removeObject:*(a1 + 80)];
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v21 = [*(a1 + 80) recordName];
  v22 = [*(a1 + 48) serverID];
  v23 = [v21 isEqualToString:v22];

  if ((v23 & 1) == 0)
  {
    v24 = *(a1 + 64);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 80);
      v27 = v24;
      v28 = [v26 ckShortDescription];
      v29 = [*(a1 + 48) serverID];
      v30 = [v3 record];
      v31 = [v30 recordID];
      v32 = [v31 ckShortDescription];
      v33 = [*(a1 + 72) safari_logDescription];
      v34 = 138544130;
      v35 = v28;
      v36 = 2114;
      v37 = v29;
      v38 = 2114;
      v39 = v32;
      v40 = 2114;
      v41 = v33;
      _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Record with ID %{public}@ does not match associated bookmark with serverID %{public}@ (recordID: %{public}@) even though it is not a record moving to a different zone; ignoring with %{public}@", &v34, 0x2Au);
    }

    goto LABEL_17;
  }

  [v3 setRecord:*v4];
  v8 = v3;
LABEL_18:

LABEL_19:

  return v8;
}

void sub_1000B53A0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_1000B53E4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_1000B5428(uint64_t a1)
{
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 72);

    [v2 _didFailToSyncWithError:? inCollection:? operationGroup:? completionHandler:?];
  }

  else
  {
    v5 = *(a1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 88);
      v7 = *(a1 + 40);
      v8 = v5;
      v9 = [v7 safari_logDescription];
      *buf = 134349314;
      v18 = v6;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done saving record batches, clearing changes during or before generation %{public}zu with %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 56);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B5628;
    v13[3] = &unk_1001363C8;
    v14 = v10;
    v11 = *(a1 + 64);
    v12 = *(a1 + 88);
    v15 = v11;
    v16 = v12;
    [v14 performDatabaseUpdatesWithTransaction:v13 secureDelete:0];
    if ([*(*(a1 + 32) + 136) count] && os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1000CF998();
    }

    [*(a1 + 32) _saveNextBatchInCollection:*(a1 + 56) operationGroup:*(a1 + 40) completionHandler:*(a1 + 72)];
  }
}

uint64_t sub_1000B5628(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) changes];
  [v2 clearChangesForChangeRecords:v3 lastSyncedRecordGeneration:*(a1 + 48)];

  [*(a1 + 32) setLastSyncedRecordGeneration:*(a1 + 48)];
  return 1;
}

void sub_1000B5B94(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v6 = v5;
  v7 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000B5C8C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1000CFA70();
    }
  }

  else
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 48);

    [v2 addObject:v3];
  }
}

void sub_1000B5D10(id *a1, void *a2)
{
  v9 = a2;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[7];
  *&v6 = a1[6];
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  v8 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

uint64_t sub_1000B5E14(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = a1[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFB40(v2, v3);
    }

    v4 = *v2;
  }

  v5 = a1[7];
  return (*(a1[8] + 16))();
}

id sub_1000B6408(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v5 recordID];
    v10 = [v9 ckShortDescription];
    v11 = [*(a1 + 40) safari_logDescription];
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Resolving merge conflict for record with name: %{public}@ with %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = sub_1000014FC;
  v19 = sub_1000ABC1C;
  v20 = 0;
  v16 = *(a1 + 48);
  v14 = v5;
  v15 = v6;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
  v12 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

void sub_1000B663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B665C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v5 = a1[9];
  v6 = (*(a1[6] + 16))();
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1000B66B8(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v12 = a4;
  v13 = a1[4];
  v14 = a1[5];
  v16 = v8;
  v17 = a1[6];
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v12;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

uint64_t sub_1000B67D4(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = a1[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFBE4(v2, v3);
    }

    v4 = *v2;
  }

  v5 = a1[8];
  v6 = a1[7];
  return (*(a1[9] + 16))();
}

void sub_1000B6BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) _didFinishSyncDownInCollection:*(a1 + 40) operationGroup:*(a1 + 48) isSuccessful:0];
    v5 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 56) valueForKey:@"ckShortDescription"];
      v12 = [v11 componentsJoinedByString:{@", "}];
      v13 = [v3 safari_privacyPreservingDescription];
      v14 = [*(a1 + 48) safari_logDescription];
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Did fail to refresh record zones with IDs %{public}@ in private database; error: %{public}@ with %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) _didFailToSyncWithError:v3 inCollection:*(a1 + 40) operationGroup:*(a1 + 48) completionHandler:*(a1 + 80)];
  }

  else
  {
    v6 = *(a1 + 64);
    v7 = [v4[32] container];
    v8 = [v7 sharedCloudDatabase];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B6E48;
    v15[3] = &unk_100135FA0;
    v15[4] = *(a1 + 32);
    v16 = v9;
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v20 = *(a1 + 80);
    v19 = *(a1 + 72);
    [v4 _performSyncDownForRecordZoneIDs:v6 perRecordZoneConfigurations:&__NSDictionary0__struct inDatabase:v8 collection:v16 operationGroup:v10 completionHandler:v15];
  }
}

void sub_1000B6E48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v3)
  {
    [v4 _didFinishSyncDownInCollection:v5 operationGroup:v6 isSuccessful:0];
    v7 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 56) valueForKey:@"ckShortDescription"];
      v11 = [v10 componentsJoinedByString:{@", "}];
      v12 = [v3 safari_privacyPreservingDescription];
      v13 = [*(a1 + 48) safari_logDescription];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Did fail to refresh record zones with IDs %{public}@ in shared database; error: %{public}@ with %{public}@", &v14, 0x20u);
    }

    [*(a1 + 32) _didFailToSyncWithError:v3 inCollection:*(a1 + 40) operationGroup:*(a1 + 48) completionHandler:*(a1 + 72)];
  }

  else
  {
    [v4 _didFinishSyncDownInCollection:v5 operationGroup:v6 isSuccessful:1];
    v8 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) safari_logDescription];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully refreshed record zone IDs with %{public}@", &v14, 0xCu);
    }

    [*(*(a1 + 32) + 192) minusSet:*(a1 + 64)];
    [*(a1 + 32) _continuePostSyncDownHousekeepingInCollection:*(a1 + 40) operationGroup:*(a1 + 48) completionHandler:*(a1 + 72)];
  }
}

void *sub_1000B70D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 lastServerChangeTokenForRecordZoneID:{v10, v15}];

        if (v11)
        {
          [v3 setLastServerChangeToken:0 forRecordZoneID:v10];
          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);

    if (v7)
    {
      v12 = v3;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  v13 = v12;

  return v12;
}

void sub_1000B7838(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
}

void sub_1000B7950(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    if (*(a1 + 48))
    {
      [*(*(a1 + 64) + 128) removeObject:?];
    }

    v24 = CKErrorDomain;
    v25 = &off_10013CBA8;
    v8 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v9 = [*(a1 + 80) safari_matchesErrorDomainsAndCodes:v8];
    v10 = *(a1 + 40);
    if (v9)
    {
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_INFO))
      {
LABEL_12:

        return;
      }

      v11 = *(a1 + 48);
      v12 = v10;
      v13 = [v11 ckShortDescription];
      v14 = [*(a1 + 56) safari_logDescription];
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Record with ID %{public}@ requested for refresh does not exist in the remote database with %{public}@", &v18, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v15 = *(a1 + 48);
      v12 = v10;
      v13 = [v15 ckShortDescription];
      v16 = [*(a1 + 80) safari_privacyPreservingDescription];
      v17 = [*(a1 + 56) safari_logDescription];
      v18 = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not refresh record with ID %{public}@ because of error %{public}@ with %{public}@", &v18, 0x20u);
    }

    goto LABEL_12;
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [v3 ckShortDescription];
    v6 = [*(a1 + 56) safari_logDescription];
    v18 = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Did successfully refresh record with ID %{public}@ with %{public}@", &v18, 0x16u);
  }

  v7 = [*(a1 + 64) _didFetchRecord:*(a1 + 32) inCollection:*(a1 + 72) operationGroup:*(a1 + 56) shouldGenerateUpdatedRecord:0];
}

void sub_1000B7BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = v6;
  v5 = v7;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000B7CD4(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2 && ([v2 safari_matchesErrorDomain:CKErrorDomain andCode:2] & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFC88(v3, v4);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 56));
}

id sub_1000B7D64(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(*(*(v3 + 40) + 8) + 40))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);

    return [v2 _didFailToSyncWithError:? inCollection:? operationGroup:? completionHandler:?];
  }

  else
  {
    v7 = [v2[16] count];
    v8 = *(a1 + 48);
    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1000CFD2C();
      }
    }

    else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v9 safari_logDescription];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Done refreshing records with %{public}@", &v12, 0xCu);
    }

    return [*(a1 + 32) _continuePostSyncDownHousekeepingInCollection:*(a1 + 56) operationGroup:*(a1 + 40) completionHandler:*(a1 + 64)];
  }
}

void sub_1000B81C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(*(a1 + 32) + 64);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 syncCoordinatorDidFinishDeletingAuxiliaryRecords:{*(a1 + 32), v18}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 40);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v11)
    {
      v12 = v10;
      v13 = [v3 safari_privacyPreservingDescription];
      v14 = [*(a1 + 48) safari_logDescription];
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Did fail to delete auxiliary records with error %{public}@,  %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _didFailToSyncWithError:v3 inCollection:*(a1 + 56) operationGroup:*(a1 + 48) completionHandler:{*(a1 + 64), v18}];
  }

  else
  {
    if (v11)
    {
      v15 = *(a1 + 48);
      v16 = v10;
      v17 = [v15 safari_logDescription];
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Sync coordinator did finish deleting auxiliary records with %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _continuePostSyncDownHousekeepingInCollection:*(a1 + 56) operationGroup:*(a1 + 48) completionHandler:{*(a1 + 64), v18}];
  }
}

void sub_1000B8944(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v10 = v11;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000B8A38(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFE20(v3, v4);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1000B8AAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v10 = v11;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000B8BA0(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFEC4(v3, v4);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

id sub_1000B8C14(uint64_t a1)
{
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v2 = *(a1 + 80);
    v3 = *(*(a1 + 80) + 16);

    return v3();
  }

  else
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Done deleting auxiliary record batches, clearing records in sync data with %{public}@", &v13, 0xCu);
    }

    v9 = *(*(a1 + 48) + 112);
    v10 = [NSSet setWithArray:*(a1 + 56)];
    [v9 minusSet:v10];

    v11 = *(*(a1 + 48) + 112);
    v12 = [NSSet setWithArray:*(a1 + 64)];
    [v11 minusSet:v12];

    return [*(a1 + 48) _deleteNextBatchOfAuxiliaryRecordsInCollection:*(a1 + 72) operationGroup:*(a1 + 40) completionHandler:*(a1 + 80)];
  }
}

void sub_1000B8FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B9008(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 zoneName];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

uint64_t sub_1000B9234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bookmarksRecordZoneID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) _metadataForRecordZoneID:v3 inCollection:*(a1 + 40) operationGroup:*(a1 + 48)];
    v28 = 0;
    v8 = [v7 isMinimumAPIVersionUnsupportedGetVersionKinds:&v28];
    if (v8)
    {
      v9 = *(a1 + 56);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v28;
        v11 = v9;
        v12 = sub_10002410C(v10);
        v13 = [*(a1 + 48) safari_logDescription];
        *buf = 138544130;
        v30 = v3;
        v31 = 2114;
        v32 = v12;
        v33 = 2048;
        v34 = 4;
        v35 = 2114;
        v36 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring updates on record zone with ID %{public}@ because the minimum versions of kinds %{public}@ are more recent than the current API version %zd, with %{public}@", buf, 0x2Au);
      }

      v14 = v28;
      if ((v28 & 4) == 0)
      {
        if ((v28 & 2) != 0)
        {
          v15 = *(a1 + 56);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = *(a1 + 48);
            v17 = v15;
            v18 = [v16 safari_logDescription];
            *buf = 138543618;
            v30 = v3;
            v31 = 2114;
            v32 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Will fetch CKShare record for zone with ID %{public}@ in case its MinimumAPIVersion changed, %{public}@", buf, 0x16u);
          }

          v19 = *(*(a1 + 32) + 128);
          v20 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v3];
          [v19 addObject:v20];

          v14 = v28;
        }

        if (v14)
        {
          v21 = *(a1 + 56);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = *(a1 + 48);
            v23 = v21;
            v24 = [v22 safari_logDescription];
            *buf = 138543618;
            v30 = v3;
            v31 = 2114;
            v32 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Will fetch SyncRequirements record for zone with ID %{public}@ in case its MinimumAPIVersion changed, %{public}@", buf, 0x16u);
          }

          v25 = *(*(a1 + 32) + 128);
          v26 = [[CKRecordID alloc] initWithRecordName:@"SyncRequirements" zoneID:v3];
          [v25 addObject:v26];
        }
      }
    }

    v6 = v8 ^ 1;
  }

  return v6;
}

void sub_1000B9C14(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 syncCoordinator:*(a1 + 32) didFetchRecord:*(a1 + 40) localBookmarkUUID:0 localBookmarkWasCreated:{0, v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1000B9D40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneID];
  [v3 setHashGenerator:v4 forRecordZoneID:v5];

  v6 = *(a1 + 48);
  v7 = [v3 recordZoneIDsToHashGenerators];
  [v6 _didRetrieveHashGenerators:v7];

  return v3;
}

void sub_1000B9DCC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 40);
          v10 = [*(a1 + 48) UUID];
          v11 = *(a1 + 48);
          if (v11)
          {
            LOBYTE(v11) = *(a1 + 56);
          }

          [v7 syncCoordinator:v8 didFetchRecord:v9 localBookmarkUUID:v10 localBookmarkWasCreated:v11 & 1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_1000BA538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BA55C(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_recordName];
  v3 = [*(a1 + 40) bookmarkWithServerID:v2 excludeDeletedBookmarks:0];
  v4 = *(*(a1 + 72) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 48) + 256);
  v7 = [*(a1 + 32) recordID];
  v8 = [v7 zoneID];
  v9 = [v6 rootRecordNameForSecondaryRecordZoneID:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) recordType];
    v11 = [v10 isEqual:@"TabGroupTab"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 32) recordType];
  v13 = [v12 isEqual:@"TabGroupScopedBookmarkLeaf"];

  v14 = [*(*(*(a1 + 72) + 8) + 40) syncState];
  v15 = [v14 integerValue];

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v16 = 0;
    goto LABEL_6;
  }

  if ([*(a1 + 32) safari_minimumAPIVersion] > 4)
  {
    v17 = [*(a1 + 48) _log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = [*(a1 + 32) recordID];
      v28 = [v27 ckShortDescription];
      v29 = [*(a1 + 32) safari_minimumAPIVersion];
      v30 = [*(a1 + 56) safari_logDescription];
      *buf = 138544130;
      v125 = v28;
      v126 = 2048;
      v127 = v29;
      v128 = 2048;
      v129 = 4;
      v130 = 2114;
      v131 = v30;
      v31 = "Record with ID %{public}@ uses a more recent API version (%zd), then supported (%zd) with %{public}@";
      v32 = v17;
      v33 = 42;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v31, buf, v33);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v43 = [*(a1 + 32) safari_state];
  v44 = *(a1 + 48);
  if (v43)
  {
    v17 = [v44 _log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = [*(a1 + 32) recordID];
      v28 = [v27 ckShortDescription];
      v45 = [*(a1 + 32) safari_state];
      v30 = [*(a1 + 56) safari_logDescription];
      *buf = 138543874;
      v125 = v28;
      v126 = 2048;
      v127 = v45;
      v128 = 2114;
      v129 = v30;
      v31 = "Ignoring unknown record with ID %{public}@ because of its state %zu with %{public}@";
      v32 = v17;
      v33 = 32;
      goto LABEL_22;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_90;
  }

  v55 = [v44 _createBookmarkWithConfiguration:*(a1 + 64) record:*(a1 + 32) inCollection:*(a1 + 40) operationGroup:*(a1 + 56)];
  v56 = *(*(a1 + 72) + 8);
  v57 = *(v56 + 40);
  *(v56 + 40) = v55;

  **(a1 + 80) = 1;
  v58 = *(*(*(a1 + 72) + 8) + 40);
  v16 = v11;
LABEL_6:
  v17 = [*(a1 + 40) syncDataForBookmark:?];
  if ([*(a1 + 32) safari_minimumAPIVersion] <= 4)
  {
    v121 = v16;
    v123 = v2;
    v34 = [*(a1 + 32) recordType];
    if ([v34 isEqual:@"TabGroupScopedBookmarkList"])
    {
      v35 = [*(a1 + 32) safari_recordName];
      v36 = [v35 hasPrefix:WBTabGroupTopScopedBookmarkListServerIDPrefix];

      if ((v36 & 1) == 0)
      {
        v37 = [*(a1 + 48) _log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [*(a1 + 32) recordID];
          v39 = [v38 ckShortDescription];
          v40 = [*(a1 + 56) safari_logDescription];
          *buf = 138543618;
          v125 = v39;
          v126 = 2114;
          v127 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Fetched scoped bookmark list with unprefixed record name: %{public}@. Marking for deletion with %{public}@", buf, 0x16u);
        }

        v41 = *(*(a1 + 48) + 112);
        v42 = [*(a1 + 32) recordID];
        [v41 addObject:v42];

        goto LABEL_34;
      }
    }

    else
    {
    }

    if (![*(a1 + 48) _shouldOverrideLocalBookmark:*(*(*(a1 + 72) + 8) + 40) localSyncData:v17 withRecord:*(a1 + 32) inCollection:*(a1 + 40) operationGroup:*(a1 + 56)])
    {
LABEL_34:
      v26 = 0;
LABEL_89:
      v2 = v123;
      goto LABEL_90;
    }

    v46 = [v17 auxiliaryRecordIDs];
    v47 = v46;
    v48 = &__NSArray0__struct;
    if (v46)
    {
      v48 = v46;
    }

    v120 = v48;

    v119 = [*(*(*(a1 + 72) + 8) + 40) address];
    v49 = [*(a1 + 32) recordType];
    v50 = [v49 isEqual:@"TabGroup"];

    if (v50)
    {
      [*(a1 + 48) _removeUserSpecificKeysInTabGroupRecordIfNeeded:*(a1 + 32) forBookmark:*(*(*(a1 + 72) + 8) + 40) configuration:*(a1 + 64) inCollection:*(a1 + 40)];
    }

    if ([*(*(*(a1 + 72) + 8) + 40) isDeleted])
    {
      [*(*(a1 + 48) + 112) addObjectsFromArray:v120];
      v51 = [*(a1 + 48) _log];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = [*(a1 + 32) recordID];
        v53 = [v52 ckShortDescription];
        v54 = [*(a1 + 56) safari_logDescription];
        *buf = 138543618;
        v125 = v53;
        v126 = 2114;
        v127 = v54;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Bookmark with server ID %{public}@ is deleted with %{public}@", buf, 0x16u);
      }

      v26 = [*(a1 + 48) _saveRecord:*(a1 + 32) forBookmark:*(*(*(a1 + 72) + 8) + 40) inCollection:*(a1 + 40)];
      goto LABEL_88;
    }

    v59 = [*(*(*(a1 + 72) + 8) + 40) backgroundImageGeneration];
    v60 = [*(a1 + 32) safari_generationForKey:@"BackgroundImage"];
    v61 = [v59 compare:v60];

    [*(a1 + 48) _updateBookmark:*(*(*(a1 + 72) + 8) + 40) inCollection:*(a1 + 40) withRecord:*(a1 + 32) configuration:*(a1 + 64)];
    v26 = 0;
    if (![*(a1 + 40) saveBookmark:*(*(*(a1 + 72) + 8) + 40) incrementGenerations:0])
    {
LABEL_88:

      goto LABEL_89;
    }

    if (([*(*(*(a1 + 72) + 8) + 40) isInserted] & 1) == 0)
    {
      [*(*(a1 + 48) + 112) addObjectsFromArray:v120];
      v67 = [*(a1 + 48) _log];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = [*(a1 + 32) recordID];
        v69 = [v68 ckShortDescription];
        v70 = [*(a1 + 56) safari_logDescription];
        *buf = 138543618;
        v125 = v69;
        v126 = 2114;
        v127 = v70;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Bookmark with server ID %{public}@ is not inserted with %{public}@", buf, 0x16u);
      }

      v26 = 1;
      goto LABEL_88;
    }

    v114 = v61;
    v62 = *(a1 + 32);
    v63 = [*(a1 + 64) valueTransformerForAttributeKey:@"Position"];
    v64 = [v62 safari_positionDictionaryRepresentationUsingValueTransformer:v63];

    v65 = [*(a1 + 32) objectForKeyedSubscript:@"ParentFolder"];
    v66 = [v65 recordID];

    v117 = v66;
    v118 = v64;
    if (![*(a1 + 48) _setPositionDictionaryRepresentation:v64 inParentWithRecordID:v66 forBookmark:*(*(*(a1 + 72) + 8) + 40) inCollection:*(a1 + 40) operationGroup:*(a1 + 56)])
    {
      v26 = 0;
LABEL_87:

      goto LABEL_88;
    }

    if (v114 == -1)
    {
      [*(a1 + 48) _saveAssetsForBookmarkIfPresent:*(*(*(a1 + 72) + 8) + 40) onRecord:*(a1 + 32) withConfiguration:*(a1 + 64) inCollection:*(a1 + 40) operationGroup:*(a1 + 56)];
    }

    if ([*(*(*(a1 + 72) + 8) + 40) isFolder])
    {
      [*(a1 + 40) fixRecoveredBookmarksIfNeeded];
    }

    else
    {
      v115 = [*(a1 + 40) bookmarkWithID:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "parentID")}];
      v71 = [*(a1 + 40) syncDataForBookmark:?];
      v72 = [v71 record];

      v111 = [*(a1 + 48) _configurationForRecord:v72];
      v112 = v72;
      v73 = [*(a1 + 48) _valueForKey:@"LastSelectedTab" ofType:objc_opt_class() fromRecord:v72 withConfiguration:v111];
      v74 = [*(*(*(a1 + 72) + 8) + 40) serverID];
      if ([v73 isEqualToString:v74])
      {
        v75 = [v115 lastSelectedChildID];
        v110 = v73;
        v76 = [*(*(*(a1 + 72) + 8) + 40) identifier];

        v77 = v75 == v76;
        v73 = v110;
        v64 = v118;
        if (!v77)
        {
          [v115 setLastSelectedChildID:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "identifier")}];
          v78 = [v112 safari_generationForKey:@"LastSelectedTab"];
          v79 = [v115 fieldForAttribute:512];
          [v79 setGeneration:v78];

          v73 = v110;
          v64 = v118;

          [*(a1 + 40) saveBookmark:v115 incrementGenerations:0];
        }
      }

      else
      {

        v64 = v118;
      }
    }

    if (!v9 || ([*(a1 + 32) modificationDate], v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v80, "timeIntervalSinceNow"), v82 = v81, v80, v82 < -120.0))
    {
LABEL_86:
      v26 = [*(a1 + 48) _saveRecord:*(a1 + 32) forBookmark:*(*(*(a1 + 72) + 8) + 40) inCollection:{*(a1 + 40), v110}];
      goto LABEL_87;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 248));
    v116 = [*(a1 + 32) lastModifiedUserRecordID];
    v84 = [*(a1 + 40) bookmarkWithID:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "parentID")}];
    if (v84)
    {
      v85 = v11;
    }

    else
    {
      v85 = 0;
    }

    if (v85 != 1)
    {
      if (v84)
      {
        v92 = v13;
      }

      else
      {
        v92 = 0;
      }

      if (v92 == 1)
      {
        v93 = v84;
        v94 = [*(a1 + 40) bookmarkWithID:{objc_msgSend(v84, "parentID")}];
        if (v94)
        {
          if (objc_opt_respondsToSelector())
          {
            v95 = v64;
            v96 = WeakRetained;
            v97 = *(a1 + 48);
            v98 = [v94 UUID];
            v99 = v96;
            v100 = v97;
            WeakRetained = v96;
            v64 = v95;
            [v99 cloudTabGroupSyncCoordinator:v100 didChangeScopedFavoritesInSharedTabGroupWithUUID:v98 byParticipantWithRecordID:v116];
          }
        }

        else
        {
          v107 = WeakRetained;
          v108 = [*(a1 + 48) _log];
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            sub_1000CFFF4(a1 + 56);
          }

          WeakRetained = v107;
        }

        v84 = v93;
      }

      else if ((v11 | v13))
      {
        v102 = v84;
        v103 = [*(a1 + 48) _log];
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          sub_1000CFF68(a1 + 56);
        }

        v84 = v102;
      }

      goto LABEL_85;
    }

    v113 = v84;
    v86 = v84;
    if ([*(a1 + 32) safari_state] != 1 || v15 == 1)
    {
      if (!v121)
      {
        v87 = WeakRetained;
        v104 = [*(*(*(a1 + 72) + 8) + 40) address];
        v105 = [v119 isEqual:v104];

        if ((v105 & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_80;
        }

        v106 = *(a1 + 48);
        v89 = [*(*(*(a1 + 72) + 8) + 40) UUID];
        v90 = [*(*(*(a1 + 72) + 8) + 40) displayTitle];
        v91 = [v86 UUID];
        [v87 cloudTabGroupSyncCoordinator:v106 didNavigateInTabWithUUID:v89 title:v90 inSharedTabGroupWithUUID:v91 byParticipantWithRecordID:v116];
        goto LABEL_79;
      }

      v87 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        v101 = *(a1 + 48);
        v89 = [*(*(*(a1 + 72) + 8) + 40) UUID];
        v90 = [*(*(*(a1 + 72) + 8) + 40) displayTitle];
        v91 = [v86 UUID];
        [v87 cloudTabGroupSyncCoordinator:v101 didAddTabWithUUID:v89 title:v90 inSharedTabGroupWithUUID:v91 byParticipantWithRecordID:v116];
        goto LABEL_79;
      }
    }

    else
    {
      v87 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        v88 = *(a1 + 48);
        v89 = [*(*(*(a1 + 72) + 8) + 40) UUID];
        v90 = [*(*(*(a1 + 72) + 8) + 40) displayTitle];
        v91 = [v86 UUID];
        [v87 cloudTabGroupSyncCoordinator:v88 didRemoveTabWithUUID:v89 title:v90 inSharedTabGroupWithUUID:v91 byParticipantWithRecordID:v116];
LABEL_79:
      }
    }

LABEL_80:

    WeakRetained = v87;
    v84 = v113;
LABEL_85:

    goto LABEL_86;
  }

  v18 = [*(a1 + 48) _log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [*(a1 + 32) recordID];
    v20 = [v19 ckShortDescription];
    [*(*(*(a1 + 72) + 8) + 40) minimumSyncAPIVersion];
    v122 = v17;
    v21 = v9;
    v23 = v22 = v2;
    v24 = [v23 integerValue];
    v25 = [*(a1 + 56) safari_logDescription];
    *buf = 138544130;
    v125 = v20;
    v126 = 2048;
    v127 = v24;
    v128 = 2048;
    v129 = 4;
    v130 = 2114;
    v131 = v25;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Bookmark with server ID %{public}@ uses a more recent API version (%zd), then supported (%zd) with %{public}@", buf, 0x2Au);

    v2 = v22;
    v9 = v21;
    v17 = v122;
  }

  if (![*(*(*(a1 + 72) + 8) + 40) isInserted])
  {
    goto LABEL_23;
  }

  v26 = [*(a1 + 40) deleteBookmark:*(*(*(a1 + 72) + 8) + 40) leaveTombstone:0];
LABEL_90:

  return v26;
}

id sub_1000BBDB4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setParentRecordID:*(a1 + 32)];
  [v3 setPositionDictionaryRepresentation:*(a1 + 40)];

  return v3;
}

void sub_1000BC41C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v5 ckShortDescription];
    v9 = [v6 count];
    v10 = [v6 valueForKeyPath:@"recordID.ckShortDescription"];
    v11 = [*(a1 + 40) safari_logDescription];
    v12 = 138544130;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unknown recordID %{public}@ has %zd pending auxiliary records with IDs: %{public}@ with %{public}@", &v12, 0x2Au);
  }
}

void sub_1000BC5D8(id a1)
{
  v3[0] = @"TabGroupTabParticipantStatus";
  v3[1] = @"TabGroupParticipantPosition";
  v4[0] = @"ReadStatus";
  v4[1] = @"TabGroupPosition";
  v3[2] = @"TabGroupParticipantExtras";
  v4[2] = tabGroupParticipantExtrasRecordAuxiliaryRecordKey;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_100154068;
  qword_100154068 = v1;
}

void sub_1000BD598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id sub_1000BD5DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 UUID];
  v7 = *(*(a1 + 80) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 shareRecord];
  v10 = [v9 participants];
  v11 = [NSSet setWithArray:v10];
  v12 = [v11 objectsPassingTest:&stru_1001367A0];

  v13 = [*(a1 + 32) participants];
  v14 = [NSSet setWithArray:v13];
  v15 = [v14 objectsPassingTest:&stru_1001367A0];

  v16 = [*(a1 + 32) currentUserParticipant];
  v17 = [[NSMutableSet alloc] initWithSet:v15];
  [v17 minusSet:v12];
  [v17 removeObject:v16];
  v41 = v12;
  v18 = [[NSMutableSet alloc] initWithSet:v12];
  [v18 minusSet:v15];
  [v18 removeObject:v16];
  v19 = [*(a1 + 32) modificationDate];
  [v19 timeIntervalSinceNow];
  v21 = v20;

  if (v21 >= -120.0)
  {
    if ([v17 count])
    {
      v22 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 40) cloudTabGroupSyncCoordinator:*(a1 + 48) participants:v17 didJoinSharedTabGroupWithUUID:*(*(*(a1 + 80) + 8) + 40)];
      }
    }

    if ([v18 count])
    {
      v23 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 40) cloudTabGroupSyncCoordinator:*(a1 + 48) participants:v18 didLeaveSharedTabGroupWithUUID:*(*(*(a1 + 80) + 8) + 40)];
      }
    }
  }

  [v5 setShareRecord:*(a1 + 32)];
  if ([v17 count])
  {
    v24 = 1;
  }

  else
  {
    v24 = [v18 count] != 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v24;
  [*(a1 + 56) setContainsCKShareRecord:{1, v5}];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = v18;
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v47;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v46 + 1) + 8 * i) safari_shareParticipantIdentifier];
        v31 = [*(a1 + 56) currentTabServerIDPresenceForParticipant:v30 inTabGroupWithServerID:*(a1 + 64)];
        if ([v31 length])
        {
          [*(a1 + 56) removePresenceForParticipant:v30 inTabGroupWithServerID:*(a1 + 64)];
          [*(a1 + 72) addObject:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v27);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = v17;
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v43;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v42 + 1) + 8 * j) safari_shareParticipantIdentifier];
        v38 = [*(a1 + 56) currentTabServerIDPresenceForParticipant:v37 inTabGroupWithServerID:*(a1 + 64)];
        if ([v38 length])
        {
          [*(a1 + 72) addObject:v38];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v34);
  }

  return v40;
}

void sub_1000BDD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000BDDB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 UUID];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v5 setShareRecord:0];

  return v5;
}

uint64_t sub_1000BEF7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) generationKeyForKey:@"Position"];
  v5 = [v3 parentRecordID];
  v6 = *(a1 + 40);
  v7 = v6[23];
  if (v7)
  {
    v8 = v7;

    v5 = v8;
  }

  else if (!v5)
  {
    v5 = [v6 _makeRootRecordID];
  }

  v9 = [v3 position];
  v10 = [v3 generationForKey:v4];
  if (!v9)
  {
    v11 = *(a1 + 48);
    v12 = [v5 recordName];
    v9 = [v11 generatePositionBeforeFirstRecordInParentWithServerID:v12];

    v13 = [WBSCRDTGeneration alloc];
    v14 = [*(a1 + 40) deviceIdentifier];
    v15 = [v13 initWithDeviceIdentifier:v14 generation:1];

    v10 = v15;
  }

  v16 = [[CKReference alloc] initWithRecordID:v5 action:0];
  [*(a1 + 56) setObject:v16 forKeyedSubscript:@"ParentFolder"];

  v17 = *(a1 + 56);
  v18 = [*(a1 + 32) valueTransformerForAttributeKey:@"Position"];
  [v17 safari_setDefaultPosition:v9 usingValueTransformer:v18];

  [*(a1 + 56) safari_setGeneration:v10 forKey:v4];
  return 0;
}

uint64_t sub_1000BF5A4(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmarkWithServerID:*(a1 + 40) excludeDeletedBookmarks:1];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 80) + 8) + 40);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000BFA08;
  v33[3] = &unk_100136888;
  v34 = *(a1 + 48);
  v35 = *(a1 + 56);
  v6 = (a1 + 64);
  v36 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v37 = v7;
  v39 = v8;
  v38 = *(a1 + 40);
  [v5 getReadOnlyCachedBookmarkSyncDataUsingBlock:v33];
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v9 = [*(a1 + 72) _configurationForBookmark:?];
    v10 = [*(a1 + 72) _valueForKey:@"LastSelectedTab" ofType:objc_opt_class() fromRecord:*(a1 + 56) withConfiguration:v9];
    v11 = +[NSNull null];

    v12 = 0;
    if (v10 != v11 && v10)
    {
      v12 = v10;
    }

    v13 = [*(a1 + 32) bookmarkIDForServerID:v12 excludeDeletedBookmarks:1];
    if (v13 == 0x7FFFFFFF)
    {
      [*(a1 + 56) safari_setGeneration:0 forKey:@"LastSelectedTab"];
    }

    else
    {
      [*(*(*(a1 + 80) + 8) + 40) setLastSelectedChildID:v13];
    }

    [*(*(*(a1 + 80) + 8) + 40) clearModifiedAttributes];
    v17 = [*(a1 + 56) safari_generationForKey:@"LastSelectedTab"];
    v18 = [*(*(*(a1 + 80) + 8) + 40) fieldForAttribute:512];
    [v18 setGeneration:v17];

    v19 = [*(a1 + 56) safari_generationForKey:@"ParentAndPosition"];
    v20 = [*(*(*(a1 + 80) + 8) + 40) fieldForAttribute:4];
    [v20 setGeneration:v19];

    if ([*(a1 + 32) saveBookmark:*(*(*(a1 + 80) + 8) + 40) incrementGenerations:0])
    {
      v21 = [*(a1 + 56) objectForKeyedSubscript:@"ParentFolder"];
      v22 = [v21 recordID];

      v23 = *(a1 + 56);
      v24 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
      v25 = [v23 safari_positionDictionaryRepresentationUsingValueTransformer:v24];

      if ([*(a1 + 72) _setPositionDictionaryRepresentation:v25 inParentWithRecordID:v22 forBookmark:*(*(*(a1 + 80) + 8) + 40) inCollection:*(a1 + 32) operationGroup:*(a1 + 64)])
      {
        v26 = *(a1 + 32);
        v27 = *(*(*(a1 + 80) + 8) + 40);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000BFD3C;
        v31[3] = &unk_1001368B0;
        v32 = *(a1 + 56);
        v16 = [v26 updateSyncDataForBookmark:v27 usingBlock:v31];
      }

      else
      {
        v29 = *(a1 + 48);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1000D0354(v6, v29);
        }

        v16 = 0;
      }
    }

    else
    {
      v28 = *(a1 + 48);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000D02D8(v6, v28);
      }

      v16 = 0;
    }
  }

  else
  {
    v9 = [*(a1 + 56) objectForKeyedSubscript:@"TabGroup"];
    v14 = *(a1 + 72);
    v15 = *(a1 + 56);
    v12 = [v9 recordID];
    [v14 _addAuxiliaryRecord:v15 forUnknownRecordWithID:v12 operationGroup:*(a1 + 64)];
    v16 = 1;
  }

  return v16;
}

void sub_1000BFA08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 auxiliaryRecordForKey:tabGroupParticipantExtrasRecordAuxiliaryRecordKey];

  if (!v4)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 recordType];
      v9 = [*(a1 + 48) safari_logDescription];
      v21 = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did receive fresh %{public}@ record, clear local generations with %{public}@", &v21, 0x16u);
    }

    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v3 generationForKey:@"LastSelectedTab"];
      v13 = [*(a1 + 48) safari_logDescription];
      v21 = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = @"LastSelectedTab";
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Clearing generation %{public}@ of %{public}@ with %{public}@", &v21, 0x20u);
    }

    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [v3 generationForKey:@"ParentAndPosition"];
      v17 = [*(a1 + 48) safari_logDescription];
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = @"ParentAndPosition";
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Clearing generation %{public}@ of %{public}@ with %{public}@", &v21, 0x20u);
    }

    v18 = [*(a1 + 56) updateSyncDataForBookmark:*(*(*(a1 + 72) + 8) + 40) usingBlock:&stru_100136860];
    if (v18)
    {
      v19 = [*(a1 + 56) bookmarkWithServerID:*(a1 + 64) excludeDeletedBookmarks:1];
    }

    else
    {
      v20 = *(a1 + 32);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000D03EC(a1, v20);
      }

      v19 = 0;
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v19);
    if (v18)
    {
    }
  }
}

WBBookmarkSyncData *__cdecl sub_1000BFCE0(id a1, WBBookmarkSyncData *a2)
{
  v2 = a2;
  [(WBBookmarkSyncData *)v2 setGeneration:0 forKey:@"LastSelectedTab"];
  [(WBBookmarkSyncData *)v2 setGeneration:0 forKey:@"ParentAndPosition"];

  return v2;
}

id sub_1000BFD3C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAuxiliaryRecord:*(a1 + 32) forKey:tabGroupParticipantExtrasRecordAuxiliaryRecordKey];

  return v3;
}

WBBookmarkSyncData *__cdecl sub_1000C001C(id a1, WebBookmark *a2, WBBookmarkSyncData *a3)
{
  v3 = a3;
  [(WBBookmarkSyncData *)v3 setAuxiliaryRecord:0 forKey:tabGroupParticipantExtrasRecordAuxiliaryRecordKey];

  return v3;
}

void sub_1000C07F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0818(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmarkWithServerID:*(a1 + 40) excludeDeletedBookmarks:1];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 80) + 8) + 40);
  if (v5)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_1000014FC;
    v50 = sub_1000ABC1C;
    v51 = 0;
    v6 = *(a1 + 32);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000C0E2C;
    v43[3] = &unk_100136940;
    v45 = &v46;
    v44 = *(a1 + 48);
    if ([v6 updateSyncDataForBookmark:v5 usingBlock:v43])
    {
      if (v47[5])
      {
        v7 = *(*(a1 + 80) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = 0;

        v9 = [*(a1 + 56) _log];
        v10 = 1;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = [*(a1 + 72) ckShortDescription];
          v12 = [*(a1 + 48) recordType];
          v13 = [v47[5] recordID];
          v14 = [v13 ckShortDescription];
          v15 = [v47[5] recordType];
          v16 = [*(a1 + 64) safari_logDescription];
          *buf = 138544386;
          v53 = v11;
          v54 = 2114;
          v55 = v12;
          v56 = 2114;
          v57 = v14;
          v58 = 2114;
          v59 = v15;
          v60 = 2114;
          v61 = v16;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Ignoring record %{public}@ of type %{public}@ since record %{public}@ of type %{public}@ already exists locally which we use to position the TabGroup in the hierarchy, with %{public}@", buf, 0x34u);

          v10 = 1;
        }
      }

      else
      {
        v9 = [*(a1 + 56) _configurationForBookmark:*(*(*(a1 + 80) + 8) + 40)];
        v21 = [*(a1 + 56) _valueForKey:@"LastSelectedTab" ofType:objc_opt_class() fromRecord:*(a1 + 48) withConfiguration:v9];
        v22 = +[NSNull null];
        v23 = v21 == v22;

        if (v21)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

        v26 = [*(a1 + 32) bookmarkIDForServerID:v25 excludeDeletedBookmarks:1];
        if (v26 == 0x7FFFFFFF)
        {
          [*(a1 + 48) safari_setGeneration:0 forKey:@"LastSelectedTab"];
        }

        else
        {
          [*(*(*(a1 + 80) + 8) + 40) setLastSelectedChildID:v26];
        }

        [*(*(*(a1 + 80) + 8) + 40) clearModifiedAttributes];
        v27 = [*(a1 + 48) safari_generationForKey:@"LastSelectedTab"];
        v28 = [*(*(*(a1 + 80) + 8) + 40) fieldForAttribute:512];
        [v28 setGeneration:v27];

        v29 = [*(a1 + 48) safari_generationForKey:@"Position"];
        v30 = [*(*(*(a1 + 80) + 8) + 40) fieldForAttribute:4];
        [v30 setGeneration:v29];

        v31 = [*(a1 + 32) saveBookmark:*(*(*(a1 + 80) + 8) + 40) incrementGenerations:0];
        v32 = *(a1 + 56);
        if (v31)
        {
          v33 = [v32 _makeRootRecordID];
          v34 = *(a1 + 48);
          v35 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
          v36 = [v34 safari_positionDictionaryRepresentationUsingValueTransformer:v35];

          if ([*(a1 + 56) _setPositionDictionaryRepresentation:v36 inParentWithRecordID:v33 forBookmark:*(*(*(a1 + 80) + 8) + 40) inCollection:*(a1 + 32) operationGroup:*(a1 + 64)])
          {
            v37 = *(a1 + 32);
            v38 = *(*(*(a1 + 80) + 8) + 40);
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_1000C0EC8;
            v41[3] = &unk_1001368B0;
            v42 = *(a1 + 48);
            v10 = [v37 updateSyncDataForBookmark:v38 usingBlock:v41];
            v39 = v42;
          }

          else
          {
            v39 = [*(a1 + 56) _log];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [*(a1 + 64) safari_logDescription];
              objc_claimAutoreleasedReturnValue();
              sub_1000D0500();
            }

            v10 = 0;
          }
        }

        else
        {
          v33 = [v32 _log];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1000D0484(a1, v33);
          }

          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v17 = [*(a1 + 48) objectForKeyedSubscript:@"TabGroup"];
    v18 = *(a1 + 56);
    v19 = *(a1 + 48);
    v20 = [v17 recordID];
    [v18 _addAuxiliaryRecord:v19 forUnknownRecordWithID:v20 operationGroup:*(a1 + 64)];

    return 1;
  }

  return v10;
}

void sub_1000C0DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000C0E2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 auxiliaryRecordForKey:tabGroupParticipantExtrasRecordAuxiliaryRecordKey];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [v3 setAuxiliaryRecord:*(a1 + 32) forKey:@"TabGroupPosition"];
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000C0EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAuxiliaryRecord:*(a1 + 32) forKey:@"TabGroupPosition"];

  return v3;
}

WBBookmarkSyncData *__cdecl sub_1000C10A0(id a1, WebBookmark *a2, WBBookmarkSyncData *a3)
{
  v3 = a3;
  [(WBBookmarkSyncData *)v3 setAuxiliaryRecord:0 forKey:@"TabGroupPosition"];

  return v3;
}

id sub_1000C1370(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAuxiliaryRecord:*(a1 + 32) forKey:@"ReadStatus"];

  return v3;
}

WBBookmarkSyncData *__cdecl sub_1000C149C(id a1, WebBookmark *a2, WBBookmarkSyncData *a3)
{
  v3 = a3;
  [(WBBookmarkSyncData *)v3 setAuxiliaryRecord:0 forKey:@"ReadStatus"];

  return v3;
}

void sub_1000C17C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C17E0(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v11];
  v5 = [v3 mergeWithField:v4];

  if (v5 == -1)
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) settingChangeWithName:v11 parentID:*(a1 + 72)];
    v8 = [v6 _createSettingCKRecordFromFieldRecord:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1000C1B38(uint64_t a1)
{
  v12[0] = @"SettingName";
  v2 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v13[0] = v2;
  v12[1] = @"Value";
  v3 = [CloudBookmarkEncryptedObjectValueTransformer alloc];
  v4 = [*(a1 + 32) _supportedSettingsRecordTypes];
  v5 = [NSSet setWithArray:v4];
  v6 = [(CloudBookmarkEncryptedObjectValueTransformer *)v3 initWithObjectClasses:v5];
  v13[1] = v6;
  v12[2] = @"Parent";
  v7 = [CloudBookmarkCKReferenceValueTransformer alloc];
  v8 = [*(a1 + 32) bookmarksRecordZoneID];
  v9 = [(CloudBookmarkCKReferenceValueTransformer *)v7 initWithCKRecordZoneID:v8 action:1];
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v11 = qword_100154078;
  qword_100154078 = v10;
}

id sub_1000C1D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) recordName];
  v3 = [v1 deleteSettingsRecordWithServerID:v2];

  return v3;
}

void sub_1000C1F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C1F64(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [v9 safari_isCloudKitExpiredChangeTokenError])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_1000C2374(void *a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C243C;
  v10[3] = &unk_100136A20;
  v4 = a1[4];
  v5 = a1[6];
  v10[4] = a1[5];
  v11 = v5;
  v6 = v3;
  v12 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v6;

  return v6;
}

void sub_1000C243C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] _log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 ckShortDescription];
    v9 = [a1[5] safari_logDescription];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Saving server change token for recordZoneID: %{public}@, token: %{public}@ with %{public}@", &v10, 0x20u);
  }

  [a1[6] setLastServerChangeToken:v6 forRecordZoneID:v5];
}

void sub_1000C2778(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0544();
    }

    [*(a1 + 32) _didFailToSyncWithError:v3 inCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) safari_logDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sync coordinator finished sync down with %{public}@", &v7, 0xCu);
    }

    [*(a1 + 32) _continuePostSyncDownHousekeepingInCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 56)];
  }
}

void sub_1000C2890(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 _isExpiredChangeTokenError:?])
  {
    [*(a1 + 32) _handleExpiredChangeTokenError:v4 collection:*(a1 + 40) operationGroup:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000C2D38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  [*(a1 + 32) addObjectsFromArray:v9];
  if (!v7)
  {
    [*(a1 + 40) _didFinishSyncDownInCollection:*(a1 + 48) operationGroup:*(a1 + 56) isSuccessful:0];
    [*(a1 + 40) _notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:*(a1 + 32) operationGroup:*(a1 + 56)];
LABEL_20:
    (*(*(a1 + 80) + 16))();
    goto LABEL_21;
  }

  v10 = [*(a1 + 48) userHasSharedTabGroups];
  v11 = *(a1 + 40);
  if ((v10 & 1) == 0)
  {
    [v11 _didFinishSyncDownInCollection:*(a1 + 48) operationGroup:*(a1 + 56) isSuccessful:v8 == 0];
    [*(a1 + 40) _notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:*(a1 + 32) operationGroup:*(a1 + 56)];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = *(*(a1 + 40) + 64);
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v28 syncCoordinatorDidFinishSyncDown:*(a1 + 40)];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v25);
    }

    goto LABEL_20;
  }

  v12 = [v11 _log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 64);
    v14 = [*(a1 + 56) safari_logDescription];
    *buf = 138543618;
    v40 = v13;
    v41 = 2114;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Performing sync down with last server change token in shared database: %{public}@ with %{public}@", buf, 0x16u);
  }

  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000C3054;
  v30[3] = &unk_100136A98;
  v29 = *(a1 + 32);
  v19 = v29.i64[0];
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  v31 = vextq_s8(v29, v29, 8uLL);
  v32 = v22;
  v34 = *(a1 + 80);
  v33 = v7;
  [v29.i64[1] _fetchChangedRecordZonesSinceServerChangeToken:v15 inDatabase:v16 collection:v17 operationGroup:v18 completionHandler:v30];

LABEL_21:
}

void sub_1000C3054(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v21 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = *(*(a1 + 32) + 64);
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 syncCoordinatorDidFinishSyncDown:*(a1 + 32)];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  [*(a1 + 40) addObjectsFromArray:v15];
  [*(a1 + 32) _notifyDelegateAboutIgnoredRecordZoneIDsIfNeeded:*(a1 + 40) operationGroup:*(a1 + 48)];
  v16 = *(a1 + 32);
  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  if (v7)
  {
    [v16 _didFinishSyncDownInCollection:v17 operationGroup:v18 isSuccessful:1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000C328C;
    v22[3] = &unk_100136A70;
    v19 = *(a1 + 56);
    v23 = *(a1 + 64);
    v24 = v7;
    [v19 updateDatabaseSyncDataUsingBlock:v22];
    (*(*(a1 + 72) + 16))();

    v20 = v21;
  }

  else
  {
    [v16 _didFinishSyncDownInCollection:v17 operationGroup:v18 isSuccessful:0];
    v20 = v21;
    (*(*(a1 + 72) + 16))();
  }
}

id sub_1000C328C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLastPrivateDatabaseServerChangeToken:*(a1 + 32)];
  [v3 setLastSharedDatabaseServerChangeToken:*(a1 + 40)];

  return v3;
}

void sub_1000C34F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21 = v13;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v29 = *(a1 + 64);
  v24 = v14;
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = v12;
  v28 = v11;
  v16 = v11;
  v17 = v12;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000C3670(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 256) bookmarksRecordZoneID];
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = [*(a1 + 40) _log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D05E8(a1);
    }

    v5 = *(a1 + 104);
    v6 = *(a1 + 56);
    v7 = [NSError errorWithDomain:CKErrorDomain code:26 userInfo:0];
    (*(v5 + 16))(v5, 0, v6, v7);
  }

  else if (*(a1 + 64))
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 104) + 16);

    v9();
  }

  else
  {
    if ([*(a1 + 32) count])
    {
      v10 = [*(a1 + 40) _log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) count];
        v12 = *(a1 + 72);
        v13 = [*(a1 + 48) safari_logDescription];
        *buf = 134218498;
        *&buf[4] = v11;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        v49 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found %lu zones deleted in database %{public}@, deleting local records with %{public}@", buf, 0x20u);
      }

      [*(a1 + 40) _handleDeletedRecordZoneIDs:*(a1 + 32) inCollection:*(a1 + 80)];
    }

    v14 = [*(a1 + 40) _filteredUpdatedRecordZoneIDs:*(a1 + 88) inCollection:*(a1 + 80) operationGroup:*(a1 + 48)];
    v15 = [v14 count] == 0;
    v16 = [*(a1 + 40) _log];
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v17)
      {
        v33 = *(a1 + 72);
        v34 = [*(a1 + 48) safari_logDescription];
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found no zones to update in database %{public}@ with %{public}@", buf, 0x16u);
      }

      v35 = *(a1 + 96);
      v36 = *(a1 + 56);
      (*(*(a1 + 104) + 16))();
    }

    else
    {
      if (v17)
      {
        v18 = [v14 count];
        v19 = [v14 valueForKey:@"ckShortDescription"];
        v20 = [v19 componentsJoinedByString:{@", "}];
        v21 = *(a1 + 72);
        v22 = [*(a1 + 48) safari_logDescription];
        *buf = 134218754;
        *&buf[4] = v18;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        *&buf[22] = 2114;
        v49 = v21;
        LOWORD(v50) = 2114;
        *(&v50 + 2) = v22;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found %lu zones with IDs %{public}@ updated in database %{public}@, fetching records with %{public}@", buf, 0x2Au);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_1000014FC;
      *&v50 = sub_1000ABC1C;
      *(&v50 + 1) = 0;
      v23 = *(a1 + 80);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000C3BC0;
      v44[3] = &unk_100136B10;
      v47 = buf;
      v24 = v14;
      v25 = *(a1 + 40);
      v45 = v24;
      v46 = v25;
      [v23 updateDatabaseSyncDataUsingBlock:v44];
      v26 = *(*&buf[8] + 40);
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      v30 = *(a1 + 40);
      v29 = *(a1 + 48);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000C3DA8;
      v37[3] = &unk_100136B38;
      v31 = v24;
      v43 = buf;
      v32 = *(a1 + 40);
      v38 = v31;
      v39 = v32;
      v42 = *(a1 + 104);
      v40 = *(a1 + 96);
      v41 = *(a1 + 56);
      [v30 _performSyncDownForRecordZoneIDs:v31 perRecordZoneConfigurations:v26 inDatabase:v27 collection:v28 operationGroup:v29 completionHandler:v37];

      _Block_object_dispose(buf, 8);
    }
  }
}

id sub_1000C3BC0(void *a1, void *a2)
{
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = a1[4];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C3CE8;
  v13[3] = &unk_100136AE8;
  v5 = v3;
  v6 = a1[5];
  v14 = v5;
  v15 = v6;
  v16 = &v17;
  v7 = [v4 safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock:v13];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(v18 + 24))
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_1000C3CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000C3CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastServerChangeTokenForRecordZoneID:v3];
  if ([*(*(a1 + 40) + 192) containsObject:v3])
  {
    [*(*(a1 + 40) + 192) removeObject:v3];
    if (v4)
    {
      [*(a1 + 32) setLastServerChangeToken:0 forRecordZoneID:v3];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  v5 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v5 setPreviousServerChangeToken:v4];

  return v5;
}

void sub_1000C3DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:{v9, v13}];
        v11 = [v10 previousServerChangeToken];

        if (!v11)
        {
          [*(*(a1 + 40) + 192) removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 48);
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v12, *(a1 + 56), v3);
}

id sub_1000C4158(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        [*(*(a1 + 40) + 192) removeObject:v9];
        v10 = [*(*(a1 + 40) + 256) rootRecordNameForSecondaryRecordZoneID:v9];
        if (v10)
        {
          [v3 setLastServerChangeToken:0 forRecordZoneID:v9];
          [v3 setHashGenerator:0 forRecordZoneID:v9];
          v11 = [*(a1 + 48) bookmarkWithServerID:v10 excludeDeletedBookmarks:1];
          if (v11)
          {
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 3221225472;
            v16[2] = sub_1000C4388;
            v16[3] = &unk_100136BB0;
            v12 = *(a1 + 48);
            v16[4] = *(a1 + 40);
            v17 = v12;
            [v17 enumerateDescendantsOfBookmark:v11 usingBlock:v16];
            [*(a1 + 48) deleteBookmark:v11 leaveTombstone:0];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = *(a1 + 40);
  v14 = [v3 recordZoneIDsToHashGenerators];
  [v13 _didRetrieveHashGenerators:v14];

  return v3;
}

void sub_1000C4388(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 112);
  v4 = [*(a1 + 40) syncDataForBookmark:a2];
  v3 = [v4 auxiliaryRecordIDs];
  [v2 addObjectsFromArray:v3];
}

void sub_1000C4A38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = v8;
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = v9;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v10 = v9;
  v11 = v7;
  v12 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000C4B54(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 72) _didFetchRecord:v2 inCollection:*(a1 + 80) operationGroup:*(a1 + 64) shouldGenerateUpdatedRecord:0];
    v10 = [*(a1 + 32) safari_recordName];
    [*(*(a1 + 72) + 56) didReceiveRecordWithNameFromServer:?];
  }

  else
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = v4;
      v7 = [v5 ckShortDescription];
      v8 = [*(a1 + 56) safari_privacyPreservingDescription];
      v9 = [*(a1 + 64) safari_logDescription];
      *buf = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to finish fetching record with ID %{public}@, error: %{public}@ with %{public}@", buf, 0x20u);
    }
  }
}

void sub_1000C4CD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v7 = v6;
  v8 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_1000C4DD4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v17 = *(a1 + 32);
  v18 = v9;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = v10;
  v16 = *(a1 + 64);
  v12 = v16;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_1000C4F0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 ckShortDescription];
    v6 = [*(a1 + 48) safari_logDescription];
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Did finish receiving record changes from zone %{public}@ with %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 56) safari_isCloudKitMissingZoneError] && (v7 = *(a1 + 40), objc_msgSend(*(a1 + 64), "bookmarksRecordZoneID"), v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v7, "isEqual:", v8), v8, (v7 & 1) == 0))
  {
    v9 = *(a1 + 64);
    v14 = *(a1 + 40);
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    [v9 _handleDeletedRecordZoneIDs:v10 inCollection:*(a1 + 72)];
  }

  else if (*(a1 + 56))
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = *(*(a1 + 64) + 96);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 88);
  }

  return [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];
}

void sub_1000C50A8(uint64_t a1, void *a2)
{
  v10 = a2;
  v15 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 72);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v13 = *(a1 + 64);
  v9 = v10;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

uint64_t sub_1000C51E0(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && *(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D067C(v2, v3, a1);
    }

    v4 = *(a1 + 32);
    v5 = *(*(a1 + 80) + 16);
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 64);
      v8 = v6;
      v9 = [v7 valueForKey:@"ckShortDescription"];
      v10 = [v9 componentsJoinedByString:{@", "}];
      v11 = *(a1 + 72);
      v12 = [*(a1 + 56) safari_logDescription];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Did finish sync down for record zone IDs %{public}@, configurations: %{public}@ with %{public}@", &v14, 0x20u);
    }

    v5 = *(*(a1 + 80) + 16);
  }

  return v5();
}

WBBookmarkDatabaseSyncData *__cdecl sub_1000C555C(id a1, WBBookmarkDatabaseSyncData *a2)
{
  v2 = a2;
  [(WBBookmarkDatabaseSyncData *)v2 clearAllLastServerChangeTokens];

  return v2;
}

void sub_1000C5598(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    [*(a1 + 32) _didCompleteSyncDownAfterExpiredChangeTokenErrorWithCollection:*(a1 + 40) operationGroup:*(a1 + 48)];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  (*(*(a1 + 56) + 16))();
}

void sub_1000C59B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = +[NSMutableDictionary dictionary];
    [v4 setObject:*(a1 + 48) forKeyedSubscript:WBBackgroundImageIdentifierUserInfoKey];
    v5 = [*(a1 + 56) subtype];
    if (v5 == 2)
    {
      v7 = +[NSUserDefaults safari_browserDefaults];
      [v7 safari_addStringValue:*(a1 + 48) toArrayWithKey:WBSProfilesWithSpecifiedStartPageBackgroundImage];

      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:WBIsProfileBackgroundImageUserInfoKey];
    }

    else
    {
      if (v5)
      {
        v6 = [*(a1 + 32) _log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000D0808(a1);
        }
      }

      else
      {
        v6 = +[NSUserDefaults safari_browserDefaults];
        [v6 safari_addStringValue:*(a1 + 48) toArrayWithKey:WBSTabGroupsWithSpecifiedStartPageBackgroundImage];
      }
    }

    v8 = +[NSDistributedNotificationCenter defaultCenter];
    v9 = WBBackgroundImageFileDidChangeNotification;
    v10 = [v4 copy];
    [v8 postNotificationName:v9 object:0 userInfo:v10 deliverImmediately:1];

    v11 = *(*(a1 + 32) + 256);
    WeakRetained = [*(a1 + 64) recordID];
    v13 = [WeakRetained zoneID];
    v14 = [v11 rootRecordNameForSecondaryRecordZoneID:v13];
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 64) modificationDate];
      [v16 timeIntervalSinceNow];
      v18 = v17;

      if (v18 < -120.0)
      {
        goto LABEL_17;
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_16:

        goto LABEL_17;
      }

      WeakRetained = WeakRetained;
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      WBSDispatchAsyncToMainQueueWithAutoreleasePool();

      v13 = WeakRetained;
    }

    goto LABEL_16;
  }

  v4 = [*(a1 + 32) _log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0764();
  }

LABEL_17:
}

void sub_1000C5C98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) UUID];
  v4 = [*(a1 + 56) lastModifiedUserRecordID];
  [v2 cloudTabGroupSyncCoordinator:v3 didChangeBackgroundImageInTabGroupWithUUID:v5 byParticipantWithRecordID:v4];
}

void sub_1000C5E9C(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[7];
  if (v3)
  {
    v6 = 0;
    [v2 safari_replaceItemAtURL:v4 withItemFromURL:v3 error:&v6];
    v5 = v6;
  }

  else
  {
    v7 = 0;
    [v2 removeItemAtURL:v4 error:&v7];
    v5 = v7;
  }

  (*(a1[8] + 16))();
}

id sub_1000C66C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRecord:*(a1 + 32)];

  return v3;
}

void sub_1000C6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000C6CE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _recordForBookmark:*(a1 + 40) syncData:v3 configuration:*(a1 + 48) changeType:*(a1 + 72) inCollection:*(a1 + 56)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return v3;
}

void sub_1000C6EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6EBC(uint64_t a1)
{
  v2 = [*(a1 + 32) nextChangeAfterLocalRecordGeneration:*(a1 + 64)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 changeType];
    if (v4 == 2)
    {
      v5 = [*(a1 + 40) _batchItemForDeleteChange:v3 inCollection:*(a1 + 32) operationGroup:*(a1 + 48)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = 1;
    }

    else
    {
      v9 = v4;
      v10 = [v3 bookmark];
      v11 = [*(a1 + 40) _configurationForBookmark:v10];
      if (v11)
      {
        v36 = v9;
        v37 = v10;
        v12 = +[NSMutableSet set];
        v13 = +[NSMutableSet set];
        if (+[WBSFeatureAvailability isNewTabAndWindowSyncingEnabled])
        {
          v14 = [v11 recordType];
          v15 = [v14 isEqual:@"Profile"];

          if (v15)
          {
            v34 = v11;
            v35 = v3;
            v16 = [*(a1 + 32) allSettingsChangesForParentWithID:{objc_msgSend(v10, "identifier")}];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v49 objects:v53 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v50;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v50 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v49 + 1) + 8 * i);
                  if ([v21 changeType] == 2)
                  {
                    v22 = [v21 record];
                    if (v22)
                    {
                      v23 = [v21 record];
                      v24 = [v23 recordID];
                      [v13 safari_addObjectUnlessNil:v24];
                    }

                    else
                    {
                      [*(a1 + 32) deleteSettingWithIdentifier:{objc_msgSend(v21, "identifier")}];
                    }
                  }

                  else
                  {
                    v22 = [*(a1 + 40) _createSettingCKRecordFromFieldRecord:v21];
                    [v12 addObject:v22];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v49 objects:v53 count:16];
              }

              while (v18);
            }

            v11 = v34;
            v3 = v35;
          }
        }

        v25 = *(a1 + 32);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000C727C;
        v38[3] = &unk_100136DC0;
        v26 = v11;
        v27 = *(a1 + 40);
        v39 = v26;
        v40 = v27;
        v10 = v37;
        v41 = v37;
        v42 = *(a1 + 32);
        v43 = *(a1 + 48);
        v44 = v12;
        v48 = v36;
        v28 = *(a1 + 56);
        v45 = v13;
        v47 = v28;
        v46 = v3;
        v29 = v13;
        v30 = v11;
        v31 = v29;
        v32 = v12;
        v8 = [v25 updateSyncDataForBookmark:v41 usingBlock:v38];

        v11 = v30;
      }

      else
      {
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

id sub_1000C727C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) recordType];
  v6 = [v5 isEqual:@"TabGroup"];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 record];
    v8 = [v7 recordID];
    v9 = [v8 zoneID];
    v10 = [*(a1 + 40) _recordZoneIDForBookmark:*(a1 + 48) inCollection:*(a1 + 56)];
    if (v9 && ([v9 isEqual:v10] & 1) == 0)
    {
      v11 = +[NSUUID UUID];
      v12 = [v11 UUIDString];

      v53 = v12;
      v54 = [[CKRecordID alloc] initWithRecordName:v12 zoneID:v10];
      v13 = [*(a1 + 40) _log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v8 ckShortDescription];
        v15 = [v54 ckShortDescription];
        v16 = [*(a1 + 64) safari_logDescription];
        *buf = 138543874;
        v64 = v14;
        v65 = 2114;
        v66 = v15;
        v67 = 2114;
        v68 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Record with ID %{public}@ is changing zone with new recordID: %{public}@ with %{public}@", buf, 0x20u);
      }

      [*(*(a1 + 40) + 136) addObject:v8];
      [v7 safari_setState:{objc_msgSend(v4, "state")}];
      v17 = [v4 generationForKey:@"Deleted"];
      i = [*(a1 + 40) deviceIdentifier];
      v18 = [v17 incrementedGenerationWithDeviceIdentifier:i];
      [v7 safari_setGeneration:v18 forKey:@"Deleted"];

      [*(a1 + 72) addObject:v7];
      v19 = *(a1 + 80);
      v20 = [v4 auxiliaryRecordIDs];
      [v19 addObjectsFromArray:v20];

      [v4 clearAllCKRecords];
      [*(a1 + 56) setServerID:v53 forBookmark:*(a1 + 48)];
    }
  }

  v21 = [*(a1 + 40) _recordForBookmark:*(a1 + 48) syncData:v4 configuration:*(a1 + 32) changeType:*(a1 + 104) inCollection:*(a1 + 56)];
  [*(a1 + 72) safari_addObjectUnlessNil:v21];
  v22 = *(a1 + 72);
  v23 = [*(a1 + 40) _readStatusRecordForBookmark:*(a1 + 48) syncData:v4 configuration:*(a1 + 32) changeType:*(a1 + 104) inCollection:*(a1 + 56)];
  [v22 safari_addObjectUnlessNil:v23];

  v24 = *(a1 + 72);
  v25 = [*(a1 + 40) _tabGroupParticipantExtrasRecordForBookmark:*(a1 + 48) syncData:v4 configuration:*(a1 + 32) changeType:*(a1 + 104) inCollection:*(a1 + 56)];
  [v24 safari_addObjectUnlessNil:v25];

  v26 = [*(a1 + 56) bookmarkIdentifierOfAncestorWithSubtype:3 forBookmark:*(a1 + 48)];
  if (v26 != 0x7FFFFFFF)
  {
    v27 = v26;
    if ([v4 hasRecordExpired])
    {
      v28 = *(a1 + 56);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000C79F4;
      v59[3] = &unk_100136D98;
      v59[4] = *(a1 + 40);
      v60 = v28;
      v61 = *(a1 + 72);
      [v60 enumerateDescendantsOfBookmarkID:v27 usingBlock:v59];
      [v4 setHasRecordExpired:0];
    }

    v29 = [*(a1 + 56) bookmarksWithSubtype:3];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v56;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v55 + 1) + 8 * i);
          if (([v33 isDeleted] & 1) == 0)
          {
            v34 = [*(a1 + 40) _recordForBookmark:v33 inCollection:*(a1 + 56) changeType:0];
            [v34 setExpirationAfterTimeInterval:&off_10013C2E0];
            [*(a1 + 72) safari_addObjectUnlessNil:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v31);
    }
  }

  v35 = [*(a1 + 40) _log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = [*(a1 + 32) recordType];
    v37 = [v21 recordID];
    v38 = [v37 ckShortDescription];
    v39 = v38;
    if (!v38)
    {
      v54 = [v4 record];
      i = [v54 recordID];
      v39 = [i ckShortDescription];
    }

    v40 = [*(a1 + 64) safari_logDescription];
    *buf = 138543874;
    v64 = v36;
    v65 = 2114;
    v66 = v39;
    v67 = 2114;
    v68 = v40;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Setting up batch item for update of record with type %{public}@ with ID: %{public}@ with %{public}@", buf, 0x20u);

    if (!v38)
    {
    }
  }

  v41 = [*(a1 + 40) _log];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = [*(a1 + 72) count];
    v43 = [*(a1 + 72) valueForKeyPath:@"record.ckShortDescription"];
    v44 = [*(a1 + 64) safari_logDescription];
    *buf = 134218498;
    v64 = v42;
    v65 = 2114;
    v66 = v43;
    v67 = 2114;
    v68 = v44;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Will update %lu records with IDs: %{public}@ with %{public}@", buf, 0x20u);
  }

  v45 = [*(a1 + 40) _log];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = [*(a1 + 80) count];
    v47 = [*(a1 + 80) valueForKeyPath:@"ckShortDescription"];
    v48 = [*(a1 + 64) safari_logDescription];
    *buf = 134218498;
    v64 = v46;
    v65 = 2114;
    v66 = v47;
    v67 = 2114;
    v68 = v48;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Will delete %lu records with IDs: %{public}@ with %{public}@", buf, 0x20u);
  }

  v49 = [[CloudTabGroupBatchItem alloc] initWithChange:*(a1 + 88) updatedRecords:*(a1 + 72) deletedRecordIDs:*(a1 + 80)];
  v50 = *(*(a1 + 96) + 8);
  v51 = *(v50 + 40);
  *(v50 + 40) = v49;

  return v4;
}

void sub_1000C79F4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _recordForBookmark:a2 inCollection:*(a1 + 40) changeType:0];
  [*(a1 + 48) safari_addObjectUnlessNil:v3];
}

void sub_1000C8C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1000C8C80(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v12])
  {
    if ([*(a1 + 40) attributeForKeyRequiresGeneration:v12])
    {
      v6 = [*(a1 + 40) generationKeyForKey:v12];
      v7 = [*(a1 + 48) generationForKey:v6];
      if (![v7 isValid])
      {

LABEL_11:
        goto LABEL_12;
      }

      [*(a1 + 56) safari_setGeneration:v7 forKey:v6];
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = [*(a1 + 40) valueTransformerForAttributeKey:v12 record:*(a1 + 56)];
    v8 = [v6 attributeRequiresEncryption];
    v9 = [v6 transformedValueOrNull:v5];
    v10 = *(a1 + 56);
    if (v8)
    {
      v11 = [v10 safari_encryptedValues];
      [v11 setObject:v9 forKeyedSubscript:v12];
    }

    else
    {
      [v10 setObject:v9 forKeyedSubscript:v12];
    }

    if ([*(a1 + 40) isIdentityHashKey:v12])
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    goto LABEL_11;
  }

LABEL_12:
}

void sub_1000CAA8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) BOOLValue];
  v5 = [*(a1 + 32) title];
  v4 = [*(a1 + 32) address];
  [v2 setPinned:v3 title:v5 address:v4];
}

WBBookmarkSyncData *__cdecl sub_1000CB3E0(id a1, WebBookmark *a2, WBBookmarkSyncData *a3)
{
  v3 = a3;
  [(WBBookmarkSyncData *)v3 clearAllCKRecords];

  return v3;
}

WBBookmarkSyncData *__cdecl sub_1000CB5A8(id a1, WBBookmarkSyncData *a2)
{
  v2 = a2;
  [(WBBookmarkSyncData *)v2 clearAllCKRecords];
  [(WBBookmarkSyncData *)v2 setHasRecordExpired:1];

  return v2;
}

void sub_1000CB5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 112);
  v4 = [*(a1 + 40) syncDataForBookmark:a2];
  v3 = [v4 auxiliaryRecordIDs];
  [v2 addObjectsFromArray:v3];
}

void sub_1000CBD50(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 safari_isOrContainsCloudKitMissingManateeIdentityError])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = v7;
  }

  else
  {
    if (v7)
    {
      [*(a1 + 32) _didFailToSyncWithError:v7 inCollection:*(a1 + 48) operationGroup:*(a1 + 40) completionHandler:*(a1 + 56)];
      goto LABEL_7;
    }

    [*(a1 + 48) setLocalMigrationState:0 generateDeviceIdentifierIfNeeded:0];
    [*(a1 + 48) clearSyncDataAfterICloudKeychainReset];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = 0;
  }

  [v3 _didFinishSyncingWithResult:2 error:v6 inOperationGroup:v4 completionHandler:v5];
LABEL_7:
}

void sub_1000CC00C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000CC074(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_1000CC0DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_1000CC298(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v11)
  {
    v19 = [a1[4] _log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000D093C();
    }

    v20 = *(a1[6] + 2);
    goto LABEL_10;
  }

  v16 = [v12 count];
  v17 = a1[4];
  if (!v16)
  {
    v21 = [v17 _log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [a1[5] safari_logDescription];
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No private zones to delete with %{public}@", buf, 0xCu);
    }

    v20 = *(a1[6] + 2);
LABEL_10:
    v20();
    goto LABEL_11;
  }

  v18 = v17[32];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000CC4C0;
  v23[3] = &unk_100133C50;
  v23[4] = v17;
  v24 = a1[5];
  v25 = a1[6];
  [v18 deleteRecordZonesWithIDs:v12 inOperationGroup:0 perRecordZoneDeleteBlock:&stru_100136EE0 completionHandler:v23];

LABEL_11:
}

void sub_1000CC4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D09E0();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CC6D4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v11)
  {
    v21 = [a1[4] _log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0A84();
    }

    v22 = *(a1[6] + 2);
    goto LABEL_10;
  }

  if (![v12 count])
  {
    v23 = [a1[4] _log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [a1[5] safari_logDescription];
      *buf = 138543362;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No shared zones to leave with %{public}@", buf, 0xCu);
    }

    v22 = *(a1[6] + 2);
LABEL_10:
    v22();
    goto LABEL_11;
  }

  v16 = [v12 safari_mapObjectsUsingBlock:&stru_100136F48];
  v17 = *(a1[4] + 32);
  v18 = [v17 container];
  v19 = [v18 sharedCloudDatabase];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000CC9A0;
  v25[3] = &unk_100136F70;
  v20 = a1[5];
  v25[4] = a1[4];
  v26 = v20;
  v27 = a1[6];
  [v17 deleteRecordsWithIDs:v16 inDatabase:v19 operationGroup:0 completionHandler:v25];

LABEL_11:
}

CKRecordID *__cdecl sub_1000CC93C(id a1, CKRecordZoneID *a2)
{
  v2 = a2;
  v3 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:v2];

  return v3;
}

void sub_1000CC9A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _log];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) safari_logDescription];
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully left shared zones with IDs: %{public}@ with %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0B28();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CD26C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_SWHighlightChangeEvent alloc] initWithHighlight:v3 type:1];

  [*(*(a1 + 32) + 160) _postNoticeForHighlightEvent:v4];
}

void sub_1000CD358(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_SWHighlightPersistenceEvent alloc] initWithHighlight:v3 type:3];

  [*(*(a1 + 32) + 160) _postNoticeForHighlightEvent:v4];
}

void sub_1000CD444(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_SWHighlightPersistenceEvent alloc] initWithHighlight:v3 type:2];

  [*(*(a1 + 32) + 160) _postNoticeForHighlightEvent:v4];
}

void sub_1000CD600(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) _log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0BCC(v5, a1, v6);
    }
  }
}

void sub_1000CDF6C(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1000CE010(uint64_t a1)
{
  v1 = [*(a1 + 32) safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE0A0()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_1000CDF6C(&_mh_execute_header, v3, v4, "Discontinuing sync because device identifier is empty with %{public}@", v5);
}

void sub_1000CE0E4()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_1000CDF6C(&_mh_execute_header, v3, v4, "Could not allocate collection with %{public}@", v5);
}

void sub_1000CE128()
{
  sub_10001A9E0();
  [sub_1000CDFC0(v1) safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDFB4() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CE1CC(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE258(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE2E4(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE370(uint64_t a1)
{
  v1 = [sub_1000CDFC0(a1) safari_privacyPreservingDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE3FC()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CE4A0()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_1000CDF6C(&_mh_execute_header, v3, v4, "Migration coordinator retry limit exceeded with %{public}@", v5);
}

void sub_1000CE4E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000CE584(void *a1, void *a2)
{
  v3 = a1;
  [a2 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000CDFE4() safari_logDescription];
  sub_10001A99C();
  sub_1000CDF04();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000CE640(void *a1, void *a2)
{
  v3 = a1;
  [a2 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000CDFE4() safari_logDescription];
  sub_10001A99C();
  sub_1000CDF04();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000CE6FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000CE79C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_1000CE834(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE8C0(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE94C(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CE9D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [*(a2 + 48) safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000CEA78()
{
  sub_1000CDFF0();
  [sub_1000CDFA4(v1) ckShortDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDFB4() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CEB20()
{
  sub_10001A9E0();
  v2 = v1;
  v3 = [sub_1000CDFA4(v1) ckShortDescription];
  v4 = [v0 safari_privacyPreservingError];
  v5 = [*(v2 + 48) safari_logDescription];
  sub_1000CDF14();
  sub_1000CDF88();
  sub_1000CDF04();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_1000CEBE8()
{
  sub_1000CDFF0();
  [sub_1000CDFA4(v1) ckShortDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDFB4() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CEC90()
{
  sub_1000CDFF0();
  v2 = [*(v1 + 48) safari_privacyPreservingDescription];
  v3 = [*(v0 + 56) safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000CED3C()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CEDE0()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CEE84()
{
  sub_1000CDFF0();
  [*(v1 + 40) ckShortDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDFB4() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CEF2C()
{
  sub_1000CDFCC();
  v3 = *(v2 + 56);
  v5 = v4;
  v6 = [sub_1000CDFD8() ckShortDescription];
  [*v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_1000CDFE4() safari_logDescription];
  sub_1000CDF14();
  sub_1000CDF88();
  sub_1000CDF04();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_1000CEFF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_1000CF090(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 40) safari_logDescription];
  sub_1000CDF98();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1000CF14C(uint64_t a1, id *a2)
{
  v4 = [*(a1 + 56) ckShortDescription];
  v5 = [*(a1 + 64) URL];
  v6 = [*a2 safari_logDescription];
  sub_1000CDF28();
  sub_10001A9B4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_1000CF214(uint64_t a1, id *a2)
{
  v4 = [*(a1 + 56) ckShortDescription];
  v5 = [*(a1 + 64) URL];
  v6 = [*a2 safari_logDescription];
  sub_1000CDF28();
  sub_10001A9B4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_1000CF2DC(uint64_t a1, void *a2)
{
  v2 = [a2 safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CF37C(uint64_t a1, void *a2)
{
  v2 = [a2 safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CF41C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Profile with UUID %{public}@ does not have a server ID, %{public}@", buf, 0x16u);
}

void sub_1000CF484(uint64_t a1, void *a2)
{
  v2 = [a2 safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CF524(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_10000807C() recordID];
  v6 = [v5 ckShortDescription];
  v7 = [a2 recordType];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1000CF5F0(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_10000807C() recordID];
  v6 = [v5 ckShortDescription];
  v7 = [a2 recordType];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1000CF6BC()
{
  sub_10001A9E0();
  v2 = [*(*(*(v1 + 56) + 8) + 40) ckShortDescription];
  [v0 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_1000CDFE4() safari_logDescription];
  sub_1000CDF14();
  sub_1000CDF88();
  sub_1000CDF04();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1000CF788()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 40) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Failed to delete recordZoneID batch with error: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_1000CF834()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 40) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Failed to save record batch with error: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_1000CF8E0(uint64_t *a1, void *a2, uint64_t a3)
{
  sub_10003A5A0(a1, a2);
  v5 = [sub_10001A9D4() recordType];
  v6 = [*(a3 + 72) safari_logDescription];
  sub_10001A99C();
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Record of type %{public}@ is part of a save batch but its type is not handled as bookmark record or as an auxiliary record with %{public}@", v7, 0x16u);
}

void sub_1000CF998()
{
  sub_1000CDFCC();
  v3 = *(*v2 + 136);
  v5 = v4;
  [sub_1000CDFD8() count];
  [*(*v1 + 136) valueForKey:@"ckShortDescription"];
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000CDF60() safari_logDescription];
  sub_1000CDF14();
  sub_1000CDF98();
  sub_1000CDF04();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_1000CFA70()
{
  sub_1000CDFCC();
  v4 = *(v3 + 48);
  v6 = v5;
  v7 = [sub_1000CDFD8() ckShortDescription];
  v8 = [*v1 safari_privacyPreservingDescription];
  v9 = [*(v2 + 56) safari_logDescription];
  sub_1000CDF14();
  sub_1000CDF88();
  sub_1000CDF04();
  _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);
}

void sub_1000CFB40(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete record zone ID batch with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000CFBE4(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Did fail to save record batch with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000CFC88(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to refresh records with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000CFD2C()
{
  sub_1000CDFCC();
  v4 = *(*v3 + 128);
  v6 = v5;
  [sub_1000CDFD8() count];
  v7 = [*(*v2 + 128) allObjects];
  v8 = [v7 valueForKey:@"ckShortDescription"];
  v9 = [*(v1 + 40) safari_logDescription];
  sub_1000CDF14();
  sub_1000CDF98();
  sub_1000CDF04();
  _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);
}

void sub_1000CFE20(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete record batch in private database with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000CFEC4(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to delete record batch in shared database with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000CFF68(uint64_t a1)
{
  v1 = [sub_1000CDFC0(a1) safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CFFF4(uint64_t a1)
{
  v1 = [sub_1000CDFC0(a1) safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D0080()
{
  sub_10001A9E0();
  [sub_1000CDFC0(v2) safari_mapAndFilterKeysAndObjectsUsingBlock:&stru_100136718];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10001A9D4() safari_logDescription];
  sub_1000676A4();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "_unknownRecordIDsToPendingAuxiliaryRecordSets is already set up with content %{public}@ with %{public}@", v4, 0x16u);
}

void sub_1000D0134(void *a1)
{
  v1 = [a1 safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D01D4()
{
  sub_10001A9E0();
  v2 = [v1 recordID];
  v3 = [v2 ckShortDescription];
  v4 = [v0 safari_logDescription];
  sub_10003112C();
  sub_1000CDF04();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000D0294()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_1000CDF6C(&_mh_execute_header, v3, v4, "Failed to update local position data with %{public}@", v5);
}

void sub_1000D02D8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save participant changes to the local record with %{public}@", &v3, 0xCu);
}

void sub_1000D0354(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_1000D03EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_1000D0484(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save participant changes to the local record with %{public}@", &v3, 0xCu);
}

void sub_1000D0500()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_1000CDF6C(&_mh_execute_header, v3, v4, "Failed to move record into its final location based with %{public}@", v5);
}

void sub_1000D0544()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D05E8(uint64_t a1)
{
  v1 = [*(a1 + 48) safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D067C(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  [v4 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000CDFB4() safari_mapAndFilterKeysAndObjectsUsingBlock:&stru_100136C90];
  v7 = [*(a3 + 56) safari_logDescription];
  sub_1000CDF98();
  sub_1000CDF04();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_1000D0764()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D0808(uint64_t a1)
{
  v1 = [*(a1 + 40) safari_logDescription];
  sub_100008064();
  sub_1000CDF04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D0898()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10001A9D4() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D093C()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D09E0()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D0A84()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D0B28()
{
  sub_10001A9E0();
  [v1 safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_1000CDF60() safari_logDescription];
  sub_1000676A4();
  sub_1000CDF04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D0BCC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 safari_privacyPreservingDescription];
  v6 = [*(a2 + 40) recordID];
  v7 = [v6 zoneID];
  v8 = [v7 ckShortDescription];
  v9 = *(a2 + 40);
  v10 = [*(a2 + 48) safari_logDescription];
  v11 = 138544131;
  v12 = v5;
  v13 = 2114;
  v14 = v8;
  v15 = 2113;
  v16 = v9;
  v17 = 2114;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failure to get a collaboration highlight with error %{public}@ for the CKShare: %{public}@ %{private}@ with %{public}@", &v11, 0x2Au);
}

void sub_1000D0F74(uint64_t a1)
{
  v2 = [[CKRecordZoneSubscription alloc] initWithZoneID:*(a1 + 32) subscriptionID:*(a1 + 40)];
  [v2 setNotificationInfo:*(a1 + 48)];
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Attempting to save zone subscription for zone: %{public}@", buf, 0xCu);
  }

  v5 = [CKModifySubscriptionsOperation alloc];
  v13 = v2;
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v7 = [v5 initWithSubscriptionsToSave:v6 subscriptionIDsToDelete:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D1110;
  v10[3] = &unk_100131288;
  v8 = *(a1 + 80);
  v11 = v2;
  v12 = v8;
  v9 = v2;
  [v7 setModifySubscriptionsCompletionBlock:v10];
  [*(a1 + 56) _scheduleOperation:v7 inOperationGroup:*(a1 + 64) operationQueue:*(a1 + 72)];
}

void sub_1000D1110(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v12 = [a2 firstObject];
  v8 = [*(a1 + 32) subscriptionID];
  v9 = [CKPrettyError itemErrorFromError:v7 forID:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  (*(v6 + 16))(v6, v12, v11);
}

void sub_1000D15B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000086B4();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
LABEL_3:
    (*(*(a1 + 32) + 16))();
  }

LABEL_4:
}

void sub_1000D1628(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008728();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000D16A8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000D20CC(v16, v14);
    }

    v17 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D18E4;
    block[3] = &unk_100130F40;
    v18 = &v29;
    v29 = *(a1 + 40);
    v19 = &v28;
    v28 = v14;
    dispatch_async(v17, block);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = v16;
      v21 = [v11 _zoneLogName];
      *buf = 138543362;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Fetch records from record zone operation completed for record zone %{public}@", buf, 0xCu);
    }

    v22 = *(*(a1 + 32) + 16);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D1970;
    v23[3] = &unk_100130E00;
    v18 = &v26;
    v26 = *(a1 + 40);
    v19 = &v24;
    v24 = v12;
    v25 = v13;
    dispatch_async(v22, v23);
  }
}

void sub_1000D18E4(uint64_t a1)
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

void sub_1000D1970(uint64_t a1)
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

void sub_1000D19FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  if (v7)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2160(v8, v7);
    }
  }

  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v6 _zoneLogName];
    *buf = 138543362;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fetch record zone changes operation completed for record zone %{public}@", buf, 0xCu);
  }

  v12 = *(*(a1 + 32) + 16);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D1B94;
  v15[3] = &unk_100130F40;
  v13 = *(a1 + 40);
  v16 = v7;
  v17 = v13;
  v14 = v7;
  dispatch_async(v12, v15);
}

void sub_1000D1B94(uint64_t a1)
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

id sub_1000D2008(uint64_t a1)
{
  v2 = [*(a1 + 40) _database];
  [*(a1 + 32) setDatabase:v2];

  if (*(a1 + 48))
  {
    [*(a1 + 32) setGroup:?];
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v3 addOperation:v4];
}

void sub_1000D20CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Fetch record changes failed: %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000D2160(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Fetch record zone changes operation failed: %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000D21F4(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "CloudBookmarks");
  v2 = qword_100154088;
  qword_100154088 = v1;
}

uint64_t sub_1000D2238()
{
  if (qword_1001540A0 != -1)
  {
    sub_1000D2600();
  }

  return qword_100154098;
}

void sub_1000D2270(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "DiagnosticExtension");
  v2 = qword_100154098;
  qword_100154098 = v1;
}

uint64_t sub_1000D22B4()
{
  if (qword_1001540B0 != -1)
  {
    sub_1000D2614();
  }

  return qword_1001540A8;
}

void sub_1000D22EC(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "KeyedArchiver");
  v2 = qword_1001540A8;
  qword_1001540A8 = v1;
}

void sub_1000D2330(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "TabGroup");
  v2 = qword_1001540B8;
  qword_1001540B8 = v1;
}

void sub_1000D2374(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "CloudTabs");
  v2 = qword_1001540C8;
  qword_1001540C8 = v1;
}

void sub_1000D23B8(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "CloudSettings");
  v2 = qword_1001540D8;
  qword_1001540D8 = v1;
}

uint64_t sub_1000D23FC()
{
  if (qword_1001540F0 != -1)
  {
    sub_1000D2664();
  }

  return qword_1001540E8;
}

void sub_1000D2434(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "CloudExtensions");
  v2 = qword_1001540E8;
  qword_1001540E8 = v1;
}

uint64_t sub_1000D2478()
{
  if (qword_100154100 != -1)
  {
    sub_1000D2678();
  }

  return qword_1001540F8;
}

void sub_1000D24B0(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "SiriLink");
  v2 = qword_1001540F8;
  qword_1001540F8 = v1;
}

uint64_t sub_1000D24F4()
{
  if (qword_100154110 != -1)
  {
    sub_1000D268C();
  }

  return qword_100154108;
}

void sub_1000D252C(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "ScribbleFeedback");
  v2 = qword_100154108;
  qword_100154108 = v1;
}

uint64_t sub_1000D2570()
{
  if (qword_100154120 != -1)
  {
    sub_100001450();
  }

  return qword_100154118;
}

void sub_1000D25A8(id a1)
{
  v1 = os_log_create("com.apple.SafariShared", "WebCompatibilityFeedback");
  v2 = qword_100154118;
  qword_100154118 = v1;
}