@interface ATDeviceSyncSessionAssetTask
- (ATDeviceSyncSessionAssetTask)initWithDataClass:(id)a3 onMessageLink:(id)a4;
- (id)_getMetricsWithCurrentProgressForInflightAssetsFromAssetMetrics:(id)a3;
- (id)_getRawInstalledAssetMetricsFromAssetClient;
- (id)_prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:(id)a3;
- (id)_serializedAssetRequestsFromRequestDictionary:(id)a3;
- (id)_serializedAssetSyncProgressFromAssetCacheDictionary:(id)a3;
- (id)_serializedAssetsToDownloadDictionaryWithUpdatedProgressFromDownloadDictionary:(id)a3;
- (id)_serializedDownloadedAssetsDictionaryFromDownloadedAssetsDictionary:(id)a3;
- (id)_updateProgressAndGetFileProgressParamsForAsset:(id)a3;
- (unint64_t)_bytesDownloadedForAsset:(id)a3;
- (void)_assetRequestsCompletedWithError:(id)a3;
- (void)_finishTaskWithError:(id)a3;
- (void)_handleAssetDownloadProgressed:(id)a3 onMessageLink:(id)a4;
- (void)_handleAssetRequest:(id)a3 onMessagLink:(id)a4;
- (void)_handleBeginAssetTaskRequest:(id)a3 onMessagLink:(id)a4;
- (void)_handleEndAssetTaskRequest:(id)a3 onMessagLink:(id)a4;
- (void)_handleFinishedAsset:(id)a3;
- (void)_handleInstalledAssetMetricsChanged:(id)a3 onMessageLink:(id)a4;
- (void)_handleUpdateSessionTaskRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleUpdatedAsset:(id)a3;
- (void)_loadInstalledAssetMetricsFromSyncClient;
- (void)_removeAssetFromProgressMap:(id)a3;
- (void)_sendUpdatedInstallMetrics;
- (void)_shouldDeviceReportSyncProgress;
- (void)_updateCachedInstalledAssetMetricsWithNewMetrics:(id)a3;
- (void)_updateDetailedProgressForCompletedAsset:(id)a3;
- (void)_updateProgressWithBytesTransferred:(unint64_t)a3 forAsset:(id)a4;
- (void)_updateProperties;
- (void)_updateTaskDescription;
- (void)cancel;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)start;
- (void)updateProgressWithCount:(unint64_t)a3 totalItemCount:(unint64_t)a4;
@end

@implementation ATDeviceSyncSessionAssetTask

- (void)_shouldDeviceReportSyncProgress
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = getNRPairedDeviceRegistryClass_softClass;
  v21 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNRPairedDeviceRegistryClass_block_invoke;
    *&buf[24] = &unk_2784E5B40;
    v23 = &v18;
    __getNRPairedDeviceRegistryClass_block_invoke(buf);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [v3 sharedInstance];
  v6 = [v5 getActivePairedDevice];

  if (v6)
  {
    v7 = v6;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v8 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
    v21 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
    if (!getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke;
      *&buf[24] = &unk_2784E5B40;
      v23 = &v18;
      v9 = NanoRegistryLibrary();
      v10 = dlsym(v9, "NRWatchOSVersionForRemoteDevice");
      *(v23[1] + 24) = v10;
      getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(v23[1] + 24);
      v8 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v8)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NRProductVersionWatchOS __ATDeviceSyncSessionAssetTaskNRWatchOSVersionForRemoteDevice(NRDevice *__strong)"];
      [v16 handleFailureInFunction:v17 file:@"ATDeviceSyncSessionAssetTask.m" lineNumber:27 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v11 = v8(v7);

    self->_deviceShouldReportSyncProgress = v11 < 0x40000;
  }

  else
  {
    v12 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Paired Sync Registry reports no active paired device", buf, 0xCu);
    }

    v11 = -1;
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    deviceShouldReportSyncProgress = self->_deviceShouldReportSyncProgress;
    *buf = 138543874;
    if (deviceShouldReportSyncProgress)
    {
      v15 = "will";
    }

    else
    {
      v15 = "will not";
    }

    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 2080;
    *&buf[20] = v15;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Paired Device is running %u - companion %s report asset metrics", buf, 0x1Cu);
  }
}

- (void)_updateProgressWithBytesTransferred:(unint64_t)a3 forAsset:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 assetParts])
  {
    v7 = [(ATSessionTask *)self totalBytesTransferred];
    v8 = [v7 unsignedLongLongValue];

    v9 = [(ATSessionTask *)self totalBytesToTransfer];
    v10 = [v9 unsignedLongLongValue];

    if (v8 + a3 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8 + a3;
    }

    v12 = [v6 assetType];
    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_syncProgresByAssetType objectForKey:v12];
      v14 = v13;
      if (v13)
      {
        [v13 updateBytesDownloaded:a3];
      }
    }

    [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [(ATSessionTask *)self setTotalBytesTransferred:v15];

    if (v10)
    {
      v16 = v11 / v10;
    }

    else
    {
      v16 = 0.0;
    }

    [(ATSessionTask *)self setProgress:v16];
    v17 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      [(ATSessionTask *)self progress];
      v19 = 134218752;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = [(ATSessionTask *)self completedItemCount];
      _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "total bytes to transfer:%llu, bytes transferred so far:%llu, progress:%f, completed asset count:%lu", &v19, 0x2Au);
    }
  }
}

- (id)_updateProgressAndGetFileProgressParamsForAsset:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 assetParts] & 1) == 0)
  {
    v6 = 0;
    goto LABEL_25;
  }

  v7 = [v5 identifier];
  v8 = [v5 assetType];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_progressMap objectForKey:v8];
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_progressMap setObject:v9 forKey:v8];
    }

    v10 = [v5 totalBytes];
    v11 = v10;
    if (!v10)
    {
      itemsWithEstimatedFileSize = self->_itemsWithEstimatedFileSize;
      v13 = [v5 identifier];
      v14 = [(NSDictionary *)itemsWithEstimatedFileSize objectForKey:v13];

      v11 = [v14 unsignedLongLongValue];
    }

    v15 = [v9 objectForKey:v7];
    v16 = [v15 unsignedLongLongValue];

    v17 = [v5 bytesRemaining];
    if (!v10)
    {
      if (v11 < v17)
      {
        v18 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v5 identifier];
          *buf = 138544130;
          v29 = self;
          v30 = 2048;
          v31 = v11;
          v32 = 2114;
          v33 = v19;
          v34 = 2048;
          v35 = [v5 bytesRemaining];
          _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Undercalculated fileSize (%llu) for %{public}@ - bytesRemaining (%llu) ", buf, 0x2Au);
        }

        v20 = v11;
        goto LABEL_17;
      }

      v17 = [v5 bytesRemaining];
    }

    v20 = v11 - v17;
LABEL_17:
    if (v20 >= v16)
    {
      v21 = v20 - v16;
    }

    else
    {
      v21 = 0;
    }

    if (!v16 || (v6 = 0, v21 >= 0x40000))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
      [v9 setObject:v22 forKey:v7];

      v23 = MEMORY[0x277CBEAC0];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
      v6 = [v23 dictionaryWithObjectsAndKeys:{v24, @"FileSize", v25, @"AssetProgress", v26, @"ATBytesDownloadedForAsset", v8, @"AssetType", v7, @"ATLibraryIdentifierForAsset", 0}];
    }

    goto LABEL_24;
  }

  v6 = 0;
LABEL_24:

LABEL_25:

  return v6;
}

- (void)_removeAssetFromProgressMap:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [v5 assetType];
    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_progressMap objectForKey:v7];
      if (v8)
      {
        v9 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v5 shortDescription];
          v11 = 138543618;
          v12 = self;
          v13 = 2114;
          v14 = v10;
          _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed %{public}@ from our progress map", &v11, 0x16u);
        }

        [v8 removeObjectForKey:v6];
      }
    }
  }
}

- (unint64_t)_bytesDownloadedForAsset:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [v5 assetType];
    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_progressMap objectForKey:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKey:v6];
        v11 = [v10 unsignedIntegerValue];
        v12 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v5 shortDescription];
          v15 = 138543874;
          v16 = self;
          v17 = 2048;
          v18 = v11;
          v19 = 2114;
          v20 = v13;
          _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %llu bytes have been reported downloaded for %{public}@", &v15, 0x20u);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_loadInstalledAssetMetricsFromSyncClient
{
  v8 = [(ATDeviceSyncSessionAssetTask *)self _getRawInstalledAssetMetricsFromAssetClient];
  v3 = [(ATDeviceSyncSessionAssetTask *)self _prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:v8];
  installedAssetMetrics = self->_installedAssetMetrics;
  self->_installedAssetMetrics = v3;

  v5 = [(NSDictionary *)self->_installedAssetMetrics objectForKey:@"InstalledMediaAssetMetrics"];
  v6 = [v5 objectForKey:@"ItemsWithEstimatedFileSize"];
  itemsWithEstimatedFileSize = self->_itemsWithEstimatedFileSize;
  self->_itemsWithEstimatedFileSize = v6;
}

- (id)_getRawInstalledAssetMetricsFromAssetClient
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_assetClient);
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = _ATLogCategoryDeviceSync();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = 138543362;
    v13 = self;
    v8 = "%{public}@: no ATAssetClient to get installed asset metrics";
LABEL_9:
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
    goto LABEL_13;
  }

  if (![WeakRetained conformsToProtocol:&unk_283709248])
  {
    v5 = _ATLogCategoryDeviceSync();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = 138543362;
    v13 = self;
    v8 = "%{public}@: client doesn't conform to ATClient";
    goto LABEL_9;
  }

  v5 = v4;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 installedAssetMetrics];
    v7 = [(ATDeviceSyncSessionAssetTask *)self _getMetricsWithCurrentProgressForInflightAssetsFromAssetMetrics:v6];

    goto LABEL_14;
  }

  v9 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: client doesn't respond to selector", &v12, 0xCu);
  }

LABEL_13:
  v7 = 0;
LABEL_14:

  v10 = _ATLogCategoryDeviceSync_Oversize();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: raw installed asset metrics: %{public}@", &v12, 0x16u);
  }

  return v7;
}

- (id)_serializedDownloadedAssetsDictionaryFromDownloadedAssetsDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [ATDetailedRequestInfoForAssetType serializedRequestInfoFromATDetailedRequestInfoForAssetType:v11];
        [v4 setObject:v12 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_serializedAssetsToDownloadDictionaryWithUpdatedProgressFromDownloadDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [ATDetailedRequestInfoForAssetType serializedRequestInfoFromATDetailedRequestInfoForAssetType:v11];
        [v4 setObject:v12 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_getMetricsWithCurrentProgressForInflightAssetsFromAssetMetrics:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [a3 mutableCopy];
  v4 = [v3 objectForKey:@"InstalledMediaAssetMetrics"];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKey:@"DetailedRequestInfoByAssetType"];
  v7 = [v6 mutableCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v7;
  v8 = [v7 allKeys];
  v27 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v27)
  {
    v21 = v5;
    v22 = v3;
    v23 = 0;
    v24 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v26 objectForKey:{v10, v21}];
        v12 = [(NSMutableDictionary *)self->_progressMap objectForKey:v10];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v12 allValues];
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v29;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v16 += [*(*(&v28 + 1) + 8 * j) unsignedLongLongValue];
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v15);
        }

        else
        {
          v16 = 0;
        }

        v19 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v37 = v16;
          v38 = 2114;
          v39 = v10;
          _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "Updating bytes downloaded to %llu for assetType %{public}@", buf, 0x16u);
        }

        if (v16 && v11)
        {
          [v11 updateBytesSynced:v16];
          v23 = 1;
        }
      }

      v27 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v27);

    v5 = v21;
    v3 = v22;
    if (v23)
    {
      [v21 setObject:v26 forKey:@"DetailedRequestInfoByAssetType"];
      [v22 setObject:v21 forKey:@"InstalledMediaAssetMetrics"];
    }
  }

  else
  {
  }

  return v3;
}

- (id)_prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
    v5 = [v4 objectForKey:@"InstalledMediaAssetMetrics"];
    v6 = [v5 mutableCopy];

    if (v6)
    {
      v7 = [v6 objectForKey:@"DetailedRequestInfoByAssetType"];
      v8 = [(ATDeviceSyncSessionAssetTask *)self _serializedAssetsToDownloadDictionaryWithUpdatedProgressFromDownloadDictionary:v7];

      v9 = [v6 objectForKey:@"DetailedDownloadInfoByAssetType"];
      v10 = [(ATDeviceSyncSessionAssetTask *)self _serializedDownloadedAssetsDictionaryFromDownloadedAssetsDictionary:v9];

      [v6 setObject:v8 forKey:@"DetailedRequestInfoByAssetType"];
      [v6 setObject:v10 forKey:@"DetailedDownloadInfoByAssetType"];
      [v4 setObject:v6 forKey:@"InstalledMediaAssetMetrics"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateCachedInstalledAssetMetricsWithNewMetrics:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"InstalledMediaAssetMetrics"];
  v6 = [v5 objectForKey:@"DetailedRequestInfoByAssetType"];
  if ([v6 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v6;
    v34 = [v7 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v34)
    {
      v28 = v6;
      v29 = v5;
      v30 = v4;
      v31 = *v42;
      v32 = v7;
      v33 = self;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(v7);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_progressMap objectForKey:v9];
          v35 = [v7 objectForKey:v9];
          v11 = [v35 getContributors];
          v12 = [MEMORY[0x277CBEB18] array];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v36 = v10;
          v13 = [v10 allKeys];
          v14 = [v13 countByEnumeratingWithState:&v37 objects:v51 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v38;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v38 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v37 + 1) + 8 * j);
                v19 = [v11 objectForKey:v18];

                if (!v19)
                {
                  [(NSDictionary *)v12 addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v37 objects:v51 count:16];
            }

            while (v15);
          }

          v20 = _ATLogCategoryDeviceSync();
          self = v33;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v46 = v33;
            v47 = 2114;
            v48 = v12;
            v49 = 2114;
            v50 = v9;
            _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing progress for %{public}@ asetType %{public}@ as they are cancelled assets", buf, 0x20u);
          }

          [v36 removeObjectsForKeys:v12];
          v7 = v32;
        }

        v34 = [v32 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v34);
      v5 = v29;
      v4 = v30;
      v6 = v28;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_progressMap removeAllObjects];
    v7 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = self;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: No active downloads - clearing our progress map", buf, 0xCu);
    }
  }

  v21 = [(ATDeviceSyncSessionAssetTask *)self _prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:v4];
  v22 = _ATLogCategoryDeviceSync_Oversize();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    installedAssetMetrics = self->_installedAssetMetrics;
    *buf = 138543874;
    v46 = self;
    v47 = 2114;
    v48 = installedAssetMetrics;
    v49 = 2114;
    v50 = v4;
    _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating installed asset metrics from %{public}@ to %{public}@", buf, 0x20u);
  }

  v24 = self->_installedAssetMetrics;
  self->_installedAssetMetrics = v21;
  v25 = v21;

  v26 = [(NSDictionary *)self->_installedAssetMetrics objectForKey:@"ItemsWithEstimatedFileSize"];
  itemsWithEstimatedFileSize = self->_itemsWithEstimatedFileSize;
  self->_itemsWithEstimatedFileSize = v26;
}

- (void)_sendUpdatedInstallMetrics
{
  v3 = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isFinished] & 1) != 0 || objc_msgSend(*(a1 + 32), "isCancelled"))
  {
    v2 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Not sending installed metrics as the task is cancelled/finished", buf, 0xCu);
    }
  }

  else
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending updated installed metrics", buf, 0xCu);
    }

    v2 = [*(a1 + 32) _getRawInstalledAssetMetricsFromAssetClient];
    [*(a1 + 32) _updateCachedInstalledAssetMetricsWithNewMetrics:v2];
    v6 = objc_alloc(MEMORY[0x277CEA458]);
    v7 = [*(a1 + 32) dataClass];
    v8 = [v6 initWithCommand:@"AssetMetrics" dataClass:v7 parameters:*(*(a1 + 32) + 232)];

    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke_209;
    v10[3] = &unk_2784E4C18;
    v10[4] = v9;
    [v9 sendRequest:v8 withCompletion:v10];
  }
}

void __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke_209(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke_2;
  block[3] = &unk_2784E59B0;
  block[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isFinished] & 1) != 0 || objc_msgSend(*(a1 + 32), "isCancelled"))
  {
    v2 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v17 = 138543362;
      v18 = v3;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Not handling asset metrics response as the link is closed.", &v17, 0xCu);
    }

LABEL_5:

    return;
  }

  if (!*(a1 + 40))
  {
    v4 = [*(a1 + 48) error];

    if (!v4)
    {
      *(*(a1 + 32) + 296) = 0;
      return;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 296);
  if (v6 > 2)
  {
    v2 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = [*(a1 + 48) error];
      v16 = *(*(a1 + 32) + 296);
      v17 = 138544130;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Error %{public}@, response error %{public}@ sending updated asset metrics - will NOT try sending metrics again, _retrySendingAssetMetricsCount=%d", &v17, 0x26u);
    }

    goto LABEL_5;
  }

  *(v5 + 296) = v6 + 1;
  v7 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) error];
    v11 = *(*(a1 + 32) + 296);
    v17 = 138544130;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Error %{public}@, response error %{public}@ sending updated asset metrics - will try again in 1 second, _retrySendingAssetMetricsCount=%d", &v17, 0x26u);
  }

  v12 = dispatch_time(0, 1000000000);
  dispatch_after(v12, MEMORY[0x277D85CD0], &__block_literal_global_212);
}

void __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke_210()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.atc.installedassetmetricschanged", 0, 0, 1u);
}

- (id)_serializedAssetSyncProgressFromAssetCacheDictionary:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if (v11)
        {
          v12 = [ATDetailedProgressInfoForAssetType serializedProgressInfoFromATDetailedProgressInfoForAssetType:v11];
          [v4 setObject:v12 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: serializedProgressDictionary %{public}@", buf, 0x16u);
  }

  return v4;
}

- (id)_serializedAssetRequestsFromRequestDictionary:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if (v11)
        {
          v12 = [ATDetailedRequestInfoForAssetType serializedRequestInfoFromATDetailedRequestInfoForAssetType:v11];
          [v4 setObject:v12 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: serializedAssetsDictionary %{public}@", buf, 0x16u);
  }

  return v4;
}

- (void)_finishTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(ATDeviceSyncSessionTask *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ATDeviceSyncSessionAssetTask__finishTaskWithError___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__ATDeviceSyncSessionAssetTask__finishTaskWithError___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isFinished])
  {
    v2 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v38 = v3;
      v4 = "%{public}@: is already finished";
LABEL_20:
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 256);
    if (v6 == 1)
    {
      v7 = [v5 messageLink];
      v8 = [v7 socket];
      [v8 removeTransportUpgradeException];

      *(*(a1 + 32) + 256) = 0;
      v5 = *(a1 + 32);
    }

    WeakRetained = objc_loadWeakRetained((v5 + 176));

    if (WeakRetained)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(v11 + 320);
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __53__ATDeviceSyncSessionAssetTask__finishTaskWithError___block_invoke_2;
      v34 = &unk_2784E5960;
      v35 = v11;
      v36 = v10;
      dispatch_sync(v12, &v31);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13 - *(*(a1 + 32) + 264);
    v15 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v17 = v16 - *(*(a1 + 32) + 264);
      *buf = 134217984;
      v38 = v17;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "Asset Task finished in %.2f seconds", buf, 0xCu);
    }

    v18 = *(*(a1 + 32) + 272) / v14;
    v19 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = v20[39];
      v22 = [v20 totalItemCount];
      v23 = *(*(a1 + 32) + 272);
      *buf = 134218752;
      v38 = v21;
      v39 = 2048;
      v40 = v22;
      v41 = 2048;
      v42 = v23;
      v43 = 2048;
      v44 = v18;
      _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "==> synced %lu/%lu total assets of %lld bytes total (%.2f bytes/s)", buf, 0x2Au);
    }

    if ([*(a1 + 32) totalItemCount])
    {
      v24 = [*(a1 + 32) messageLink];
      v25 = [v24 endpointType];

      if (!v25)
      {
        ATReportEventAddDoubleToScalarKey();
      }
    }

    [*(a1 + 32) totalItemCount];
    ATReportEventAddIntToScalarKey();
    ATReportEventAddIntToScalarKey();
    [*(a1 + 32) setError:*(a1 + 40)];
    [*(a1 + 32) setFinished:1];
    v26 = *(a1 + 40);
    v27 = _ATLogCategoryDeviceSync();
    v2 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        v29 = [*(a1 + 40) msv_description];
        *buf = 138543618;
        v38 = v28;
        v39 = 2114;
        v40 = v29;
        _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "%{public}@: finished. error=%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      *buf = 138543362;
      v38 = v30;
      v4 = "%{public}@: finished.";
      goto LABEL_20;
    }
  }
}

void __53__ATDeviceSyncSessionAssetTask__finishTaskWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  [WeakRetained assetSyncDidCompleteWithError:*(a1 + 40)];
}

- (void)_updateTaskDescription
{
  v3 = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ATDeviceSyncSessionAssetTask__updateTaskDescription__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(v3, block);
}

void __54__ATDeviceSyncSessionAssetTask__updateTaskDescription__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 192), "count")}];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 192), "count")}];
  v4 = [*(*(a1 + 32) + 192) array];
  v5 = [*(*(a1 + 32) + 200) array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 prettyName];
        [v2 addObject:v12];

        v13 = [v11 serializedAsset];
        [v3 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [v19 prettyName];
        [v2 addObject:v20];

        v21 = [v19 serializedAsset];
        [v3 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v16);
  }

  v22 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    *buf = 138543618;
    v33 = v23;
    v34 = 2114;
    v35 = v2;
    _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemDescriptions=%{public}@", buf, 0x16u);
  }

  [*(a1 + 32) setCurrentItemDescriptions:v2];
  [*(a1 + 32) setCurrentItems:v3];
}

- (void)_updateProperties
{
  v7 = objc_opt_new();
  v3 = [(NSMutableDictionary *)self->_detailedProgress copy];
  [v7 setObject:v3 forKeyedSubscript:@"DetailedProgress"];

  v4 = [(ATDeviceSyncSessionAssetTask *)self _serializedAssetSyncProgressFromAssetCacheDictionary:self->_syncProgresByAssetType];
  [v7 setObject:v4 forKeyedSubscript:@"DetailedProgressByAssetType"];

  [(ATThroughputCalculator *)self->_throughputCalculator throughput];
  if (v5 > 0.0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v6 forKeyedSubscript:@"AverageThroughput"];
  }

  [(ATSessionTask *)self setProperties:v7];
}

- (void)_updateDetailedProgressForCompletedAsset:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 variantOptions];
  v5 = [v4 objectForKey:@"AssetParts"];
  v6 = [v5 stringValue];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_detailedProgress objectForKey:v6];
    v8 = [v7 objectForKey:@"CompletedCount"];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v7 objectForKey:@"TotalCount"];
    v11 = [v10 unsignedIntegerValue];

    v15[0] = @"TotalCount";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v15[1] = @"CompletedCount";
    v16[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 + 1];
    v16[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    [(NSMutableDictionary *)self->_detailedProgress setObject:v14 forKey:v6];
  }
}

- (void)_assetRequestsCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = [(ATDeviceSyncSessionTask *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _ATLogCategoryDeviceSync();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) msv_description];
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: all assets completed - waiting for clients to finish. error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: all assets completed - waiting for clients to finish.", buf, 0xCu);
  }

  dispatch_barrier_sync(*(*(a1 + 40) + 320), &__block_literal_global_199);
  [*(*(a1 + 40) + 208) removeObserver:?];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "code")}];
    [v8 setObject:v10 forKey:@"_EndAssetTaskError"];
  }

  v11 = objc_alloc(MEMORY[0x277CEA458]);
  v12 = [*(a1 + 40) dataClass];
  v13 = [v11 initWithCommand:@"EndAssetTask" dataClass:v12 parameters:v8];

  v14 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke_2;
  v15[3] = &unk_2784E50D8;
  v15[4] = v14;
  v16 = *(a1 + 32);
  [v14 sendRequest:v13 withCompletion:v15];
}

void __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke_3;
  v11[3] = &unk_2784E5100;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || ([*(a1 + 40) error], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 32);
      v20 = 138543618;
      v21 = v4;
      v22 = 2114;
      *v23 = v5;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_ERROR, "%{public}@: failed to send request. err=%{public}@", &v20, 0x16u);
    }

    v6 = *(a1 + 48);
    if (*(a1 + 56) || *(a1 + 32))
    {
      [*(a1 + 48) _finishTaskWithError:?];
    }

    else
    {
      v17 = [*(a1 + 40) error];
      [v6 _finishTaskWithError:v17];
    }
  }

  else
  {
    v7 = 1;
    *(*(a1 + 48) + 300) = 1;
    v8 = [*(a1 + 48) session];
    v9 = v8;
    if ((*(*(a1 + 48) + 301) & 1) == 0 && !*(a1 + 56))
    {
      v7 = [v8 isCancelled];
    }

    v10 = *(a1 + 56);
    v11 = _ATLogCategoryDeviceSync();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 48);
        v14 = *(v13 + 301);
        v15 = [v9 isCancelled];
        v16 = [*(a1 + 56) msv_description];
        v20 = 138544386;
        v21 = v13;
        v22 = 1024;
        *v23 = v7;
        *&v23[4] = 1024;
        *&v23[6] = v14;
        v24 = 1024;
        v25 = v15;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_ERROR, "%{public}@: taskComplete:%d _peerRequestsComplete:%d, session cancelled:%d error=%{public}@", &v20, 0x28u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 48);
      v19 = *(v18 + 301);
      v20 = 138544130;
      v21 = v18;
      v22 = 1024;
      *v23 = v7;
      *&v23[4] = 1024;
      *&v23[6] = v19;
      v24 = 1024;
      v25 = [v9 isCancelled];
      _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: taskComplete:%d _peerRequestsComplete:%d, session cancelled:%d", &v20, 0x1Eu);
    }

    if (v7)
    {
      [*(a1 + 48) _finishTaskWithError:*(a1 + 56)];
    }
  }
}

- (void)_handleAssetDownloadProgressed:(id)a3 onMessageLink:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 parameters];
  v9 = [v8 objectForKey:@"AssetProgress"];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v6 parameters];
  v12 = [v11 objectForKey:@"AssetType"];

  v13 = [(NSMutableDictionary *)self->_syncProgresByAssetType objectForKey:v12];
  v14 = _ATLogCategoryDeviceSync();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543874;
      v18 = self;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating sync progress for asset type: %{public}@, bytesDownloaded:%llu", &v17, 0x20u);
    }

    [v13 updateBytesDownloaded:v10];
    [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@: No ATDetailedProgressInfoForAssetType for assetType: %{public}@", &v17, 0x16u);
    }
  }

  v16 = [v6 responseWithError:0 parameters:0];
  [v7 sendResponse:v16 withCompletion:0];
}

- (void)_handleInstalledAssetMetricsChanged:(id)a3 onMessageLink:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 parameters];
  v8 = [v7 objectForKey:@"InstalledMediaAssetMetrics"];

  v9 = _ATLogCategoryDeviceSync_Oversize();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v87 = self;
    v88 = 2114;
    v89 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Installed media metrics changed - media metrics dict %{public}@", buf, 0x16u);
  }

  if (v8)
  {
    v10 = [v8 objectForKey:@"KeepLocalAssetByteCountForSyncSettings"];
    v65 = [v10 unsignedLongLongValue];
    v11 = [v8 objectForKey:@"DownloadedAssetByteCountForSyncSettings"];
    v64 = [v11 unsignedLongLongValue];

    v12 = [v8 objectForKey:@"DetailedRequestInfoByAssetType"];
    v13 = [v8 objectForKey:@"DetailedDownloadInfoByAssetType"];
    v62 = v12;
    v58 = v8;
    v61 = v13;
    if ([v12 count] || objc_msgSend(v13, "count"))
    {
      v56 = v6;
      v57 = v5;
      v14 = [MEMORY[0x277CBEB38] dictionary];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = [v13 allKeys];
      v15 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v75;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v75 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v74 + 1) + 8 * i);
            v20 = [v61 objectForKey:v19];
            v21 = [v20 objectForKey:@"TotalBytesToSync"];
            v22 = [v21 unsignedLongLongValue];

            v23 = [v20 objectForKey:@"TotalAssetsToSync"];
            v24 = [v23 unsignedLongLongValue];

            v25 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v19 assetCountToSync:v24 byteCountToSync:v64 + v65 assetCountSynced:v24 byteCountSyned:v22];
            [v14 setObject:v25 forKey:v19];
          }

          v16 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
        }

        while (v16);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obja = [v62 allKeys];
      v26 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v71;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v71 != v28)
            {
              objc_enumerationMutation(obja);
            }

            v30 = *(*(&v70 + 1) + 8 * j);
            v31 = [v62 objectForKey:v30];
            v32 = [v31 objectForKey:@"TotalBytesToSync"];
            v33 = [v32 unsignedLongLongValue];

            v34 = [v31 objectForKey:@"TotalAssetsToSync"];
            v35 = [v34 unsignedLongLongValue];

            v36 = [v31 objectForKey:@"TotalBytesSynced"];
            v37 = [v36 unsignedLongLongValue];

            v38 = [v14 objectForKey:v30];
            if (v38)
            {
              v39 = v38;
              [(ATDetailedProgressInfoForAssetType *)v38 updateAssetsToDownload:v35];
              [(ATDetailedProgressInfoForAssetType *)v39 updateBytesDownloaded:v37];
              [(ATDetailedProgressInfoForAssetType *)v39 updateBytesToDownload:v33];
            }

            else
            {
              v39 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v30 assetCountToSync:v35 byteCountToSync:v64 + v65 assetCountSynced:0 byteCountSyned:v37];
              [v14 setObject:v39 forKey:v30];
            }
          }

          v27 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
        }

        while (v27);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v40 = [v14 allKeys];
      v41 = [v40 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v67;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v67 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v66 + 1) + 8 * k);
            syncProgresByAssetType = self->_syncProgresByAssetType;
            v47 = [v14 objectForKey:v45];
            [(NSMutableDictionary *)syncProgresByAssetType setObject:v47 forKey:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v42);
      }

      v6 = v56;
      v5 = v57;
    }

    else
    {
      v14 = [(NSMutableDictionary *)self->_syncProgresByAssetType allKeys];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v49 = [v14 countByEnumeratingWithState:&v78 objects:v85 count:16];
      if (!v49)
      {
        goto LABEL_32;
      }

      v50 = v49;
      v51 = v6;
      v52 = *v79;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v79 != v52)
          {
            objc_enumerationMutation(v14);
          }

          v54 = *(*(&v78 + 1) + 8 * m);
          v55 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v54 assetCountToSync:0 byteCountToSync:0];
          [(NSMutableDictionary *)self->_syncProgresByAssetType setObject:v55 forKey:v54];
        }

        v50 = [v14 countByEnumeratingWithState:&v78 objects:v85 count:16];
      }

      while (v50);
      v6 = v51;
    }

    v8 = v58;
    v13 = v61;
LABEL_32:

    [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
  }

  v48 = [v5 responseWithError:0 parameters:0];
  [v6 sendResponse:v48 withCompletion:0];
}

- (void)_handleUpdateSessionTaskRequest:(id)a3 onMessageLink:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 parameters];
  v9 = [v8 objectForKey:@"_TotalItemCount"];

  v10 = [v6 parameters];
  v11 = [v10 objectForKey:@"_CompletedItemCount"];

  v12 = [v6 parameters];
  v13 = [v12 objectForKey:@"SyncedAssetATAssetType"];

  v38 = v13;
  if (v13)
  {
    v35 = v11;
    v14 = [v6 parameters];
    v15 = [v14 objectForKey:@"ATLibraryIdentifierForAsset"];

    v16 = [v6 parameters];
    v17 = [v16 objectForKey:@"AssetDownloadedWithError"];

    v18 = [v6 parameters];
    v19 = [v18 objectForKey:@"AssetProgress"];

    v20 = [v6 parameters];
    v21 = [v20 objectForKey:@"FileSize"];

    if (v19)
    {
      v37 = [v19 unsignedLongLongValue];
    }

    else
    {
      v37 = 0;
    }

    v36 = v9;
    if (v21)
    {
      v22 = [v21 unsignedLongLongValue];
    }

    else
    {
      v22 = 0;
    }

    v23 = [(NSMutableDictionary *)self->_syncProgresByAssetType objectForKey:v38];
    v34 = v7;
    if (v17)
    {
      v24 = [v17 BOOLValue] ^ 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      v40 = self;
      v41 = 2114;
      v42 = v15;
      v43 = 2114;
      v44 = v38;
      v45 = 1024;
      v46 = v24;
      v47 = 2048;
      v48 = v22;
      v49 = 2048;
      v50 = v37;
      _os_log_impl(&dword_223819000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Asset id %{public}@ finished - type:%{public}@, succeeded:%d, fileSize:%llu, deltaBytes:%llu", buf, 0x3Au);
    }

    if (v23)
    {
      [v23 updateAsset:v15 syncedWithSuccess:v24 bytesDownloaded:v37];
    }

    v11 = v35;
    v9 = v36;
    v7 = v34;
  }

  -[ATDeviceSyncSessionAssetTask updateProgressWithCount:totalItemCount:](self, "updateProgressWithCount:totalItemCount:", [v11 unsignedIntegerValue], objc_msgSend(v9, "unsignedIntegerValue"));
  v26 = [v6 parameters];
  v27 = [v26 objectForKey:@"_DetailedProgress"];
  v28 = [v27 mutableCopy];
  detailedProgress = self->_detailedProgress;
  self->_detailedProgress = v28;

  [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
  v30 = [v6 responseWithError:0 parameters:0];
  [v7 sendResponse:v30 withCompletion:0];

  if (v9 == v11)
  {
    v31 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = self;
      _os_log_impl(&dword_223819000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: all downloads complete - waiting for task to finish", buf, 0xCu);
    }

    if (self->_addedTransportUpgradeException)
    {
      v32 = [(ATDeviceSyncSessionTask *)self messageLink];
      v33 = [v32 socket];
      [v33 removeTransportUpgradeException];

      self->_addedTransportUpgradeException = 0;
    }
  }
}

- (void)_handleAssetRequest:(id)a3 onMessagLink:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 parameters];
  v9 = [v8 count];

  if (v9)
  {
    v10 = MEMORY[0x277CEA438];
    v11 = [v6 parameters];
    v12 = [v10 assetWithSerializedAsset:v11];

    v13 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = self;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - processing download request for asset %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_assetClient);
    if (WeakRetained)
    {
      if ([v12 isDownload])
      {
        [(NSMutableOrderedSet *)self->_serverAssetsInProgress addObject:v12];
        [(ATDeviceSyncSessionAssetTask *)self _updateTaskDescription];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_2;
        v24[3] = &unk_2784E4D58;
        v24[4] = self;
        v25 = v12;
        v26 = v6;
        v27 = v7;
        [WeakRetained getDataForAsset:v25 withCompletion:v24];

LABEL_17:
        goto LABEL_18;
      }

      v22 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v29 = self;
        v30 = 2114;
        v31 = v12;
        _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_ERROR, "%{public}@ - received unsupported upload request for asset %{public}@", buf, 0x16u);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
      v20 = [v6 responseWithError:v23 parameters:0];

      v21 = &__block_literal_global_172;
    }

    else
    {
      v17 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v12 dataclass];
        *buf = 138543618;
        v29 = self;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_ERROR, "%{public}@ - no client handles asset data class '%{public}@'", buf, 0x16u);
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
      v20 = [v6 responseWithError:v19 parameters:0];

      v21 = &__block_literal_global_169_1968;
    }

    [v7 sendResponse:v20 withCompletion:v21];

    goto LABEL_17;
  }

  v15 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v29 = self;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - Rejecting asset request with no params: %{public}@", buf, 0x16u);
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:23 userInfo:0];
  v12 = [v6 responseWithError:v16 parameters:0];

  [v7 sendResponse:v12 withCompletion:&__block_literal_global_1964];
LABEL_18:
}

void __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_3;
  block[3] = &unk_2784E4D30;
  v11 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v11;
  v17 = *(a1 + 48);
  v18 = v7;
  v19 = v9;
  v20 = v8;
  v21 = *(a1 + 56);
  v12 = v8;
  v13 = v9;
  v14 = v7;
  dispatch_async(v10, block);
}

void __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 272) += [*(a1 + 40) totalBytes];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v2 = [*(a1 + 48) responseWithError:*(a1 + 56) parameters:*(a1 + 64)];
  v3 = *(a1 + 72);
  if (v3)
  {
    [*(*(a1 + 32) + 248) addObject:?];
    v3 = *(a1 + 72);
  }

  [v2 setDataStream:v3];
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = [v4 streamStatus];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 80);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_4;
  v14[3] = &unk_2784E4CB8;
  v7 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v16 = v17;
  v15 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_6;
  v9[3] = &unk_2784E4D08;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  v12 = v17;
  v11 = *(a1 + 72);
  v13 = v5;
  [v6 sendResponse:v2 withProgress:v14 completion:v9];

  _Block_object_dispose(v17, 8);
}

void __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3[302] == 1)
  {
    v5 = [v3 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_5;
    block[3] = &unk_2784E4C90;
    v6 = *(a1 + 32);
    v11 = a2;
    block[4] = v6;
    v8 = *(a1 + 40);
    v7 = v8;
    v10 = v8;
    dispatch_async(v5, block);
  }
}

void __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_6(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: failed to send response for asset %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_174;
  block[3] = &unk_2784E4CE0;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v9 = *(&v11 + 1);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 64);
  dispatch_async(v7, block);
}

uint64_t __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_174(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[302] == 1)
  {
    v3 = *(*(*(a1 + 56) + 8) + 24);
    if (v3)
    {
      [v2 _updateProgressWithBytesTransferred:v3 forAsset:*(a1 + 40)];
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [v4 streamStatus];
    if (*(a1 + 64))
    {
      v6 = v5;
      if ((v5 - 1) <= 4)
      {
        v7 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 48);
          v10 = *(a1 + 64);
          v12 = 138544130;
          v13 = v8;
          v14 = 2114;
          v15 = v9;
          v16 = 2048;
          v17 = v10;
          v18 = 2048;
          v19 = v6;
          _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: input stream %{public}@ will not be closed originalStreamStatus:%lu currentStreamStatus:%lu", &v12, 0x2Au);
        }
      }
    }

    [*(*(a1 + 32) + 248) removeObject:*(a1 + 48)];
  }

  [*(*(a1 + 32) + 200) removeObject:*(a1 + 40)];
  return [*(a1 + 32) _updateTaskDescription];
}

uint64_t __65__ATDeviceSyncSessionAssetTask__handleAssetRequest_onMessagLink___block_invoke_5(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    v2 = result;
    *(*(*(result + 48) + 8) + 24) += v1;
    if (*(*(*(result + 48) + 8) + 24) > 0x40000uLL)
    {
      result = [*(result + 32) _updateProgressWithBytesTransferred:? forAsset:?];
      *(*(*(v2 + 48) + 8) + 24) = 0;
    }
  }

  return result;
}

- (void)_handleEndAssetTaskRequest:(id)a3 onMessagLink:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 parameters];
  v9 = [v8 objectForKey:@"_EndAssetTaskError"];
  v10 = [v9 integerValue];

  if (v10 && !self->_requestsComplete)
  {
    v15 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = self;
      v22 = 2048;
      v23 = v10;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: cancelling due to error on the peer. err=%ld", buf, 0x16u);
    }

    [(ATDeviceSyncSessionAssetTask *)self cancel];
  }

  else
  {
    self->_peerRequestsComplete = 1;
    requestsComplete = self->_requestsComplete;
    v12 = _ATLogCategoryDeviceSync();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (requestsComplete)
    {
      if (v13)
      {
        *buf = 138543362;
        v21 = self;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: all asset transfers are completed - finishing task", buf, 0xCu);
      }

      if (v10)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:v10 userInfo:0];
        [(ATDeviceSyncSessionAssetTask *)self _finishTaskWithError:v14];
      }

      else
      {
        [(ATDeviceSyncSessionAssetTask *)self _finishTaskWithError:0];
      }
    }

    else
    {
      if (v13)
      {
        *buf = 138543362;
        v21 = self;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: peer is finished - waiting for our assets to complete", buf, 0xCu);
      }
    }
  }

  v16 = [v7 responseWithError:0 parameters:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__ATDeviceSyncSessionAssetTask__handleEndAssetTaskRequest_onMessagLink___block_invoke;
  v18[3] = &unk_2784E59D8;
  v18[4] = self;
  v19 = v16;
  v17 = v16;
  [v6 sendResponse:v17 withCompletion:v18];
}

void __72__ATDeviceSyncSessionAssetTask__handleEndAssetTaskRequest_onMessagLink___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to send response. err=%{public}@", &v6, 0x16u);
    }

    [*(a1 + 32) _finishTaskWithError:v3];
  }
}

- (void)_handleBeginAssetTaskRequest:(id)a3 onMessagLink:(id)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_assetClient);

  if (WeakRetained)
  {
    v59 = v7;
    v9 = [v6 parameters];
    v10 = [v9 objectForKey:@"_BeginAssetTaskTotalCount"];
    v11 = [v10 unsignedIntegerValue];

    v12 = [v6 parameters];
    v13 = [v12 objectForKey:@"_BeginAssetTaskDetailedCount"];

    v14 = [v6 parameters];
    v15 = [v14 objectForKey:@"InstalledAssetMetrics"];

    [v15 objectForKey:@"InstalledMediaAssetMetrics"];
    v61 = v60 = v6;
    v16 = [v6 parameters];
    v17 = [v16 objectForKey:@"_BeginAssetTaskTrackByteCount"];
    v18 = [v17 unsignedLongLongValue];

    v19 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v85 = self;
      v86 = 2048;
      v87 = v11;
      v88 = 2048;
      v89 = v18;
      v90 = 2114;
      v91 = v13;
      v92 = 2114;
      v93 = v15;
      _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: peer is going to request %lu assets, %llu total bytes (for track assets), detailed counts=%{public}@ installedAssetMetrics=%{public}@", buf, 0x34u);
    }

    v57 = v11;
    v58 = v15;

    v56 = v18;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
    [(ATSessionTask *)self setTotalBytesToTransfer:v20];

    v21 = [&unk_2836F50C8 stringValue];
    v22 = [v13 objectForKey:v21];
    v55 = [v22 unsignedIntegerValue];

    v23 = [&unk_2836F50E0 stringValue];
    v24 = [v13 objectForKey:v23];
    v54 = [v24 unsignedIntegerValue];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v65 = v13;
    obj = [v13 allKeys];
    v25 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
    v69 = self;
    if (v25)
    {
      v26 = v25;
      v27 = *v80;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v80 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v79 + 1) + 8 * i);
          v97[0] = @"TotalCount";
          v30 = [v65 objectForKey:{v29, v54}];
          v97[1] = @"CompletedCount";
          v98[0] = v30;
          v98[1] = &unk_2836F50B0;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];

          self = v69;
          [(NSMutableDictionary *)v69->_detailedProgress setObject:v31 forKey:v29];
        }

        v26 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
      }

      while (v26);
    }

    v32 = [v61 objectForKey:@"DetailedRequestInfoByAssetType"];
    v33 = [v61 objectForKey:@"DetailedDownloadInfoByAssetType"];
    v66 = [v33 mutableCopy];

    v34 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v85 = self;
      v86 = 2114;
      v87 = v32;
      v88 = 2114;
      v89 = v66;
      _os_log_impl(&dword_223819000, v34, OS_LOG_TYPE_ERROR, "%{public}@: detailedRequestDict %{public}@, detailedDownloadDict %{public}@", buf, 0x20u);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v62 = [v32 allKeys];
    obja = [v62 countByEnumeratingWithState:&v75 objects:v96 count:16];
    if (obja)
    {
      v63 = *v76;
      v64 = v32;
      do
      {
        for (j = 0; j != obja; j = j + 1)
        {
          if (*v76 != v63)
          {
            objc_enumerationMutation(v62);
          }

          v36 = *(*(&v75 + 1) + 8 * j);
          v37 = [v32 objectForKey:{v36, v54}];
          v38 = [v66 objectForKey:v36];
          v39 = v38;
          if (v38)
          {
            v40 = [v38 objectForKey:@"TotalAssetsToSync"];
            v41 = [v40 unsignedLongLongValue];

            v42 = [v39 objectForKey:@"TotalBytesToSync"];
            v43 = [v42 unsignedLongLongValue];

            if (v37)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v43 = 0;
            v41 = 0;
            if (v37)
            {
LABEL_20:
              v44 = [v37 objectForKey:@"TotalAssetsToSync"];
              v45 = [v44 unsignedLongLongValue];

              v46 = [v37 objectForKey:@"TotalBytesToSync"];
              v47 = [v46 unsignedLongLongValue];

              goto LABEL_23;
            }
          }

          v47 = 0;
          v45 = 0;
LABEL_23:
          v48 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v36 assetCountToSync:v45 + v41 byteCountToSync:v47 + v43 assetCountSynced:v41 byteCountSyned:v43];
          [(NSMutableDictionary *)v69->_syncProgresByAssetType setObject:v48 forKey:v36];
          v49 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544642;
            v85 = v69;
            v86 = 2114;
            v87 = v36;
            v88 = 2048;
            v89 = v41;
            v90 = 2048;
            v91 = v43;
            v92 = 2048;
            v93 = v45;
            v94 = 2048;
            v95 = v47;
            _os_log_impl(&dword_223819000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: asset type %{public}@ downloaded asset count %llu, downloaded byte count %llu, asset count to download %llu byte count to download %llu", buf, 0x3Eu);
          }

          v32 = v64;
        }

        obja = [v62 countByEnumeratingWithState:&v75 objects:v96 count:16];
      }

      while (obja);
    }

    [(ATDeviceSyncSessionAssetTask *)v69 _updateProperties];
    [(ATSessionTask *)v69 setTotalItemCount:[(ATSessionTask *)v69 totalItemCount]+ v57];
    v6 = v60;
    v50 = [v60 responseWithError:0 parameters:0];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __74__ATDeviceSyncSessionAssetTask__handleBeginAssetTaskRequest_onMessagLink___block_invoke_162;
    v70[3] = &unk_2784E4C68;
    v70[4] = v69;
    v71 = v50;
    v72 = v55;
    v73 = v54;
    v74 = v56;
    v51 = v50;
    v7 = v59;
    [v59 sendResponse:v51 withCompletion:v70];

    v52 = v65;
    v53 = v58;
  }

  else
  {
    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
    v53 = [v6 responseWithError:v52 parameters:0];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __74__ATDeviceSyncSessionAssetTask__handleBeginAssetTaskRequest_onMessagLink___block_invoke;
    v83[3] = &unk_2784E58E8;
    v83[4] = self;
    [v7 sendResponse:v53 withCompletion:v83];
    [(ATDeviceSyncSessionAssetTask *)self _finishTaskWithError:0];
  }
}

void __74__ATDeviceSyncSessionAssetTask__handleBeginAssetTaskRequest_onMessagLink___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to send response. err=%{public}@", &v6, 0x16u);
    }
  }
}

void __74__ATDeviceSyncSessionAssetTask__handleBeginAssetTaskRequest_onMessagLink___block_invoke_162(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to send response. err=%{public}@", &v13, 0x16u);
    }

    [*(a1 + 32) _finishTaskWithError:v3];
  }

  else if ((*(*(a1 + 32) + 256) & 1) == 0 && (*(a1 + 48) || *(a1 + 56) > 0x31uLL || *(a1 + 64) >= 0x100000uLL))
  {
    v6 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v13 = 138544130;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: adding transport upgrade exception to message link - #tracks: %lu, #artwork: %lu, #total bytes requested: %llu", &v13, 0x2Au);
    }

    v11 = [*(a1 + 32) messageLink];
    v12 = [v11 socket];
    [v12 addTransportUpgradeException];

    *(*(a1 + 32) + 256) = 1;
  }
}

- (void)_handleUpdatedAsset:(id)a3
{
  v4 = a3;
  v5 = [(ATDeviceSyncSessionTask *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ATDeviceSyncSessionAssetTask__handleUpdatedAsset___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__ATDeviceSyncSessionAssetTask__handleUpdatedAsset___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 184) containsObject:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    if (!*(v2 + 280))
    {
      v3 = objc_alloc_init(MEMORY[0x277CE5448]);
      v4 = *(a1 + 32);
      v5 = *(v4 + 280);
      *(v4 + 280) = v3;

      [*(*(a1 + 32) + 280) resume];
      v2 = *(a1 + 32);
    }

    v6 = [*(v2 + 288) objectForKey:*(a1 + 40)];
    if (!v6)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "totalBytes")}];
    }

    v13 = v6;
    v7 = [*(a1 + 40) bytesRemaining];
    v8 = [v13 unsignedLongLongValue] - v7;
    v9 = *(*(a1 + 32) + 288);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [v9 setObject:v10 forKey:*(a1 + 40)];

    LODWORD(v10) = [*(*(a1 + 32) + 280) update:v8];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
    v12 = *(a1 + 40);
    [v12 downloadProgress];
    [WeakRetained assetSync:v12 didUpdateProgress:?];

    [*(*(a1 + 32) + 192) addObject:*(a1 + 40)];
    if (v10)
    {
      [*(a1 + 32) _updateProperties];
    }
  }
}

- (void)_handleFinishedAsset:(id)a3
{
  v4 = a3;
  v5 = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATDeviceSyncSessionAssetTask__handleFinishedAsset___block_invoke;
  block[3] = &unk_2784E5960;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(v5, block);

  v7 = [(ATDeviceSyncSessionTask *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ATDeviceSyncSessionAssetTask__handleFinishedAsset___block_invoke_2;
  v9[3] = &unk_2784E5960;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

uint64_t __53__ATDeviceSyncSessionAssetTask__handleFinishedAsset___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 184) containsObject:*(a1 + 40)])
  {
    v2 = [*(a1 + 40) error];
    v3 = [v2 domain];
    if ([v3 isEqualToString:@"ATError"])
    {
      v4 = [*(a1 + 40) error];
      v5 = [v4 code];

      if (v5 != 16)
      {
        goto LABEL_8;
      }

      v2 = _ATLogCategoryDeviceSync();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

LABEL_8:
        *(*(a1 + 32) + 272) += [*(a1 + 40) totalBytes];
        [*(a1 + 32) updateProgressWithCount:objc_msgSend(*(a1 + 32) totalItemCount:{"completedItemCount") + 1, objc_msgSend(*(a1 + 32), "totalItemCount")}];
        [*(a1 + 32) _updateDetailedProgressForCompletedAsset:*(a1 + 40)];
        v8 = [*(a1 + 40) error];

        if (!v8)
        {
          ++*(*(a1 + 32) + 312);
        }

        v9 = MEMORY[0x277CBEB38];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "completedItemCount", @"_CompletedItemCount"}];
        v48[0] = v10;
        v47[1] = @"_TotalItemCount";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "totalItemCount")}];
        v48[1] = v11;
        v47[2] = @"_DetailedProgress";
        v12 = [*(*(a1 + 32) + 216) copy];
        v48[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
        v14 = [v9 dictionaryWithDictionary:v13];

        v15 = [*(a1 + 40) assetType];

        if (v15)
        {
          v16 = [*(a1 + 40) assetType];
          [v14 setObject:v16 forKey:@"SyncedAssetATAssetType"];

          v17 = [*(a1 + 40) identifier];
          [v14 setObject:v17 forKey:@"ATLibraryIdentifierForAsset"];
        }

        v18 = objc_alloc(MEMORY[0x277CEA458]);
        v19 = [*(a1 + 32) dataClass];
        v20 = [v18 initWithCommand:@"UpdateAssetSessionTask" dataClass:v19 parameters:v14];

        [*(a1 + 32) sendRequest:v20 withCompletion:0];
        v21 = [*(a1 + 40) error];
        if (!v21)
        {
LABEL_24:
          [*(*(a1 + 32) + 192) removeObject:*(a1 + 40)];
          [*(*(a1 + 32) + 184) removeObject:*(a1 + 40)];
          [*(*(a1 + 32) + 288) removeObjectForKey:*(a1 + 40)];
          if (([*(a1 + 32) isCancelled] & 1) == 0)
          {
            v33 = [*(*(a1 + 32) + 184) count];
            v34 = *(a1 + 32);
            if (v33)
            {
              v35 = [v34[23] count];
              v36 = _ATLogCategoryDeviceSync();
              v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
              if (v35 > 5)
              {
                if (v37)
                {
                  v44 = *(a1 + 32);
                  v45 = [v44[23] count];
                  *buf = 138543618;
                  v50 = v44;
                  v51 = 1024;
                  *v52 = v45;
                  v41 = "%{public}@ %d assets remaining.";
                  v42 = v36;
                  v43 = 18;
                  goto LABEL_32;
                }
              }

              else if (v37)
              {
                v38 = *(a1 + 32);
                v39 = [v38[23] count];
                v40 = *(*(a1 + 32) + 184);
                *buf = 138543874;
                v50 = v38;
                v51 = 1024;
                *v52 = v39;
                *&v52[4] = 2114;
                *&v52[6] = v40;
                v41 = "%{public}@ %d assets remaining: %{public}@";
                v42 = v36;
                v43 = 28;
LABEL_32:
                _os_log_impl(&dword_223819000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
              }

              goto LABEL_34;
            }

            [v34 _assetRequestsCompletedWithError:0];
          }

LABEL_34:

          return [*(*(a1 + 32) + 328) removeObject:*(a1 + 40)];
        }

        v22 = v21;
        v23 = [*(a1 + 40) error];
        v24 = [v23 domain];
        if ([v24 isEqualToString:@"ATError"])
        {
          v25 = [*(a1 + 40) error];
          v26 = [v25 code];

          if (v26 != 2)
          {
            goto LABEL_24;
          }

          v22 = [*(a1 + 32) session];
          v27 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *(a1 + 32);
            v29 = [v28 error];
            v30 = [v22 error];
            *buf = 138543874;
            v50 = v28;
            v51 = 2114;
            *v52 = v29;
            *&v52[8] = 2114;
            *&v52[10] = v30;
            _os_log_impl(&dword_223819000, v27, OS_LOG_TYPE_ERROR, "%{public}@: got cancelled asset. self.error=%{public}@, self.session.error=%{public}@", buf, 0x20u);
          }

          v23 = [*(a1 + 32) error];
          if (v23)
          {
            [*(a1 + 40) setError:v23];
LABEL_23:

            goto LABEL_24;
          }

          v24 = [v22 error];
          v31 = *(a1 + 40);
          if (v24)
          {
            [v31 setError:v24];
          }

          else
          {
            v32 = [v31 error];
            [*(a1 + 40) setError:v32];
          }
        }

        goto LABEL_23;
      }

      v6 = *(a1 + 32);
      v3 = [*(a1 + 40) shortDescription];
      v7 = [*(a1 + 40) error];
      *buf = 138543874;
      v50 = v6;
      v51 = 2114;
      *v52 = v3;
      *&v52[8] = 2114;
      *&v52[10] = v7;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Will treat asset %{public}@ with error=%{public}@ as finished.", buf, 0x20u);
    }

    goto LABEL_7;
  }

  return [*(*(a1 + 32) + 328) removeObject:*(a1 + 40)];
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ATDeviceSyncSessionAssetTask_messageLink_didReceiveRequest___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __62__ATDeviceSyncSessionAssetTask_messageLink_didReceiveRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) command];
  v3 = [v2 isEqualToString:@"BeginAssetTask"];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v4 _handleBeginAssetTaskRequest:v5 onMessagLink:v6];
  }

  else
  {
    v7 = [*(a1 + 32) command];
    v8 = [v7 isEqualToString:@"EndAssetTask"];

    if (v8)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = *(a1 + 48);

      [v9 _handleEndAssetTaskRequest:v10 onMessagLink:v11];
    }

    else
    {
      v12 = [*(a1 + 32) command];
      v13 = [v12 isEqualToString:@"RequestAsset"];

      if (v13)
      {
        v15 = *(a1 + 32);
        v14 = *(a1 + 40);
        v16 = *(a1 + 48);

        [v14 _handleAssetRequest:v15 onMessagLink:v16];
      }

      else
      {
        v17 = [*(a1 + 32) command];
        v18 = [v17 isEqualToString:@"UpdateAssetSessionTask"];

        if (v18)
        {
          v20 = *(a1 + 32);
          v19 = *(a1 + 40);
          v21 = *(a1 + 48);

          [v19 _handleUpdateSessionTaskRequest:v20 onMessageLink:v21];
        }

        else
        {
          v22 = [*(a1 + 32) command];
          v23 = [v22 isEqualToString:@"AssetMetrics"];

          if (v23)
          {
            v25 = *(a1 + 32);
            v24 = *(a1 + 40);
            v26 = *(a1 + 48);

            [v24 _handleInstalledAssetMetricsChanged:v25 onMessageLink:v26];
          }

          else
          {
            v27 = [*(a1 + 32) command];
            v28 = [v27 isEqualToString:@"FileProgress"];

            if (v28)
            {
              v30 = *(a1 + 32);
              v29 = *(a1 + 40);
              v31 = *(a1 + 48);

              [v29 _handleAssetDownloadProgressed:v30 onMessageLink:v31];
            }
          }
        }
      }
    }
  }
}

- (void)updateProgressWithCount:(unint64_t)a3 totalItemCount:(unint64_t)a4
{
  [(ATSessionTask *)self setCompletedItemCount:a3];
  [(ATSessionTask *)self setTotalItemCount:a4];
  v9 = [(ATSessionTask *)self totalBytesToTransfer];
  if ([v9 unsignedLongLongValue])
  {
    v6 = [(ATSessionTask *)self totalBytesTransferred];
    v7 = [v6 unsignedLongLongValue];
    v8 = [(ATSessionTask *)self totalBytesToTransfer];
    -[ATSessionTask setProgress:](self, "setProgress:", v7 / [v8 unsignedLongLongValue]);
  }

  else
  {
    [(ATSessionTask *)self setProgress:0.0];
  }
}

- (void)cancel
{
  v3 = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ATDeviceSyncSessionAssetTask_cancel__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(v3, block);
}

void __38__ATDeviceSyncSessionAssetTask_cancel__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isFinished])
  {
    return;
  }

  v2 = [*(a1 + 32) session];
  v3 = [*(a1 + 32) error];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 error];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    }

    v5 = v8;
  }

  v9 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(v10 + 184) count];
    v12 = [*(a1 + 32) error];
    v13 = [v2 error];
    *buf = 138544386;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v12;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling task with %d assets remaining with error %{public}@, task error %{public}@, session error %{public}@ .", buf, 0x30u);
  }

  [*(a1 + 32) setCancelled:1];
  [*(*(a1 + 32) + 208) removeObserver:?];
  v14 = [v5 domain];
  if ([v14 isEqualToString:@"ATError"])
  {
    v15 = [v5 code];

    if (v15 == 8)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 208);
  v18 = [*(v16 + 184) array];
  v19 = [v18 copy];
  [v17 cancelAssets:v19 withError:v5 completion:0];

LABEL_15:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = *(*(a1 + 32) + 248);
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        *buf = xmmword_223908000;
        CFReadStreamSignalEvent();
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v22);
  }

  [*(a1 + 32) _assetRequestsCompletedWithError:v5];
}

- (void)start
{
  v3 = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATDeviceSyncSessionAssetTask_start__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__ATDeviceSyncSessionAssetTask_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v3 = _ATLogCategoryDeviceSync();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "Asset Task starting", buf, 2u);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 264) = v5;
    [*(a1 + 32) _shouldDeviceReportSyncProgress];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__ATDeviceSyncSessionAssetTask_start__block_invoke_65;
    v8[3] = &unk_2784E4C40;
    v8[4] = *(a1 + 32);
    [WeakRetained assetsToSyncWithCompletion:v8];
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v7 = [v6 dataClass];
      *buf = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: no ATAssetClient for data class %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _finishTaskWithError:0];
  }
}

void __37__ATDeviceSyncSessionAssetTask_start__block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v51 = v6;
  v52 = v5;
  if (v5)
  {
    v7 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v74 = v8;
      v75 = 2114;
      *v76 = v5;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "%{public}@: failed to load assets.err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _assetRequestsCompletedWithError:v5];
  }

  else
  {
    [*(*(a1 + 32) + 184) addObjectsFromArray:v6];
    v59 = a1;
    [*(a1 + 32) updateProgressWithCount:0 totalItemCount:{objc_msgSend(*(*(a1 + 32) + 184), "count")}];
    v53 = [MEMORY[0x277CBEB38] dictionary];
    memset(v85, 0, 32);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v51;
    v9 = [obj countByEnumeratingWithState:&v67 objects:v84 count:16];
    if (v9)
    {
      v56 = 0;
      v57 = *v68;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v68 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v67 + 1) + 8 * i);
          objc_copyWeak(buf, (*(a1 + 32) + 176));
          [v11 setEnqueueSource:1];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __37__ATDeviceSyncSessionAssetTask_start__block_invoke_66;
          v65[3] = &unk_2784E4BF0;
          v65[4] = *(a1 + 32);
          objc_copyWeak(&v66, buf);
          [v11 setCompletionBlock:v65];
          v12 = [v11 variantOptions];
          v13 = [v12 objectForKey:@"AssetParts"];
          v14 = [v13 charValue];

          ++v85[v14];
          if (v14 == 1)
          {
            v15 = [v11 totalBytes];
            v16 = [v11 assetType];
            if (v16)
            {
              v17 = [v53 objectForKey:v16];
              if (!v17)
              {
                v17 = objc_alloc_init(ATDetailedRequestInfoForAssetType);
                [v53 setObject:v17 forKey:v16];
              }

              v18 = [v11 totalBytes];
              v19 = [v11 identifier];
              [(ATDetailedRequestInfoForAssetType *)v17 updateBytesToSync:v18 forItemIdentifier:v19];

              [(ATDetailedRequestInfoForAssetType *)v17 incrementAssetCountToSync];
            }

            v56 += v15;
          }

          objc_destroyWeak(&v66);
          objc_destroyWeak(buf);
        }

        v9 = [obj countByEnumeratingWithState:&v67 objects:v84 count:16];
      }

      while (v9);
    }

    else
    {
      v56 = 0;
    }

    v58 = [MEMORY[0x277CBEB38] dictionary];
    for (j = 0; j != 8; ++j)
    {
      if (v85[j])
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:j];
        v23 = [v22 stringValue];
        [v58 setObject:v21 forKey:v23];
      }
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obja = [v58 allKeys];
    v24 = [obja countByEnumeratingWithState:&v61 objects:v83 count:16];
    if (v24)
    {
      v25 = *v62;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v61 + 1) + 8 * k);
          v81[0] = @"TotalCount";
          v28 = [v58 objectForKey:v27];
          v81[1] = @"CompletedCount";
          v82[0] = v28;
          v82[1] = &unk_2836F50B0;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];

          [*(*(a1 + 32) + 216) setObject:v29 forKey:v27];
        }

        v24 = [obja countByEnumeratingWithState:&v61 objects:v83 count:16];
      }

      while (v24);
    }

    v30 = *(a1 + 32);
    if ((*(v30 + 256) & 1) == 0)
    {
      v32 = v85[1];
      v31 = v85[2];
      if (v85[1] || v85[2] > 0x31u || v56 >= 0x100000)
      {
        v33 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          *buf = 138544386;
          v74 = v34;
          v75 = 1024;
          *v76 = v32;
          *&v76[4] = 1024;
          *&v76[6] = v31;
          v77 = 2114;
          v78 = v53;
          v79 = 2048;
          v80 = v56;
          _os_log_impl(&dword_223819000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: adding transport upgrade exception to message link - #total tracks: %u, #artwork: %u, request by assetType: %{public}@, #total bytes requested: %llu", buf, 0x2Cu);
        }

        v35 = [*(a1 + 32) messageLink];
        v36 = [v35 socket];
        [v36 addTransportUpgradeException];

        *(*(a1 + 32) + 256) = 1;
        v30 = *(a1 + 32);
      }
    }

    v71[0] = @"_BeginAssetTaskTotalCount";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v30 + 184), "count")}];
    v72[0] = v37;
    v72[1] = v58;
    v71[1] = @"_BeginAssetTaskDetailedCount";
    v71[2] = @"DetailedRequestByAssetType";
    v38 = [*(a1 + 32) _serializedAssetRequestsFromRequestDictionary:v53];
    v72[2] = v38;
    v71[3] = @"_BeginAssetTaskTrackByteCount";
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
    v72[3] = v39;
    v71[4] = @"InstalledAssetMetrics";
    v40 = *(*(a1 + 32) + 232);
    if (v40)
    {
      v41 = *(*(v59 + 32) + 232);
    }

    else
    {
      v41 = [MEMORY[0x277CBEB68] null];
    }

    v72[4] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:5];
    if (!v40)
    {
    }

    v43 = objc_alloc(MEMORY[0x277CEA458]);
    v44 = [*(v59 + 32) dataClass];
    v45 = [v43 initWithCommand:@"BeginAssetTask" dataClass:v44 parameters:v42];

    v46 = *(v59 + 32);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __37__ATDeviceSyncSessionAssetTask_start__block_invoke_103;
    v60[3] = &unk_2784E4C18;
    v60[4] = v46;
    [v46 sendRequest:v45 withCompletion:v60];
    if ([*(*(v59 + 32) + 184) count])
    {
      [*(*(v59 + 32) + 208) addObserver:?];
      v47 = *(v59 + 32);
      v48 = *(v47 + 208);
      v49 = [*(v47 + 184) array];
      v50 = [v49 copy];
      [v48 enqueueAssets:v50];
    }

    else
    {
      [*(v59 + 32) _assetRequestsCompletedWithError:0];
    }
  }
}

void __37__ATDeviceSyncSessionAssetTask_start__block_invoke_66(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 320);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATDeviceSyncSessionAssetTask_start__block_invoke_2;
  block[3] = &unk_2784E4BC8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(v5, block);
  objc_destroyWeak(&v10);
}

void __37__ATDeviceSyncSessionAssetTask_start__block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_ERROR, "%{public}@: failed to send request. err=%{public}@", &v12, 0x16u);
    }

    v10 = *(a1 + 32);
    if (v6)
    {
      [v10 _finishTaskWithError:v6];
    }

    else
    {
      v11 = [v5 error];
      [v10 _finishTaskWithError:v11];
    }
  }
}

void __37__ATDeviceSyncSessionAssetTask_start__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  v3 = ATIsPendingDownloadError();

  if (v3)
  {
    WeakRetained = _ATLogCategoryFramework();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_223819000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%{public}@ Not hooking up %{public}@ as it's begin downloading by another source", buf, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = *(a1 + 32);
    v8 = [v7 error];
    [WeakRetained assetSync:v7 didCompleteWithError:v8];

    v9 = [MEMORY[0x277CE53F0] sharedInstance];
    v11 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v9 installCompleteForAssets:v10];
  }
}

- (ATDeviceSyncSessionAssetTask)initWithDataClass:(id)a3 onMessageLink:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = ATDeviceSyncSessionAssetTask;
  v4 = [(ATDeviceSyncSessionTask *)&v42 initWithDataClass:a3 onMessageLink:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    clientAssetsRemaining = v4->_clientAssetsRemaining;
    v4->_clientAssetsRemaining = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    clientAssetsInProgress = v4->_clientAssetsInProgress;
    v4->_clientAssetsInProgress = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    serverAssetsInProgress = v4->_serverAssetsInProgress;
    v4->_serverAssetsInProgress = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    finishedAssets = v4->_finishedAssets;
    v4->_finishedAssets = v11;

    v13 = [MEMORY[0x277CE53F0] sharedInstance];
    assetController = v4->_assetController;
    v4->_assetController = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    detailedProgress = v4->_detailedProgress;
    v4->_detailedProgress = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    syncProgresByAssetType = v4->_syncProgresByAssetType;
    v4->_syncProgresByAssetType = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    assetStreams = v4->_assetStreams;
    v4->_assetStreams = v19;

    v4->_addedTransportUpgradeException = 0;
    v4->_totalAssetSize = 0;
    v4->_retrySendingAssetMetricsCount = 0;
    v21 = objc_opt_class();
    Name = class_getName(v21);
    v23 = dispatch_queue_create(Name, 0);
    workQueue = v4->_workQueue;
    v4->_workQueue = v23;

    v25 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    assetToBytesMap = v4->_assetToBytesMap;
    v4->_assetToBytesMap = v25;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = +[ATClientController sharedInstance];
    v28 = [v27 allClients];

    v29 = [v28 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v39;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v38 + 1) + 8 * i);
          if ([v33 conformsToProtocol:&unk_2837091E8])
          {
            v34 = [v33 assetDataClass];
            v35 = [(ATSessionTask *)v4 dataClass];
            v36 = [v34 isEqualToString:v35];

            if (v36)
            {
              objc_storeWeak(&v4->_assetClient, v33);
              goto LABEL_13;
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v4;
}

@end