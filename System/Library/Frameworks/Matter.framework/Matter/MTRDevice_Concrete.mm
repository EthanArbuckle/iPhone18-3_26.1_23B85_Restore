@interface MTRDevice_Concrete
+ (id)deviceWithNodeID:(unint64_t)a3 deviceController:(id)a4;
- (BOOL)_attributeAffectsDeviceConfiguration:(id)a3;
- (BOOL)_attributePathAffectsDescriptionData:(id)a3;
- (BOOL)_deviceHasActiveSubscription;
- (BOOL)_deviceIsReportingExcessively;
- (BOOL)_deviceUsesThread;
- (BOOL)_doPersistClusterData;
- (BOOL)_haveClusterDataToPersist;
- (BOOL)_interestedPaths:(id)a3 includesAttributePath:(id)a4;
- (BOOL)_interestedPaths:(id)a3 includesEventPath:(id)a4;
- (BOOL)_invokeResponse:(id)a3 matchesRequiredResponse:(id)a4;
- (BOOL)_reattemptSubscriptionNowIfNeededWithReason:(id)a3;
- (BOOL)_subscriptionAbleToReport;
- (BOOL)_subscriptionsAllowed;
- (BOOL)deviceCachePrimed;
- (BOOL)deviceUsesThread;
- (BOOL)shouldDetectTimeSynchronizationLoss;
- (MTRDevice_Concrete)initWithNodeID:(id)a3 controller:(id)a4;
- (id).cxx_construct;
- (id)_attributeListForEndpointID:(id)a3 clusterID:(id)a4;
- (id)_attributeValueDictionaryForAttributePath:(id)a3;
- (id)_cachedAttributeValueForPath:(id)a3;
- (id)_cachedListOfNumbersValueForEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5;
- (id)_clusterDataForPath:(id)a3;
- (id)_clusterDataToPersistSnapshot;
- (id)_dataValueWithoutDataVersion:(id)a3;
- (id)_endpointList;
- (id)_endpointsWithTimeSyncClusterServer;
- (id)_filteredAttributes:(id)a3 forInterestedPaths:(id)a4;
- (id)_filteredEvents:(id)a3 forInterestedPaths:(id)a4;
- (id)_getAttributesToReportWithNewExpectedValues:(id)a3 expirationTime:(id)a4 expectedValueID:(unint64_t *)a5;
- (id)_getAttributesToReportWithReportedValues:(id)a3 fromSubscription:(BOOL)a4;
- (id)_getCachedDataVersions;
- (id)_informationalNumberAtAttributePath:(id)a3;
- (id)_informationalProductID;
- (id)_informationalVendorID;
- (id)_internalProperties;
- (id)_knownClusters;
- (id)_lockedAttributeValueDictionaryForAttributePath:(id)a3;
- (id)_networkFeatures;
- (id)_serverListForEndpointID:(id)a3;
- (id)arrayOfNumbersFromAttributeValue:(id)a3;
- (id)description;
- (id)getAllAttributesReport;
- (id)newBaseDevice;
- (id)productID;
- (id)readAttributePaths:(id)a3;
- (id)readAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6;
- (id)vendorID;
- (optional<chip::Inet::IPAddress>)lastSubscriptionIPAddress;
- (unsigned)networkCommissioningFeatures;
- (void)_addInformationalAttributesToCurrentMetricScope;
- (void)_callDelegateDeviceCachePrimed;
- (void)_cancelTimeUpdateTimer;
- (void)_changeInternalState:(unint64_t)a3;
- (void)_changeState:(unint64_t)a3;
- (void)_checkExpiredExpectedValues;
- (void)_clearSubscriptionPoolWorkWithProvidedDelegate:(id)a3;
- (void)_commitPendingDataVersions;
- (void)_commitPendingDataVersionsForClusterPath:(id)a3;
- (void)_createDataVersionFilterListFromDictionary:(id)a3 dataVersionFilterList:(DataVersionFilter *)a4 count:(unint64_t *)a5;
- (void)_delegateAdded:(id)a3;
- (void)_deviceMayBeReachable;
- (void)_doHandleSubscriptionError:(id)a3;
- (void)_doHandleSubscriptionReset:(id)a3;
- (void)_doSetPersistedClusterData:(id)a3;
- (void)_ensureSubscriptionForExistingDelegates:(id)a3;
- (void)_handleCASESessionEstablished:(const void *)a3;
- (void)_handleEventReport:(id)a3;
- (void)_handleReportBegin;
- (void)_handleReportEnd;
- (void)_handleResubscriptionNeededWithDelay:(id)a3;
- (void)_handleResubscriptionNeededWithDelayOnDeviceQueue:(id)a3;
- (void)_handleSubscriptionError:(id)a3;
- (void)_handleSubscriptionEstablished;
- (void)_handleSubscriptionReset:(id)a3;
- (void)_handleUnsolicitedMessageFromPublisher;
- (void)_injectAttributeReport:(id)a3 fromSubscription:(BOOL)a4;
- (void)_injectEventReport:(id)a3;
- (void)_injectPossiblyInvalidEventReport:(id)a3;
- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 queue:(id)a11 completion:(id)a12;
- (void)_markDeviceAsUnreachableIfNeverSubscribed;
- (void)_noteDataVersion:(id)a3 forClusterPath:(id)a4;
- (void)_notifyDelegateOfPrivateInternalPropertiesChanges;
- (void)_performScheduledExpirationCheck;
- (void)_performScheduledTimeUpdate;
- (void)_persistClusterDataAsNeeded;
- (void)_pruneAttributesIn:(id)a3 missingFrom:(id)a4 forCluster:(id)a5;
- (void)_pruneClustersIn:(id)a3 missingFrom:(id)a4 forEndpoint:(id)a5;
- (void)_pruneEndpointsIn:(id)a3 missingFrom:(id)a4;
- (void)_pruneStoredDataForPath:(id)a3 missingFrom:(id)a4;
- (void)_readThroughSkipped;
- (void)_reconcilePersistedClustersWithStorage;
- (void)_removeAttributes:(id)a3 fromCluster:(id)a4;
- (void)_removeCachedAttribute:(id)a3 fromCluster:(id)a4;
- (void)_removeClusters:(id)a3 doRemoveFromDataStore:(BOOL)a4;
- (void)_removeExpectedValueForAttributePath:(id)a3 expectedValueID:(unint64_t)a4;
- (void)_reportAttributes:(id)a3;
- (void)_resetStorageBehaviorState;
- (void)_resetSubscription;
- (void)_resetSubscriptionWithReasonString:(id)a3;
- (void)_scheduleClusterDataPersistence;
- (void)_scheduleNextUpdate:(unint64_t)a3;
- (void)_scheduleSubscriptionPoolWork:(id)a3 inNanoseconds:(int64_t)a4 description:(id)a5;
- (void)_setCachedAttributeValue:(id)a3 forPath:(id)a4 fromSubscription:(BOOL)a5;
- (void)_setDSTOffsets:(id)a3 forEndpoint:(id)a4;
- (void)_setExpectedValue:(id)a3 attributePath:(id)a4 expirationTime:(id)a5 shouldReportValue:(BOOL *)a6 attributeValueToReport:(id *)a7 expectedValueID:(unint64_t)a8 previousValue:(id *)a9;
- (void)_setLastInitialSubscribeLatency:(id)a3;
- (void)_setLastSubscriptionAttemptWait:(unsigned int)a3;
- (void)_setTimeOnDevice;
- (void)_setupSubscriptionWithReason:(id)a3;
- (void)_stopConnectivityMonitoring;
- (void)_storePersistedDeviceData;
- (void)_triggerResubscribeWithReason:(id)a3 nodeLikelyReachable:(BOOL)a4;
- (void)_updateAttributeDependentDescriptionData;
- (void)_updateDeviceTimeAndScheduleNextUpdate;
- (void)controllerResumed;
- (void)controllerSuspended;
- (void)dealloc;
- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)invalidate;
- (void)invokeCommands:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)nodeMayBeAdvertisingOperational;
- (void)openCommissioningWindowWithDiscriminator:(id)a3 duration:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)openCommissioningWindowWithSetupPasscode:(id)a3 discriminator:(id)a4 duration:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)removeExpectedValueForAttributePath:(id)a3 expectedValueID:(unint64_t)a4;
- (void)removeExpectedValuesForAttributePaths:(id)a3 expectedValueID:(unint64_t)a4;
- (void)setExpectedValues:(id)a3 expectedValueInterval:(id)a4 expectedValueID:(unint64_t *)a5;
- (void)setPersistedClusterData:(id)a3;
- (void)setPersistedDeviceData:(id)a3;
- (void)setStorageBehaviorConfiguration:(id)a3;
- (void)writeAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 value:(id)a6 expectedValueInterval:(id)a7 timedWriteTimeout:(id)a8;
@end

@implementation MTRDevice_Concrete

- (MTRDevice_Concrete)initWithNodeID:(id)a3 controller:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = MTRDevice_Concrete;
  v8 = [(MTRDevice *)&v35 initForSubclassesWithNodeID:v6 controller:v7];
  v9 = v8;
  if (v8)
  {
    v8->_timeSyncLock._os_unfair_lock_opaque = 0;
    v8->_descriptionLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("org.csa-iot.matter.framework.device.workqueue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    expectedValueCache = v9->_expectedValueCache;
    v9->_expectedValueCache = v13;

    v15 = [[MTRAsyncWorkQueue alloc] initWithContext:v9];
    asyncWorkQueue = v9->_asyncWorkQueue;
    v9->_asyncWorkQueue = v15;

    v9->_state = 0;
    v9->_internalDeviceState = 0;
    v9->_internalDeviceStateForDescription = 0;
    v9->_doingCASEAttemptForDeviceMayBeReachable = 0;
    v17 = [v7 controllerDataStore];
    LOBYTE(v10) = v17 == 0;

    if (v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEA78]);
    }

    persistedClusterData = v9->_persistedClusterData;
    v9->_persistedClusterData = v18;

    clusterDataToPersist = v9->_clusterDataToPersist;
    v9->_clusterDataToPersist = 0;

    v21 = [MEMORY[0x277CBEB58] set];
    persistedClusters = v9->_persistedClusters;
    v9->_persistedClusters = v21;

    highestObservedEventNumber = v9->_highestObservedEventNumber;
    v9->_highestObservedEventNumber = 0;

    v9->_highestObservedEventNumberNeedsPersisting = 0;
    v24 = objc_alloc_init(MTRDeviceMatterCPPObjectsHolder);
    matterCPPObjectsHolder = v9->_matterCPPObjectsHolder;
    v9->_matterCPPObjectsHolder = v24;

    v9->_throttlingDeviceBecameActiveCallbacks = 0;
    if (v9->_persistedClusterData)
    {
      objc_initWeak(location, v9);
      v26 = [MEMORY[0x277CCAB98] defaultCenter];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_23938CAF8;
      v33[3] = &unk_278A75648;
      objc_copyWeak(&v34, location);
      v27 = [v26 addObserverForName:*MEMORY[0x277CBE778] object:0 queue:0 usingBlock:v33];
      systemTimeChangeObserverToken = v9->_systemTimeChangeObserverToken;
      v9->_systemTimeChangeObserverToken = v27;

      objc_destroyWeak(&v34);
      objc_destroyWeak(location);
    }

    -[MTRDevice_Concrete setSuspended:](v9, "setSuspended:", [v7 isSuspended]);
    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [(NSNumber *)v9->super._nodeID unsignedLongLongValue];
      *location = 138412546;
      *&location[4] = v9;
      v37 = 2048;
      v38 = v30;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_INFO, "%@ init with hex nodeID 0x%016llX", location, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      [(NSNumber *)v9->super._nodeID unsignedLongLongValue];
      sub_2393D5320(0, 3);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRDevice dealloc: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v9 = self;
    sub_2393D5320(0, 2);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self->_systemTimeChangeObserverToken];

  [(MTRDelegateManager *)self->super._delegateManager removeAllDelegates];
  v5 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  v6 = [(MTRDevice_Concrete *)self _concreteController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23938CE48;
  v11[3] = &unk_278A72320;
  v7 = v5;
  v12 = v7;
  [v6 asyncDispatchToMatterQueue:v11 errorHandler:0];

  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWorkWithProvidedDelegate:0];
  [(MTRDevice_Concrete *)self _doPersistClusterData];
  os_unfair_lock_unlock(&self->super._lock);

  v10.receiver = self;
  v10.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v10 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = self->_vid;
  v4 = self->_pid;
  v5 = self->_allNetworkFeatures;
  internalDeviceStateForDescription = self->_internalDeviceStateForDescription;
  lastSubscriptionAttemptWaitForDescription = self->_lastSubscriptionAttemptWaitForDescription;
  v8 = self->_mostRecentReportTimeForDescription;
  v9 = self->_lastSubscriptionFailureTimeForDescription;
  os_unfair_lock_unlock(&self->_descriptionLock);
  v10 = @"Unknown";
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = @"Unknown";
  }

  v37 = v11;
  if (v4)
  {
    v10 = v4;
  }

  v36 = v10;
  v12 = @"NO";
  v35 = v5;
  if (v5)
  {
    if (([(NSNumber *)v5 unsignedLongLongValue]& 1) != 0)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    if (([(NSNumber *)v5 unsignedLongLongValue]& 2) != 0)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v12 = v15;
  }

  else
  {
    v14 = @"NO";
  }

  if (v8)
  {
    v16 = MEMORY[0x277CCACA8];
    [(NSDate *)v8 timeIntervalSinceNow];
    v18 = [v16 stringWithFormat:@" (%.0lfs ago)", -v17];
  }

  else
  {
    v18 = &stru_284BD0DD8;
  }

  v34 = v18;
  if (v9)
  {
    v19 = MEMORY[0x277CCACA8];
    [(NSDate *)v9 timeIntervalSinceNow];
    v38 = [v19 stringWithFormat:@" (%.0lfs ago)", -v20];
  }

  else
  {
    v38 = &stru_284BD0DD8;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  NSStringFromClass(v22);
  v33 = v31 = v21;
  v32 = [(MTRDeviceController *)self->super._deviceController compressedFabricID];
  v29 = [v32 unsignedLongLongValue];
  v30 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  v23 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  if (internalDeviceStateForDescription > 4)
  {
    v24 = @"Unknown";
  }

  else
  {
    v24 = off_278A75B58[internalDeviceStateForDescription];
  }

  v25 = [(MTRAsyncWorkQueue *)self->_asyncWorkQueue itemCount];
  v26 = [(MTRDeviceController *)self->super._deviceController uniqueIdentifier];
  v27 = [v31 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu), VID: %@, PID: %@, WiFi: %@, Thread: %@, state: %@, last subscription attempt wait: %lus, queued work: %lu, last report: %@%@, last subscription failure: %@%@, controller: %@>", v33, self, v29, v30, v23, v37, v36, v14, v12, v24, lastSubscriptionAttemptWaitForDescription, v25, v8, v34, v9, v38, v26];

  return v27;
}

- (id)_internalProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_descriptionLock);
  v4 = self->_vid;
  if (v4)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalStateKeyVendorID", v4);
  }

  v5 = self->_pid;
  if (v5)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalStateKeyProductID", v5);
  }

  v6 = self->_allNetworkFeatures;
  if (v6)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyNetworkFeatures", v6);
  }

  v7 = self->_mostRecentReportTimeForDescription;
  if (v7)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyMostRecentReportTime", v7);
  }

  os_unfair_lock_unlock(&self->_descriptionLock);
  os_unfair_lock_lock(&self->super._lock);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_internalDeviceState];
  if (v8)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyDeviceInternalState", v8);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastSubscriptionAttemptWait];
  if (v9)
  {
    CFDictionarySetValue(v3, @"kMTRDeviceInternalPropertyLastSubscriptionAttemptWait", v9);
  }

  v10 = self->_lastSubscriptionFailureTime;
  if (v10)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyLastSubscriptionFailureTime", v10);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
  if (v11)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyDeviceState", v11);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceCachePrimed];
  if (v12)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyDeviceCachePrimed", v12);
  }

  v13 = self->_estimatedStartTime;
  if (v13)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyEstimatedStartTime", v13);
  }

  v14 = self->_estimatedSubscriptionLatency;
  if (v14)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyEstimatedSubscriptionLatency", v14);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_diagnosticLogTransferInProgress];
  if (v15)
  {
    CFDictionarySetValue(v3, @"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress", v15);
  }

  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)vendorID
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = [(NSNumber *)self->_vid copy];
  os_unfair_lock_unlock(&self->_descriptionLock);

  return v3;
}

- (id)productID
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = [(NSNumber *)self->_pid copy];
  os_unfair_lock_unlock(&self->_descriptionLock);

  return v3;
}

- (unsigned)networkCommissioningFeatures
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = [(NSNumber *)self->_allNetworkFeatures unsignedIntValue];
  os_unfair_lock_unlock(&self->_descriptionLock);
  return v3;
}

- (void)_notifyDelegateOfPrivateInternalPropertiesChanges
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23938D790;
  v3[3] = &unk_278A744C8;
  v3[4] = self;
  [(MTRDevice *)self _callDelegatesWithBlock:v3];
}

- (BOOL)shouldDetectTimeSynchronizationLoss
{
  os_unfair_lock_assert_owner(&self->super._lock);
  timeSynchronizationLossDetectedTime = self->_timeSynchronizationLossDetectedTime;
  if (!timeSynchronizationLossDetectedTime)
  {
    return 1;
  }

  [(NSDate *)timeSynchronizationLossDetectedTime timeIntervalSinceNow];
  return v4 <= -3600.0;
}

- (void)_setTimeOnDevice
{
  v40 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  v3 = [MEMORY[0x277CBEAA8] date];
  v25 = v3;
  if (v3)
  {
    v32 = 0;
    if (sub_239221564(v3, &v32))
    {
      [(MTRDevice_Concrete *)self _endpointsWithTimeSyncClusterServer];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      obj = v29 = 0u;
      v4 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v4)
      {
        v27 = *v29;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v29 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v28 + 1) + 8 * i);
            v7 = sub_2393D9044(0);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v37 = self;
              v38 = 2112;
              v39 = v6;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "%@ Setting Time on Endpoint %@", buf, 0x16u);
            }

            if (sub_2393D5398(3u))
            {
              v23 = self;
              v24 = v6;
              sub_2393D5320(0, 3);
            }

            [(MTRDevice_Concrete *)self _setUTCTime:v32 withGranularity:4 forEndpoint:v6, v23, v24];
            v8 = [MTRAttributePath attributePathWithEndpointID:v6 clusterID:&unk_284C43A18 attributeID:&unk_284C43A30];
            v9 = [v8 endpoint];
            v10 = [v8 cluster];
            v11 = [v8 attribute];
            v12 = [(MTRDevice_Concrete *)self readAttributeWithEndpointID:v9 clusterID:v10 attributeID:v11 params:0];

            if (v12)
            {
              v13 = [MTRAttributeReport alloc];
              v33[0] = @"attributePath";
              v33[1] = @"data";
              v34[0] = v8;
              v34[1] = v12;
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
              v15 = [(MTRAttributeReport *)v13 initWithResponseValue:v14 error:0];

              if (v15)
              {
                v16 = [(MTRAttributeReport *)v15 value];
                v17 = [v16 unsignedCharValue];
                if (!v17)
                {
                  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v37 = self;
                    v38 = 2112;
                    v39 = v6;
                    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ DSTOffsetListMaxSize value on endpoint %@ is 0, which is not allowed. Defaulting to 1.", buf, 0x16u);
                  }

                  v17 = 1;
                  if (sub_2393D5398(1u))
                  {
                    v23 = self;
                    v24 = v6;
                    sub_2393D5320(0, 1);
                  }
                }

                v18 = v17;
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v37 = self;
                  v38 = 2112;
                  v39 = v6;
                  _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ DSTOffsetListMaxSize value on endpoint %@ is invalid. Defaulting to 1.", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  v23 = self;
                  v24 = v6;
                  sub_2393D5320(0, 1);
                }

                v18 = 1;
              }

              v19 = sub_2393AFFBC(v18);
              if (v19)
              {
                [(MTRDevice_Concrete *)self _setDSTOffsets:v19 forEndpoint:v6];
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v37 = self;
                  v38 = 2112;
                  v39 = v6;
                  _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ Could not retrieve DST offset information. Unable to setDSTOffset on endpoint %@.", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  v23 = self;
                  v24 = v6;
                  sub_2393D5320(0, 1);
                }
              }
            }

            else
            {
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v37 = self;
                v38 = 2112;
                v39 = v6;
                _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ Unable to SetDSTOffset on endpoint %@, since it does not support the TZ feature", buf, 0x16u);
              }

              if (sub_2393D5398(2u))
              {
                v23 = self;
                v24 = v6;
                sub_2393D5320(0, 2);
              }
            }
          }

          v4 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v4);
      }
    }

    else
    {
      v21 = sub_2393D9044(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = self;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ Could not convert NSDate (%@) to Matter Epoch Time. Unable to setUTCTime on endpoints.", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }

  else
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = self;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "%@ Could not retrieve current date. Unable to setUTCTime on endpoints.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextUpdate:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  v5 = [(MTRDevice_Concrete *)self queue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);

  self->_lastTimeUpdateScheduledDelayInSeconds = a3;
  v7 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_23938E1E0;
  handler[3] = &unk_278A73D80;
  v8 = v6;
  v12 = v8;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v8, handler);
  [(MTRDevice_Concrete *)self setTimeUpdateTimer:v8];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "%@ Timer Scheduled for next Device Time Update, in %llu seconds", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  dispatch_resume(v8);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateDeviceTimeAndScheduleNextUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  v3 = [(MTRDevice_Concrete *)self timeUpdateTimer];

  if (v3)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "%@ Device Time Update already scheduled", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(MTRDevice_Concrete *)self _setTimeOnDevice];
    v6 = *MEMORY[0x277D85DE8];

    [(MTRDevice_Concrete *)self _scheduleNextUpdate:86400];
  }
}

- (void)_performScheduledTimeUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->super._lock);
  os_unfair_lock_lock(&self->_timeSyncLock);
  if (state == 1)
  {
    v4 = [(MTRDevice_Concrete *)self timeUpdateTimer];

    if (v4)
    {
      [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
      [(MTRDevice_Concrete *)self _updateDeviceTimeAndScheduleNextUpdate];
      goto LABEL_12;
    }

    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "%@ Device Time Update is no longer scheduled, MTRDevice may have been invalidated.", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
LABEL_11:
      sub_2393D5320(0, 3);
    }
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "%@ Device is not reachable, canceling Device Time Updates.", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_timeSyncLock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_cancelTimeUpdateTimer
{
  os_unfair_lock_lock(&self->_timeSyncLock);
  v3 = [(MTRDevice_Concrete *)self timeUpdateTimer];

  if (v3)
  {
    v4 = [(MTRDevice_Concrete *)self timeUpdateTimer];
    dispatch_source_cancel(v4);

    [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
}

- (id)_endpointsWithTimeSyncClusterServer
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _endpointList];
  os_unfair_lock_unlock(&self->super._lock);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [(MTRDevice_Concrete *)self readAttributeWithEndpointID:v7 clusterID:&unk_284C43A48 attributeID:&unk_284C43A60 params:0];
        v9 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v8];
        v10 = v9;
        if (v9 && [v9 containsObject:&unk_284C43A18])
        {
          [v14 addObject:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "%@ Device has following endpoints with Time Sync Cluster Server: %@", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_setDSTOffsets:(id)a3 forEndpoint:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "%@ _setDSTOffsets with offsets: %@, endpoint %@", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v9 = objc_alloc_init(MTRTimeSynchronizationClusterSetDSTOffsetParams);
  [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v9 setDstOffset:v6];
  objc_initWeak(buf, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23938F068;
  v19 = &unk_278A75670;
  objc_copyWeak(&v22, buf);
  v10 = v7;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  v12 = MEMORY[0x23EE78590](&v16);
  v13 = [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v11 serverSideProcessingTimeout];
  v14 = [(MTRDevice_Concrete *)self queue];
  [(MTRDevice *)self _invokeKnownCommandWithEndpointID:v10 clusterID:&unk_284C43A18 commandID:&unk_284C43A90 commandPayload:v11 expectedValues:0 expectedValueInterval:0 timedInvokeTimeout:0 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:v12, v16, v17, v18, v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

- (id)arrayOfNumbersFromAttributeValue:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v3 = [v24 objectForKeyedSubscript:@"type"];
  v4 = [@"Array" isEqual:v3];

  if (v4)
  {
    v5 = [v24 objectForKeyedSubscript:@"value"];
    v21 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        v8 = *v26;
        v20 = v6;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v26 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_19;
            }

            v11 = v10;
            v12 = [v11 objectForKeyedSubscript:{@"data", v20, v21}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v13 = v12;
            v14 = [v13 objectForKeyedSubscript:@"type"];
            v15 = [v13 objectForKeyedSubscript:@"value"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

LABEL_18:
LABEL_19:

              v17 = 0;
              v16 = v23;
              goto LABEL_20;
            }

            [v23 addObject:v15];
          }

          v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v16 = v23;
      v17 = v23;
LABEL_20:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_subscriptionsAllowed
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self suspended])
  {
    v3 = 0;
  }

  else
  {
    deviceController = self->super._deviceController;
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

- (void)_delegateAdded:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5.receiver = self;
  v5.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v5 _delegateAdded:v4];
  [(MTRDevice_Concrete *)self _ensureSubscriptionForExistingDelegates:@"delegate is set"];
}

- (void)_ensureSubscriptionForExistingDelegates:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _subscriptionsAllowed])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ - starting subscription setup", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    if (!self->_initialSubscribeStart)
    {
      v6 = [MEMORY[0x277CBEAA8] now];
      initialSubscribeStart = self->_initialSubscribeStart;
      self->_initialSubscribeStart = v6;
    }

    objc_initWeak(&location, self);
    if ([(MTRDevice_Concrete *)self _deviceUsesThread])
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = self;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, " => %@ - device is a thread device, scheduling in pool", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTRDevice setDelegate first subscription / controller resume (%p)", self];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_23938F980;
      v14[3] = &unk_278A75698;
      objc_copyWeak(&v16, &location);
      v15 = v4;
      [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v14 inNanoseconds:0 description:v8];

      objc_destroyWeak(&v16);
    }

    else
    {
      deviceController = self->super._deviceController;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23938FE08;
      v11[3] = &unk_278A75698;
      objc_copyWeak(&v13, &location);
      v12 = v4;
      [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v11 errorHandler:0];

      objc_destroyWeak(&v13);
    }

    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v6 = self;
    sub_2393D5320(0, 2);
  }

  [(MTRAsyncWorkQueue *)self->_asyncWorkQueue invalidate];
  [(MTRDevice_Concrete *)self _cancelTimeUpdateTimer];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _persistClusterData];
  self->_state = 0;
  self->_reattemptingSubscription = 0;
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  objc_initWeak(buf, self);
  deviceController = self->super._deviceController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23939012C;
  v8[3] = &unk_278A72CD0;
  objc_copyWeak(&v9, buf);
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v8 errorHandler:0];
  [(MTRDevice_Concrete *)self _stopConnectivityMonitoring];
  os_unfair_lock_unlock(&self->super._lock);
  v7.receiver = self;
  v7.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v7 invalidate];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nodeMayBeAdvertisingOperational
{
  v8 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1201);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ saw new operational advertisement", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v5 = self;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice_Concrete *)self _triggerResubscribeWithReason:@"operational advertisement seen" nodeLikelyReachable:1, v5];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_triggerResubscribeWithReason:(id)a3 nodeLikelyReachable:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    if (v4)
    {
      v8 = @"YES";
    }

    v22 = v6;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ _triggerResubscribeWithReason called with reason %@, nodeLikelyReachable: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1215);
  os_unfair_lock_lock(&self->super._lock);
  v9 = [(MTRDevice_Concrete *)self reattemptingSubscription];
  if (v9)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v10 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
    v11 = [v10 readClient];

    v12 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
    v13 = [v12 subscriptionCallback];

    os_unfair_lock_unlock(&self->super._lock);
    if (v11)
    {
      if (v4)
      {
        *(v13 + 200) = 0;
      }

      v14 = v6;
      if ((sub_2394D8E90(v11, [v6 UTF8String]) & 1) == 0)
      {
        os_unfair_lock_lock(&self->super._lock);
        [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
LABEL_22:
        os_unfair_lock_unlock(&self->super._lock);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  if (self->_internalDeviceState == 1)
  {
    if ((![(MTRDevice_Concrete *)self doingCASEAttemptForDeviceMayBeReachable]|| v9) && v4)
    {
LABEL_17:
      os_unfair_lock_lock(&self->super._lock);
      [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
      os_unfair_lock_unlock(&self->super._lock);
      objc_initWeak(buf, self);
      v15 = [(MTRDevice_Concrete *)self _concreteController];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_239390700;
      v17[3] = &unk_278A756E8;
      objc_copyWeak(&v18, buf);
      [v15 asyncGetCommissionerOnMatterQueue:v17 errorHandler:0];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else if (v9 && v4)
  {
    goto LABEL_17;
  }

  if (v9)
  {
LABEL_21:
    os_unfair_lock_lock(&self->super._lock);
    [(MTRDevice_Concrete *)self _reattemptSubscriptionNowIfNeededWithReason:v6];
    goto LABEL_22;
  }

LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_subscriptionAbleToReport
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(MTRDevice *)self _delegateExists]&& [(MTRDevice_Concrete *)self _subscriptionsAllowed];
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)_readThroughSkipped
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  if (self->_state != 1 && self->_lastSubscriptionFailureTime)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [v3 timeIntervalSinceDate:self->_lastSubscriptionFailureTime];
    v5 = v4;

    if (v5 >= 600.0)
    {
      objc_initWeak(buf, self);
      deviceController = self->super._deviceController;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_239390B90;
      v11[3] = &unk_278A72CD0;
      objc_copyWeak(&v12, buf);
      [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v11 errorHandler:0];
      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = lastSubscriptionFailureTime;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "%@ skipping resubscribe from skipped read-through: not enough time has passed since %@", buf, 0x16u);
      }

      if (sub_2393D5398(3u))
      {
        v10 = self->_lastSubscriptionFailureTime;
        sub_2393D5320(0, 3);
      }
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callDelegateDeviceCachePrimed
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_239390CEC;
  v3[3] = &unk_278A744C8;
  v3[4] = self;
  [(MTRDevice *)self _callDelegatesWithBlock:v3];
  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)_changeState:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1379);
  os_unfair_lock_assert_owner(&self->super._lock);
  state = self->_state;
  self->_state = a3;
  if (state == a3)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = self;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Not reporting reachability state change, since no change in state %lu => %lu", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    v7 = sub_2393D9044(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a3 == 1)
    {
      if (v8)
      {
        *buf = 138412802;
        v17 = self;
        v18 = 2048;
        v19 = state;
        v20 = 2048;
        v21 = 1;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ reachability state change %lu => %lu", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v13 = state;
        v14 = 1;
        v12 = self;
        sub_2393D5320(0, 2);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 138412802;
        v17 = self;
        v18 = 2048;
        v19 = state;
        v20 = 2048;
        v21 = a3;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ reachability state change %lu => %lu, set estimated start time to nil", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v13 = state;
        v14 = a3;
        v12 = self;
        sub_2393D5320(0, 2);
      }

      estimatedStartTime = self->_estimatedStartTime;
      self->_estimatedStartTime = 0;

      estimatedStartTimeFromGeneralDiagnosticsUpTime = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
      self->_estimatedStartTimeFromGeneralDiagnosticsUpTime = 0;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_239391028;
    v15[3] = &unk_278A744F0;
    v15[4] = self;
    v15[5] = a3;
    [(MTRDevice *)self _callDelegatesWithBlock:v15, v12, v13, v14];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_changeInternalState:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1413);
  os_unfair_lock_assert_owner(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  self->_internalDeviceState = a3;
  os_unfair_lock_lock(&self->_descriptionLock);
  self->_internalDeviceStateForDescription = self->_internalDeviceState;
  os_unfair_lock_unlock(&self->_descriptionLock);
  if (internalDeviceState != a3)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v13 = self;
      v14 = 2048;
      v15 = internalDeviceState;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ internal state change %lu => %lu", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v9 = internalDeviceState;
      v10 = a3;
      v8 = self;
      sub_2393D5320(0, 2);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2393911F0;
    v11[3] = &unk_278A75710;
    v11[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v11, v8, v9, v10];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleSubscriptionEstablished
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  if (internalDeviceState == 2 || internalDeviceState == 4)
  {
    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
    [(MTRDevice_Concrete *)self _stopConnectivityMonitoring];
    [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
    v19 = self->_initialSubscribeStart;
    initialSubscribeStart = self->_initialSubscribeStart;
    self->_initialSubscribeStart = 0;

    if (v19)
    {
      [(NSDate *)v19 timeIntervalSinceNow];
      v7 = -v6;
      estimatedSubscriptionLatency = self->_estimatedSubscriptionLatency;
      if (estimatedSubscriptionLatency)
      {
        [(NSNumber *)estimatedSubscriptionLatency doubleValue];
        [MEMORY[0x277CCABB0] numberWithDouble:v9 * 0.666666667 + v7 * 0.333333333];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithDouble:-v6];
      }
      v10 = ;
      v14 = self->_estimatedSubscriptionLatency;
      self->_estimatedSubscriptionLatency = v10;

      [(MTRDevice_Concrete *)self _storePersistedDeviceData];
    }

    v15 = [(MTRDevice_Concrete *)self timeUpdateShortDelayInSeconds];
    os_unfair_lock_unlock(&self->super._lock);
    os_unfair_lock_lock(&self->_timeSyncLock);
    v16 = [(MTRDevice_Concrete *)self timeUpdateTimer];

    if (!v16)
    {
      [(MTRDevice_Concrete *)self _scheduleNextUpdate:v15];
    }

    os_unfair_lock_unlock(&self->_timeSyncLock);
    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = self;
      v22 = 2048;
      v23 = internalDeviceState;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ _handleSubscriptionEstablished run with internal state %lu - skipping subscription establishment logic", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v18 = self->_internalDeviceState;
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_unlock(&self->super._lock);
    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_handleSubscriptionError:(id)a3
{
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1498);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _doHandleSubscriptionError:v4];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_doHandleSubscriptionError:(id)a3
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1506);
  os_unfair_lock_assert_owner(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeInternalState:0];
  unreportedEvents = self->_unreportedEvents;
  self->_unreportedEvents = 0;

  [(MTRDevice_Concrete *)self _changeState:2];
}

- (BOOL)deviceUsesThread
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _deviceUsesThread];
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (BOOL)_deviceUsesThread
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [MTRClusterPath clusterPathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43AC0];
  v4 = [(MTRDevice_Concrete *)self _clusterDataForPath:v3];
  v5 = [v4 attributes];
  v6 = [v5 objectForKeyedSubscript:&unk_284C43AD8];
  v7 = [v6 objectForKeyedSubscript:@"value"];

  if (!v7)
  {
LABEL_8:
    LOBYTE(v8) = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ Unexpected NetworkCommissioning FeatureMap value %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    goto LABEL_8;
  }

  v8 = ([v7 unsignedLongValue] >> 1) & 1;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_clearSubscriptionPoolWorkWithProvidedDelegate:(id)a3
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = MEMORY[0x23EE78590](self->_subscriptionPoolWorkCompletionBlock);
  if (v5)
  {
    subscriptionPoolWorkCompletionBlock = self->_subscriptionPoolWorkCompletionBlock;
    self->_subscriptionPoolWorkCompletionBlock = 0;

    v5[2](v5, 0);
  }
}

- (void)_scheduleSubscriptionPoolWork:(id)a3 inNanoseconds:(int64_t)a4 description:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (self->_subscriptionPoolWorkCompletionBlock)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ already scheduled in subscription pool for this device - ignoring: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_239391B7C;
    v16[3] = &unk_278A75760;
    objc_copyWeak(&v19, buf);
    v17 = v9;
    v18 = v8;
    v11 = MEMORY[0x23EE78590](v16);
    v12 = v11;
    if (a4 < 1)
    {
      (*(v11 + 16))(v11);
    }

    else
    {
      v13 = dispatch_time(0, a4);
      v14 = [(MTRDevice_Concrete *)self queue];
      dispatch_after(v13, v14, v12);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleResubscriptionNeededWithDelay:(id)a3
{
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1657);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeState:0];
  if (self->_internalDeviceState >= 2)
  {
    [(MTRDevice_Concrete *)self _changeInternalState:3];
  }

  objc_initWeak(&location, self);
  v5 = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393921E0;
  block[3] = &unk_278A75698;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_handleResubscriptionNeededWithDelayOnDeviceQueue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x277CBEAA8] now];
  lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
  self->_lastSubscriptionFailureTime = v5;

  os_unfair_lock_lock(&self->_descriptionLock);
  objc_storeStrong(&self->_lastSubscriptionFailureTimeForDescription, self->_lastSubscriptionFailureTime);
  os_unfair_lock_unlock(&self->_descriptionLock);
  v7 = [(MTRDevice_Concrete *)self _deviceUsesThread];
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  os_unfair_lock_unlock(&self->super._lock);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2393924D0;
  v13[3] = &unk_278A72CD0;
  objc_copyWeak(&v14, &location);
  v8 = MEMORY[0x23EE78590](v13);
  v9 = 1000000 * [v4 unsignedIntValue];
  if (v7)
  {
    os_unfair_lock_lock(&self->super._lock);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ReadClient resubscription (%p)", self];
    [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v8 inNanoseconds:v9 description:v10];

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v11 = dispatch_time(0, v9);
    v12 = [(MTRDevice_Concrete *)self queue];
    dispatch_after(v11, v12, v8);
  }

  [(MTRDevice_Concrete *)self _setupConnectivityMonitoring];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_handleSubscriptionReset:(id)a3
{
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1741);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _doHandleSubscriptionReset:v4];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_setLastSubscriptionAttemptWait:(unsigned int)a3
{
  os_unfair_lock_assert_owner(&self->super._lock);
  self->_lastSubscriptionAttemptWait = a3;
  os_unfair_lock_lock(&self->_descriptionLock);
  self->_lastSubscriptionAttemptWaitForDescription = a3;
  os_unfair_lock_unlock(&self->_descriptionLock);

  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)_doHandleSubscriptionReset:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1762);
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self suspended])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ ignoring expected subscription reset on controller suspend", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v18 = self;
      sub_2393D5320(0, 2);
    }

    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
    self->_lastSubscriptionFailureTime = v6;

    os_unfair_lock_lock(&self->_descriptionLock);
    objc_storeStrong(&self->_lastSubscriptionFailureTimeForDescription, self->_lastSubscriptionFailureTime);
    os_unfair_lock_unlock(&self->_descriptionLock);
    if ([(MTRDevice *)self _delegateExists])
    {
      if (![(MTRDevice_Concrete *)self reattemptingSubscription])
      {
        [(MTRDevice_Concrete *)self setReattemptingSubscription:1];
        lastSubscriptionAttemptWait = self->_lastSubscriptionAttemptWait;
        if (lastSubscriptionAttemptWait)
        {
          if (v4)
          {
            [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
            [v4 doubleValue];
            v10 = v9;
            v11 = sub_2393D9044(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v23 = self;
              v24 = 2048;
              v25 = v10;
              _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ resetting resubscribe attempt counter, and delaying by the server-provided delay: %f", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              v19 = v10;
              v18 = self;
              sub_2393D5320(0, 2);
            }
          }

          else
          {
            if (2 * lastSubscriptionAttemptWait >= 0xE10)
            {
              v12 = 3600;
            }

            else
            {
              v12 = 2 * lastSubscriptionAttemptWait;
            }

            [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:v12];
            v10 = v12;
          }
        }

        else
        {
          self->_lastSubscriptionAttemptWait = 1;
          v10 = 1.0;
        }

        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = self;
          v24 = 2048;
          v25 = v10;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ scheduling to reattempt subscription in %f seconds", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          v19 = v10;
          v18 = self;
          sub_2393D5320(0, 2);
        }

        [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork:v18];
        objc_initWeak(buf, self);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_239392E60;
        v20[3] = &unk_278A72CD0;
        objc_copyWeak(&v21, buf);
        v14 = MEMORY[0x23EE78590](v20);
        if ([(MTRDevice_Concrete *)self _deviceUsesThread])
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTRDevice resubscription (%p)", self];
          [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v14 inNanoseconds:(v10 * 1000000000.0) description:v15];
        }

        else
        {
          v16 = dispatch_time(0, (v10 * 1000000000.0));
          v15 = [(MTRDevice_Concrete *)self queue];
          dispatch_after(v16, v15, v14);
        }

        [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_reattemptSubscriptionNowIfNeededWithReason:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1863);
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self reattemptingSubscription];
  if (v5)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ reattempting subscription with reason %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v9 = self;
      v10 = v4;
      sub_2393D5320(0, 2);
    }

    [(MTRDevice_Concrete *)self _setupSubscriptionWithReason:v4, v9, v10];
  }

  else
  {
    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_handleUnsolicitedMessageFromPublisher
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1879);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeState:1];
  v3 = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];

  if (v3 && (-[MTRDevice_Concrete lastDeviceBecameActiveCallbackTime](self, "lastDeviceBecameActiveCallbackTime"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = v5, v4, v6 >= -60.0))
  {
    if (![(MTRDevice_Concrete *)self throttlingDeviceBecameActiveCallbacks])
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];
        *buf = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ throttling deviceBecameActive callbacks because report came in too soon after %@", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];
        v12 = v11 = self;
        sub_2393D5320(0, 2);
      }

      [(MTRDevice_Concrete *)self setThrottlingDeviceBecameActiveCallbacks:1, v11, v12];
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_239393664;
    v13[3] = &unk_278A744C8;
    v13[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v13];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(MTRDevice_Concrete *)self setLastDeviceBecameActiveCallbackTime:v7];

    [(MTRDevice_Concrete *)self setThrottlingDeviceBecameActiveCallbacks:0];
  }

  [(MTRDevice_Concrete *)self _reattemptSubscriptionNowIfNeededWithReason:@"got unsolicited message from publisher"];
  os_unfair_lock_unlock(&self->super._lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_markDeviceAsUnreachableIfNeverSubscribed
{
  objc_initWeak(&location, self);
  deviceController = self->super._deviceController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2393937A8;
  v4[3] = &unk_278A72CD0;
  objc_copyWeak(&v5, &location);
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v4 errorHandler:0];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_handleReportBegin
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1938);
  os_unfair_lock_lock(&self->super._lock);
  self->_receivingReport = 1;
  if (self->_state != 1)
  {
    [(MTRDevice_Concrete *)self _changeState:1];
  }

  self->_timeSynchronizationLossDetected = 0;
  internalDeviceState = self->_internalDeviceState;
  v5 = internalDeviceState != 2 && internalDeviceState != 4;
  self->_receivingPrimingReport = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)_clusterDataToPersistSnapshot
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_clusterDataToPersist;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:v8, v13];
        v10 = [v9 copy];
        [v3 setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_haveClusterDataToPersist
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(NSMutableDictionary *)self->_clusterDataToPersist count])
  {
    return 1;
  }

  return [(MTRDevice_Concrete *)self highestObservedEventNumberNeedsPersisting];
}

- (BOOL)_doPersistClusterData
{
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _dataStoreExists])
  {
    if ([(MTRDevice_Concrete *)self highestObservedEventNumberNeedsPersisting])
    {
      [(MTRDevice_Concrete *)self _storePersistedDeviceData];
    }

    v3 = [(NSMutableDictionary *)self->_clusterDataToPersist count];
    if (v3)
    {
      v4 = sub_2393D9044(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(NSMutableDictionary *)self->_clusterDataToPersist count];
        *buf = 138412546;
        v28 = self;
        v29 = 2048;
        v30 = v5;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Storing cluster information (data version and attributes) count: %lu", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        v18 = self;
        v19 = [(NSMutableDictionary *)self->_clusterDataToPersist count];
        sub_2393D5320(0, 2);
      }

      v20 = [(MTRDevice_Concrete *)self _clusterDataToPersistSnapshot:v18];
      v6 = [(MTRDevice_Concrete *)self _concreteController];
      v7 = [v6 controllerDataStore];
      [v7 storeClusterData:v20 forNodeID:self->super._nodeID];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = self->_clusterDataToPersist;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = *v23;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            persistedClusterData = self->_persistedClusterData;
            v13 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:v11];
            [(NSCache *)persistedClusterData setObject:v13 forKey:v11];

            [(NSMutableSet *)self->_persistedClusters addObject:v11];
          }

          v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v8);
      }

      clusterDataToPersist = self->_clusterDataToPersist;
      self->_clusterDataToPersist = 0;

      LOBYTE(v3) = 1;
    }
  }

  else
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = self;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ storage behavior: no data store in _persistClusterData!", buf, 0xCu);
    }

    LODWORD(v3) = sub_2393D5398(1u);
    if (v3)
    {
      sub_2393D5320(0, 1);
      LOBYTE(v3) = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_deviceIsReportingExcessively
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  deviceReportingExcessivelyStartTime = self->_deviceReportingExcessivelyStartTime;
  if (deviceReportingExcessivelyStartTime)
  {
    [(NSDate *)deviceReportingExcessivelyStartTime timeIntervalSinceNow];
    v5 = -v4;
    [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration deviceReportingExcessivelyIntervalThreshold];
    LOBYTE(deviceReportingExcessivelyStartTime) = 0;
    if (v6 < v5)
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v11 = self;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: device has been reporting excessively for %.3lf seconds", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      LOBYTE(deviceReportingExcessivelyStartTime) = 1;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return deviceReportingExcessivelyStartTime;
}

- (void)_persistClusterDataAsNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _haveClusterDataToPersist]&& ![(MTRDevice_Concrete *)self _deviceIsReportingExcessively]&& !self->_receivingReport)
  {
    v3 = [(NSMutableArray *)self->_mostRecentReportTimes lastObject];
    [v3 timeIntervalSinceNow];
    v5 = v4;
    [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeAfterMutiplier];
    v6 = -v5;
    if (v7 <= -v5)
    {
      goto LABEL_7;
    }

    clusterDataPersistenceFirstScheduledTime = self->_clusterDataPersistenceFirstScheduledTime;
    if (!clusterDataPersistenceFirstScheduledTime)
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = self;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ storage behavior: expects _clusterDataPersistenceFirstScheduledTime if _clusterDataToPersist exists", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      goto LABEL_8;
    }

    [(NSDate *)clusterDataPersistenceFirstScheduledTime timeIntervalSinceNow];
    v10 = v9;
    [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeMaxAfterMutiplier];
    v11 = -v10;
    if (v12 > v11)
    {
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = self;
        v19 = 2048;
        v20 = v6;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: not persisting: intervalSinceLastReport %lf intervalSinceFirstScheduledPersistence %lf", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }
    }

    else
    {
LABEL_7:
      [(MTRDevice_Concrete *)self _persistClusterData];
      v13 = self->_clusterDataPersistenceFirstScheduledTime;
      self->_clusterDataPersistenceFirstScheduledTime = 0;
    }

LABEL_8:
  }

  os_unfair_lock_unlock(&self->super._lock);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleClusterDataPersistence
{
  v53 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (![(MTRDevice_Concrete *)self _dataStoreExists])
  {
    v32 = sub_2393D9044(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = self;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_INFO, "%@ storage behavior: no data store", buf, 0xCu);
    }

    if (!sub_2393D5398(3u))
    {
      goto LABEL_35;
    }

LABEL_34:
    sub_2393D5320(0, 3);
LABEL_35:
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  if (![(MTRDevice_Concrete *)self _haveClusterDataToPersist])
  {
    v33 = sub_2393D9044(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = self;
      _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_INFO, "%@ storage behavior: nothing to persist", buf, 0xCu);
    }

    if (!sub_2393D5398(3u))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  storageBehaviorConfiguration = self->_storageBehaviorConfiguration;
  if (!storageBehaviorConfiguration)
  {
    v4 = objc_alloc_init(MTRDeviceStorageBehaviorConfiguration);
    v5 = self->_storageBehaviorConfiguration;
    self->_storageBehaviorConfiguration = v4;

    [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration checkValuesAndResetToDefaultIfNecessary];
    storageBehaviorConfiguration = self->_storageBehaviorConfiguration;
  }

  if (![(MTRDeviceStorageBehaviorConfiguration *)storageBehaviorConfiguration disableStorageBehaviorOptimization]&& self->_deviceCachePrimed)
  {
    if (!self->_mostRecentReportTimes)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      mostRecentReportTimes = self->_mostRecentReportTimes;
      self->_mostRecentReportTimes = v6;
    }

    if (!self->_clusterDataPersistenceFirstScheduledTime)
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      clusterDataPersistenceFirstScheduledTime = self->_clusterDataPersistenceFirstScheduledTime;
      self->_clusterDataPersistenceFirstScheduledTime = v8;
    }

    while (1)
    {
      v10 = [(NSMutableArray *)self->_mostRecentReportTimes count];
      if (v10 < [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration recentReportTimesMaxCount])
      {
        break;
      }

      [(NSMutableArray *)self->_mostRecentReportTimes removeObjectAtIndex:0];
    }

    v11 = self->_mostRecentReportTimes;
    v12 = [MEMORY[0x277CBEAA8] now];
    [(NSMutableArray *)v11 addObject:v12];

    os_unfair_lock_lock(&self->_descriptionLock);
    v13 = [(NSMutableArray *)self->_mostRecentReportTimes lastObject];
    mostRecentReportTimeForDescription = self->_mostRecentReportTimeForDescription;
    self->_mostRecentReportTimeForDescription = v13;

    os_unfair_lock_unlock(&self->_descriptionLock);
    if ([(NSMutableArray *)self->_mostRecentReportTimes count]>= 3)
    {
      v15 = 0.0;
      if ([(NSMutableArray *)self->_mostRecentReportTimes count]>= 2)
      {
        v16 = 1;
        do
        {
          v17 = [(NSMutableArray *)self->_mostRecentReportTimes objectAtIndex:v16 - 1];
          v18 = [(NSMutableArray *)self->_mostRecentReportTimes objectAtIndex:v16];
          [v18 timeIntervalSinceDate:v17];
          if (v19 > 0.0)
          {
            v15 = v15 + v19;
          }

          ++v16;
        }

        while ([(NSMutableArray *)self->_mostRecentReportTimes count]> v16);
      }

      v20 = v15 / ([(NSMutableArray *)self->_mostRecentReportTimes count]- 1);
      [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortThreshold];
      if (v20 >= v21)
      {
        self->_reportToPersistenceDelayCurrentMultiplier = 1.0;
      }

      else
      {
        [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortThreshold];
        v23 = v22 - v20;
        [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortThreshold];
        v25 = v24;
        [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortMinThreshold];
        v27 = v23 / (v25 - v26);
        if (v27 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration reportToPersistenceDelayMaxMultiplier];
        v30 = v28 * (v29 + -1.0) + 1.0;
        self->_reportToPersistenceDelayCurrentMultiplier = v30;
        v31 = sub_2393D9044(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v50 = self;
          v51 = 2048;
          v52 = v30;
          _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: device reporting frequently - setting delay multiplier to %lf", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          reportToPersistenceDelayCurrentMultiplier = self->_reportToPersistenceDelayCurrentMultiplier;
          v45 = self;
          sub_2393D5320(0, 2);
        }
      }

      [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortMinThreshold:v45];
      deviceReportingExcessivelyStartTime = self->_deviceReportingExcessivelyStartTime;
      if (v20 >= v37)
      {
        self->_deviceReportingExcessivelyStartTime = 0;
      }

      else if (!deviceReportingExcessivelyStartTime)
      {
        v38 = [MEMORY[0x277CBEAA8] now];
        v39 = self->_deviceReportingExcessivelyStartTime;
        self->_deviceReportingExcessivelyStartTime = v38;

        v40 = sub_2393D9044(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = self->_deviceReportingExcessivelyStartTime;
          *buf = 138412546;
          v50 = self;
          v51 = 2112;
          v52 = *&v41;
          _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_INFO, "%@ storage behavior: device is reporting excessively @%@", buf, 0x16u);
        }

        if (sub_2393D5398(3u))
        {
          v45 = self;
          reportToPersistenceDelayCurrentMultiplier = *&self->_deviceReportingExcessivelyStartTime;
          sub_2393D5320(0, 3);
        }
      }
    }

    if (![(MTRDevice_Concrete *)self _deviceIsReportingExcessively:v45])
    {
      objc_initWeak(buf, self);
      [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeAfterMutiplier];
      v43 = dispatch_time(0, (v42 * 1000000000.0));
      v44 = [(MTRDevice_Concrete *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239394A34;
      block[3] = &unk_278A72CD0;
      objc_copyWeak(&v48, buf);
      dispatch_after(v43, v44, block);

      objc_destroyWeak(&v48);
      objc_destroyWeak(buf);
    }

    goto LABEL_35;
  }

  v35 = *MEMORY[0x277D85DE8];

  [(MTRDevice_Concrete *)self _persistClusterData];
}

- (void)_resetStorageBehaviorState
{
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataPersistenceFirstScheduledTime = self->_clusterDataPersistenceFirstScheduledTime;
  self->_clusterDataPersistenceFirstScheduledTime = 0;

  mostRecentReportTimes = self->_mostRecentReportTimes;
  self->_mostRecentReportTimes = 0;

  os_unfair_lock_lock(&self->_descriptionLock);
  mostRecentReportTimeForDescription = self->_mostRecentReportTimeForDescription;
  self->_mostRecentReportTimeForDescription = 0;

  os_unfair_lock_unlock(&self->_descriptionLock);
  deviceReportingExcessivelyStartTime = self->_deviceReportingExcessivelyStartTime;
  self->_deviceReportingExcessivelyStartTime = 0;

  self->_reportToPersistenceDelayCurrentMultiplier = 1.0;
  if ([(MTRDevice_Concrete *)self _dataStoreExists])
  {
    [(MTRDevice_Concrete *)self _persistClusterData];
  }

  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)setStorageBehaviorConfiguration:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: setStorageBehaviorConfiguration %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_lock(&self->super._lock);
  objc_storeStrong(&self->_storageBehaviorConfiguration, a3);
  [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration checkValuesAndResetToDefaultIfNecessary];
  [(MTRDevice_Concrete *)self _resetStorageBehaviorState];
  os_unfair_lock_unlock(&self->super._lock);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleReportEnd
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ handling report end", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v11 = self;
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_lock(&self->super._lock);
  self->_receivingReport = 0;
  self->_receivingPrimingReport = 0;
  estimatedStartTimeFromGeneralDiagnosticsUpTime = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
  self->_estimatedStartTimeFromGeneralDiagnosticsUpTime = 0;

  [(MTRDevice_Concrete *)self _commitPendingDataVersions];
  [(MTRDevice_Concrete *)self _scheduleClusterDataPersistence];
  if (self->_deviceConfigurationChanged)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_239395008;
    v13[3] = &unk_278A744C8;
    v13[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v13];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
    self->_deviceConfigurationChanged = 0;
  }

  if (!self->_deviceCachePrimed)
  {
    self->_deviceCachePrimed = 1;
    [(MTRDevice_Concrete *)self _callDelegateDeviceCachePrimed];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }

  v5 = [(MTRDevice_Concrete *)self timeUpdateShortDelayInSeconds];
  timeSynchronizationLossDetected = self->_timeSynchronizationLossDetected;
  os_unfair_lock_unlock(&self->super._lock);
  os_unfair_lock_lock(&self->_timeSyncLock);
  v7 = [(MTRDevice_Concrete *)self timeUpdateTimer];
  if (v7)
  {
    v8 = self->_lastTimeUpdateScheduledDelayInSeconds == 86400;

    if (timeSynchronizationLossDetected && v8)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ Trying to correct time synchronization loss, reschedule time update", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        v12 = self;
        sub_2393D5320(0, 2);
      }

      v9 = [(MTRDevice_Concrete *)self timeUpdateTimer];
      dispatch_source_cancel(v9);

      [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
      [(MTRDevice_Concrete *)self _scheduleNextUpdate:v5];
    }
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleCASESessionEstablished:(const void *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 2363);
  if ((*(**a3 + 16))() == 2)
  {
    v5 = sub_239495304(*a3);
    v6 = *(v5 + 112);
    if ((v6 | 2) == 3)
    {
      v12 = *(v5 + 96);
      sub_2393CF6CC(&v12, v17, 0x2Eu);
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = self;
        v15 = 2080;
        v16 = v17;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ Using CASE session to IP %s for subscription", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      os_unfair_lock_lock(&self->super._lock);
      engaged = self->_lastSubscriptionIPAddress.__engaged_;
      self->_lastSubscriptionIPAddress.var0 = v12;
      if (!engaged)
      {
        self->_lastSubscriptionIPAddress.__engaged_ = 1;
      }

      os_unfair_lock_unlock(&self->super._lock);
      goto LABEL_18;
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138412546;
      v18 = self;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ CASE session with unexpected transport type %d", v17, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
LABEL_17:
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138412290;
      v18 = self;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ CASE session is not a secure session?", v17, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_interestedPaths:(id)a3 includesAttributePath:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v6 endpoint];
          v13 = [v11 isEqualToNumber:v12];

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          v15 = [v14 cluster];
          v16 = [v6 cluster];
          v13 = [v15 isEqualToNumber:v16];

LABEL_10:
          if (v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v10;
          v18 = [v17 cluster];
          v19 = [v6 cluster];
          if ([v18 isEqualToNumber:v19])
          {
            v20 = [v17 attribute];
            v21 = [v6 attribute];
            v22 = [v20 isEqualToNumber:v21];

            if (v22)
            {
LABEL_20:
              LOBYTE(v7) = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v23 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v23;
    }

    while (v23);
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_filteredAttributes:(id)a3 forInterestedPaths:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v22 = v6;
  if (v7)
  {
    if ([v7 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v6;
      v10 = 0;
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v11)
      {
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"attributePath"];
            if ([(MTRDevice_Concrete *)self _interestedPaths:v8 includesAttributePath:v15])
            {
              if (!v10)
              {
                v10 = [MEMORY[0x277CBEB18] array];
              }

              [v10 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v11);
      }

      if ([v10 count])
      {
        v16 = [v10 count];
        if (v16 != [v9 count])
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v9 count];
            v19 = [v10 count];
            *buf = 138412802;
            v28 = self;
            v29 = 2048;
            v30 = v18;
            v31 = 2048;
            v32 = v19;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ filtered attribute report %lu => %lu", buf, 0x20u);
          }

          if (sub_2393D5398(2u))
          {
            [v9 count];
            [v10 count];
            sub_2393D5320(0, 2);
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_reportAttributes:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([v4 count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2393959F8;
    v5[3] = &unk_278A75788;
    v5[4] = self;
    v6 = v4;
    [(MTRDevice *)self _iterateDelegatesWithBlock:v5];
  }
}

- (void)_injectAttributeReport:(id)a3 fromSubscription:(BOOL)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (sub_23938A994(v6))
  {
    objc_initWeak(location, self);
    deviceController = self->super._deviceController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_239395E98;
    v10[3] = &unk_278A757B0;
    objc_copyWeak(&v12, location);
    v11 = v6;
    v13 = a4;
    [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v10 errorHandler:0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 138412546;
      *&location[4] = self;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ injected attribute report is not well-formed: %@", location, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_injectEventReport:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (sub_23938B148(v4))
  {
    [(MTRDevice_Concrete *)self _injectPossiblyInvalidEventReport:v4];
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ injected event report is not well-formed: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_injectPossiblyInvalidEventReport:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239396374;
  block[3] = &unk_278A75698;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_interestedPaths:(id)a3 includesEventPath:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v6 endpoint];
          v13 = [v11 isEqualToNumber:v12];

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          v15 = [v14 cluster];
          v16 = [v6 cluster];
          v13 = [v15 isEqualToNumber:v16];

LABEL_10:
          if (v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v10;
          v18 = [v17 cluster];
          v19 = [v6 cluster];
          if ([v18 isEqualToNumber:v19])
          {
            v20 = [v17 event];
            v21 = [v6 event];
            v22 = [v20 isEqualToNumber:v21];

            if (v22)
            {
LABEL_20:
              LOBYTE(v7) = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v23 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v23;
    }

    while (v23);
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_filteredEvents:(id)a3 forInterestedPaths:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v22 = v6;
  if (v7)
  {
    if ([v7 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v6;
      v10 = 0;
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v11)
      {
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"eventPath"];
            if ([(MTRDevice_Concrete *)self _interestedPaths:v8 includesEventPath:v15])
            {
              if (!v10)
              {
                v10 = [MEMORY[0x277CBEB18] array];
              }

              [v10 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v11);
      }

      if ([v10 count])
      {
        v16 = [v10 count];
        if (v16 != [v9 count])
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v9 count];
            v19 = [v10 count];
            *buf = 138412802;
            v28 = self;
            v29 = 2048;
            v30 = v18;
            v31 = 2048;
            v32 = v19;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ filtered event report %lu => %lu", buf, 0x20u);
          }

          if (sub_2393D5398(2u))
          {
            [v9 count];
            [v10 count];
            sub_2393D5320(0, 2);
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_handleEventReport:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v46 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v47 = self->_estimatedStartTime;
  unreportedEvents = self->_unreportedEvents;
  if (unreportedEvents)
  {
    v5 = unreportedEvents;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] array];
  }

  v48 = v5;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v46;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v6)
  {
    v51 = *v56;
    do
    {
      v7 = 0;
      do
      {
        if (*v56 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v55 + 1) + 8 * v7);
        v9 = [(NSDate *)v8 objectForKeyedSubscript:@"eventPath", v42];
        estimatedStartTime = [v9 cluster];
        if ([estimatedStartTime unsignedLongValue] == 40)
        {
          v11 = [v9 event];
          v12 = [v11 unsignedLongValue] == 0;

          if (!v12)
          {
            goto LABEL_24;
          }

          estimatedStartTimeFromGeneralDiagnosticsUpTime = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
          v14 = sub_2393D9044(0);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (estimatedStartTimeFromGeneralDiagnosticsUpTime)
          {
            if (v15)
            {
              *buf = 138412546;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = estimatedStartTimeFromGeneralDiagnosticsUpTime;
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ StartUp event: set estimated start time forward to %@", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              v43 = self;
              v44 = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
              sub_2393D5320(0, 2);
            }

            v16 = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
          }

          else
          {
            if (v15)
            {
              *buf = 138412290;
              *&buf[4] = self;
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ StartUp event: set estimated start time to nil", buf, 0xCu);
            }

            if (sub_2393D5398(2u))
            {
              v43 = self;
              sub_2393D5320(0, 2);
            }

            v16 = 0;
          }

          estimatedStartTime = self->_estimatedStartTime;
          self->_estimatedStartTime = v16;
        }

LABEL_24:
        v17 = [(NSDate *)v8 objectForKeyedSubscript:@"eventTimeType", v43, v44];
        v18 = v17;
        if (v17)
        {
          if ([v17 unsignedIntegerValue])
          {
            goto LABEL_31;
          }

          v19 = [(NSDate *)v8 objectForKeyedSubscript:@"eventSystemUpTime"];
          v20 = v19;
          if (v19)
          {
            [v19 doubleValue];
            v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v21];
            v23 = v22;
            if (!self->_estimatedStartTime || [v22 compare:?] == -1)
            {
              objc_storeStrong(&self->_estimatedStartTime, v23);
            }

LABEL_31:
            v24 = [(NSDate *)v8 objectForKeyedSubscript:@"eventNumber"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [(NSDate *)v8 objectForKeyedSubscript:@"eventNumber"];

              if (v25)
              {
                v26 = [(MTRDevice_Concrete *)self highestObservedEventNumber];
                if (!v26 || (-[MTRDevice_Concrete highestObservedEventNumber](self, "highestObservedEventNumber"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 compare:v25] == -1, v27, v26, v28))
                {
                  [(MTRDevice_Concrete *)self setHighestObservedEventNumber:v25];
                  [(MTRDevice_Concrete *)self setHighestObservedEventNumberNeedsPersisting:1];
                  v31 = [(NSDate *)v8 mutableCopy];
                  v32 = [v31 objectForKeyedSubscript:@"eventIsHistorical"];
                  v33 = v32 == 0;

                  if (v33)
                  {
                    if (self->_receivingPrimingReport)
                    {
                      v34 = MEMORY[0x277CBEC38];
                    }

                    else
                    {
                      v34 = MEMORY[0x277CBEC28];
                    }

                    [v31 setObject:v34 forKeyedSubscript:@"eventIsHistorical"];
                  }

                  [(NSMutableArray *)v48 addObject:v31];
                }

                else if (self->_receivingReport)
                {
                  self->_receivingPrimingReport = 1;
                }

LABEL_53:

                goto LABEL_54;
              }
            }

            else
            {
            }

            v30 = sub_2393D9044(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v8;
              _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "%@ Event %@ missing event number", buf, 0x16u);
            }

            v25 = 0;
            if (sub_2393D5398(1u))
            {
              v42 = self;
              v44 = v8;
              sub_2393D5320(0, 1);
            }

            goto LABEL_53;
          }

          v35 = sub_2393D9044(0);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "%@ Event %@ missing event time value", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v29 = sub_2393D9044(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "%@ Event %@ missing event time type", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
LABEL_40:
            v42 = self;
            v44 = v8;
            sub_2393D5320(0, 1);
          }
        }

LABEL_54:

        ++v7;
      }

      while (v6 != v7);
      v36 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      v6 = v36;
    }

    while (v36);
  }

  v37 = self->_estimatedStartTime;
  if (v47 != v37)
  {
    v38 = sub_2393D9044(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "%@ updated estimated start time to %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v45 = self->_estimatedStartTime;
      sub_2393D5320(0, 2);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v60 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_239397380;
  v52[3] = &unk_278A757D8;
  v52[4] = self;
  v49 = v48;
  v53 = v49;
  v54 = buf;
  [(MTRDevice *)self _iterateDelegatesWithBlock:v52];
  if (*(*&buf[8] + 24))
  {
    v39 = 0;
  }

  else
  {
    v39 = v49;
  }

  v40 = self->_unreportedEvents;
  self->_unreportedEvents = v39;

  _Block_object_dispose(buf, 8);
  os_unfair_lock_unlock(&self->super._lock);

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_reconcilePersistedClustersWithStorage
{
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v20 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_persistedClusters;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v4 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [(MTRDevice_Concrete *)self _concreteController];
        v8 = [v7 controllerDataStore];
        nodeID = self->super._nodeID;
        v10 = [v6 endpoint];
        v11 = [v6 cluster];
        v12 = [v8 getStoredClusterDataForNodeID:nodeID endpointID:v10 clusterID:v11];

        if (!v12)
        {
          [v20 addObject:v6];
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v3);
  }

  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v20 count];
    v15 = [(NSMutableSet *)self->_persistedClusters count];
    *buf = 138412802;
    v27 = self;
    v28 = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ Storage missing %lu / %lu clusters - reconciling in-memory records", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v18 = [v20 count];
    v19 = [(NSMutableSet *)self->_persistedClusters count];
    v17 = self;
    sub_2393D5320(0, 1);
  }

  [(NSMutableSet *)self->_persistedClusters minusSet:v20, v17, v18, v19];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_clusterDataForPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (!clusterDataToPersist || ([(NSMutableDictionary *)clusterDataToPersist objectForKeyedSubscript:v4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![(MTRDevice_Concrete *)self _dataStoreExists]|| ([(NSCache *)self->_persistedClusterData objectForKey:v4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([(NSMutableSet *)self->_persistedClusters containsObject:v4])
      {
        v7 = [(MTRDevice_Concrete *)self _concreteController];
        v8 = [v7 controllerDataStore];
        nodeID = self->super._nodeID;
        v10 = [v4 endpoint];
        v11 = [v4 cluster];
        v6 = [v8 getStoredClusterDataForNodeID:nodeID endpointID:v10 clusterID:v11];

        v12 = sub_2393D9044(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"YES";
          *buf = 138412802;
          v18 = self;
          v19 = 2112;
          if (!v6)
          {
            v13 = @"NO";
          }

          v20 = v4;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ cluster path %@ cache miss - load from storage success %@", buf, 0x20u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2);
        }

        if (v6)
        {
          [(NSCache *)self->_persistedClusterData setObject:v6 forKey:v4];
        }

        else
        {
          [(MTRDevice_Concrete *)self _reconcilePersistedClustersWithStorage];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data store has no data for cluster %@", v4];
          [(MTRDevice_Concrete *)self _resetSubscriptionWithReasonString:v14];
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_knownClusters
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(NSMutableSet *)self->_persistedClusters mutableCopy];
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(NSMutableDictionary *)clusterDataToPersist allKeys];
    v7 = [v5 setWithArray:v6];
    [v3 unionSet:v7];
  }

  return v3;
}

- (id)_getCachedDataVersions
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->super._lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(MTRDevice_Concrete *)self _knownClusters];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(MTRDevice_Concrete *)self _clusterDataForPath:v8];
        v10 = [v9 dataVersion];
        [v3 setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v3 count];
    *buf = 138412546;
    v20 = self;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "%@ _getCachedDataVersions dataVersions count: %lu", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    [v3 count];
    sub_2393D5320(0, 3);
  }

  os_unfair_lock_unlock(&self->super._lock);
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_commitPendingDataVersionsForClusterPath:(id)a3
{
  v7 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v4 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:v7];
  v5 = [v4 pendingDataVersion];

  if (v5)
  {
    v6 = [v4 pendingDataVersion];
    [v4 setDataVersion:v6];

    [v4 setPendingDataVersion:0];
  }
}

- (void)_commitPendingDataVersions
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = clusterDataToPersist;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [(MTRDevice_Concrete *)self _commitPendingDataVersionsForClusterPath:*(*(&v9 + 1) + 8 * v7++), v9];
        }

        while (v5 != v7);
        v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_cachedAttributeValueForPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [v4 endpoint];
  v6 = [v4 cluster];
  v7 = [MTRClusterPath clusterPathWithEndpointID:v5 clusterID:v6];

  v8 = [(MTRDevice_Concrete *)self _clusterDataForPath:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 attributes];
    v11 = [v4 attribute];
    v12 = [v10 objectForKeyedSubscript:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_setCachedAttributeValue:(id)a3 forPath:(id)a4 fromSubscription:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  v10 = [v9 endpoint];
  v11 = [v9 cluster];
  v12 = [MTRClusterPath clusterPathWithEndpointID:v10 clusterID:v11];

  v13 = [(MTRDevice_Concrete *)self _clusterDataForPath:v12];
  if (!v13)
  {
    if (!v8)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v13 = objc_alloc_init(MTRDeviceClusterData);
  }

  v14 = [v9 attribute];
  [(MTRDeviceClusterData *)v13 storeValue:v8 forAttribute:v14];

  if ([(MTRDevice_Concrete *)self _attributePathAffectsDescriptionData:v9])
  {
    [(MTRDevice_Concrete *)self _updateAttributeDependentDescriptionData];
  }

  if (v8 && v5 && !self->_receivingPrimingReport && sub_2393983AC(v9))
  {
    v18 = 0;
    v19 = "dwnpm_bad_c_attr_update";
    v20 = 0;
    sub_23948BD20(&v18);
    [(MTRDevice_Concrete *)self _addInformationalAttributesToCurrentMetricScope];
    v18 = 1;
    v19 = "dwnpm_bad_c_attr_update";
    v20 = 0;
    sub_23948BD20(&v18);
  }

  else
  {
    clusterDataToPersist = self->_clusterDataToPersist;
    if (!clusterDataToPersist)
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
      v17 = self->_clusterDataToPersist;
      self->_clusterDataToPersist = v16;

      clusterDataToPersist = self->_clusterDataToPersist;
    }

    [(NSMutableDictionary *)clusterDataToPersist setObject:v13 forKeyedSubscript:v12];
  }

LABEL_14:
}

- (void)_removeCachedAttribute:(id)a3 fromCluster:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v8 = [(NSMutableDictionary *)clusterDataToPersist objectForKeyedSubscript:v6];
    [v8 removeValueForAttribute:v9];
  }
}

- (void)_createDataVersionFilterListFromDictionary:(id)a3 dataVersionFilterList:(DataVersionFilter *)a4 count:(unint64_t *)a5
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    operator new[]();
  }

  *a5 = 0;
  *a4 = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_stopConnectivityMonitoring
{
  os_unfair_lock_assert_owner(&self->super._lock);
  connectivityMonitor = self->_connectivityMonitor;
  if (connectivityMonitor)
  {
    [(MTRDeviceConnectivityMonitor *)connectivityMonitor stopMonitoring];
    v4 = self->_connectivityMonitor;
    self->_connectivityMonitor = 0;
  }
}

- (void)_resetSubscriptionWithReasonString:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ %@ - resetting subscription", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  objc_initWeak(buf, self);
  deviceController = self->super._deviceController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239398B24;
  v8[3] = &unk_278A72CD0;
  objc_copyWeak(&v9, buf);
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v8 errorHandler:0];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resetSubscription
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 3006);
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  [v3 clearReadClientAndDeleteSubscriptionCallback];

  [(MTRDevice_Concrete *)self _doHandleSubscriptionError:0];
}

- (void)_setupSubscriptionWithReason:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 3033);
  os_unfair_lock_assert_owner(&self->super._lock);
  [(MTRDevice_Concrete *)self setReattemptingSubscription:0];
  if ([(MTRDevice_Concrete *)self _subscriptionsAllowed])
  {
    internalDeviceState = self->_internalDeviceState;
    if (internalDeviceState)
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (internalDeviceState > 4)
        {
          v7 = @"Unknown";
        }

        else
        {
          v7 = off_278A75B38[internalDeviceState - 1];
        }

        *buf = 138412802;
        *v28 = self;
        *&v28[8] = 2112;
        *&v28[10] = v7;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ setupSubscription: No need to subscribe due to internal state %@ (reason: %@)", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v16 = self->_internalDeviceState;
        if (v16 > 4)
        {
          v17 = @"Unknown";
        }

        else
        {
          v17 = off_278A75B58[v16];
        }

        v20 = v17;
        v21 = v4;
        v19 = self;
        sub_2393D5320(0, 2);
      }

      [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork:v19];
    }

    else
    {
      [(MTRDevice_Concrete *)self _changeInternalState:1];
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v28 = self;
        *&v28[8] = 2112;
        *&v28[10] = v4;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ setting up subscription with reason: %@", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        v19 = self;
        v20 = v4;
        sub_2393D5320(0, 2);
      }

      if ([(__CFString *)v4 hasPrefix:@"SPI client indicated the device may now be reachable", v19, v20])
      {
        [(MTRDevice_Concrete *)self setDoingCASEAttemptForDeviceMayBeReachable:1];
      }

      objc_initWeak(buf, self);
      v10 = dispatch_time(0, 10000000000);
      v11 = [(MTRDevice_Concrete *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239399220;
      block[3] = &unk_278A72CD0;
      objc_copyWeak(&v26, buf);
      dispatch_after(v10, v11, block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
      *buf = 0;
      *&v28[4] = "dwnpm_dev_initial_subscription_setup";
      v28[16] = 0;
      sub_23948BD20(buf);
      v12 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
      objc_initWeak(buf, self);
      v13 = [(MTRDevice_Concrete *)self _concreteController];
      v14 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2393992E8;
      v22[3] = &unk_278A758A0;
      objc_copyWeak(&v24, buf);
      v15 = v12;
      v23 = v15;
      [v13 directlyGetSessionForNode:v14 completion:v22];

      [(MTRDevice_Concrete *)self _setupConnectivityMonitoring];
      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v28 = self;
      *&v28[8] = 2112;
      *&v28[10] = v4;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ _setupSubscription: Subscriptions not allowed. Do not set up subscription (reason: %@)", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v19 = self;
      v20 = v4;
      sub_2393D5320(0, 2);
    }

    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)readAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6
{
  v72[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v49 = v10;
  v50 = a6;
  v51 = [MTRAttributePath attributePathWithEndpointID:v10 clusterID:v11 attributeID:v12];
  if (sub_238EA55DC([v11 unsignedIntValue], objc_msgSend(v12, "unsignedIntValue")))
  {
    LOBYTE(v13) = sub_2393983AC(v51);
  }

  else if (v50)
  {
    v13 = [v50 shouldAssumeUnknownAttributesReportable] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v48 = [(MTRDevice_Concrete *)self _attributeValueDictionaryForAttributePath:v51];
  os_unfair_lock_lock(&self->super._lock);
  v14 = [(MTRDevice_Concrete *)self suspended];
  os_unfair_lock_unlock(&self->super._lock);
  if (v14 || !(v13 & 1 | ![(MTRDevice_Concrete *)self _subscriptionAbleToReport]))
  {
    [(MTRDevice_Concrete *)self _readThroughSkipped];
  }

  else
  {
    v46 = [MTRAttributeRequestPath requestPathWithEndpointID:v49 clusterID:v11 attributeID:v12];
    v72[0] = v46;
    v15 = v50;
    if (!v50)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v72[1] = v15;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    if (!v50)
    {
    }

    if (![(MTRAsyncWorkQueue *)self->_asyncWorkQueue hasDuplicateForTypeID:1 workItemData:v47])
    {
      v16 = [MEMORY[0x277CBEB18] arrayWithObject:v47];
      v17 = [MTRAsyncWorkItem alloc];
      v18 = [(MTRDevice_Concrete *)self queue];
      v19 = [(MTRAsyncWorkItem *)v17 initWithQueue:v18];

      v20 = [(MTRAsyncWorkItem *)v19 uniqueID];
      v21 = [(MTRDevice *)self nodeID];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_23939BDDC;
      v66[3] = &unk_278A758C8;
      v71 = v20;
      v22 = v21;
      v67 = v22;
      v23 = v49;
      v68 = v23;
      v24 = v11;
      v69 = v24;
      v25 = v12;
      v70 = v25;
      [(MTRAsyncWorkItem *)v19 setBatchingID:1 data:v16 handler:v66];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_23939C29C;
      v59[3] = &unk_278A758F0;
      v26 = v16;
      v60 = v26;
      v65 = v20;
      v27 = v22;
      v61 = v27;
      v28 = v23;
      v62 = v28;
      v29 = v24;
      v63 = v29;
      v30 = v25;
      v31 = v20;
      v32 = v30;
      v64 = v30;
      v45 = v19;
      [(MTRAsyncWorkItem *)v19 setDuplicateTypeID:1 handler:v59];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_23939C4F4;
      v52[3] = &unk_278A75940;
      v43 = v26;
      v53 = v43;
      v58 = v31;
      v44 = v27;
      v54 = v44;
      v33 = v28;
      v55 = v33;
      v34 = v29;
      v56 = v34;
      v35 = v32;
      v57 = v35;
      [(MTRAsyncWorkItem *)v19 setReadyHandler:v52];
      asyncWorkQueue = self->_asyncWorkQueue;
      v37 = [v34 unsignedLongLongValue];
      v38 = MTRClusterNameForID([v34 unsignedLongLongValue]);
      v39 = [v35 unsignedLongLongValue];
      v40 = MTRAttributeNameForID([v34 unsignedLongLongValue], objc_msgSend(v35, "unsignedLongLongValue"));
      [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v45 descriptionWithFormat:@"read %@ 0x%llx (%@) 0x%llx (%@)", v33, v37, v38, v39, v40];
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v48;
}

- (void)writeAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 value:(id)a6 expectedValueInterval:(id)a7 timedWriteTimeout:(id)a8
{
  v60[2] = *MEMORY[0x277D85DE8];
  v42 = a3;
  v45 = a4;
  v44 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [v14 copy];

  if (v16)
  {
    v18 = sub_238DB3374(v16, &unk_284C43AF0, &unk_284C43B08);

    v16 = v18;
  }

  v41 = sub_238DB3374(v15, &unk_284C43AF0, &unk_284C43B20);

  v40 = v17;
  v43 = v16;
  v19 = [MTRAttributePath attributePathWithEndpointID:v42 clusterID:v45 attributeID:v44];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 1;
  v54 = 0;
  v59[0] = @"attributePath";
  v59[1] = @"data";
  v60[0] = v19;
  v60[1] = v17;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v58 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  [(MTRDevice_Concrete *)self setExpectedValues:v21 expectedValueInterval:v41 expectedValueID:&v54];

  v22 = [MTRAsyncWorkItem alloc];
  v23 = [(MTRDevice_Concrete *)self queue];
  v24 = [(MTRAsyncWorkItem *)v22 initWithQueue:v23];

  v25 = [(MTRAsyncWorkItem *)v24 uniqueID];
  v38 = self->super._nodeID;
  v57[0] = v19;
  v57[1] = v17;
  v26 = v16;
  if (!v16)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v57[2] = v26;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v54];
  v57[3] = v27;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];

  if (!v16)
  {
  }

  v28 = [MEMORY[0x277CBEB18] arrayWithObject:v39];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_23939D3BC;
  v51[3] = &unk_278A75968;
  v53 = v25;
  v29 = v38;
  v52 = v29;
  [(MTRAsyncWorkItem *)v24 setBatchingID:2 data:v28 handler:v51];
  [(MTRAsyncWorkItem *)v24 setDuplicateTypeID:1 handler:&unk_284BB75B0];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_23939D774;
  v46[3] = &unk_278A759D8;
  v30 = v28;
  v47 = v30;
  v49 = v55;
  v50 = v25;
  v31 = v19;
  v48 = v31;
  [(MTRAsyncWorkItem *)v24 setReadyHandler:v46];
  asyncWorkQueue = self->_asyncWorkQueue;
  v33 = [v45 unsignedLongLongValue];
  v34 = MTRClusterNameForID([v45 unsignedLongLongValue]);
  v35 = [v44 unsignedLongLongValue];
  v36 = MTRAttributeNameForID([v45 unsignedLongLongValue], objc_msgSend(v44, "unsignedLongLongValue"));
  [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v24 descriptionWithFormat:@"write %@ 0x%llx (%@) 0x%llx (%@): %@", v42, v33, v34, v35, v36, v40];

  _Block_object_dispose(v55, 8);
  v37 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePaths:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v49 = self;
  os_unfair_lock_lock(&self->super._lock);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v43;
  v44 = [obj countByEnumeratingWithState:&v69 objects:v78 count:{16, v43}];
  if (v44)
  {
    v45 = *v70;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v70 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v69 + 1) + 8 * i);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v48 = [(MTRDevice_Concrete *)v49 _knownClusters];
        v4 = [v48 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v4)
        {
          v50 = *v66;
          do
          {
            v53 = 0;
            v51 = v4;
            do
            {
              if (*v66 != v50)
              {
                objc_enumerationMutation(v48);
              }

              v5 = *(*(&v65 + 1) + 8 * v53);
              v6 = [v55 endpoint];
              if (!v6)
              {
                goto LABEL_45;
              }

              v7 = [v55 endpoint];
              v8 = [v5 endpoint];
              v9 = [v7 isEqual:v8];

              if (v9)
              {
LABEL_45:
                v10 = [v55 cluster];
                if (!v10)
                {
                  goto LABEL_15;
                }

                v11 = [v55 cluster];
                v12 = [v5 cluster];
                v13 = [v11 isEqual:v12];

                if (v13)
                {
LABEL_15:
                  v52 = [(MTRDevice_Concrete *)v49 _clusterDataForPath:v5];
                  v14 = [v55 attribute];
                  v15 = v14 == 0;

                  if (v15)
                  {
                    v63 = 0u;
                    v64 = 0u;
                    v61 = 0u;
                    v62 = 0u;
                    v20 = [v52 attributes];
                    v24 = [v20 countByEnumeratingWithState:&v61 objects:v76 count:16];
                    if (v24)
                    {
                      v25 = *v62;
                      do
                      {
                        for (j = 0; j != v24; ++j)
                        {
                          if (*v62 != v25)
                          {
                            objc_enumerationMutation(v20);
                          }

                          v27 = *(*(&v61 + 1) + 8 * j);
                          v28 = [v5 endpoint];
                          v29 = [v5 cluster];
                          v30 = [MTRAttributePath attributePathWithEndpointID:v28 clusterID:v29 attributeID:v27];
                          [v56 addObject:v30];
                        }

                        v24 = [v20 countByEnumeratingWithState:&v61 objects:v76 count:16];
                      }

                      while (v24);
                    }

LABEL_25:
                  }

                  else
                  {
                    v16 = [v52 attributes];
                    v17 = [v55 attribute];
                    v18 = [v16 objectForKey:v17];
                    v19 = v18 == 0;

                    if (!v19)
                    {
                      v20 = [v5 endpoint];
                      v21 = [v5 cluster];
                      v22 = [v55 attribute];
                      v23 = [MTRAttributePath attributePathWithEndpointID:v20 clusterID:v21 attributeID:v22];
                      [v56 addObject:v23];

                      goto LABEL_25;
                    }
                  }
                }
              }

              v53 = v53 + 1;
            }

            while (v53 != v51);
            v4 = [v48 countByEnumeratingWithState:&v65 objects:v77 count:16];
          }

          while (v4);
        }
      }

      v44 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v44);
  }

  os_unfair_lock_unlock(&v49->super._lock);
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v56, "count")}];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v54 = v56;
  v32 = [v54 countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v32)
  {
    v33 = *v58;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v58 != v33)
        {
          objc_enumerationMutation(v54);
        }

        v35 = *(*(&v57 + 1) + 8 * k);
        v36 = [v35 endpoint];
        v37 = [v35 cluster];
        v38 = [v35 attribute];
        v39 = [(MTRDevice_Concrete *)v49 readAttributeWithEndpointID:v36 clusterID:v37 attributeID:v38 params:0];

        if (v39)
        {
          v73[0] = @"attributePath";
          v73[1] = @"data";
          v74[0] = v35;
          v74[1] = v39;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
          [v31 addObject:v40];
        }
      }

      v32 = [v54 countByEnumeratingWithState:&v57 objects:v75 count:16];
    }

    while (v32);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 queue:(id)a11 completion:(id)a12
{
  v86 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v63 = a4;
  v64 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v61 = a12;
  if (!v20 || (v24 = v19, [v20 compare:&unk_284C43B38] == -1))
  {
    v24 = 0;
  }

  else
  {
    sub_238DB3374(v20, &unk_284C43AF0, &unk_284C43B20);
    v20 = v19 = v20;
  }

  v25 = [v22 copy];
  v26 = [v21 copy];

  v65 = [v18 copy];
  v57 = v20;
  v60 = v25;
  if (v26)
  {
    goto LABEL_8;
  }

  if (sub_2392DEB5C(v63, v64))
  {
    v26 = &unk_284C43B50;
LABEL_8:
    v27 = MEMORY[0x277CBEAA8];
    [v26 doubleValue];
    v62 = [v27 dateWithTimeIntervalSinceNow:v28 / 1000.0];
    goto LABEL_9;
  }

  v26 = 0;
  v62 = 0;
LABEL_9:
  v59 = v26;
  v84 = 0;
  if (v24)
  {
    [(MTRDevice_Concrete *)self setExpectedValues:v24 expectedValueInterval:v20 expectedValueID:&v84];
    v29 = [MEMORY[0x277CBEB18] array];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v30 = v24;
    v31 = [v30 countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v31)
    {
      v32 = *v81;
      do
      {
        v33 = 0;
        do
        {
          if (*v81 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = [*(*(&v80 + 1) + 8 * v33) objectForKeyedSubscript:@"attributePath"];
          [v29 addObject:v34];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v30 countByEnumeratingWithState:&v80 objects:v85 count:16];
      }

      while (v31);
    }
  }

  else
  {
    v29 = 0;
  }

  v35 = [MTRAsyncWorkItem alloc];
  v36 = [(MTRDevice_Concrete *)self queue];
  v37 = [(MTRAsyncWorkItem *)v35 initWithQueue:v36];

  v56 = v37;
  v38 = [(MTRAsyncWorkItem *)v37 uniqueID];
  [(MTRAsyncWorkItem *)v37 setDuplicateTypeID:1 handler:&unk_284BB75D0];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_23939EB9C;
  v66[3] = &unk_278A75A50;
  v52 = v23;
  v67 = v52;
  v53 = v61;
  v77 = v53;
  v49 = v24;
  v68 = v49;
  v55 = v29;
  v69 = v55;
  v78 = v84;
  v50 = v59;
  v70 = v50;
  v54 = v62;
  v71 = v54;
  v79 = v38;
  v39 = v58;
  v72 = v39;
  v40 = v63;
  v73 = v40;
  v41 = v64;
  v74 = v41;
  v42 = v65;
  v75 = v42;
  v51 = v60;
  v76 = v51;
  [(MTRAsyncWorkItem *)v37 setReadyHandler:v66];
  asyncWorkQueue = self->_asyncWorkQueue;
  v44 = [v40 unsignedLongLongValue];
  v45 = MTRClusterNameForID([v40 unsignedLongLongValue]);
  v46 = [v41 unsignedLongLongValue];
  v47 = MTRRequestCommandNameForID([v40 unsignedLongLongValue], objc_msgSend(v41, "unsignedLongLongValue"));
  [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v56 descriptionWithFormat:@"invoke %@ 0x%llx (%@) 0x%llx (%@): %@", v39, v44, v45, v46, v47, v42];

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)_invokeResponse:(id)a3 matchesRequiredResponse:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = a4;
  v42 = v6;
  v7 = [v6 objectForKeyedSubscript:?];

  if (v7)
  {
    v38 = [v6 objectForKeyedSubscript:@"data"];
    v8 = [v38 objectForKeyedSubscript:@"type"];
    v9 = [@"Structure" isEqual:v8];

    if (v9)
    {
      v40 = [v38 objectForKeyedSubscript:@"value"];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v39;
      v10 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (v10)
      {
        v35 = self;
        v37 = *v48;
        while (1)
        {
          v36 = v10;
          v11 = 0;
LABEL_6:
          if (*v48 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * v11);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v13 = v40;
          v14 = [v13 countByEnumeratingWithState:&v43 objects:v61 count:16];
          if (!v14)
          {
            break;
          }

          v15 = *v44;
LABEL_10:
          v16 = 0;
          while (1)
          {
            if (*v44 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v43 + 1) + 8 * v16);
            v18 = [v17 objectForKeyedSubscript:@"contextTag"];
            v19 = [v12 isEqual:v18];

            if (v19)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v13 countByEnumeratingWithState:&v43 objects:v61 count:16];
              if (v14)
              {
                goto LABEL_10;
              }

              goto LABEL_33;
            }
          }

          v20 = [v17 objectForKeyedSubscript:@"data"];

          if (!v20)
          {
            goto LABEL_34;
          }

          v21 = [obj objectForKeyedSubscript:v12];
          if (([v21 isEqual:v20] & 1) == 0)
          {
            v29 = sub_2393D9044(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v42 objectForKeyedSubscript:@"commandPath"];
              *buf = 138413314;
              v52 = v35;
              v53 = 2112;
              v54 = v30;
              v55 = 2112;
              v56 = v12;
              v57 = 2112;
              v58 = v20;
              v59 = 2112;
              v60 = v21;
              _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "%@ invokeCommands response for %@ field %@ got %@ but expected %@", buf, 0x34u);
            }

            if (sub_2393D5398(1u))
            {
              v33 = [v42 objectForKeyedSubscript:@"commandPath"];
              sub_2393D5320(0, 1);
            }

            goto LABEL_43;
          }

          if (++v11 != v36)
          {
            goto LABEL_6;
          }

          v10 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
          v22 = 1;
          if (!v10)
          {
            goto LABEL_45;
          }
        }

LABEL_33:

LABEL_34:
        v27 = sub_2393D9044(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [v42 objectForKeyedSubscript:@"commandPath"];
          *buf = 138412802;
          v52 = v35;
          v53 = 2112;
          v54 = v28;
          v55 = 2112;
          v56 = v12;
          _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "%@ invokeCommands response for %@ does not have a field with ID %@", buf, 0x20u);
        }

        if (sub_2393D5398(1u))
        {
          v20 = [v42 objectForKeyedSubscript:@"commandPath"];
          sub_2393D5320(0, 1);
LABEL_43:
        }

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

LABEL_45:

      goto LABEL_46;
    }

    v25 = sub_2393D9044(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v42 objectForKeyedSubscript:@"commandPath"];
      *buf = 138412802;
      v52 = self;
      v53 = 2112;
      v54 = v38;
      v55 = 2112;
      v56 = v26;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "%@ invokeCommands data value %@ for command response for %@ is not a structure", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      [v42 objectForKeyedSubscript:@"commandPath"];
      v34 = v22 = 0;
      sub_2393D5320(0, 1);

LABEL_46:
      goto LABEL_47;
    }

LABEL_30:
    v22 = 0;
    goto LABEL_46;
  }

  v23 = sub_2393D9044(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [v42 objectForKeyedSubscript:@"commandPath"];
    *buf = 138412546;
    v52 = self;
    v53 = 2112;
    v54 = v24;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "%@ invokeCommands expects a data response for %@ but got no data", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v38 = [v42 objectForKeyedSubscript:@"commandPath"];
    sub_2393D5320(0, 1);
    goto LABEL_30;
  }

  v22 = 0;
LABEL_47:

  v31 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)invokeCommands:(id)a3 queue:(id)a4 completion:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v7 = a4;
  v8 = a5;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_23939FEE0;
  v46[3] = &unk_278A75A78;
  v24 = v7;
  v47 = v24;
  v25 = v8;
  v48 = v25;
  v9 = MEMORY[0x23EE78590](v46);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = [v21 reverseObjectEnumerator];
  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v11)
  {
    v23 = *v43;
    do
    {
      v27 = v11;
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        objc_initWeak(&location, self);
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = [v28 reverseObjectEnumerator];
        v14 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v14)
        {
          v15 = *v38;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v37 + 1) + 8 * j);
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = sub_23939FFA8;
              v34[3] = &unk_278A75AC8;
              objc_copyWeak(&v36, &location);
              v34[4] = v17;
              v35 = v9;
              v18 = MEMORY[0x23EE78590](v34);
              v9 = MEMORY[0x23EE78590]();

              objc_destroyWeak(&v36);
            }

            v14 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v14);
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_2393A06B0;
        v29[3] = &unk_278A75AF0;
        objc_copyWeak(&v33, &location);
        v29[4] = v28;
        v30 = v24;
        v31 = v25;
        v32 = v9;
        v19 = MEMORY[0x23EE78590](v29);
        v9 = MEMORY[0x23EE78590]();

        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }

      v10 = obj;
      v11 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v11);
  }

  v9[2](v9, 1, MEMORY[0x277CBEBF8]);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowWithSetupPasscode:(id)a3 discriminator:(id)a4 duration:(id)a5 queue:(id)a6 completion:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(MTRDevice_Concrete *)self newBaseDevice];
  [v16 openCommissioningWindowWithSetupPasscode:v17 discriminator:v12 duration:v13 queue:v14 completion:v15];
}

- (void)openCommissioningWindowWithDiscriminator:(id)a3 duration:(id)a4 queue:(id)a5 completion:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MTRDevice_Concrete *)self newBaseDevice];
  [v13 openCommissioningWindowWithDiscriminator:v14 duration:v10 queue:v11 completion:v12];
}

- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = self;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ downloadLogOfType: %lu, timeout: %f", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v18 = a4;
    v16 = self;
    v17 = a3;
    sub_2393D5320(0, 2);
  }

  v13 = [(MTRDevice_Concrete *)self newBaseDevice:v16];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setDiagnosticLogTransferInProgress:1];
  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  os_unfair_lock_unlock(&self->super._lock);
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2393A0CEC;
  v19[3] = &unk_278A75B18;
  objc_copyWeak(v21, buf);
  v21[1] = a3;
  v14 = v11;
  v20 = v14;
  [v13 downloadLogOfType:a3 timeout:v10 queue:v19 completion:a4];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_checkExpiredExpectedValues
{
  v53 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v32 = [MEMORY[0x277CBEAA8] date];
  v30 = [MEMORY[0x277CBEB58] set];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = self->_expectedValueCache;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v4)
  {
    v33 = 0;
    goto LABEL_17;
  }

  v33 = 0;
  v5 = *v41;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v41 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v40 + 1) + 8 * i);
      v8 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:v7];
      v9 = [v8 objectAtIndexedSubscript:0];
      if (v8)
      {
        if ([v32 compare:v9] == 1)
        {
          v51[0] = v7;
          v10 = [v8 objectAtIndexedSubscript:1];
          v51[1] = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
          [v30 addObject:v11];

LABEL_12:
          goto LABEL_13;
        }

        v10 = v33;
        if (!v33 || (v10 = v33, [v33 compare:v9] == 1))
        {
          v33 = v9;
          goto LABEL_12;
        }
      }

LABEL_13:
    }

    v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v40 objects:v52 count:16];
  }

  while (v4);
LABEL_17:

  v28 = [MEMORY[0x277CBEB18] array];
  v29 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v30;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v12)
  {
    v13 = *v37;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * j);
        v16 = [v15 objectAtIndexedSubscript:0];
        v17 = [v15 objectAtIndexedSubscript:1];
        v18 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v16];
        if (v18 && ![(MTRDevice *)self _attributeDataValue:v17 isEqualToDataValue:v18])
        {
          v48[0] = @"attributePath";
          v48[1] = @"data";
          v49[0] = v16;
          v49[1] = v18;
          v48[2] = @"previousData";
          v49[2] = v17;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
          [v28 addObject:v19];

          [v29 addObject:v16];
        }

        [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v12);
  }

  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v45 = self;
    v46 = 2112;
    v47 = v29;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "%@ report from expired expected values %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v26 = self;
    v27 = v29;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice_Concrete *)self _reportAttributes:v28, v26, v27];
  if (v33 && [(NSMutableDictionary *)self->_expectedValueCache count]&& ![(MTRDevice_Concrete *)self expirationCheckScheduled])
  {
    [v33 timeIntervalSinceDate:v32];
    if (v21 >= 0.1)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0.1;
    }

    objc_initWeak(buf, self);
    v23 = dispatch_time(0, (v22 * 1000000000.0));
    v24 = [(MTRDevice_Concrete *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393A14D8;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v35, buf);
    dispatch_after(v23, v24, block);

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_performScheduledExpirationCheck
{
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setExpirationCheckScheduled:0];
  [(MTRDevice_Concrete *)self _checkExpiredExpectedValues];

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)_attributeValueDictionaryForAttributePath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self _lockedAttributeValueDictionaryForAttributePath:v4];
  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (id)_lockedAttributeValueDictionaryForAttributePath:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v6 compare:v7];

    if (v8 != 1)
    {
      v10 = [v5 objectAtIndexedSubscript:1];

      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:v4];
  }

  v9 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ _attributeValueDictionaryForAttributePath: could not find cached attribute values for attribute %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_dataValueWithoutDataVersion:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 objectForKeyedSubscript:@"type"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];

    if (v6)
    {
      v15[0] = @"type";
      v7 = [v4 objectForKeyedSubscript:@"type"];
      v15[1] = @"value";
      v16[0] = v7;
      v8 = [v4 objectForKeyedSubscript:@"value"];
      v16[1] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    }

    else
    {
      v13 = @"type";
      v12 = [v4 objectForKeyedSubscript:@"type"];
      v14 = v12;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_noteDataVersion:(id)a3 forClusterPath:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (v6 && v7)
  {
    v8 = [(MTRDevice_Concrete *)self _clusterDataForPath:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [(MTRDeviceClusterData *)v8 dataVersion];
      v11 = [v10 isEqualToNumber:v6];

      if (v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      [(MTRDeviceClusterData *)v9 setPendingDataVersion:v6];
    }

    else
    {
      v9 = objc_alloc_init(MTRDeviceClusterData);
      [(MTRDeviceClusterData *)v9 setPendingDataVersion:v6];
    }

    clusterDataToPersist = self->_clusterDataToPersist;
    if (!clusterDataToPersist)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      v15 = self->_clusterDataToPersist;
      self->_clusterDataToPersist = v14;

      clusterDataToPersist = self->_clusterDataToPersist;
    }

    [(NSMutableDictionary *)clusterDataToPersist setObject:v9 forKeyedSubscript:v7];
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "%@ updated DataVersion for %@ to %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    goto LABEL_17;
  }

  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ Attempted to update data version with a nil value. clusterPath: %@, dataVersion: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_attributeAffectsDeviceConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 cluster];
  v5 = [v4 unsignedLongValue];

  if (v5 != 29 || ([v3 attribute], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedLongValue"), v6, v7 > 3) || v7 == 2)
  {
    v9 = [v3 attribute];
    v10 = [v9 unsignedLongValue];

    if ((v10 - 65529) >= 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x1Du >> (v10 + 7);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)_removeClusters:(id)a3 doRemoveFromDataStore:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  [(NSMutableSet *)self->_persistedClusters minusSet:v6, v6];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [(NSCache *)self->_persistedClusterData removeObjectForKey:v10];
        [(NSMutableDictionary *)self->_clusterDataToPersist removeObjectForKey:v10];
        if (v4)
        {
          v11 = [(MTRDevice_Concrete *)self _concreteController];
          v12 = [v11 controllerDataStore];
          v13 = [(MTRDevice *)self nodeID];
          v14 = [v10 endpoint];
          v15 = [v10 cluster];
          [v12 clearStoredClusterDataForNodeID:v13 endpointID:v14 clusterID:v15];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeAttributes:(id)a3 fromCluster:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(MTRDevice_Concrete *)self _removeCachedAttribute:*(*(&v16 + 1) + 8 * v11++) fromCluster:v7, v16];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(NSCache *)self->_persistedClusterData removeObjectForKey:v7];
  v12 = [(MTRDevice_Concrete *)self _concreteController];
  v13 = [v12 controllerDataStore];
  v14 = [(MTRDevice *)self nodeID];
  [v13 removeAttributes:v8 fromCluster:v7 forNodeID:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_pruneEndpointsIn:(id)a3 missingFrom:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v29 = a4;
  v6 = MEMORY[0x277CBEB58];
  v7 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:a3];
  v28 = [v6 setWithArray:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v29];
  v10 = [v8 setWithArray:v9];

  v27 = v10;
  [v28 minusSet:v10];
  val = self;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  obj = v28;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v31 = *v42;
    do
    {
      v32 = v11;
      for (i = 0; i != v32; ++i)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v15 = val->_persistedClusters;
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v16)
        {
          v17 = *v38;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v38 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v37 + 1) + 8 * j);
              v20 = [v19 endpoint];
              v21 = [v20 isEqualToNumber:v13];

              if (v21)
              {
                [v14 addObject:v19];
              }
            }

            v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v16);
        }

        [(MTRDevice_Concrete *)val _removeClusters:v14 doRemoveFromDataStore:0];
        v22 = [(MTRDevice_Concrete *)val _concreteController];
        v23 = [v22 controllerDataStore];
        v24 = [(MTRDevice *)val nodeID];
        [v23 clearStoredClusterDataForNodeID:v24 endpointID:v13];

        objc_initWeak(&location, val);
        deviceController = val->super._deviceController;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2393A260C;
        v34[3] = &unk_278A75698;
        objc_copyWeak(&v35, &location);
        v34[4] = v13;
        [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v34 errorHandler:0];
        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v11);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_pruneClustersIn:(id)a3 missingFrom:(id)a4 forEndpoint:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v30 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEB58];
  v31 = self;
  v28 = v8;
  v11 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v8];
  v12 = [v10 setWithArray:v11];

  v13 = MEMORY[0x277CBEB98];
  v14 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v30];
  v15 = [v13 setWithArray:v14];

  v29 = v15;
  [v12 minusSet:v15];
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = self->_persistedClusters;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v17)
  {
    v18 = *v39;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        v21 = [v20 endpoint];
        if ([v21 isEqualToNumber:v9])
        {
          v22 = [v20 cluster];
          v23 = [v12 containsObject:v22];

          if (v23)
          {
            [v32 addObject:v20];
          }
        }

        else
        {
        }
      }

      v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v17);
  }

  [(MTRDevice_Concrete *)v31 _removeClusters:v32 doRemoveFromDataStore:1];
  objc_initWeak(&location, v31);
  deviceController = v31->super._deviceController;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2393A2AC4;
  v33[3] = &unk_278A75800;
  objc_copyWeak(&v36, &location);
  v25 = v12;
  v34 = v25;
  v26 = v9;
  v35 = v26;
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v33 errorHandler:0];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_pruneAttributesIn:(id)a3 missingFrom:(id)a4 forCluster:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB58];
  v12 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v8];
  v13 = [v11 setWithArray:v12];

  v14 = MEMORY[0x277CBEB98];
  v15 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v9];
  v16 = [v14 setWithArray:v15];

  [v13 minusSet:v16];
  [(MTRDevice_Concrete *)self _removeAttributes:v13 fromCluster:v10];
  objc_initWeak(&location, self);
  deviceController = self->super._deviceController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2393A2ED0;
  v20[3] = &unk_278A75800;
  objc_copyWeak(&v23, &location);
  v18 = v13;
  v21 = v18;
  v19 = v10;
  v22 = v19;
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v20 errorHandler:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_pruneStoredDataForPath:(id)a3 missingFrom:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _dataStoreExists]|| [(NSMutableDictionary *)self->_clusterDataToPersist count])
  {
    v8 = [v6 cluster];
    v9 = [v8 unsignedLongValue];

    if (v9 == 29)
    {
      v10 = [v6 attribute];
      if ([v10 unsignedLongValue] == 3)
      {
        v11 = [v6 endpoint];
        v12 = [v11 isEqualToNumber:&unk_284C43AA8];

        if (v12)
        {
          v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v6];
          [(MTRDevice_Concrete *)self _pruneEndpointsIn:v13 missingFrom:v7];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v14 = [v6 attribute];
      v15 = [v14 unsignedLongValue];

      if (v15 == 1)
      {
        v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v6];
        v16 = [v6 endpoint];
        [(MTRDevice_Concrete *)self _pruneClustersIn:v13 missingFrom:v7 forEndpoint:v16];
LABEL_12:

        goto LABEL_13;
      }
    }

    v17 = [v6 attribute];
    v18 = [v17 unsignedLongValue];

    if (v18 == 65531)
    {
      v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v6];
      v16 = [v6 endpoint];
      v19 = [v6 cluster];
      v20 = [MTRClusterPath clusterPathWithEndpointID:v16 clusterID:v19];
      [(MTRDevice_Concrete *)self _pruneAttributesIn:v13 missingFrom:v7 forCluster:v20];

      goto LABEL_12;
    }
  }

  else
  {
    v22 = sub_2393D9044(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = self;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_INFO, "%@ No data store to prune from", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_getAttributesToReportWithReportedValues:(id)a3 fromSubscription:(BOOL)a4
{
  v64 = a4;
  v93 = *MEMORY[0x277D85DE8];
  v60 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v65 = [MEMORY[0x277CBEB18] array];
  v66 = [MEMORY[0x277CBEB18] array];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v60;
  v5 = [obj countByEnumeratingWithState:&v77 objects:v92 count:16];
  v72 = self;
  if (v5)
  {
    v70 = *v78;
    do
    {
      v71 = v5;
      for (i = 0; i != v71; ++i)
      {
        if (*v78 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v77 + 1) + 8 * i);
        [(NSDate *)v7 objectForKeyedSubscript:@"attributePath", v55];
        v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v9 = [(NSDate *)v7 objectForKeyedSubscript:@"data"];
        v10 = [(NSDate *)v7 objectForKeyedSubscript:@"error"];
        v11 = v10;
        if (v9 | v10)
        {
          if (v10)
          {
            v12 = [(MTRDevice_Concrete *)v72 _cachedAttributeValueForPath:*&v8];
            v13 = sub_2393D9044(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [(NSMutableDictionary *)v72->_expectedValueCache objectForKeyedSubscript:*&v8];
              *buf = 138413314;
              v83 = v72;
              v84 = 2112;
              v85 = v8;
              v86 = 2112;
              v87 = v11;
              v88 = 2112;
              v89 = v14;
              v90 = 2112;
              v91 = v12;
              _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ report %@ error %@ purge expected value %@ read cache %@", buf, 0x34u);
            }

            if (sub_2393D5398(1u))
            {
              v58 = [(NSMutableDictionary *)v72->_expectedValueCache objectForKeyedSubscript:*&v8];
              v59 = v12;
              v56 = v8;
              v57 = v11;
              v55 = v72;
              sub_2393D5320(0, 1);
            }

            [(NSMutableDictionary *)v72->_expectedValueCache setObject:0 forKeyedSubscript:*&v8, v55, *&v56, v57, v58, v59];
            [(MTRDevice_Concrete *)v72 _setCachedAttributeValue:0 forPath:*&v8 fromSubscription:v64];
            v15 = v12;
LABEL_57:
            if (v15)
            {
              v39 = [(NSDate *)v7 mutableCopy];
              [v39 setObject:v15 forKeyedSubscript:@"previousData"];
              [v65 addObject:v39];
            }

            else
            {
              [v65 addObject:v7];
            }

            [v66 addObject:{*&v8, v55}];
            goto LABEL_61;
          }

          v69 = [v9 objectForKeyedSubscript:@"dataVersion"];
          v17 = [*&v8 endpoint];
          v18 = [*&v8 cluster];
          v67 = [MTRClusterPath clusterPathWithEndpointID:v17 clusterID:v18];

          if (v69)
          {
            [(MTRDevice_Concrete *)v72 _noteDataVersion:v69 forClusterPath:v67];
            v19 = [(MTRDevice_Concrete *)v72 _dataValueWithoutDataVersion:v9];

            v9 = v19;
          }

          v15 = [(MTRDevice_Concrete *)v72 _cachedAttributeValueForPath:*&v8];
          v20 = [(MTRDevice *)v72 _attributeDataValue:v9 isEqualToDataValue:v15];
          if ((v20 & 1) == 0)
          {
            [(MTRDevice_Concrete *)v72 _pruneStoredDataForPath:*&v8 missingFrom:v9];
            if (!v72->_deviceConfigurationChanged)
            {
              v21 = [(MTRDevice_Concrete *)v72 _attributeAffectsDeviceConfiguration:*&v8];
              v72->_deviceConfigurationChanged = v21;
              if (v21)
              {
                v22 = sub_2393D9044(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v83 = v72;
                  v84 = 2112;
                  v85 = v8;
                  _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "%@ device configuration changed due to changes in attribute %@", buf, 0x16u);
                }

                if (sub_2393D5398(2u))
                {
                  v55 = v72;
                  v56 = v8;
                  sub_2393D5320(0, 2);
                }
              }
            }

            [(MTRDevice_Concrete *)v72 _setCachedAttributeValue:v9 forPath:*&v8 fromSubscription:v64, v55];
            [(MTRDevice *)v72 _attributeValue:v9 reportedForPath:*&v8];
            v23 = [*&v8 cluster];
            if ([v23 unsignedLongValue] != 56)
            {
              goto LABEL_30;
            }

            v24 = [*&v8 attribute];
            if ([v24 unsignedLongValue])
            {
              goto LABEL_29;
            }

            v40 = [(MTRDevice_Concrete *)v72 shouldDetectTimeSynchronizationLoss];

            if (v40)
            {
              v41 = [[MTRAttributeReport alloc] initWithResponseValue:v7 error:0];
              v23 = v41;
              if (v41)
              {
                v24 = [(MTRAttributeReport *)v41 value];
                v42 = [v24 unsignedLongLongValue];
                v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v42 + 946684800000000) / 1000000.0];
                [v43 timeIntervalSinceNow];
                if (fabs(v44) > 300.0)
                {
                  loga = sub_2393D9044(0);
                  if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v83 = v72;
                    _os_log_impl(&dword_238DAE000, loga, OS_LOG_TYPE_DEFAULT, "%@ Time synchronization loss detected", buf, 0xCu);
                  }

                  if (sub_2393D5398(2u))
                  {
                    v55 = v72;
                    sub_2393D5320(0, 2);
                  }

                  v72->_timeSynchronizationLossDetected = 1;
                  v45 = [MEMORY[0x277CBEAA8] now];
                  timeSynchronizationLossDetectedTime = v72->_timeSynchronizationLossDetectedTime;
                  v72->_timeSynchronizationLossDetectedTime = v45;
                }

LABEL_29:
              }

LABEL_30:
            }
          }

          v25 = [(NSMutableDictionary *)v72->_expectedValueCache objectForKeyedSubscript:*&v8];
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v20;
          }

          log = v26;
          if (v26)
          {
            v27 = sub_2393D9044(0);
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              if (v28)
              {
                *buf = 138412802;
                v83 = v72;
                v84 = 2112;
                v85 = v8;
                v86 = 2112;
                v87 = v9;
                _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "%@ report %@ value %@ filtered - expected value still present", buf, 0x20u);
              }

              if (sub_2393D5398(2u))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v28)
              {
                *buf = 138412802;
                v83 = v72;
                v84 = 2112;
                v85 = v8;
                v86 = 2112;
                v87 = v9;
                _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "%@ report %@ value %@ filtered - same as read cache", buf, 0x20u);
              }

              if (sub_2393D5398(2u))
              {
LABEL_43:
                v56 = v8;
                v57 = v9;
                v55 = v72;
                sub_2393D5320(0, 2);
              }
            }
          }

          v29 = [*&v8 cluster];
          if ([v29 unsignedLongValue] == 51)
          {
            v30 = [*&v8 attribute];
            v31 = [v30 unsignedLongValue] == 2;

            if (v31)
            {
              v32 = [v9 objectForKeyedSubscript:@"type"];
              v33 = [v32 isEqual:@"UnsignedInteger"];

              if (v33)
              {
                v29 = [v9 objectForKeyedSubscript:@"value"];
                v34 = [v29 unsignedLongLongValue];
                v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v34];
                v61 = v72->_estimatedStartTime;
                if (!v72->_estimatedStartTime || [(NSDate *)v35 compare:?]== NSOrderedAscending)
                {
                  v36 = sub_2393D9044(0);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138413058;
                    v83 = v72;
                    v84 = 2048;
                    v85 = v34;
                    v86 = 2112;
                    v87 = v61;
                    v88 = 2112;
                    v89 = v35;
                    _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_DEFAULT, "%@ General Diagnostics UpTime %.3lf: estimated start time %@ => %@", buf, 0x2Au);
                  }

                  if (sub_2393D5398(2u))
                  {
                    v57 = v61;
                    v58 = v35;
                    v56 = v34;
                    v55 = v72;
                    sub_2393D5320(0, 2);
                  }

                  objc_storeStrong(&v72->_estimatedStartTime, v35);
                }

                estimatedStartTimeFromGeneralDiagnosticsUpTime = v72->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
                v72->_estimatedStartTimeFromGeneralDiagnosticsUpTime = v35;
                v38 = v35;

                goto LABEL_55;
              }
            }
          }

          else
          {
LABEL_55:
          }

          if (log)
          {
            goto LABEL_61;
          }

          goto LABEL_57;
        }

        v16 = sub_2393D9044(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v83 = v72;
          v84 = 2112;
          v85 = v8;
          v86 = 2112;
          v87 = v7;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "%@ report %@ no data value or error: %@", buf, 0x20u);
        }

        if (sub_2393D5398(2u))
        {
          v56 = v8;
          v57 = v7;
          v55 = v72;
          sub_2393D5320(0, 2);
        }

        v15 = 0;
        v9 = 0;
LABEL_61:
      }

      v5 = [obj countByEnumeratingWithState:&v77 objects:v92 count:16];
    }

    while (v5);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v47 = v66;
  v48 = [v47 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v48)
  {
    v49 = *v74;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v74 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = *(*(&v73 + 1) + 8 * j);
        v52 = sub_2393D9044(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v83 = v72;
          v84 = 2112;
          v85 = v51;
          _os_log_impl(&dword_238DAE000, v52, OS_LOG_TYPE_DEFAULT, "%@ report from reported values %@", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2);
        }
      }

      v48 = [v47 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v48);
  }

  v53 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)getAllAttributesReport
{
  v2 = self;
  v36 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  v23 = v2;
  v22 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MTRDevice_Concrete *)v2 _knownClusters];
  v18 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v18)
  {
    v17 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v28 + 1) + 8 * i);
        v4 = [(MTRDevice_Concrete *)v2 _clusterDataForPath:v3];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v19 = v4;
        v21 = [v4 attributes];
        v5 = [v21 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v5)
        {
          v6 = *v25;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v25 != v6)
              {
                objc_enumerationMutation(v21);
              }

              v8 = *(*(&v24 + 1) + 8 * j);
              v9 = [v3 endpoint];
              v10 = [v3 cluster];
              v11 = [MTRAttributePath attributePathWithEndpointID:v9 clusterID:v10 attributeID:v8];

              v32[1] = @"data";
              v33[0] = v11;
              v32[0] = @"attributePath";
              v12 = [(os_unfair_lock_s *)v23 _lockedAttributeValueDictionaryForAttributePath:v11];
              v33[1] = v12;
              v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
              [v22 addObject:v13];
            }

            v5 = [v21 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v5);
        }

        v2 = v23;
      }

      v18 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(v23 + 2);
  v14 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)setPersistedClusterData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MTRDevice_Concrete *)self _doSetPersistedClusterData:v4];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2048;
    v10 = [v4 count];
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ setPersistedClusterData count: %lu", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    [v4 count];
    sub_2393D5320(0, 2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_doSetPersistedClusterData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = a3;
  if ([v20 count])
  {
    os_unfair_lock_lock(&self->super._lock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v20;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          [(NSMutableSet *)self->_persistedClusters addObject:v8];
          persistedClusterData = self->_persistedClusterData;
          v10 = [v4 objectForKeyedSubscript:v8];
          [(NSCache *)persistedClusterData setObject:v10 forKey:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v5);
    }

    [(MTRDevice_Concrete *)self _updateAttributeDependentDescriptionData];
    os_unfair_lock_lock(&self->_descriptionLock);
    v11 = self->_allNetworkFeatures;
    os_unfair_lock_unlock(&self->_descriptionLock);
    if (([(NSNumber *)v11 unsignedLongLongValue]& 1) == 0 && ([(NSNumber *)v11 unsignedLongLongValue]& 2) == 0)
    {
      v12 = [MTRClusterPath clusterPathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43AC0];
      v13 = [v4 objectForKeyedSubscript:v12];
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 attributes];
        v16 = [v15 objectForKeyedSubscript:&unk_284C43AD8];
        *buf = 138412802;
        v26 = self;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ after setting persisted data, network features: %@, root network commissioning featureMap: %@", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v17 = [v13 attributes];
        v19 = [v17 objectForKeyedSubscript:&unk_284C43AD8];
        sub_2393D5320(0, 2);
      }
    }

    self->_deviceCachePrimed = 1;

    os_unfair_lock_unlock(&self->super._lock);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setLastInitialSubscribeLatency:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_estimatedSubscriptionLatency, a3);
  }
}

- (void)setPersistedDeviceData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "%@ setPersistedDeviceData: %@", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    v9 = self;
    v10 = v4;
    sub_2393D5320(0, 3);
  }

  os_unfair_lock_lock(&self->super._lock);
  v6 = [v4 objectForKeyedSubscript:@"lastInitialSubscribeLatency"];
  if (v6)
  {
    [(MTRDevice_Concrete *)self _setLastInitialSubscribeLatency:v6];
  }

  v7 = [v4 objectForKeyedSubscript:{@"highestObservedEventNumber", v9, v10}];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTRDevice_Concrete *)self setHighestObservedEventNumber:v7];
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_storePersistedDeviceData
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _concreteController];
  v4 = [v3 controllerDataStore];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = v5;
    estimatedSubscriptionLatency = self->_estimatedSubscriptionLatency;
    if (estimatedSubscriptionLatency)
    {
      [v5 setObject:estimatedSubscriptionLatency forKeyedSubscript:@"lastInitialSubscribeLatency"];
    }

    v8 = [(MTRDevice_Concrete *)self highestObservedEventNumber];

    if (v8)
    {
      v9 = [(MTRDevice_Concrete *)self highestObservedEventNumber];
      [v6 setObject:v9 forKeyedSubscript:@"highestObservedEventNumber"];

      [(MTRDevice_Concrete *)self setHighestObservedEventNumberNeedsPersisting:0];
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "%@ _storePersistedDeviceData: %@", buf, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      v14 = self;
      v15 = v6;
      sub_2393D5320(0, 3);
    }

    v11 = [v6 copy];
    v12 = [(MTRDevice *)self nodeID];
    [v4 storeDeviceData:v11 forNodeID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)deviceCachePrimed
{
  os_unfair_lock_lock(&self->super._lock);
  deviceCachePrimed = self->_deviceCachePrimed;
  os_unfair_lock_unlock(&self->super._lock);
  return deviceCachePrimed;
}

- (void)_setExpectedValue:(id)a3 attributePath:(id)a4 expirationTime:(id)a5 shouldReportValue:(BOOL *)a6 attributeValueToReport:(id *)a7 expectedValueID:(unint64_t)a8 previousValue:(id *)a9
{
  v33[3] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v32 = a5;
  os_unfair_lock_assert_owner(&self->super._lock);
  *a6 = 0;
  v16 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:v15];
  v17 = v16;
  if (v16)
  {
    if (v14)
    {
      v18 = [v16 objectAtIndexedSubscript:1];
      v19 = [(MTRDevice *)self _attributeDataValue:v14 isEqualToDataValue:v18];

      if (!v19)
      {
        *a6 = 1;
        v20 = v14;
        *a7 = v14;
        *a9 = [v17 objectAtIndexedSubscript:1];
      }

LABEL_16:
      v33[0] = v32;
      v33[1] = v14;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a8];
      v33[2] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
      [(NSMutableDictionary *)self->_expectedValueCache setObject:v28 forKeyedSubscript:v15];

      goto LABEL_17;
    }

    v21 = [v16 objectAtIndexedSubscript:2];
    if ([v21 unsignedLongLongValue] == a8)
    {
      v30 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v15];
      v23 = [v17 objectAtIndexedSubscript:1];
      v24 = [(MTRDevice *)self _attributeDataValue:v23 isEqualToDataValue:v30];

      if (!v24)
      {
        *a6 = 1;
        *a7 = v30;
        *a9 = [v17 objectAtIndexedSubscript:1];
        [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:v15];
      }
    }
  }

  else
  {
    v21 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v15];
    if (v14)
    {
      if ([(MTRDevice *)self _attributeDataValue:v14 isEqualToDataValue:v21])
      {
        v22 = 0;
      }

      else
      {
        *a6 = 1;
        v25 = v14;
        *a7 = v14;
        v26 = v21;
        v22 = v21;
      }

      *a9 = v22;

      goto LABEL_16;
    }

    *a9 = 0;
  }

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];
}

- (id)_getAttributesToReportWithNewExpectedValues:(id)a3 expirationTime:(id)a4 expectedValueID:(unint64_t *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  expectedValueNextID = self->_expectedValueNextID;
  v26 = self;
  self->_expectedValueNextID = expectedValueNextID + 1;
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v8)
  {
    v24 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"attributePath"];
        v12 = [v10 objectForKeyedSubscript:@"data"];
        buf[0] = 0;
        v28 = 0;
        v29 = 0;
        [(MTRDevice_Concrete *)v26 _setExpectedValue:v12 attributePath:v11 expirationTime:v27 shouldReportValue:buf attributeValueToReport:&v29 expectedValueID:expectedValueNextID previousValue:&v28];
        v13 = v29;
        v14 = v28;
        v15 = v14;
        if (buf[0] == 1)
        {
          if (v14)
          {
            v40[0] = @"attributePath";
            v40[1] = @"data";
            v41[0] = v11;
            v41[1] = v13;
            v40[2] = @"previousData";
            v41[2] = v14;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
          }

          else
          {
            v38[0] = @"attributePath";
            v38[1] = @"data";
            v39[0] = v11;
            v39[1] = v13;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
          }
          v16 = ;
          [v21 addObject:v16];

          [v22 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v8);
  }

  if (a5)
  {
    *a5 = expectedValueNextID;
  }

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v26;
    v36 = 2112;
    v37 = v22;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ report from new expected values %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)setExpectedValues:(id)a3 expectedValueInterval:(id)a4 expectedValueID:(unint64_t *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEAA8];
  [v9 doubleValue];
  v12 = [v10 dateWithTimeIntervalSinceNow:v11 / 1000.0];
  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [v12 timeIntervalSinceNow];
    *buf = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ Setting expected values %@ with expiration time %f seconds from now", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    [v12 timeIntervalSinceNow];
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_lock(&self->super._lock);
  v15 = [(MTRDevice_Concrete *)self _getAttributesToReportWithNewExpectedValues:v8 expirationTime:v12 expectedValueID:a5];
  [(MTRDevice_Concrete *)self _reportAttributes:v15];
  [(MTRDevice_Concrete *)self _checkExpiredExpectedValues];

  os_unfair_lock_unlock(&self->super._lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeExpectedValuesForAttributePaths:(id)a3 expectedValueID:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(MTRDevice_Concrete *)self _removeExpectedValueForAttributePath:*(*(&v12 + 1) + 8 * v10++) expectedValueID:a4, v12];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->super._lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeExpectedValueForAttributePath:(id)a3 expectedValueID:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _removeExpectedValueForAttributePath:v6 expectedValueID:a4];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_removeExpectedValueForAttributePath:(id)a3 expectedValueID:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v21 = 0;
  v19 = 0;
  v20 = 0;
  [(MTRDevice_Concrete *)self _setExpectedValue:0 attributePath:v6 expirationTime:0 shouldReportValue:&v21 attributeValueToReport:&v20 expectedValueID:a4 previousValue:&v19];
  v7 = v20;
  v8 = v19;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    if (v21)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v24 = self;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ remove expected value for path %@ should report %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    if (v21)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v17 = v6;
    v18 = v11;
    v16 = self;
    sub_2393D5320(0, 2);
  }

  if (v21 == 1)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v6 forKey:@"attributePath"];
    v13 = v12;
    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:@"data"];
    }

    if (v8)
    {
      [v13 setObject:v8 forKeyedSubscript:@"previousData"];
    }

    v22 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:{1, v16, v17, v18}];
    [(MTRDevice_Concrete *)self _reportAttributes:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)newBaseDevice
{
  v3 = [(MTRDevice *)self nodeID];
  v4 = [(MTRDevice *)self deviceController];
  v5 = [MTRBaseDevice deviceWithNodeID:v3 controller:v4];

  return v5;
}

- (id)_informationalNumberAtAttributePath:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v4];
  if (v5)
  {
    v6 = [MTRAttributeReport alloc];
    v12[0] = @"attributePath";
    v12[1] = @"data";
    v13[0] = v4;
    v13[1] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = [(MTRAttributeReport *)v6 initWithResponseValue:v7 error:0];

    v9 = [(MTRAttributeReport *)v8 value];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_informationalVendorID
{
  v3 = [MTRAttributePath attributePathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43B68 attributeID:&unk_284C43B80];
  v4 = [(MTRDevice_Concrete *)self _informationalNumberAtAttributePath:v3];

  return v4;
}

- (id)_informationalProductID
{
  v3 = [MTRAttributePath attributePathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43B68 attributeID:&unk_284C43A90];
  v4 = [(MTRDevice_Concrete *)self _informationalNumberAtAttributePath:v3];

  return v4;
}

- (void)_addInformationalAttributesToCurrentMetricScope
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _informationalVendorID];
  v7 = 2;
  v8 = "dwnfw_device_vendor_id";
  v9 = [v3 unsignedShortValue];
  v10 = 2;

  sub_23948BD20(&v7);
  v4 = [(MTRDevice_Concrete *)self _informationalProductID];
  v5 = [v4 unsignedShortValue];
  v7 = 2;
  v8 = "dwnfw_device_product_id";
  v9 = v5;
  v10 = 2;

  sub_23948BD20(&v7);
  v6 = [(MTRDevice_Concrete *)self _deviceUsesThread];
  v7 = 2;
  v8 = "dwnfw_device_uses_thread_BOOL";
  v9 = v6;
  v10 = 1;
  sub_23948BD20(&v7);
}

- (BOOL)_attributePathAffectsDescriptionData:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [v4 cluster];
  v6 = [v5 unsignedLongLongValue];

  if (v6 == 40)
  {
    v9 = [v4 attribute];
    v10 = [v9 unsignedLongLongValue];

    v8 = ((v10 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else if (v6 == 49)
  {
    v7 = [v4 attribute];
    v8 = [v7 unsignedLongLongValue] == 65532;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateAttributeDependentDescriptionData
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _informationalVendorID];
  v4 = [(MTRDevice_Concrete *)self _informationalProductID];
  v5 = [(MTRDevice_Concrete *)self _networkFeatures];
  os_unfair_lock_lock(&self->_descriptionLock);
  vid = self->_vid;
  self->_vid = v3;
  v7 = v3;

  pid = self->_pid;
  self->_pid = v4;
  v9 = v4;

  allNetworkFeatures = self->_allNetworkFeatures;
  self->_allNetworkFeatures = v5;

  os_unfair_lock_unlock(&self->_descriptionLock);
}

- (id)_endpointList
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:&unk_284C43AA8 clusterID:&unk_284C43A48 attributeID:&unk_284C43B98];
  v4 = [v3 mutableCopy];
  [v4 addObject:&unk_284C43AA8];

  return v4;
}

- (id)_cachedListOfNumbersValueForEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11 = [MTRAttributePath attributePathWithEndpointID:v8 clusterID:v9 attributeID:v10];
  v12 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v11];
  v13 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEA60] array];
  }

  v16 = v15;

  return v16;
}

- (id)_serverListForEndpointID:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:v4 clusterID:&unk_284C43A48 attributeID:&unk_284C43A60];

  return v5;
}

- (id)_attributeListForEndpointID:(id)a3 clusterID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->super._lock);
  v8 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:v6 clusterID:v7 attributeID:&unk_284C43BB0];

  return v8;
}

- (id)_networkFeatures
{
  v19 = *MEMORY[0x277D85DE8];
  [(MTRDevice_Concrete *)self _endpointList];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  obj = v15 = 0u;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [MTRAttributePath attributePathWithEndpointID:*(*(&v14 + 1) + 8 * i) clusterID:&unk_284C43AC0 attributeID:&unk_284C43AD8];
        v8 = [(MTRDevice_Concrete *)self _informationalNumberAtAttributePath:v7];
        v9 = v8;
        if (v8)
        {
          if (v3)
          {
            v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "unsignedLongLongValue") | objc_msgSend(v8, "unsignedLongLongValue")}];

            v3 = v10;
          }

          else
          {
            v3 = v8;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)controllerSuspended
{
  v3.receiver = self;
  v3.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v3 controllerSuspended];
  [(MTRDevice_Concrete *)self _cancelTimeUpdateTimer];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setSuspended:1];
  [(MTRDevice_Concrete *)self _resetSubscriptionWithReasonString:@"Controller suspended"];
  self->_reattemptingSubscription = 0;
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)controllerResumed
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v5 controllerResumed];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setSuspended:0];
  if ([(MTRDevice *)self _delegateExists])
  {
    [(MTRDevice_Concrete *)self _ensureSubscriptionForExistingDelegates:@"Controller resumed"];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ ignoring controller resume: no delegates", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  v4 = *MEMORY[0x277D85DE8];
}

- (optional<chip::Inet::IPAddress>)lastSubscriptionIPAddress
{
  os_unfair_lock_lock(&self->super._lock);
  *retstr = self->_lastSubscriptionIPAddress;

  os_unfair_lock_unlock(&self->super._lock);
  return result;
}

- (id).cxx_construct
{
  *(self + 456) = 0;
  *(self + 472) = 0;
  return self;
}

- (BOOL)_deviceHasActiveSubscription
{
  os_unfair_lock_lock(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  v5 = internalDeviceState == 2 || internalDeviceState == 4;
  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (void)_deviceMayBeReachable
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self lastSubscriptionActiveTime];

  if (v3 && (-[MTRDevice_Concrete lastSubscriptionActiveTime](self, "lastSubscriptionActiveTime"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = v5, v4, v6 > -1.5))
  {
    v9 = -v6;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = self;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ _deviceMayBeReachable called and ignored, because last received communication from device %.6lf seconds ago", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = self;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ _deviceMayBeReachable called, resetting subscription", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    objc_initWeak(buf, self);
    v8 = [(MTRDevice_Concrete *)self _concreteController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2393A7378;
    v12[3] = &unk_278A756E8;
    objc_copyWeak(&v13, buf);
    [v8 asyncGetCommissionerOnMatterQueue:v12 errorHandler:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)deviceWithNodeID:(unint64_t)a3 deviceController:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v8 = [a1 deviceWithNodeID:v7 controller:v6];

  return v8;
}

@end