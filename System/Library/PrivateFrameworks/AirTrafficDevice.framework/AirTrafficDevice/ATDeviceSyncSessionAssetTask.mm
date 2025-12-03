@interface ATDeviceSyncSessionAssetTask
- (ATDeviceSyncSessionAssetTask)initWithDataClass:(id)class onMessageLink:(id)link;
- (id)_getMetricsWithCurrentProgressForInflightAssetsFromAssetMetrics:(id)metrics;
- (id)_getRawInstalledAssetMetricsFromAssetClient;
- (id)_prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:(id)metrics;
- (id)_serializedAssetRequestsFromRequestDictionary:(id)dictionary;
- (id)_serializedAssetSyncProgressFromAssetCacheDictionary:(id)dictionary;
- (id)_serializedAssetsToDownloadDictionaryWithUpdatedProgressFromDownloadDictionary:(id)dictionary;
- (id)_serializedDownloadedAssetsDictionaryFromDownloadedAssetsDictionary:(id)dictionary;
- (id)_updateProgressAndGetFileProgressParamsForAsset:(id)asset;
- (unint64_t)_bytesDownloadedForAsset:(id)asset;
- (void)_assetRequestsCompletedWithError:(id)error;
- (void)_finishTaskWithError:(id)error;
- (void)_handleAssetDownloadProgressed:(id)progressed onMessageLink:(id)link;
- (void)_handleAssetRequest:(id)request onMessagLink:(id)link;
- (void)_handleBeginAssetTaskRequest:(id)request onMessagLink:(id)link;
- (void)_handleEndAssetTaskRequest:(id)request onMessagLink:(id)link;
- (void)_handleFinishedAsset:(id)asset;
- (void)_handleInstalledAssetMetricsChanged:(id)changed onMessageLink:(id)link;
- (void)_handleUpdateSessionTaskRequest:(id)request onMessageLink:(id)link;
- (void)_handleUpdatedAsset:(id)asset;
- (void)_loadInstalledAssetMetricsFromSyncClient;
- (void)_removeAssetFromProgressMap:(id)map;
- (void)_sendUpdatedInstallMetrics;
- (void)_shouldDeviceReportSyncProgress;
- (void)_updateCachedInstalledAssetMetricsWithNewMetrics:(id)metrics;
- (void)_updateDetailedProgressForCompletedAsset:(id)asset;
- (void)_updateProgressWithBytesTransferred:(unint64_t)transferred forAsset:(id)asset;
- (void)_updateProperties;
- (void)_updateTaskDescription;
- (void)cancel;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)start;
- (void)updateProgressWithCount:(unint64_t)count totalItemCount:(unint64_t)itemCount;
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
  sharedInstance = [v3 sharedInstance];
  getActivePairedDevice = [sharedInstance getActivePairedDevice];

  if (getActivePairedDevice)
  {
    v7 = getActivePairedDevice;
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NRProductVersionWatchOS __ATDeviceSyncSessionAssetTaskNRWatchOSVersionForRemoteDevice(NRDevice *__strong)"];
      [currentHandler handleFailureInFunction:v17 file:@"ATDeviceSyncSessionAssetTask.m" lineNumber:27 description:{@"%s", dlerror()}];

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

- (void)_updateProgressWithBytesTransferred:(unint64_t)transferred forAsset:(id)asset
{
  v27 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if ([assetCopy assetParts])
  {
    totalBytesTransferred = [(ATSessionTask *)self totalBytesTransferred];
    unsignedLongLongValue = [totalBytesTransferred unsignedLongLongValue];

    totalBytesToTransfer = [(ATSessionTask *)self totalBytesToTransfer];
    unsignedLongLongValue2 = [totalBytesToTransfer unsignedLongLongValue];

    if (unsignedLongLongValue + transferred >= unsignedLongLongValue2)
    {
      v11 = unsignedLongLongValue2;
    }

    else
    {
      v11 = unsignedLongLongValue + transferred;
    }

    assetType = [assetCopy assetType];
    if (assetType)
    {
      v13 = [(NSMutableDictionary *)self->_syncProgresByAssetType objectForKey:assetType];
      v14 = v13;
      if (v13)
      {
        [v13 updateBytesDownloaded:transferred];
      }
    }

    [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [(ATSessionTask *)self setTotalBytesTransferred:v15];

    if (unsignedLongLongValue2)
    {
      v16 = v11 / unsignedLongLongValue2;
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
      v20 = unsignedLongLongValue2;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      completedItemCount = [(ATSessionTask *)self completedItemCount];
      _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "total bytes to transfer:%llu, bytes transferred so far:%llu, progress:%f, completed asset count:%lu", &v19, 0x2Au);
    }
  }
}

- (id)_updateProgressAndGetFileProgressParamsForAsset:(id)asset
{
  v36 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy || ([assetCopy assetParts] & 1) == 0)
  {
    v6 = 0;
    goto LABEL_25;
  }

  identifier = [v5 identifier];
  assetType = [v5 assetType];
  if (assetType)
  {
    dictionary = [(NSMutableDictionary *)self->_progressMap objectForKey:assetType];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_progressMap setObject:dictionary forKey:assetType];
    }

    totalBytes = [v5 totalBytes];
    unsignedLongLongValue = totalBytes;
    if (!totalBytes)
    {
      itemsWithEstimatedFileSize = self->_itemsWithEstimatedFileSize;
      identifier2 = [v5 identifier];
      v14 = [(NSDictionary *)itemsWithEstimatedFileSize objectForKey:identifier2];

      unsignedLongLongValue = [v14 unsignedLongLongValue];
    }

    v15 = [dictionary objectForKey:identifier];
    unsignedLongLongValue2 = [v15 unsignedLongLongValue];

    bytesRemaining = [v5 bytesRemaining];
    if (!totalBytes)
    {
      if (unsignedLongLongValue < bytesRemaining)
      {
        v18 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          identifier3 = [v5 identifier];
          *buf = 138544130;
          selfCopy = self;
          v30 = 2048;
          v31 = unsignedLongLongValue;
          v32 = 2114;
          v33 = identifier3;
          v34 = 2048;
          bytesRemaining2 = [v5 bytesRemaining];
          _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Undercalculated fileSize (%llu) for %{public}@ - bytesRemaining (%llu) ", buf, 0x2Au);
        }

        v20 = unsignedLongLongValue;
        goto LABEL_17;
      }

      bytesRemaining = [v5 bytesRemaining];
    }

    v20 = unsignedLongLongValue - bytesRemaining;
LABEL_17:
    if (v20 >= unsignedLongLongValue2)
    {
      v21 = v20 - unsignedLongLongValue2;
    }

    else
    {
      v21 = 0;
    }

    if (!unsignedLongLongValue2 || (v6 = 0, v21 >= 0x40000))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
      [dictionary setObject:v22 forKey:identifier];

      v23 = MEMORY[0x277CBEAC0];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
      v6 = [v23 dictionaryWithObjectsAndKeys:{v24, @"FileSize", v25, @"AssetProgress", v26, @"ATBytesDownloadedForAsset", assetType, @"AssetType", identifier, @"ATLibraryIdentifierForAsset", 0}];
    }

    goto LABEL_24;
  }

  v6 = 0;
LABEL_24:

LABEL_25:

  return v6;
}

- (void)_removeAssetFromProgressMap:(id)map
{
  v15 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v5 = mapCopy;
  if (mapCopy)
  {
    identifier = [mapCopy identifier];
    assetType = [v5 assetType];
    if (assetType)
    {
      v8 = [(NSMutableDictionary *)self->_progressMap objectForKey:assetType];
      if (v8)
      {
        v9 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [v5 shortDescription];
          v11 = 138543618;
          selfCopy = self;
          v13 = 2114;
          v14 = shortDescription;
          _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed %{public}@ from our progress map", &v11, 0x16u);
        }

        [v8 removeObjectForKey:identifier];
      }
    }
  }
}

- (unint64_t)_bytesDownloadedForAsset:(id)asset
{
  v21 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    identifier = [assetCopy identifier];
    assetType = [v5 assetType];
    if (assetType)
    {
      v8 = [(NSMutableDictionary *)self->_progressMap objectForKey:assetType];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKey:identifier];
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        v12 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [v5 shortDescription];
          v15 = 138543874;
          selfCopy = self;
          v17 = 2048;
          v18 = unsignedIntegerValue;
          v19 = 2114;
          v20 = shortDescription;
          _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %llu bytes have been reported downloaded for %{public}@", &v15, 0x20u);
        }
      }

      else
      {
        unsignedIntegerValue = 0;
      }
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)_loadInstalledAssetMetricsFromSyncClient
{
  _getRawInstalledAssetMetricsFromAssetClient = [(ATDeviceSyncSessionAssetTask *)self _getRawInstalledAssetMetricsFromAssetClient];
  v3 = [(ATDeviceSyncSessionAssetTask *)self _prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:_getRawInstalledAssetMetricsFromAssetClient];
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
    selfCopy4 = self;
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
    selfCopy4 = self;
    v8 = "%{public}@: client doesn't conform to ATClient";
    goto LABEL_9;
  }

  v5 = v4;
  if (objc_opt_respondsToSelector())
  {
    installedAssetMetrics = [v5 installedAssetMetrics];
    v7 = [(ATDeviceSyncSessionAssetTask *)self _getMetricsWithCurrentProgressForInflightAssetsFromAssetMetrics:installedAssetMetrics];

    goto LABEL_14;
  }

  v9 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    selfCopy4 = self;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: client doesn't respond to selector", &v12, 0xCu);
  }

LABEL_13:
  v7 = 0;
LABEL_14:

  v10 = _ATLogCategoryDeviceSync_Oversize();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy4 = self;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: raw installed asset metrics: %{public}@", &v12, 0x16u);
  }

  return v7;
}

- (id)_serializedDownloadedAssetsDictionaryFromDownloadedAssetsDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKey:v10];
        v12 = [ATDetailedRequestInfoForAssetType serializedRequestInfoFromATDetailedRequestInfoForAssetType:v11];
        [dictionary setObject:v12 forKey:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (id)_serializedAssetsToDownloadDictionaryWithUpdatedProgressFromDownloadDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKey:v10];
        v12 = [ATDetailedRequestInfoForAssetType serializedRequestInfoFromATDetailedRequestInfoForAssetType:v11];
        [dictionary setObject:v12 forKey:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (id)_getMetricsWithCurrentProgressForInflightAssetsFromAssetMetrics:(id)metrics
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [metrics mutableCopy];
  v4 = [v3 objectForKey:@"InstalledMediaAssetMetrics"];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKey:@"DetailedRequestInfoByAssetType"];
  v7 = [v6 mutableCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v7;
  allKeys = [v7 allKeys];
  v27 = [allKeys countByEnumeratingWithState:&v32 objects:v41 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v26 objectForKey:{v10, v21}];
        v12 = [(NSMutableDictionary *)self->_progressMap objectForKey:v10];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        allValues = [v12 allValues];
        v14 = [allValues countByEnumeratingWithState:&v28 objects:v40 count:16];
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
                objc_enumerationMutation(allValues);
              }

              v16 += [*(*(&v28 + 1) + 8 * j) unsignedLongLongValue];
            }

            v15 = [allValues countByEnumeratingWithState:&v28 objects:v40 count:16];
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

      v27 = [allKeys countByEnumeratingWithState:&v32 objects:v41 count:16];
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

- (id)_prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:(id)metrics
{
  if (metrics)
  {
    v4 = [metrics mutableCopy];
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

- (void)_updateCachedInstalledAssetMetricsWithNewMetrics:(id)metrics
{
  v53 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v5 = [metricsCopy objectForKey:@"InstalledMediaAssetMetrics"];
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
      v30 = metricsCopy;
      v31 = *v42;
      v32 = v7;
      selfCopy = self;
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
          getContributors = [v35 getContributors];
          array = [MEMORY[0x277CBEB18] array];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v36 = v10;
          allKeys = [v10 allKeys];
          v14 = [allKeys countByEnumeratingWithState:&v37 objects:v51 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v18 = *(*(&v37 + 1) + 8 * j);
                v19 = [getContributors objectForKey:v18];

                if (!v19)
                {
                  [(NSDictionary *)array addObject:v18];
                }
              }

              v15 = [allKeys countByEnumeratingWithState:&v37 objects:v51 count:16];
            }

            while (v15);
          }

          v20 = _ATLogCategoryDeviceSync();
          self = selfCopy;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            selfCopy3 = selfCopy;
            v47 = 2114;
            v48 = array;
            v49 = 2114;
            v50 = v9;
            _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing progress for %{public}@ asetType %{public}@ as they are cancelled assets", buf, 0x20u);
          }

          [v36 removeObjectsForKeys:array];
          v7 = v32;
        }

        v34 = [v32 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v34);
      v5 = v29;
      metricsCopy = v30;
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
      selfCopy3 = self;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: No active downloads - clearing our progress map", buf, 0xCu);
    }
  }

  v21 = [(ATDeviceSyncSessionAssetTask *)self _prepareInstalledAssetMetricsWithSerializedOutputFromClientMetrics:metricsCopy];
  v22 = _ATLogCategoryDeviceSync_Oversize();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    installedAssetMetrics = self->_installedAssetMetrics;
    *buf = 138543874;
    selfCopy3 = self;
    v47 = 2114;
    v48 = installedAssetMetrics;
    v49 = 2114;
    v50 = metricsCopy;
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
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATDeviceSyncSessionAssetTask__sendUpdatedInstallMetrics__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
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

- (id)_serializedAssetSyncProgressFromAssetCacheDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKey:v10];
        if (v11)
        {
          v12 = [ATDetailedProgressInfoForAssetType serializedProgressInfoFromATDetailedProgressInfoForAssetType:v11];
          [dictionary setObject:v12 forKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = dictionary;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: serializedProgressDictionary %{public}@", buf, 0x16u);
  }

  return dictionary;
}

- (id)_serializedAssetRequestsFromRequestDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKey:v10];
        if (v11)
        {
          v12 = [ATDetailedRequestInfoForAssetType serializedRequestInfoFromATDetailedRequestInfoForAssetType:v11];
          [dictionary setObject:v12 forKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = dictionary;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: serializedAssetsDictionary %{public}@", buf, 0x16u);
  }

  return dictionary;
}

- (void)_finishTaskWithError:(id)error
{
  errorCopy = error;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ATDeviceSyncSessionAssetTask__finishTaskWithError___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
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
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ATDeviceSyncSessionAssetTask__updateTaskDescription__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)_updateDetailedProgressForCompletedAsset:(id)asset
{
  v16[2] = *MEMORY[0x277D85DE8];
  variantOptions = [asset variantOptions];
  v5 = [variantOptions objectForKey:@"AssetParts"];
  stringValue = [v5 stringValue];

  if (stringValue)
  {
    v7 = [(NSMutableDictionary *)self->_detailedProgress objectForKey:stringValue];
    v8 = [v7 objectForKey:@"CompletedCount"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    v10 = [v7 objectForKey:@"TotalCount"];
    unsignedIntegerValue2 = [v10 unsignedIntegerValue];

    v15[0] = @"TotalCount";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
    v15[1] = @"CompletedCount";
    v16[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    v16[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    [(NSMutableDictionary *)self->_detailedProgress setObject:v14 forKey:stringValue];
  }
}

- (void)_assetRequestsCompletedWithError:(id)error
{
  errorCopy = error;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ATDeviceSyncSessionAssetTask__assetRequestsCompletedWithError___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(queue, v7);
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

- (void)_handleAssetDownloadProgressed:(id)progressed onMessageLink:(id)link
{
  v23 = *MEMORY[0x277D85DE8];
  progressedCopy = progressed;
  linkCopy = link;
  parameters = [progressedCopy parameters];
  v9 = [parameters objectForKey:@"AssetProgress"];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  parameters2 = [progressedCopy parameters];
  v12 = [parameters2 objectForKey:@"AssetType"];

  v13 = [(NSMutableDictionary *)self->_syncProgresByAssetType objectForKey:v12];
  v14 = _ATLogCategoryDeviceSync();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543874;
      selfCopy2 = self;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      v22 = unsignedLongLongValue;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating sync progress for asset type: %{public}@, bytesDownloaded:%llu", &v17, 0x20u);
    }

    [v13 updateBytesDownloaded:unsignedLongLongValue];
    [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      selfCopy2 = self;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@: No ATDetailedProgressInfoForAssetType for assetType: %{public}@", &v17, 0x16u);
    }
  }

  v16 = [progressedCopy responseWithError:0 parameters:0];
  [linkCopy sendResponse:v16 withCompletion:0];
}

- (void)_handleInstalledAssetMetricsChanged:(id)changed onMessageLink:(id)link
{
  v90 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  linkCopy = link;
  parameters = [changedCopy parameters];
  v8 = [parameters objectForKey:@"InstalledMediaAssetMetrics"];

  v9 = _ATLogCategoryDeviceSync_Oversize();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v88 = 2114;
    v89 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Installed media metrics changed - media metrics dict %{public}@", buf, 0x16u);
  }

  if (v8)
  {
    v10 = [v8 objectForKey:@"KeepLocalAssetByteCountForSyncSettings"];
    unsignedLongLongValue = [v10 unsignedLongLongValue];
    v11 = [v8 objectForKey:@"DownloadedAssetByteCountForSyncSettings"];
    unsignedLongLongValue2 = [v11 unsignedLongLongValue];

    v12 = [v8 objectForKey:@"DetailedRequestInfoByAssetType"];
    v13 = [v8 objectForKey:@"DetailedDownloadInfoByAssetType"];
    v62 = v12;
    v58 = v8;
    v61 = v13;
    if ([v12 count] || objc_msgSend(v13, "count"))
    {
      v56 = linkCopy;
      v57 = changedCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
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
            unsignedLongLongValue3 = [v21 unsignedLongLongValue];

            v23 = [v20 objectForKey:@"TotalAssetsToSync"];
            unsignedLongLongValue4 = [v23 unsignedLongLongValue];

            v25 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v19 assetCountToSync:unsignedLongLongValue4 byteCountToSync:unsignedLongLongValue2 + unsignedLongLongValue assetCountSynced:unsignedLongLongValue4 byteCountSyned:unsignedLongLongValue3];
            [dictionary setObject:v25 forKey:v19];
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
            unsignedLongLongValue5 = [v32 unsignedLongLongValue];

            v34 = [v31 objectForKey:@"TotalAssetsToSync"];
            unsignedLongLongValue6 = [v34 unsignedLongLongValue];

            v36 = [v31 objectForKey:@"TotalBytesSynced"];
            unsignedLongLongValue7 = [v36 unsignedLongLongValue];

            v38 = [dictionary objectForKey:v30];
            if (v38)
            {
              v39 = v38;
              [(ATDetailedProgressInfoForAssetType *)v38 updateAssetsToDownload:unsignedLongLongValue6];
              [(ATDetailedProgressInfoForAssetType *)v39 updateBytesDownloaded:unsignedLongLongValue7];
              [(ATDetailedProgressInfoForAssetType *)v39 updateBytesToDownload:unsignedLongLongValue5];
            }

            else
            {
              v39 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v30 assetCountToSync:unsignedLongLongValue6 byteCountToSync:unsignedLongLongValue2 + unsignedLongLongValue assetCountSynced:0 byteCountSyned:unsignedLongLongValue7];
              [dictionary setObject:v39 forKey:v30];
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
      allKeys = [dictionary allKeys];
      v41 = [allKeys countByEnumeratingWithState:&v66 objects:v82 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v45 = *(*(&v66 + 1) + 8 * k);
            syncProgresByAssetType = self->_syncProgresByAssetType;
            v47 = [dictionary objectForKey:v45];
            [(NSMutableDictionary *)syncProgresByAssetType setObject:v47 forKey:v45];
          }

          v42 = [allKeys countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v42);
      }

      linkCopy = v56;
      changedCopy = v57;
    }

    else
    {
      dictionary = [(NSMutableDictionary *)self->_syncProgresByAssetType allKeys];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v49 = [dictionary countByEnumeratingWithState:&v78 objects:v85 count:16];
      if (!v49)
      {
        goto LABEL_32;
      }

      v50 = v49;
      v51 = linkCopy;
      v52 = *v79;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v79 != v52)
          {
            objc_enumerationMutation(dictionary);
          }

          v54 = *(*(&v78 + 1) + 8 * m);
          v55 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v54 assetCountToSync:0 byteCountToSync:0];
          [(NSMutableDictionary *)self->_syncProgresByAssetType setObject:v55 forKey:v54];
        }

        v50 = [dictionary countByEnumeratingWithState:&v78 objects:v85 count:16];
      }

      while (v50);
      linkCopy = v51;
    }

    v8 = v58;
    v13 = v61;
LABEL_32:

    [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
  }

  v48 = [changedCopy responseWithError:0 parameters:0];
  [linkCopy sendResponse:v48 withCompletion:0];
}

- (void)_handleUpdateSessionTaskRequest:(id)request onMessageLink:(id)link
{
  v51 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  linkCopy = link;
  parameters = [requestCopy parameters];
  v9 = [parameters objectForKey:@"_TotalItemCount"];

  parameters2 = [requestCopy parameters];
  v11 = [parameters2 objectForKey:@"_CompletedItemCount"];

  parameters3 = [requestCopy parameters];
  v13 = [parameters3 objectForKey:@"SyncedAssetATAssetType"];

  v38 = v13;
  if (v13)
  {
    v35 = v11;
    parameters4 = [requestCopy parameters];
    v15 = [parameters4 objectForKey:@"ATLibraryIdentifierForAsset"];

    parameters5 = [requestCopy parameters];
    v17 = [parameters5 objectForKey:@"AssetDownloadedWithError"];

    parameters6 = [requestCopy parameters];
    v19 = [parameters6 objectForKey:@"AssetProgress"];

    parameters7 = [requestCopy parameters];
    v21 = [parameters7 objectForKey:@"FileSize"];

    if (v19)
    {
      unsignedLongLongValue = [v19 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
    }

    v36 = v9;
    if (v21)
    {
      unsignedLongLongValue2 = [v21 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
    }

    v23 = [(NSMutableDictionary *)self->_syncProgresByAssetType objectForKey:v38];
    v34 = linkCopy;
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
      selfCopy2 = self;
      v41 = 2114;
      v42 = v15;
      v43 = 2114;
      v44 = v38;
      v45 = 1024;
      v46 = v24;
      v47 = 2048;
      v48 = unsignedLongLongValue2;
      v49 = 2048;
      v50 = unsignedLongLongValue;
      _os_log_impl(&dword_223819000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Asset id %{public}@ finished - type:%{public}@, succeeded:%d, fileSize:%llu, deltaBytes:%llu", buf, 0x3Au);
    }

    if (v23)
    {
      [v23 updateAsset:v15 syncedWithSuccess:v24 bytesDownloaded:unsignedLongLongValue];
    }

    v11 = v35;
    v9 = v36;
    linkCopy = v34;
  }

  -[ATDeviceSyncSessionAssetTask updateProgressWithCount:totalItemCount:](self, "updateProgressWithCount:totalItemCount:", [v11 unsignedIntegerValue], objc_msgSend(v9, "unsignedIntegerValue"));
  parameters8 = [requestCopy parameters];
  v27 = [parameters8 objectForKey:@"_DetailedProgress"];
  v28 = [v27 mutableCopy];
  detailedProgress = self->_detailedProgress;
  self->_detailedProgress = v28;

  [(ATDeviceSyncSessionAssetTask *)self _updateProperties];
  v30 = [requestCopy responseWithError:0 parameters:0];
  [linkCopy sendResponse:v30 withCompletion:0];

  if (v9 == v11)
  {
    v31 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_223819000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: all downloads complete - waiting for task to finish", buf, 0xCu);
    }

    if (self->_addedTransportUpgradeException)
    {
      messageLink = [(ATDeviceSyncSessionTask *)self messageLink];
      socket = [messageLink socket];
      [socket removeTransportUpgradeException];

      self->_addedTransportUpgradeException = 0;
    }
  }
}

- (void)_handleAssetRequest:(id)request onMessagLink:(id)link
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  linkCopy = link;
  parameters = [requestCopy parameters];
  v9 = [parameters count];

  if (v9)
  {
    v10 = MEMORY[0x277CEA438];
    parameters2 = [requestCopy parameters];
    v12 = [v10 assetWithSerializedAsset:parameters2];

    v13 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy4 = self;
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
        v26 = requestCopy;
        v27 = linkCopy;
        [WeakRetained getDataForAsset:v25 withCompletion:v24];

LABEL_17:
        goto LABEL_18;
      }

      v22 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v30 = 2114;
        v31 = v12;
        _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_ERROR, "%{public}@ - received unsupported upload request for asset %{public}@", buf, 0x16u);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
      v20 = [requestCopy responseWithError:v23 parameters:0];

      v21 = &__block_literal_global_172;
    }

    else
    {
      v17 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        dataclass = [v12 dataclass];
        *buf = 138543618;
        selfCopy4 = self;
        v30 = 2114;
        v31 = dataclass;
        _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_ERROR, "%{public}@ - no client handles asset data class '%{public}@'", buf, 0x16u);
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
      v20 = [requestCopy responseWithError:v19 parameters:0];

      v21 = &__block_literal_global_169_1968;
    }

    [linkCopy sendResponse:v20 withCompletion:v21];

    goto LABEL_17;
  }

  v15 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v30 = 2114;
    v31 = requestCopy;
    _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - Rejecting asset request with no params: %{public}@", buf, 0x16u);
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:23 userInfo:0];
  v12 = [requestCopy responseWithError:v16 parameters:0];

  [linkCopy sendResponse:v12 withCompletion:&__block_literal_global_1964];
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

- (void)_handleEndAssetTaskRequest:(id)request onMessagLink:(id)link
{
  v24 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  requestCopy = request;
  parameters = [requestCopy parameters];
  v9 = [parameters objectForKey:@"_EndAssetTaskError"];
  integerValue = [v9 integerValue];

  if (integerValue && !self->_requestsComplete)
  {
    v15 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v22 = 2048;
      v23 = integerValue;
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
        selfCopy3 = self;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: all asset transfers are completed - finishing task", buf, 0xCu);
      }

      if (integerValue)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:integerValue userInfo:0];
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
        selfCopy3 = self;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: peer is finished - waiting for our assets to complete", buf, 0xCu);
      }
    }
  }

  v16 = [requestCopy responseWithError:0 parameters:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__ATDeviceSyncSessionAssetTask__handleEndAssetTaskRequest_onMessagLink___block_invoke;
  v18[3] = &unk_2784E59D8;
  v18[4] = self;
  v19 = v16;
  v17 = v16;
  [linkCopy sendResponse:v17 withCompletion:v18];
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

- (void)_handleBeginAssetTaskRequest:(id)request onMessagLink:(id)link
{
  v100 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_assetClient);

  if (WeakRetained)
  {
    v59 = linkCopy;
    parameters = [requestCopy parameters];
    v10 = [parameters objectForKey:@"_BeginAssetTaskTotalCount"];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    parameters2 = [requestCopy parameters];
    v13 = [parameters2 objectForKey:@"_BeginAssetTaskDetailedCount"];

    parameters3 = [requestCopy parameters];
    v15 = [parameters3 objectForKey:@"InstalledAssetMetrics"];

    [v15 objectForKey:@"InstalledMediaAssetMetrics"];
    v61 = v60 = requestCopy;
    parameters4 = [requestCopy parameters];
    v17 = [parameters4 objectForKey:@"_BeginAssetTaskTrackByteCount"];
    unsignedLongLongValue = [v17 unsignedLongLongValue];

    v19 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      selfCopy3 = self;
      v86 = 2048;
      v87 = unsignedIntegerValue;
      v88 = 2048;
      v89 = unsignedLongLongValue;
      v90 = 2114;
      v91 = v13;
      v92 = 2114;
      v93 = v15;
      _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: peer is going to request %lu assets, %llu total bytes (for track assets), detailed counts=%{public}@ installedAssetMetrics=%{public}@", buf, 0x34u);
    }

    v57 = unsignedIntegerValue;
    v58 = v15;

    v56 = unsignedLongLongValue;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
    [(ATSessionTask *)self setTotalBytesToTransfer:v20];

    stringValue = [&unk_2836F50C8 stringValue];
    v22 = [v13 objectForKey:stringValue];
    unsignedIntegerValue2 = [v22 unsignedIntegerValue];

    stringValue2 = [&unk_2836F50E0 stringValue];
    v24 = [v13 objectForKey:stringValue2];
    unsignedIntegerValue3 = [v24 unsignedIntegerValue];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v65 = v13;
    obj = [v13 allKeys];
    v25 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
    selfCopy2 = self;
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
          v30 = [v65 objectForKey:{v29, unsignedIntegerValue3}];
          v97[1] = @"CompletedCount";
          v98[0] = v30;
          v98[1] = &unk_2836F50B0;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];

          self = selfCopy2;
          [(NSMutableDictionary *)selfCopy2->_detailedProgress setObject:v31 forKey:v29];
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
      selfCopy3 = self;
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
    allKeys = [v32 allKeys];
    obja = [allKeys countByEnumeratingWithState:&v75 objects:v96 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v36 = *(*(&v75 + 1) + 8 * j);
          v37 = [v32 objectForKey:{v36, unsignedIntegerValue3}];
          v38 = [v66 objectForKey:v36];
          v39 = v38;
          if (v38)
          {
            v40 = [v38 objectForKey:@"TotalAssetsToSync"];
            unsignedLongLongValue2 = [v40 unsignedLongLongValue];

            v42 = [v39 objectForKey:@"TotalBytesToSync"];
            unsignedLongLongValue3 = [v42 unsignedLongLongValue];

            if (v37)
            {
              goto LABEL_20;
            }
          }

          else
          {
            unsignedLongLongValue3 = 0;
            unsignedLongLongValue2 = 0;
            if (v37)
            {
LABEL_20:
              v44 = [v37 objectForKey:@"TotalAssetsToSync"];
              unsignedLongLongValue4 = [v44 unsignedLongLongValue];

              v46 = [v37 objectForKey:@"TotalBytesToSync"];
              unsignedLongLongValue5 = [v46 unsignedLongLongValue];

              goto LABEL_23;
            }
          }

          unsignedLongLongValue5 = 0;
          unsignedLongLongValue4 = 0;
LABEL_23:
          v48 = [[ATDetailedProgressInfoForAssetType alloc] initWithAssetType:v36 assetCountToSync:unsignedLongLongValue4 + unsignedLongLongValue2 byteCountToSync:unsignedLongLongValue5 + unsignedLongLongValue3 assetCountSynced:unsignedLongLongValue2 byteCountSyned:unsignedLongLongValue3];
          [(NSMutableDictionary *)selfCopy2->_syncProgresByAssetType setObject:v48 forKey:v36];
          v49 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544642;
            selfCopy3 = selfCopy2;
            v86 = 2114;
            v87 = v36;
            v88 = 2048;
            v89 = unsignedLongLongValue2;
            v90 = 2048;
            v91 = unsignedLongLongValue3;
            v92 = 2048;
            v93 = unsignedLongLongValue4;
            v94 = 2048;
            v95 = unsignedLongLongValue5;
            _os_log_impl(&dword_223819000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: asset type %{public}@ downloaded asset count %llu, downloaded byte count %llu, asset count to download %llu byte count to download %llu", buf, 0x3Eu);
          }

          v32 = v64;
        }

        obja = [allKeys countByEnumeratingWithState:&v75 objects:v96 count:16];
      }

      while (obja);
    }

    [(ATDeviceSyncSessionAssetTask *)selfCopy2 _updateProperties];
    [(ATSessionTask *)selfCopy2 setTotalItemCount:[(ATSessionTask *)selfCopy2 totalItemCount]+ v57];
    requestCopy = v60;
    v50 = [v60 responseWithError:0 parameters:0];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __74__ATDeviceSyncSessionAssetTask__handleBeginAssetTaskRequest_onMessagLink___block_invoke_162;
    v70[3] = &unk_2784E4C68;
    v70[4] = selfCopy2;
    v71 = v50;
    v72 = unsignedIntegerValue2;
    v73 = unsignedIntegerValue3;
    v74 = v56;
    v51 = v50;
    linkCopy = v59;
    [v59 sendResponse:v51 withCompletion:v70];

    v52 = v65;
    v53 = v58;
  }

  else
  {
    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
    v53 = [requestCopy responseWithError:v52 parameters:0];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __74__ATDeviceSyncSessionAssetTask__handleBeginAssetTaskRequest_onMessagLink___block_invoke;
    v83[3] = &unk_2784E58E8;
    v83[4] = self;
    [linkCopy sendResponse:v53 withCompletion:v83];
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

- (void)_handleUpdatedAsset:(id)asset
{
  assetCopy = asset;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ATDeviceSyncSessionAssetTask__handleUpdatedAsset___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
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

- (void)_handleFinishedAsset:(id)asset
{
  assetCopy = asset;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATDeviceSyncSessionAssetTask__handleFinishedAsset___block_invoke;
  block[3] = &unk_2784E5960;
  block[4] = self;
  v6 = assetCopy;
  v12 = v6;
  dispatch_sync(queue, block);

  queue2 = [(ATDeviceSyncSessionTask *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ATDeviceSyncSessionAssetTask__handleFinishedAsset___block_invoke_2;
  v9[3] = &unk_2784E5960;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue2, v9);
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

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  linkCopy = link;
  requestCopy = request;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ATDeviceSyncSessionAssetTask_messageLink_didReceiveRequest___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = requestCopy;
  selfCopy = self;
  v14 = linkCopy;
  v9 = linkCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
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

- (void)updateProgressWithCount:(unint64_t)count totalItemCount:(unint64_t)itemCount
{
  [(ATSessionTask *)self setCompletedItemCount:count];
  [(ATSessionTask *)self setTotalItemCount:itemCount];
  totalBytesToTransfer = [(ATSessionTask *)self totalBytesToTransfer];
  if ([totalBytesToTransfer unsignedLongLongValue])
  {
    totalBytesTransferred = [(ATSessionTask *)self totalBytesTransferred];
    unsignedLongLongValue = [totalBytesTransferred unsignedLongLongValue];
    totalBytesToTransfer2 = [(ATSessionTask *)self totalBytesToTransfer];
    -[ATSessionTask setProgress:](self, "setProgress:", unsignedLongLongValue / [totalBytesToTransfer2 unsignedLongLongValue]);
  }

  else
  {
    [(ATSessionTask *)self setProgress:0.0];
  }
}

- (void)cancel
{
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ATDeviceSyncSessionAssetTask_cancel__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
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
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATDeviceSyncSessionAssetTask_start__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
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

- (ATDeviceSyncSessionAssetTask)initWithDataClass:(id)class onMessageLink:(id)link
{
  v44 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = ATDeviceSyncSessionAssetTask;
  v4 = [(ATDeviceSyncSessionTask *)&v42 initWithDataClass:class onMessageLink:link];
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

    array = [MEMORY[0x277CBEB18] array];
    finishedAssets = v4->_finishedAssets;
    v4->_finishedAssets = array;

    mEMORY[0x277CE53F0] = [MEMORY[0x277CE53F0] sharedInstance];
    assetController = v4->_assetController;
    v4->_assetController = mEMORY[0x277CE53F0];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    detailedProgress = v4->_detailedProgress;
    v4->_detailedProgress = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    syncProgresByAssetType = v4->_syncProgresByAssetType;
    v4->_syncProgresByAssetType = dictionary2;

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

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    assetToBytesMap = v4->_assetToBytesMap;
    v4->_assetToBytesMap = weakToStrongObjectsMapTable;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = +[ATClientController sharedInstance];
    allClients = [v27 allClients];

    v29 = [allClients countByEnumeratingWithState:&v38 objects:v43 count:16];
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
            objc_enumerationMutation(allClients);
          }

          v33 = *(*(&v38 + 1) + 8 * i);
          if ([v33 conformsToProtocol:&unk_2837091E8])
          {
            assetDataClass = [v33 assetDataClass];
            dataClass = [(ATSessionTask *)v4 dataClass];
            v36 = [assetDataClass isEqualToString:dataClass];

            if (v36)
            {
              objc_storeWeak(&v4->_assetClient, v33);
              goto LABEL_13;
            }
          }
        }

        v30 = [allClients countByEnumeratingWithState:&v38 objects:v43 count:16];
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