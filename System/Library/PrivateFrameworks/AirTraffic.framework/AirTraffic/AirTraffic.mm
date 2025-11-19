void sub_23EC624DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak((v32 - 128));
  _Unwind_Resume(a1);
}

os_log_t _ATLogCategorySyncBundle()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "SyncBundle");

  return v0;
}

void *__Copy(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [objc_msgSend(a3 allocWithZone:{a2), "init"}];
  if (v6)
  {
    v7 = [v5[1] copyWithZone:a2];
    v8 = v6[1];
    v6[1] = v7;

    v9 = [v5[2] copyWithZone:a2];
    v10 = v6[2];
    v6[2] = v9;

    v11 = [v5[3] copyWithZone:a2];
    v12 = v6[3];
    v6[3] = v11;
  }

  return v6;
}

void sub_23EC642AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ATStringWithArray(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v3 = [v1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v2 length] != 1)
      {
        [v2 appendString:{@", "}];
      }

      v6 = [v5 description];
      [v2 appendString:v6];

      v7 = [v3 nextObject];

      v5 = v7;
    }

    while (v7);
  }

  [v2 appendString:@"]"];

  return v2;
}

unint64_t ATGetPhysicalSizeForLogicalSize(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __blockMask;
  if (!__blockMask)
  {
    memset(&v7, 0, 512);
    if (statfs([@"/var/mobile/Media/" UTF8String], &v7))
    {
      v3 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "Could not determine system block size", v6, 2u);
      }

      v2 = 4095;
    }

    else
    {
      v2 = v7.f_bsize - 1;
    }

    __blockMask = v2;
  }

  v4 = *MEMORY[0x277D85DE8];
  return ~v2 & (v2 + a1);
}

uint64_t ATGetUsageForPath(void *a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 UTF8String];
    if (dirstat_np() == -1)
    {
      v5 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        *buf = 138543618;
        v11 = v4;
        v12 = 2080;
        v13 = v7;
        _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_ERROR, "ATGetUsageForPath encountered error. path=%{public}@ err=%s", buf, 0x16u);
      }
    }

    else if (a2)
    {
      *a2 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ATGetLibrarianDocumentUsage(int a1, int a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  v3 = dispatch_semaphore_create(0);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __ATGetLibrarianDocumentUsage_block_invoke;
  v36 = &unk_278C6D588;
  v38 = &v40;
  v39 = &v46;
  v37 = v3;
  BRGetTotalApplicationDocumentUsage();
  dispatch_semaphore_wait(v37, 0xFFFFFFFFFFFFFFFFLL);
  if (!v41[5])
  {
    obj = [v47[5] description];
    v19 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = obj;
      _os_log_impl(&dword_23EC61000, v19, OS_LOG_TYPE_DEFAULT, "no usage info. err=%{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v41[5];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v52 count:{16, v37}];
  if (!v4)
  {
LABEL_20:
    v26 = 0;
    v27 = 0;
    goto LABEL_21;
  }

  v26 = 0;
  v27 = 0;
  v5 = *v30;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v30 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v29 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v7];
        v9 = [v8 applicationType];
        v10 = [v9 isEqualToString:@"User"];

        if (v10)
        {
          v11 = a1;
        }

        else
        {
          v11 = a2;
        }

        if (v11 == 1)
        {
          v12 = [v8 bundleIdentifier];
          v13 = [v41[5] objectForKey:v12];
          v14 = [v13 valueForKey:@"Total Size"];
          v15 = [v14 unsignedLongLongValue];

          v16 = ATGetPhysicalSizeForLogicalSize(v15);
          v17 = [v13 valueForKey:@"Document Count"];
          v18 = [v17 unsignedLongLongValue];

          v27 += v16;
          v26 += v18;
        }
      }
    }

    v4 = [obj countByEnumeratingWithState:&v29 objects:v52 count:16];
  }

  while (v4);
LABEL_21:

  if (a3)
  {
    *a3 = v26;
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_23EC64EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ATGetLibrarianDocumentUsage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t ATIsRecoverableError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v1 code];

  if ([v2 isEqualToString:@"ATError"])
  {
    if (v3 >= 0x1A)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x3154390u >> v3;
    }
  }

  else
  {
    v5 = [v2 isEqualToString:*MEMORY[0x277CCA738]] ^ 1;
    if (v3 == -1100)
    {
      v4 = v5;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

void ATReportEventIncrementingScalarKey(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = countKeyForScalarReportingEvent(v1);
  v3 = v2;
  if (v1)
  {
    v13 = v2;
    v14[0] = &unk_28515C888;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    AnalyticsSendEvent();
    v5 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v1;
      _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_DEFAULT, "Reporting payload=%{public}@ for %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ATReportEventIncrementingScalarKey(NSString *__strong)"];
    [v6 handleFailureInFunction:v7 file:@"ATReporting.m" lineNumber:144 description:@"unable to find reporting key"];

    v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = 0;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_DEFAULT, "Could not find reporting key for %{public}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id countKeyForScalarReportingEvent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (countKeyForScalarReportingEvent_onceToken == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [countKeyForScalarReportingEvent_eventKeyToReportingEventMap objectForKey:v2];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&countKeyForScalarReportingEvent_onceToken, &__block_literal_global);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

uint64_t __countKeyForScalarReportingEvent_block_invoke()
{
  countKeyForScalarReportingEvent_eventKeyToReportingEventMap = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"ids_wakeupdelivery", @"com.apple.atc.ids.wakeupdelivery", @"ids_wakeupattempt", @"com.apple.atc.ids.wakeupattempt", @"ids_wakeupfailure", @"com.apple.atc.ids.wakeupfailure", @"ids_wakeuptimeout", @"com.apple.atc.ids.wakeuptimeout", @"storedownload_duration", @"com.apple.atc.storedownload.duration", @"storedownload_cancelled", @"com.apple.atc.storedownload.cancelled", @"storedownload_authfailure", @"com.apple.atc.storedownload.authfailure", @"storedownload_networkfailure", @"com.apple.atc.storedownload.connectivityfailure", @"storedownload_failure", @"com.apple.atc.storedownload.failure", @"storedownload_success", @"com.apple.atc.storedownload.success", @"storedownload_attempt", @"com.apple.atc.storedownload.attempt", @"asset_attempt", @"com.apple.atc.asset.attempt", @"asset_success", @"com.apple.atc.asset.success", @"asset_failure", @"com.apple.atc.asset.failure", @"asset_cancelled", @"com.apple.atc.asset.cancelled", @"itunessync_attempt", @"com.apple.atc.sync_attempt", @"itunessync_success", @"com.apple.atc.sync_success", @"itunessync_failure", @"com.apple.atc.sync_failure", @"devicesync_attempt", @"com.apple.atc.devicesync.attempt", @"devicesync_success", @"com.apple.atc.devicesync.success", @"devicesync_failure", @"com.apple.atc.devicesync.failed", @"devicesync_linkinitialize", @"com.apple.atc.devicesync.linkinitialize", @"com.apple.atc.sync.device.initial_delay", @"com.apple.atc.devicesync.initialsyncdelay", @"devicesync_smallreconcilerate", @"com.apple.atc.devicesync.smallreconcilerate", @"devicesync_largereconcilerate", @"com.apple.atc.devicesync.largereconcilerate", @"devicesync_smallassetrate", @"com.apple.atc.devicesync.smallassetrate", @"devicesync_largeassetrate", @"devicesync_largeassetrate", @"devicesync_assetcount", @"com.apple.atc.devicesync.assetcount", @"devicesync_assetsize", @"com.apple.atc.devicesync.assetsize", 0}];

  return MEMORY[0x2821F96F8]();
}

void ATReportEventAddDoubleToScalarKey(void *a1, double a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithDouble:a2];
  ATReportEventAddValueToScalarKey(v4, v5);
}

void ATReportEventAddValueToScalarKey(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = countKeyForScalarReportingEvent(v3);
    v6 = v5;
    if (v5)
    {
      v14 = v5;
      v15[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      AnalyticsSendEvent();
      v8 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = v7;
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&dword_23EC61000, v8, OS_LOG_TYPE_DEFAULT, "Reporting payload=%{public}@ for %{public}@", &v10, 0x16u);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_impl(&dword_23EC61000, v7, OS_LOG_TYPE_DEFAULT, "Could not find reporting key for %{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void ATReportEventAddIntToScalarKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithLongLong:a2];
  ATReportEventAddValueToScalarKey(v4, v5);
}

void sub_23EC66454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__199(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__279(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__363(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

os_log_t _ATLogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Default");

  return v0;
}

os_log_t _ATLogCategoryDefault_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Default_Oversize");

  return v0;
}

os_log_t _ATLogCategoryFramework()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Framework");

  return v0;
}

os_log_t _ATLogCategoryFramework_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Framework_Oversize");

  return v0;
}

os_log_t _ATLogCategoryiTunesSync()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "iTunesSync");

  return v0;
}

os_log_t _ATLogCategoryiTunesSync_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "iTunesSync_Oversize");

  return v0;
}

os_log_t _ATLogCategoryDeviceSync()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "DeviceSync");

  return v0;
}

os_log_t _ATLogCategoryDeviceSync_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "DeviceSync_Oversize");

  return v0;
}

os_log_t _ATLogCategoryRestore()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Restore");

  return v0;
}

os_log_t _ATLogCategoryRestore_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Restore_Oversize");

  return v0;
}

os_log_t _ATLogCategoryStoreDownloads()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "StoreDownloads");

  return v0;
}

os_log_t _ATLogCategoryStoreDownloads_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "StoreDownloads_Oversize");

  return v0;
}

os_log_t _ATLogCategoryWakeUp()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "WakeUp");

  return v0;
}

os_log_t _ATLogCategoryWakeUp_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "WakeUp_Oversize");

  return v0;
}

os_log_t _ATLogCategorySettings()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Settings");

  return v0;
}

os_log_t _ATLogCategorySettings_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Settings_Oversize");

  return v0;
}

os_log_t _ATLogCategoryMigrator()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Migrator");

  return v0;
}

os_log_t _ATLogCategoryMigrator_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Migrator_Oversize");

  return v0;
}

os_log_t _ATLogCategorySyncBundle_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "SyncBundle_Oversize");

  return v0;
}

os_log_t _ATLogCategoryXPC()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "XPC");

  return v0;
}

os_log_t _ATLogCategoryXPC_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "XPC_Oversize");

  return v0;
}

os_log_t _ATLogCategoryDeprecated()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Deprecated");

  return v0;
}

os_log_t _ATLogCategoryDeprecated_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "Deprecated_Oversize");

  return v0;
}

os_log_t _ATLogCategoryAssetUtils()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "AssetUtils");

  return v0;
}

os_log_t _ATLogCategoryAssetUtils_Oversize()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "AssetUtils_Oversize");

  return v0;
}

void sub_23EC6F7A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_23EC72A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EC73350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23EC73D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1249(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EC74040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EC74528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1399(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EC777C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EC77AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1679(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const char *_StringForXPCType(uint64_t a1)
{
  if (a1 == MEMORY[0x277D86450])
  {
    return "XPC_TYPE_CONNECTION";
  }

  if (a1 == MEMORY[0x277D864B0])
  {
    return "XPC_TYPE_NULL";
  }

  if (a1 == MEMORY[0x277D86448])
  {
    return "XPC_TYPE_BOOL";
  }

  if (a1 == MEMORY[0x277D86498])
  {
    return "XPC_TYPE_INT64";
  }

  if (a1 == MEMORY[0x277D864C8])
  {
    return "XPC_TYPE_UINT64";
  }

  if (a1 == MEMORY[0x277D86470])
  {
    return "XPC_TYPE_DOUBLE";
  }

  if (a1 == MEMORY[0x277D86460])
  {
    return "XPC_TYPE_DATE";
  }

  if (a1 == MEMORY[0x277D86458])
  {
    return "XPC_TYPE_DATA";
  }

  if (a1 == MEMORY[0x277D864C0])
  {
    return "XPC_TYPE_STRING";
  }

  if (a1 == MEMORY[0x277D864D0])
  {
    return "XPC_TYPE_UUID";
  }

  if (a1 == MEMORY[0x277D86488])
  {
    return "XPC_TYPE_FD";
  }

  if (a1 == MEMORY[0x277D864B8])
  {
    return "XPC_TYPE_SHMEM";
  }

  if (a1 == MEMORY[0x277D86440])
  {
    return "XPC_TYPE_ARRAY";
  }

  if (a1 == MEMORY[0x277D86468])
  {
    return "XPC_TYPE_DICTIONARY";
  }

  if (a1 == MEMORY[0x277D86480])
  {
    return "XPC_TYPE_ERROR";
  }

  return "Unknown type";
}

void sub_23EC795B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EC798E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 80));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}