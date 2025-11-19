@interface MTRDeviceControllerDataStore
- (BOOL)_bulkStoreAttributeCacheValues:(id)a3;
- (BOOL)_deleteClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5;
- (BOOL)_deleteClusterIndexForNodeID:(id)a3 endpointID:(id)a4;
- (BOOL)_deleteEndpointIndexForNodeID:(id)a3;
- (BOOL)_deleteNodeIndex;
- (BOOL)_removeAttributeCacheValueForKey:(id)a3;
- (BOOL)_removeEndpointFromEndpointIndex:(id)a3 forNodeID:(id)a4;
- (BOOL)_storeAttributeCacheValue:(id)a3 forKey:(id)a4;
- (BOOL)_storeClusterData:(id)a3 forNodeID:(id)a4 endpointID:(id)a5 clusterID:(id)a6;
- (BOOL)_storeClusterIndex:(id)a3 forNodeID:(id)a4 endpointID:(id)a5;
- (BOOL)_storeEndpointIndex:(id)a3 forNodeID:(id)a4;
- (BOOL)_storeNodeIndex:(id)a3;
- (ChipError)storeLastLocallyUsedNOC:(id)a3;
- (MTRDeviceControllerDataStore)initWithController:(id)a3 storageDelegate:(id)a4 storageDelegateQueue:(id)a5;
- (NSArray)nodesWithStoredData;
- (id)_clusterDataKeyForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5;
- (id)_clusterIndexKeyForNodeID:(id)a3 endpointID:(id)a4;
- (id)_deviceDataKeyForNodeID:(id)a3;
- (id)_endpointIndexKeyForNodeID:(id)a3;
- (id)_fetchAttributeCacheValueForKey:(id)a3 expectedClass:(Class)a4;
- (id)_fetchClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5;
- (id)_fetchClusterIndexForNodeID:(id)a3 endpointID:(id)a4;
- (id)_fetchEndpointIndexForNodeID:(id)a3;
- (id)_fetchNodeIndex;
- (id)_findResumptionInfoWithKey:(id)a3;
- (id)_getClusterDataFromSecureLocalValues:(id)a3;
- (id)fetchLastLocallyUsedNOC;
- (id)findResumptionInfoByNodeID:(id)a3;
- (id)findResumptionInfoByResumptionID:(id)a3;
- (id)getStoredClusterDataForNodeID:(id)a3;
- (id)getStoredClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5;
- (id)getStoredDeviceDataForNodeID:(id)a3;
- (void)_clearResumptionInfoForNodeID:(id)a3 controller:(id)a4;
- (void)_clearStoredClusterDataForNodeID:(id)a3;
- (void)_pruneEmptyStoredClusterDataBranches;
- (void)clearAllResumptionInfo;
- (void)clearAllStoredClusterData;
- (void)clearDeviceDataForNodeID:(id)a3;
- (void)clearResumptionInfoForNodeID:(id)a3;
- (void)clearStoredClusterDataForNodeID:(id)a3;
- (void)clearStoredClusterDataForNodeID:(id)a3 endpointID:(id)a4;
- (void)clearStoredClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5;
- (void)fetchAttributeDataForAllDevices:(id)a3;
- (void)removeAttributes:(id)a3 fromCluster:(id)a4 forNodeID:(id)a5;
- (void)storeClusterData:(id)a3 forNodeID:(id)a4;
- (void)storeDeviceData:(id)a3 forNodeID:(id)a4;
- (void)storeResumptionInfo:(id)a3;
- (void)synchronouslyPerformBlock:(id)a3;
@end

@implementation MTRDeviceControllerDataStore

- (MTRDeviceControllerDataStore)initWithController:(id)a3 storageDelegate:(id)a4 storageDelegateQueue:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v56.receiver = self;
  v56.super_class = MTRDeviceControllerDataStore;
  v11 = [(MTRDeviceControllerDataStore *)&v56 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_controller, v8);
    objc_storeStrong(&v12->_storageDelegate, a4);
    objc_storeStrong(&v12->_storageDelegateQueue, a5);
    v12->_nodeArrayLock._os_unfair_lock_opaque = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_23920B1E0;
    v54 = sub_23920B1F0;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_23920B1E0;
    v48 = sub_23920B1F0;
    v49 = 0;
    v13 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = v12->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920B1F8;
    block[3] = &unk_278A73AA0;
    v42 = &v50;
    v15 = v12;
    v40 = v15;
    v41 = v8;
    v43 = &v44;
    dispatch_sync(storageDelegateQueue, block);
    [v13 timeIntervalSinceNow];
    if (v16 < -2.0)
    {
      v17 = -v16;
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v59 = v17;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore init took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    if (v51[5])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = sub_2393D9044(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "List of CASE resumption node IDs is not an array", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

LABEL_31:
        v25 = 0;
        goto LABEL_34;
      }

      v34 = v9;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v51[5];
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v57 count:16];
      if (v20)
      {
        v21 = *v36;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v36 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v35 + 1) + 8 * i);
            if (!sub_23920B288(v23))
            {
              v30 = sub_2393D9044(0);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v59 = *&v23;
                _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Resumption node ID contains invalid value: %@", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1);
              }

              v9 = v34;
              goto LABEL_31;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v35 objects:v57 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v9 = v34;
      v24 = [v51[5] mutableCopy];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    nodesWithResumptionInfo = v15->_nodesWithResumptionInfo;
    v15->_nodesWithResumptionInfo = v24;

    v27 = v45[5];
    if (v27)
    {
      v28 = [v27 mutableCopy];
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    nodesWithAttributeInfo = v15->_nodesWithAttributeInfo;
    v15->_nodesWithAttributeInfo = v28;

    v25 = v15;
LABEL_34:

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);

    goto LABEL_35;
  }

  v25 = 0;
LABEL_35:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)fetchAttributeDataForAllDevices:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_23920B1E0;
  v25 = sub_23920B1F0;
  v26 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_23920B56C;
    v17 = &unk_278A722F8;
    v18 = self;
    v20 = &v21;
    v19 = WeakRetained;
    dispatch_sync(storageDelegateQueue, &block);
    [v6 timeIntervalSinceNow];
    if (v8 < -2.0)
    {
      v9 = -v8;
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v28 = v9;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore fetchAttributeDataForAllDevices took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v13 = v9;
        sub_2393D5320(0, 1);
      }
    }

    if ([v22[5] count])
    {
      v11 = [(MTRDeviceControllerDataStore *)self _getClusterDataFromSecureLocalValues:v22[5]];
      v4[2](v4, v11);
    }
  }

  _Block_object_dispose(&v21, 8);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)findResumptionInfoByNodeID:(id)a3
{
  v4 = sub_23920B654(a3);
  v5 = [(MTRDeviceControllerDataStore *)self _findResumptionInfoWithKey:v4];

  return v5;
}

- (id)findResumptionInfoByResumptionID:(id)a3
{
  v4 = sub_23920B73C(a3);
  v5 = [(MTRDeviceControllerDataStore *)self _findResumptionInfoWithKey:v4];

  return v5;
}

- (void)storeResumptionInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [v4 nodeID];
    v7 = [(MTRDeviceControllerDataStore *)self findResumptionInfoByNodeID:v6];

    v8 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920BA04;
    block[3] = &unk_278A73AC8;
    v10 = v7;
    v16 = v10;
    v17 = self;
    v18 = WeakRetained;
    v19 = v4;
    dispatch_sync(storageDelegateQueue, block);
    [v8 timeIntervalSinceNow];
    if (v11 < -2.0)
    {
      v12 = -v11;
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = v12;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore storeResumptionInfo took %0.6lf seconds to store to storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clearAllResumptionInfo
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    os_unfair_lock_lock(&self->_nodeArrayLock);
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_nodesWithResumptionInfo;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [(MTRDeviceControllerDataStore *)self _clearResumptionInfoForNodeID:*(*(&v9 + 1) + 8 * v7++) controller:WeakRetained, v9];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_nodesWithResumptionInfo removeAllObjects];
    os_unfair_lock_unlock(&self->_nodeArrayLock);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearResumptionInfoForNodeID:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    [(MTRDeviceControllerDataStore *)self _clearResumptionInfoForNodeID:v5 controller:WeakRetained];
    os_unfair_lock_lock(&self->_nodeArrayLock);
    [(NSMutableArray *)self->_nodesWithResumptionInfo removeObject:v5];
    os_unfair_lock_unlock(&self->_nodeArrayLock);
  }
}

- (void)_clearResumptionInfoForNodeID:(id)a3 controller:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRDeviceControllerDataStore *)self findResumptionInfoByNodeID:v6];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C04C;
    block[3] = &unk_278A71650;
    block[4] = self;
    v16 = v7;
    v17 = v8;
    dispatch_sync(storageDelegateQueue, block);
    [v9 timeIntervalSinceNow];
    if (v11 < -2.0)
    {
      v12 = -v11;
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = v12;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore _clearResumptionInfoForNodeID took %0.6lf seconds to remove from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (ChipError)storeLastLocallyUsedNOC:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerDataStore.mm";
  if (WeakRetained)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v7 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C398;
    block[3] = &unk_278A73AF0;
    v21 = &v22;
    block[4] = self;
    v19 = WeakRetained;
    v20 = v4;
    dispatch_sync(storageDelegateQueue, block);
    [v7 timeIntervalSinceNow];
    if (v9 < -2.0)
    {
      v10 = -v9;
      v11 = sub_2393D9044(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v27 = v10;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore storeLastLocallyUsedNOC took %0.6lf seconds to store to storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    v12 = *(v23 + 24);
    if (*(v23 + 24))
    {
      v6 = 0;
    }

    _Block_object_dispose(&v22, 8);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x14B00000000;
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 159;
    }
  }

  else
  {
    v13 = 0x13C00000000;
    v14 = 159;
  }

  v15 = *MEMORY[0x277D85DE8];
  v16 = v14 | v13;
  v17 = v6;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)fetchLastLocallyUsedNOC
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_23920B1E0;
    v19 = sub_23920B1F0;
    v20 = 0;
    v4 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C65C;
    block[3] = &unk_278A73B18;
    v14 = &v15;
    block[4] = self;
    v13 = WeakRetained;
    dispatch_sync(storageDelegateQueue, block);
    [v4 timeIntervalSinceNow];
    if (v6 < -2.0)
    {
      v7 = -v6;
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = v7;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore fetchLastLocallyUsedNOC took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    v9 = v16[5];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v16[5];
      }

      else
      {
        v9 = 0;
      }
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_findResumptionInfoWithKey:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = WeakRetained;
  v7 = 0;
  if (v4 && WeakRetained)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_23920B1E0;
    v23 = sub_23920B1F0;
    v24 = 0;
    v8 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C96C;
    block[3] = &unk_278A73AF0;
    v18 = &v19;
    block[4] = self;
    v16 = v6;
    v17 = v4;
    dispatch_sync(storageDelegateQueue, block);
    [v8 timeIntervalSinceNow];
    if (v10 < -2.0)
    {
      v11 = -v10;
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v26 = v11;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore _findResumptionInfoWithKey took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    v7 = v20[5];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v20[5];
      }

      else
      {
        v7 = 0;
      }
    }

    _Block_object_dispose(&v19, 8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_fetchAttributeCacheValueForKey:(id)a3 expectedClass:(Class)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained valueForKey:v5 securityLevel:0 sharingType:0];
    objc_autoreleasePoolPop(v7);
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_storeAttributeCacheValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v9 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained storeValue:v6 forKey:v7 securityLevel:0 sharingType:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_bulkStoreAttributeCacheValues:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained storeValues:v4 securityLevel:0 sharingType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_removeAttributeCacheValueForKey:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained removeValueForKey:v4 securityLevel:0 sharingType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fetchNodeIndex
{
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  v3 = objc_opt_class();

  return [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:@"attrCacheNodeIndex" expectedClass:v3];
}

- (BOOL)_storeNodeIndex:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  LOBYTE(self) = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:v4 forKey:@"attrCacheNodeIndex"];

  return self;
}

- (BOOL)_deleteNodeIndex
{
  dispatch_assert_queue_V2(self->_storageDelegateQueue);

  return [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:@"attrCacheNodeIndex"];
}

- (id)_endpointIndexKeyForNodeID:(id)a3
{
  v3 = a3;
  v4 = [@"attrCacheEndpointIndex" stringByAppendingFormat:@":0x%016llX", objc_msgSend(v3, "unsignedLongLongValue")];

  return v4;
}

- (id)_fetchEndpointIndexForNodeID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v4)
  {
    v5 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:v4];
    v6 = [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:v5 expectedClass:objc_opt_class()];
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[MTRDeviceControllerDataStore _fetchEndpointIndexForNodeID:]";
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_storeEndpointIndex:(id)a3 forNodeID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v7)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:v7];
    v9 = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:v6 forKey:v8];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[MTRDeviceControllerDataStore _storeEndpointIndex:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_removeEndpointFromEndpointIndex:(id)a3 forNodeID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v6 && v7)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _fetchEndpointIndexForNodeID:v7];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      [v9 removeObject:v6];
      v10 = [(MTRDeviceControllerDataStore *)self _storeEndpointIndex:v9 forNodeID:v7];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[MTRDeviceControllerDataStore _removeEndpointFromEndpointIndex:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_deleteEndpointIndexForNodeID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v4)
  {
    v5 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:v4];
    v6 = [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:v5];
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[MTRDeviceControllerDataStore _deleteEndpointIndexForNodeID:]";
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_clusterIndexKeyForNodeID:(id)a3 endpointID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [@"attrCacheClusterIndex" stringByAppendingFormat:@":0x%016llX:0x%04X", objc_msgSend(v5, "unsignedLongLongValue"), objc_msgSend(v6, "unsignedShortValue")];

  return v7;
}

- (id)_fetchClusterIndexForNodeID:(id)a3 endpointID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v6 && v7)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:v6 endpointID:v7];
    v9 = [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:v8 expectedClass:objc_opt_class()];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[MTRDeviceControllerDataStore _fetchClusterIndexForNodeID:endpointID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_storeClusterIndex:(id)a3 forNodeID:(id)a4 endpointID:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v9 && v10)
  {
    v11 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:v9 endpointID:v10];
    v12 = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:v8 forKey:v11];
  }

  else
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[MTRDeviceControllerDataStore _storeClusterIndex:forNodeID:endpointID:]";
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_deleteClusterIndexForNodeID:(id)a3 endpointID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v6 && v7)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:v6 endpointID:v7];
    v9 = [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:v8];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[MTRDeviceControllerDataStore _deleteClusterIndexForNodeID:endpointID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_clusterDataKeyForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [@"attrCacheClusterData" stringByAppendingFormat:@":0x%016llX:0x%04X:0x%08lX", objc_msgSend(v7, "unsignedLongLongValue"), objc_msgSend(v8, "unsignedShortValue"), objc_msgSend(v9, "unsignedLongValue")];

  return v10;
}

- (id)_fetchClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v8 && v9 && v10)
  {
    v11 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:v8 endpointID:v9 clusterID:v10];
    v12 = [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:v11 expectedClass:objc_opt_class()];
  }

  else
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[MTRDeviceControllerDataStore _fetchClusterDataForNodeID:endpointID:clusterID:]";
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_storeClusterData:(id)a3 forNodeID:(id)a4 endpointID:(id)a5 clusterID:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v10 && v11 && v12 && v13)
  {
    v14 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:v11 endpointID:v12 clusterID:v13];
    v15 = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:v10 forKey:v14];
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[MTRDeviceControllerDataStore _storeClusterData:forNodeID:endpointID:clusterID:]";
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_deleteClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (v8 && v9 && v10)
  {
    v11 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:v8 endpointID:v9 clusterID:v10];
    v12 = [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:v11];
  }

  else
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[MTRDeviceControllerDataStore _deleteClusterDataForNodeID:endpointID:clusterID:]";
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_pruneEmptyStoredClusterDataBranches
{
  v67 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  os_unfair_lock_lock(&self->_nodeArrayLock);
  v3 = [(NSMutableArray *)self->_nodesWithAttributeInfo copy];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
  v35 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v35)
  {
    v40 = 0;
    v36 = *v55;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v54 + 1) + 8 * i);
        v34 = [(MTRDeviceControllerDataStore *)self _fetchEndpointIndexForNodeID:v4, v31];
        v39 = [v34 mutableCopy];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v41 = v34;
        v44 = [v41 countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (v44)
        {
          v43 = *v51;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v51 != v43)
              {
                objc_enumerationMutation(v41);
              }

              v5 = *(*(&v50 + 1) + 8 * j);
              v42 = [(MTRDeviceControllerDataStore *)self _fetchClusterIndexForNodeID:v4 endpointID:v5, v31, v32, v33];
              v6 = [v42 mutableCopy];
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v7 = v42;
              v8 = [v7 countByEnumeratingWithState:&v46 objects:v64 count:16];
              if (v8)
              {
                v9 = *v47;
                do
                {
                  for (k = 0; k != v8; ++k)
                  {
                    if (*v47 != v9)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v11 = *(*(&v46 + 1) + 8 * k);
                    v12 = [(MTRDeviceControllerDataStore *)self _fetchClusterDataForNodeID:v4 endpointID:v5 clusterID:v11];
                    if (!v12)
                    {
                      [v6 removeObject:v11];
                    }
                  }

                  v8 = [v7 countByEnumeratingWithState:&v46 objects:v64 count:16];
                }

                while (v8);
              }

              v13 = [v7 count];
              if (v13 != [v6 count])
              {
                if ([v6 count])
                {
                  v14 = [(MTRDeviceControllerDataStore *)self _storeClusterIndex:v6 forNodeID:v4 endpointID:v5];
                }

                else
                {
                  [v39 removeObject:v5];
                  v14 = [(MTRDeviceControllerDataStore *)self _deleteClusterIndexForNodeID:v4 endpointID:v5];
                }

                if (!v14)
                {
                  v15 = sub_2393D9044(0);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    v16 = [v6 count];
                    v17 = [v4 unsignedLongLongValue];
                    v18 = [v5 unsignedShortValue];
                    *buf = 134218496;
                    v59 = v16;
                    v60 = 2048;
                    v61 = v17;
                    v62 = 1024;
                    v63 = v18;
                    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches for clusterIndex (%lu) @ node 0x%016llX endpoint %u", buf, 0x1Cu);
                  }

                  ++v40;
                  if (sub_2393D5398(1u))
                  {
                    v19 = [v6 count];
                    v32 = [v4 unsignedLongLongValue];
                    v33 = [v5 unsignedShortValue];
                    v31 = v19;
                    sub_2393D5320(0, 1);
                  }
                }
              }
            }

            v44 = [v41 countByEnumeratingWithState:&v50 objects:v65 count:16];
          }

          while (v44);
        }

        v20 = [v41 count];
        if (v20 != [v39 count])
        {
          if ([v39 count])
          {
            v21 = [(MTRDeviceControllerDataStore *)self _storeEndpointIndex:v39 forNodeID:v4];
          }

          else
          {
            [(NSMutableArray *)self->_nodesWithAttributeInfo removeObject:v4];
            v21 = [(MTRDeviceControllerDataStore *)self _deleteEndpointIndexForNodeID:v4];
          }

          if (!v21)
          {
            v22 = sub_2393D9044(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v39 count];
              v24 = [v4 unsignedLongLongValue];
              *buf = 134218240;
              v59 = v23;
              v60 = 2048;
              v61 = v24;
              _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches for endpointIndex (%lu) @ node 0x%016llX", buf, 0x16u);
            }

            ++v40;
            if (sub_2393D5398(1u))
            {
              v31 = [v39 count];
              v32 = [v4 unsignedLongLongValue];
              sub_2393D5320(0, 1);
            }
          }
        }
      }

      v35 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v35);
  }

  else
  {
    v40 = 0;
  }

  v25 = [obj count];
  if (v25 != [(NSMutableArray *)self->_nodesWithAttributeInfo count]&& !([(NSMutableArray *)self->_nodesWithAttributeInfo count]? [(MTRDeviceControllerDataStore *)self _storeNodeIndex:self->_nodesWithAttributeInfo]: [(MTRDeviceControllerDataStore *)self _deleteNodeIndex]))
  {
    v27 = sub_2393D9044(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(NSMutableArray *)self->_nodesWithAttributeInfo count];
      *buf = 134217984;
      v59 = v28;
      _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches for nodeIndex (%lu)", buf, 0xCu);
    }

    ++v40;
    if (sub_2393D5398(1u))
    {
      [(NSMutableArray *)self->_nodesWithAttributeInfo count];
      sub_2393D5320(0, 1);
    }
  }

  if (v40)
  {
    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v59 = v40;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches: failure count %lu", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(&self->_nodeArrayLock);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)_clearStoredClusterDataForNodeID:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  v33 = [(MTRDeviceControllerDataStore *)self _fetchEndpointIndexForNodeID:v4];
  v34 = [v33 count];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v33;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v6)
  {
    v7 = 0;
    v37 = *v50;
    v38 = 0;
    do
    {
      v8 = 0;
      v39 = v6;
      do
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v49 + 1) + 8 * v8);
        v36 = [(MTRDeviceControllerDataStore *)self _fetchClusterIndexForNodeID:v4 endpointID:v30, v31, v32];
        v40 = [v36 count];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = v36;
        v9 = [v43 countByEnumeratingWithState:&v45 objects:v59 count:16];
        v41 = v8;
        v42 = v7;
        v10 = self;
        if (v9)
        {
          v11 = *v46;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v46 != v11)
              {
                objc_enumerationMutation(v43);
              }

              v13 = *(*(&v45 + 1) + 8 * i);
              if ([(MTRDeviceControllerDataStore *)v10 _deleteClusterDataForNodeID:v4 endpointID:v44 clusterID:v13, v30])
              {
                ++v5;
              }

              else
              {
                v14 = sub_2393D9044(0);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v15 = v4;
                  v16 = v5;
                  v17 = v15;
                  v18 = [v15 unsignedLongLongValue];
                  v19 = [v44 unsignedShortValue];
                  v20 = [v13 unsignedLongValue];
                  *buf = 134218496;
                  v54 = v18;
                  v55 = 1024;
                  *v56 = v19;
                  *&v56[4] = 2048;
                  *&v56[6] = v20;
                  _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Delete failed for clusterData @ node 0x%016llX endpoint %u cluster 0x%08lX", buf, 0x1Cu);
                  v5 = v16;
                  v4 = v17;
                }

                if (sub_2393D5398(1u))
                {
                  v21 = [v4 unsignedLongLongValue];
                  v31 = [v44 unsignedShortValue];
                  v32 = [v13 unsignedLongValue];
                  v30 = v21;
                  sub_2393D5320(0, 1);
                }
              }
            }

            v9 = [v43 countByEnumeratingWithState:&v45 objects:v59 count:16];
          }

          while (v9);
        }

        self = v10;
        if ([(MTRDeviceControllerDataStore *)v10 _deleteClusterIndexForNodeID:v4 endpointID:v44])
        {
          ++v38;
        }

        else
        {
          v22 = sub_2393D9044(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v4 unsignedLongLongValue];
            v24 = [v44 unsignedShortValue];
            *buf = 134218240;
            v54 = v23;
            v55 = 1024;
            *v56 = v24;
            _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Delete failed for clusterIndex @ node 0x%016llX endpoint %u", buf, 0x12u);
          }

          if (sub_2393D5398(1u))
          {
            v30 = [v4 unsignedLongLongValue];
            v31 = [v44 unsignedShortValue];
            sub_2393D5320(0, 1);
          }
        }

        v7 = v40 + v42;
        v8 = v41 + 1;
      }

      while (v41 + 1 != v39);
      v6 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v6);
  }

  else
  {
    v38 = 0;
    v7 = 0;
  }

  v25 = [(MTRDeviceControllerDataStore *)self _deleteEndpointIndexForNodeID:v4];
  v26 = sub_2393D9044(0);
  v27 = v26;
  if (!v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = [v4 unsignedLongLongValue];
      *buf = 134217984;
      v54 = v28;
      _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Delete failed for endpointIndex @ node 0x%016llX", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      [v4 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v54 = v38;
    v55 = 2048;
    *v56 = v34;
    *&v56[8] = 2048;
    *&v56[10] = v5;
    v57 = 2048;
    v58 = v7;
    _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "clearStoredClusterDataForNodeID: deleted endpoints %lu/%lu clusters %lu/%lu", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)clearStoredClusterDataForNodeID:(id)a3
{
  v4 = a3;
  storageDelegateQueue = self->_storageDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23920EC4C;
  v7[3] = &unk_278A72298;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(storageDelegateQueue, v7);
}

- (void)clearStoredClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  storageDelegateQueue = self->_storageDelegateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23920EEAC;
  v15[3] = &unk_278A73AC8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(storageDelegateQueue, v15);
}

- (void)clearStoredClusterDataForNodeID:(id)a3 endpointID:(id)a4
{
  v6 = a3;
  v7 = a4;
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23920F2AC;
  block[3] = &unk_278A71650;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(storageDelegateQueue, block);
}

- (void)removeAttributes:(id)a3 fromCluster:(id)a4 forNodeID:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 endpoint];
  v12 = [v9 cluster];
  v13 = [(MTRDeviceControllerDataStore *)self getStoredClusterDataForNodeID:v10 endpointID:v11 clusterID:v12];

  if (v13)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [v13 removeValueForAttribute:*(*(&v25 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920F948;
    block[3] = &unk_278A723D0;
    block[4] = self;
    v21 = v13;
    v22 = v10;
    v23 = v9;
    v24 = v14;
    dispatch_async(storageDelegateQueue, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clearAllStoredClusterData
{
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23920FCBC;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(storageDelegateQueue, block);
}

- (id)getStoredClusterDataForNodeID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    *&v19 = 0;
    *(&v19 + 1) = &v19;
    v20 = 0x3032000000;
    v21 = sub_23920B1E0;
    v22 = sub_23920B1F0;
    v23 = 0;
    v5 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239210140;
    block[3] = &unk_278A73B40;
    block[4] = self;
    v15 = v4;
    v16 = &v19;
    dispatch_sync(storageDelegateQueue, block);
    [v5 timeIntervalSinceNow];
    if (v7 < -2.0)
    {
      v8 = -v7;
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v18 = v8;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore getStoredClusterDataForNodeID took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    v10 = *(*(&v19 + 1) + 40);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 136315138;
      *(&v19 + 4) = "[MTRDeviceControllerDataStore getStoredClusterDataForNodeID:]";
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", &v19, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getStoredClusterDataForNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_23920B1E0;
  v31 = sub_23920B1F0;
  v32 = 0;
  v11 = [MEMORY[0x277CBEAA8] now];
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239210928;
  block[3] = &unk_278A73B68;
  v26 = &v27;
  block[4] = self;
  v13 = v8;
  v23 = v13;
  v14 = v9;
  v24 = v14;
  v15 = v10;
  v25 = v15;
  dispatch_sync(storageDelegateQueue, block);
  [v11 timeIntervalSinceNow];
  if (v16 < -2.0)
  {
    v17 = -v16;
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v34 = v17;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore getStoredClusterDataForNodeID took %0.6lf seconds to read from storage", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v19 = v28[5];

  _Block_object_dispose(&v27, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_getClusterDataFromSecureLocalValues:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v34 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v34 objectForKeyedSubscript:@"attrCacheNodeIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v23;
      v25 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v25)
      {
        v21 = 0;
        v24 = *v44;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v3 = *(*(&v43 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:v3];
              v26 = [v34 objectForKeyedSubscript:v4];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                v28 = v26;
                v5 = [v28 countByEnumeratingWithState:&v39 objects:v48 count:16];
                if (v5)
                {
                  v6 = 0;
                  v29 = *v40;
                  v30 = v5;
                  do
                  {
                    for (j = 0; j != v30; ++j)
                    {
                      if (*v40 != v29)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v7 = *(*(&v39 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v8 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:v3 endpointID:v7];
                        v31 = [v34 objectForKeyedSubscript:v8];

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v37 = 0u;
                          v38 = 0u;
                          v35 = 0u;
                          v36 = 0u;
                          v9 = v31;
                          v10 = [v9 countByEnumeratingWithState:&v35 objects:v47 count:16];
                          if (v10)
                          {
                            v11 = *v36;
                            do
                            {
                              for (k = 0; k != v10; ++k)
                              {
                                if (*v36 != v11)
                                {
                                  objc_enumerationMutation(v9);
                                }

                                v13 = *(*(&v35 + 1) + 8 * k);
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v14 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:v3 endpointID:v7 clusterID:v13];
                                  v15 = [v34 objectForKeyedSubscript:v14];

                                  if (v15)
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v16 = [MTRClusterPath clusterPathWithEndpointID:v7 clusterID:v13];
                                      if (!v6)
                                      {
                                        v6 = [MEMORY[0x277CBEB38] dictionary];
                                      }

                                      [v6 setObject:v15 forKeyedSubscript:{v16, v21}];
                                    }
                                  }
                                }
                              }

                              v10 = [v9 countByEnumeratingWithState:&v35 objects:v47 count:16];
                            }

                            while (v10);
                          }
                        }
                      }
                    }

                    v30 = [v28 countByEnumeratingWithState:&v39 objects:v48 count:16];
                  }

                  while (v30);
                }

                else
                {
                  v6 = 0;
                }

                if ([v6 count])
                {
                  v17 = v21;
                  if (!v21)
                  {
                    v17 = [MEMORY[0x277CBEB38] dictionary];
                  }

                  [v17 setObject:v6 forKeyedSubscript:{v3, v17}];
                }
              }

              else
              {
                v6 = 0;
              }
            }
          }

          v25 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        }

        while (v25);
      }

      else
      {
        v21 = 0;
      }

      v18 = v21;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)storeClusterData:(id)a3 forNodeID:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 count])
    {
      storageDelegateQueue = self->_storageDelegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239211164;
      block[3] = &unk_278A71650;
      block[4] = self;
      v13 = v6;
      v14 = v7;
      dispatch_async(storageDelegateQueue, block);

      goto LABEL_12;
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[MTRDeviceControllerDataStore storeClusterData:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: nothing to store", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
LABEL_11:
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[MTRDeviceControllerDataStore storeClusterData:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_deviceDataKeyForNodeID:(id)a3
{
  v3 = a3;
  v4 = [@"deviceData" stringByAppendingFormat:@":0x%016llX", objc_msgSend(v3, "unsignedLongLongValue")];

  return v4;
}

- (id)getStoredDeviceDataForNodeID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_23920B1E0;
  v21 = sub_23920B1F0;
  v22 = 0;
  v5 = [MEMORY[0x277CBEAA8] now];
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392121CC;
  block[3] = &unk_278A73B40;
  block[4] = self;
  v7 = v4;
  v15 = v7;
  v16 = &v17;
  dispatch_sync(storageDelegateQueue, block);
  [v5 timeIntervalSinceNow];
  if (v8 < -2.0)
  {
    v9 = -v8;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore getStoredDeviceDataForNodeID took %0.6lf seconds to read from storage", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)storeDeviceData:(id)a3 forNodeID:(id)a4
{
  v6 = a3;
  v7 = a4;
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239212494;
  block[3] = &unk_278A71650;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(storageDelegateQueue, block);
}

- (void)clearDeviceDataForNodeID:(id)a3
{
  v4 = a3;
  storageDelegateQueue = self->_storageDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2392125DC;
  v7[3] = &unk_278A72298;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(storageDelegateQueue, v7);
}

- (void)synchronouslyPerformBlock:(id)a3
{
  v4 = a3;
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239212714;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_sync(storageDelegateQueue, block);
}

- (NSArray)nodesWithStoredData
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock(&self->_nodeArrayLock);
  [v3 addObjectsFromArray:self->_nodesWithResumptionInfo];
  [v3 addObjectsFromArray:self->_nodesWithAttributeInfo];
  v4 = [v3 allObjects];
  os_unfair_lock_unlock(&self->_nodeArrayLock);

  return v4;
}

@end