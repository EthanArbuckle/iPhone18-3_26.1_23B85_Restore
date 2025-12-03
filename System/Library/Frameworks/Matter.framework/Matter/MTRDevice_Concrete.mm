@interface MTRDevice_Concrete
+ (id)deviceWithNodeID:(unint64_t)d deviceController:(id)controller;
- (BOOL)_attributeAffectsDeviceConfiguration:(id)configuration;
- (BOOL)_attributePathAffectsDescriptionData:(id)data;
- (BOOL)_deviceHasActiveSubscription;
- (BOOL)_deviceIsReportingExcessively;
- (BOOL)_deviceUsesThread;
- (BOOL)_doPersistClusterData;
- (BOOL)_haveClusterDataToPersist;
- (BOOL)_interestedPaths:(id)paths includesAttributePath:(id)path;
- (BOOL)_interestedPaths:(id)paths includesEventPath:(id)path;
- (BOOL)_invokeResponse:(id)response matchesRequiredResponse:(id)requiredResponse;
- (BOOL)_reattemptSubscriptionNowIfNeededWithReason:(id)reason;
- (BOOL)_subscriptionAbleToReport;
- (BOOL)_subscriptionsAllowed;
- (BOOL)deviceCachePrimed;
- (BOOL)deviceUsesThread;
- (BOOL)shouldDetectTimeSynchronizationLoss;
- (MTRDevice_Concrete)initWithNodeID:(id)d controller:(id)controller;
- (id).cxx_construct;
- (id)_attributeListForEndpointID:(id)d clusterID:(id)iD;
- (id)_attributeValueDictionaryForAttributePath:(id)path;
- (id)_cachedAttributeValueForPath:(id)path;
- (id)_cachedListOfNumbersValueForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID;
- (id)_clusterDataForPath:(id)path;
- (id)_clusterDataToPersistSnapshot;
- (id)_dataValueWithoutDataVersion:(id)version;
- (id)_endpointList;
- (id)_endpointsWithTimeSyncClusterServer;
- (id)_filteredAttributes:(id)attributes forInterestedPaths:(id)paths;
- (id)_filteredEvents:(id)events forInterestedPaths:(id)paths;
- (id)_getAttributesToReportWithNewExpectedValues:(id)values expirationTime:(id)time expectedValueID:(unint64_t *)d;
- (id)_getAttributesToReportWithReportedValues:(id)values fromSubscription:(BOOL)subscription;
- (id)_getCachedDataVersions;
- (id)_informationalNumberAtAttributePath:(id)path;
- (id)_informationalProductID;
- (id)_informationalVendorID;
- (id)_internalProperties;
- (id)_knownClusters;
- (id)_lockedAttributeValueDictionaryForAttributePath:(id)path;
- (id)_networkFeatures;
- (id)_serverListForEndpointID:(id)d;
- (id)arrayOfNumbersFromAttributeValue:(id)value;
- (id)description;
- (id)getAllAttributesReport;
- (id)newBaseDevice;
- (id)productID;
- (id)readAttributePaths:(id)paths;
- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params;
- (id)vendorID;
- (optional<chip::Inet::IPAddress>)lastSubscriptionIPAddress;
- (unsigned)networkCommissioningFeatures;
- (void)_addInformationalAttributesToCurrentMetricScope;
- (void)_callDelegateDeviceCachePrimed;
- (void)_cancelTimeUpdateTimer;
- (void)_changeInternalState:(unint64_t)state;
- (void)_changeState:(unint64_t)state;
- (void)_checkExpiredExpectedValues;
- (void)_clearSubscriptionPoolWorkWithProvidedDelegate:(id)delegate;
- (void)_commitPendingDataVersions;
- (void)_commitPendingDataVersionsForClusterPath:(id)path;
- (void)_createDataVersionFilterListFromDictionary:(id)dictionary dataVersionFilterList:(DataVersionFilter *)list count:(unint64_t *)count;
- (void)_delegateAdded:(id)added;
- (void)_deviceMayBeReachable;
- (void)_doHandleSubscriptionError:(id)error;
- (void)_doHandleSubscriptionReset:(id)reset;
- (void)_doSetPersistedClusterData:(id)data;
- (void)_ensureSubscriptionForExistingDelegates:(id)delegates;
- (void)_handleCASESessionEstablished:(const void *)established;
- (void)_handleEventReport:(id)report;
- (void)_handleReportBegin;
- (void)_handleReportEnd;
- (void)_handleResubscriptionNeededWithDelay:(id)delay;
- (void)_handleResubscriptionNeededWithDelayOnDeviceQueue:(id)queue;
- (void)_handleSubscriptionError:(id)error;
- (void)_handleSubscriptionEstablished;
- (void)_handleSubscriptionReset:(id)reset;
- (void)_handleUnsolicitedMessageFromPublisher;
- (void)_injectAttributeReport:(id)report fromSubscription:(BOOL)subscription;
- (void)_injectEventReport:(id)report;
- (void)_injectPossiblyInvalidEventReport:(id)report;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2;
- (void)_markDeviceAsUnreachableIfNeverSubscribed;
- (void)_noteDataVersion:(id)version forClusterPath:(id)path;
- (void)_notifyDelegateOfPrivateInternalPropertiesChanges;
- (void)_performScheduledExpirationCheck;
- (void)_performScheduledTimeUpdate;
- (void)_persistClusterDataAsNeeded;
- (void)_pruneAttributesIn:(id)in missingFrom:(id)from forCluster:(id)cluster;
- (void)_pruneClustersIn:(id)in missingFrom:(id)from forEndpoint:(id)endpoint;
- (void)_pruneEndpointsIn:(id)in missingFrom:(id)from;
- (void)_pruneStoredDataForPath:(id)path missingFrom:(id)from;
- (void)_readThroughSkipped;
- (void)_reconcilePersistedClustersWithStorage;
- (void)_removeAttributes:(id)attributes fromCluster:(id)cluster;
- (void)_removeCachedAttribute:(id)attribute fromCluster:(id)cluster;
- (void)_removeClusters:(id)clusters doRemoveFromDataStore:(BOOL)store;
- (void)_removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d;
- (void)_reportAttributes:(id)attributes;
- (void)_resetStorageBehaviorState;
- (void)_resetSubscription;
- (void)_resetSubscriptionWithReasonString:(id)string;
- (void)_scheduleClusterDataPersistence;
- (void)_scheduleNextUpdate:(unint64_t)update;
- (void)_scheduleSubscriptionPoolWork:(id)work inNanoseconds:(int64_t)nanoseconds description:(id)description;
- (void)_setCachedAttributeValue:(id)value forPath:(id)path fromSubscription:(BOOL)subscription;
- (void)_setDSTOffsets:(id)offsets forEndpoint:(id)endpoint;
- (void)_setExpectedValue:(id)value attributePath:(id)path expirationTime:(id)time shouldReportValue:(BOOL *)reportValue attributeValueToReport:(id *)report expectedValueID:(unint64_t)d previousValue:(id *)previousValue;
- (void)_setLastInitialSubscribeLatency:(id)latency;
- (void)_setLastSubscriptionAttemptWait:(unsigned int)wait;
- (void)_setTimeOnDevice;
- (void)_setupSubscriptionWithReason:(id)reason;
- (void)_stopConnectivityMonitoring;
- (void)_storePersistedDeviceData;
- (void)_triggerResubscribeWithReason:(id)reason nodeLikelyReachable:(BOOL)reachable;
- (void)_updateAttributeDependentDescriptionData;
- (void)_updateDeviceTimeAndScheduleNextUpdate;
- (void)controllerResumed;
- (void)controllerSuspended;
- (void)dealloc;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invalidate;
- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion;
- (void)nodeMayBeAdvertisingOperational;
- (void)openCommissioningWindowWithDiscriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d;
- (void)removeExpectedValuesForAttributePaths:(id)paths expectedValueID:(unint64_t)d;
- (void)setExpectedValues:(id)values expectedValueInterval:(id)interval expectedValueID:(unint64_t *)d;
- (void)setPersistedClusterData:(id)data;
- (void)setPersistedDeviceData:(id)data;
- (void)setStorageBehaviorConfiguration:(id)configuration;
- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout;
@end

@implementation MTRDevice_Concrete

- (MTRDevice_Concrete)initWithNodeID:(id)d controller:(id)controller
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  v35.receiver = self;
  v35.super_class = MTRDevice_Concrete;
  v8 = [(MTRDevice *)&v35 initForSubclassesWithNodeID:dCopy controller:controllerCopy];
  v9 = v8;
  if (v8)
  {
    v8->_timeSyncLock._os_unfair_lock_opaque = 0;
    v8->_descriptionLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("org.csa-iot.matter.framework.device.workqueue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    expectedValueCache = v9->_expectedValueCache;
    v9->_expectedValueCache = dictionary;

    v15 = [[MTRAsyncWorkQueue alloc] initWithContext:v9];
    asyncWorkQueue = v9->_asyncWorkQueue;
    v9->_asyncWorkQueue = v15;

    v9->_state = 0;
    v9->_internalDeviceState = 0;
    v9->_internalDeviceStateForDescription = 0;
    v9->_doingCASEAttemptForDeviceMayBeReachable = 0;
    controllerDataStore = [controllerCopy controllerDataStore];
    LOBYTE(v10) = controllerDataStore == 0;

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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_23938CAF8;
      v33[3] = &unk_278A75648;
      objc_copyWeak(&v34, location);
      v27 = [defaultCenter addObserverForName:*MEMORY[0x277CBE778] object:0 queue:0 usingBlock:v33];
      systemTimeChangeObserverToken = v9->_systemTimeChangeObserverToken;
      v9->_systemTimeChangeObserverToken = v27;

      objc_destroyWeak(&v34);
      objc_destroyWeak(location);
    }

    -[MTRDevice_Concrete setSuspended:](v9, "setSuspended:", [controllerCopy isSuspended]);
    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      unsignedLongLongValue = [(NSNumber *)v9->super._nodeID unsignedLongLongValue];
      *location = 138412546;
      *&location[4] = v9;
      v37 = 2048;
      v38 = unsignedLongLongValue;
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
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRDevice dealloc: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_systemTimeChangeObserverToken];

  [(MTRDelegateManager *)self->super._delegateManager removeAllDelegates];
  matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23938CE48;
  v11[3] = &unk_278A72320;
  v7 = matterCPPObjectsHolder;
  v12 = v7;
  [_concreteController asyncDispatchToMatterQueue:v11 errorHandler:0];

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
  compressedFabricID = [(MTRDeviceController *)self->super._deviceController compressedFabricID];
  unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
  unsignedLongLongValue2 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  unsignedLongLongValue3 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  if (internalDeviceStateForDescription > 4)
  {
    v24 = @"Unknown";
  }

  else
  {
    v24 = off_278A75B58[internalDeviceStateForDescription];
  }

  itemCount = [(MTRAsyncWorkQueue *)self->_asyncWorkQueue itemCount];
  uniqueIdentifier = [(MTRDeviceController *)self->super._deviceController uniqueIdentifier];
  v27 = [v31 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu), VID: %@, PID: %@, WiFi: %@, Thread: %@, state: %@, last subscription attempt wait: %lus, queued work: %lu, last report: %@%@, last subscription failure: %@%@, controller: %@>", v33, self, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue3, v37, v36, v14, v12, v24, lastSubscriptionAttemptWaitForDescription, itemCount, v8, v34, v9, v38, uniqueIdentifier];

  return v27;
}

- (id)_internalProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_descriptionLock);
  v4 = self->_vid;
  if (v4)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalStateKeyVendorID", v4);
  }

  v5 = self->_pid;
  if (v5)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalStateKeyProductID", v5);
  }

  v6 = self->_allNetworkFeatures;
  if (v6)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyNetworkFeatures", v6);
  }

  v7 = self->_mostRecentReportTimeForDescription;
  if (v7)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyMostRecentReportTime", v7);
  }

  os_unfair_lock_unlock(&self->_descriptionLock);
  os_unfair_lock_lock(&self->super._lock);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_internalDeviceState];
  if (v8)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDeviceInternalState", v8);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastSubscriptionAttemptWait];
  if (v9)
  {
    CFDictionarySetValue(dictionary, @"kMTRDeviceInternalPropertyLastSubscriptionAttemptWait", v9);
  }

  v10 = self->_lastSubscriptionFailureTime;
  if (v10)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyLastSubscriptionFailureTime", v10);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
  if (v11)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDeviceState", v11);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceCachePrimed];
  if (v12)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDeviceCachePrimed", v12);
  }

  v13 = self->_estimatedStartTime;
  if (v13)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyEstimatedStartTime", v13);
  }

  v14 = self->_estimatedSubscriptionLatency;
  if (v14)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyEstimatedSubscriptionLatency", v14);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_diagnosticLogTransferInProgress];
  if (v15)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress", v15);
  }

  os_unfair_lock_unlock(&self->super._lock);

  return dictionary;
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
  unsignedIntValue = [(NSNumber *)self->_allNetworkFeatures unsignedIntValue];
  os_unfair_lock_unlock(&self->_descriptionLock);
  return unsignedIntValue;
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
  date = [MEMORY[0x277CBEAA8] date];
  v25 = date;
  if (date)
  {
    v32 = 0;
    if (sub_239221564(date, &v32))
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
              selfCopy12 = self;
              v38 = 2112;
              v39 = v6;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "%@ Setting Time on Endpoint %@", buf, 0x16u);
            }

            if (sub_2393D5398(3u))
            {
              selfCopy10 = self;
              v24 = v6;
              sub_2393D5320(0, 3);
            }

            [(MTRDevice_Concrete *)self _setUTCTime:v32 withGranularity:4 forEndpoint:v6, selfCopy10, v24];
            v8 = [MTRAttributePath attributePathWithEndpointID:v6 clusterID:&unk_284C43A18 attributeID:&unk_284C43A30];
            endpoint = [v8 endpoint];
            cluster = [v8 cluster];
            attribute = [v8 attribute];
            v12 = [(MTRDevice_Concrete *)self readAttributeWithEndpointID:endpoint clusterID:cluster attributeID:attribute params:0];

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
                value = [(MTRAttributeReport *)v15 value];
                unsignedCharValue = [value unsignedCharValue];
                if (!unsignedCharValue)
                {
                  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    selfCopy12 = self;
                    v38 = 2112;
                    v39 = v6;
                    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ DSTOffsetListMaxSize value on endpoint %@ is 0, which is not allowed. Defaulting to 1.", buf, 0x16u);
                  }

                  unsignedCharValue = 1;
                  if (sub_2393D5398(1u))
                  {
                    selfCopy10 = self;
                    v24 = v6;
                    sub_2393D5320(0, 1);
                  }
                }

                v18 = unsignedCharValue;
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  selfCopy12 = self;
                  v38 = 2112;
                  v39 = v6;
                  _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ DSTOffsetListMaxSize value on endpoint %@ is invalid. Defaulting to 1.", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  selfCopy10 = self;
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
                  selfCopy12 = self;
                  v38 = 2112;
                  v39 = v6;
                  _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ Could not retrieve DST offset information. Unable to setDSTOffset on endpoint %@.", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  selfCopy10 = self;
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
                selfCopy12 = self;
                v38 = 2112;
                v39 = v6;
                _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ Unable to SetDSTOffset on endpoint %@, since it does not support the TZ feature", buf, 0x16u);
              }

              if (sub_2393D5398(2u))
              {
                selfCopy10 = self;
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
        selfCopy12 = self;
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
      selfCopy12 = self;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "%@ Could not retrieve current date. Unable to setUTCTime on endpoints.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextUpdate:(unint64_t)update
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  queue = [(MTRDevice_Concrete *)self queue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  self->_lastTimeUpdateScheduledDelayInSeconds = update;
  v7 = dispatch_time(0, 1000000000 * update);
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
    selfCopy = self;
    v17 = 2048;
    updateCopy = update;
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
  timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

  if (timeUpdateTimer)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
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
    timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

    if (timeUpdateTimer)
    {
      [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
      [(MTRDevice_Concrete *)self _updateDeviceTimeAndScheduleNextUpdate];
      goto LABEL_12;
    }

    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy2 = self;
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
      selfCopy2 = self;
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
  timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

  if (timeUpdateTimer)
  {
    timeUpdateTimer2 = [(MTRDevice_Concrete *)self timeUpdateTimer];
    dispatch_source_cancel(timeUpdateTimer2);

    [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
}

- (id)_endpointsWithTimeSyncClusterServer
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  _endpointList = [(MTRDevice_Concrete *)self _endpointList];
  os_unfair_lock_unlock(&self->super._lock);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = _endpointList;
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
    selfCopy = self;
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

- (void)_setDSTOffsets:(id)offsets forEndpoint:(id)endpoint
{
  v29 = *MEMORY[0x277D85DE8];
  offsetsCopy = offsets;
  endpointCopy = endpoint;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy = self;
    v25 = 2112;
    v26 = offsetsCopy;
    v27 = 2112;
    v28 = endpointCopy;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "%@ _setDSTOffsets with offsets: %@, endpoint %@", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v9 = objc_alloc_init(MTRTimeSynchronizationClusterSetDSTOffsetParams);
  [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v9 setDstOffset:offsetsCopy];
  objc_initWeak(buf, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23938F068;
  v19 = &unk_278A75670;
  objc_copyWeak(&v22, buf);
  v10 = endpointCopy;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  v12 = MEMORY[0x23EE78590](&v16);
  serverSideProcessingTimeout = [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v11 serverSideProcessingTimeout];
  queue = [(MTRDevice_Concrete *)self queue];
  [(MTRDevice *)self _invokeKnownCommandWithEndpointID:v10 clusterID:&unk_284C43A18 commandID:&unk_284C43A90 commandPayload:v11 expectedValues:0 expectedValueInterval:0 timedInvokeTimeout:0 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:queue completion:v12, v16, v17, v18, v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

- (id)arrayOfNumbersFromAttributeValue:(id)value
{
  v30 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v3 = [valueCopy objectForKeyedSubscript:@"type"];
  v4 = [@"Array" isEqual:v3];

  if (v4)
  {
    v5 = [valueCopy objectForKeyedSubscript:@"value"];
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

- (void)_delegateAdded:(id)added
{
  addedCopy = added;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5.receiver = self;
  v5.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v5 _delegateAdded:addedCopy];
  [(MTRDevice_Concrete *)self _ensureSubscriptionForExistingDelegates:@"delegate is set"];
}

- (void)_ensureSubscriptionForExistingDelegates:(id)delegates
{
  v20 = *MEMORY[0x277D85DE8];
  delegatesCopy = delegates;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _subscriptionsAllowed])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
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
        selfCopy2 = self;
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
      v15 = delegatesCopy;
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
      v12 = delegatesCopy;
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
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
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
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ saw new operational advertisement", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice_Concrete *)self _triggerResubscribeWithReason:@"operational advertisement seen" nodeLikelyReachable:1, selfCopy2];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_triggerResubscribeWithReason:(id)reason nodeLikelyReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    selfCopy = self;
    v21 = 2112;
    if (reachableCopy)
    {
      v8 = @"YES";
    }

    v22 = reasonCopy;
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
  reattemptingSubscription = [(MTRDevice_Concrete *)self reattemptingSubscription];
  if (reattemptingSubscription)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
    readClient = [matterCPPObjectsHolder readClient];

    matterCPPObjectsHolder2 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
    subscriptionCallback = [matterCPPObjectsHolder2 subscriptionCallback];

    os_unfair_lock_unlock(&self->super._lock);
    if (readClient)
    {
      if (reachableCopy)
      {
        *(subscriptionCallback + 200) = 0;
      }

      v14 = reasonCopy;
      if ((sub_2394D8E90(readClient, [reasonCopy UTF8String]) & 1) == 0)
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
    if ((![(MTRDevice_Concrete *)self doingCASEAttemptForDeviceMayBeReachable]|| reattemptingSubscription) && reachableCopy)
    {
LABEL_17:
      os_unfair_lock_lock(&self->super._lock);
      [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
      os_unfair_lock_unlock(&self->super._lock);
      objc_initWeak(buf, self);
      _concreteController = [(MTRDevice_Concrete *)self _concreteController];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_239390700;
      v17[3] = &unk_278A756E8;
      objc_copyWeak(&v18, buf);
      [_concreteController asyncGetCommissionerOnMatterQueue:v17 errorHandler:0];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      if (!reattemptingSubscription)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else if (reattemptingSubscription && reachableCopy)
  {
    goto LABEL_17;
  }

  if (reattemptingSubscription)
  {
LABEL_21:
    os_unfair_lock_lock(&self->super._lock);
    [(MTRDevice_Concrete *)self _reattemptSubscriptionNowIfNeededWithReason:reasonCopy];
    goto LABEL_22;
  }

LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_subscriptionAbleToReport
{
  os_unfair_lock_lock(&self->super._lock);
  _subscriptionsAllowed = [(MTRDevice *)self _delegateExists]&& [(MTRDevice_Concrete *)self _subscriptionsAllowed];
  os_unfair_lock_unlock(&self->super._lock);
  return _subscriptionsAllowed;
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
        selfCopy = self;
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

- (void)_changeState:(unint64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1379);
  os_unfair_lock_assert_owner(&self->super._lock);
  state = self->_state;
  self->_state = state;
  if (state == state)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy4 = self;
      v18 = 2048;
      stateCopy5 = state;
      v20 = 2048;
      stateCopy6 = state;
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
    if (state == 1)
    {
      if (v8)
      {
        *buf = 138412802;
        selfCopy4 = self;
        v18 = 2048;
        stateCopy5 = state;
        v20 = 2048;
        stateCopy6 = 1;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ reachability state change %lu => %lu", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        stateCopy7 = state;
        stateCopy8 = 1;
        selfCopy5 = self;
        sub_2393D5320(0, 2);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 138412802;
        selfCopy4 = self;
        v18 = 2048;
        stateCopy5 = state;
        v20 = 2048;
        stateCopy6 = state;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ reachability state change %lu => %lu, set estimated start time to nil", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        stateCopy7 = state;
        stateCopy8 = state;
        selfCopy5 = self;
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
    v15[5] = state;
    [(MTRDevice *)self _callDelegatesWithBlock:v15, selfCopy5, stateCopy7, stateCopy8];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_changeInternalState:(unint64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1413);
  os_unfair_lock_assert_owner(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  self->_internalDeviceState = state;
  os_unfair_lock_lock(&self->_descriptionLock);
  self->_internalDeviceStateForDescription = self->_internalDeviceState;
  os_unfair_lock_unlock(&self->_descriptionLock);
  if (internalDeviceState != state)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v14 = 2048;
      v15 = internalDeviceState;
      v16 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ internal state change %lu => %lu", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v9 = internalDeviceState;
      stateCopy2 = state;
      selfCopy2 = self;
      sub_2393D5320(0, 2);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2393911F0;
    v11[3] = &unk_278A75710;
    v11[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v11, selfCopy2, v9, stateCopy2];
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

    timeUpdateShortDelayInSeconds = [(MTRDevice_Concrete *)self timeUpdateShortDelayInSeconds];
    os_unfair_lock_unlock(&self->super._lock);
    os_unfair_lock_lock(&self->_timeSyncLock);
    timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

    if (!timeUpdateTimer)
    {
      [(MTRDevice_Concrete *)self _scheduleNextUpdate:timeUpdateShortDelayInSeconds];
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
      selfCopy = self;
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

- (void)_handleSubscriptionError:(id)error
{
  errorCopy = error;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1498);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _doHandleSubscriptionError:errorCopy];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_doHandleSubscriptionError:(id)error
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
  _deviceUsesThread = [(MTRDevice_Concrete *)self _deviceUsesThread];
  os_unfair_lock_unlock(&self->super._lock);
  return _deviceUsesThread;
}

- (BOOL)_deviceUsesThread
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [MTRClusterPath clusterPathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43AC0];
  v4 = [(MTRDevice_Concrete *)self _clusterDataForPath:v3];
  attributes = [v4 attributes];
  v6 = [attributes objectForKeyedSubscript:&unk_284C43AD8];
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
      selfCopy = self;
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

- (void)_clearSubscriptionPoolWorkWithProvidedDelegate:(id)delegate
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

- (void)_scheduleSubscriptionPoolWork:(id)work inNanoseconds:(int64_t)nanoseconds description:(id)description
{
  v24 = *MEMORY[0x277D85DE8];
  workCopy = work;
  descriptionCopy = description;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (self->_subscriptionPoolWorkCompletionBlock)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = descriptionCopy;
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
    v17 = descriptionCopy;
    v18 = workCopy;
    v11 = MEMORY[0x23EE78590](v16);
    v12 = v11;
    if (nanoseconds < 1)
    {
      (*(v11 + 16))(v11);
    }

    else
    {
      v13 = dispatch_time(0, nanoseconds);
      queue = [(MTRDevice_Concrete *)self queue];
      dispatch_after(v13, queue, v12);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleResubscriptionNeededWithDelay:(id)delay
{
  delayCopy = delay;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1657);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeState:0];
  if (self->_internalDeviceState >= 2)
  {
    [(MTRDevice_Concrete *)self _changeInternalState:3];
  }

  objc_initWeak(&location, self);
  queue = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393921E0;
  block[3] = &unk_278A75698;
  objc_copyWeak(&v9, &location);
  v8 = delayCopy;
  v6 = delayCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_handleResubscriptionNeededWithDelayOnDeviceQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x277CBEAA8] now];
  lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
  self->_lastSubscriptionFailureTime = v5;

  os_unfair_lock_lock(&self->_descriptionLock);
  objc_storeStrong(&self->_lastSubscriptionFailureTimeForDescription, self->_lastSubscriptionFailureTime);
  os_unfair_lock_unlock(&self->_descriptionLock);
  _deviceUsesThread = [(MTRDevice_Concrete *)self _deviceUsesThread];
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  os_unfair_lock_unlock(&self->super._lock);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2393924D0;
  v13[3] = &unk_278A72CD0;
  objc_copyWeak(&v14, &location);
  v8 = MEMORY[0x23EE78590](v13);
  v9 = 1000000 * [queueCopy unsignedIntValue];
  if (_deviceUsesThread)
  {
    os_unfair_lock_lock(&self->super._lock);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ReadClient resubscription (%p)", self];
    [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v8 inNanoseconds:v9 description:v10];

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v11 = dispatch_time(0, v9);
    queue = [(MTRDevice_Concrete *)self queue];
    dispatch_after(v11, queue, v8);
  }

  [(MTRDevice_Concrete *)self _setupConnectivityMonitoring];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_handleSubscriptionReset:(id)reset
{
  resetCopy = reset;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1741);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _doHandleSubscriptionReset:resetCopy];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_setLastSubscriptionAttemptWait:(unsigned int)wait
{
  os_unfair_lock_assert_owner(&self->super._lock);
  self->_lastSubscriptionAttemptWait = wait;
  os_unfair_lock_lock(&self->_descriptionLock);
  self->_lastSubscriptionAttemptWaitForDescription = wait;
  os_unfair_lock_unlock(&self->_descriptionLock);

  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)_doHandleSubscriptionReset:(id)reset
{
  v26 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1762);
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self suspended])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy5 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ ignoring expected subscription reset on controller suspend", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      selfCopy6 = self;
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
          if (resetCopy)
          {
            [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
            [resetCopy doubleValue];
            v10 = v9;
            v11 = sub_2393D9044(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy5 = self;
              v24 = 2048;
              v25 = v10;
              _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ resetting resubscribe attempt counter, and delaying by the server-provided delay: %f", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              v19 = v10;
              selfCopy6 = self;
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
          selfCopy5 = self;
          v24 = 2048;
          v25 = v10;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ scheduling to reattempt subscription in %f seconds", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          v19 = v10;
          selfCopy6 = self;
          sub_2393D5320(0, 2);
        }

        [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork:selfCopy6];
        objc_initWeak(buf, self);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_239392E60;
        v20[3] = &unk_278A72CD0;
        objc_copyWeak(&v21, buf);
        v14 = MEMORY[0x23EE78590](v20);
        if ([(MTRDevice_Concrete *)self _deviceUsesThread])
        {
          queue = [MEMORY[0x277CCACA8] stringWithFormat:@"MTRDevice resubscription (%p)", self];
          [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v14 inNanoseconds:(v10 * 1000000000.0) description:queue];
        }

        else
        {
          v16 = dispatch_time(0, (v10 * 1000000000.0));
          queue = [(MTRDevice_Concrete *)self queue];
          dispatch_after(v16, queue, v14);
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

- (BOOL)_reattemptSubscriptionNowIfNeededWithReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1863);
  os_unfair_lock_assert_owner(&self->super._lock);
  reattemptingSubscription = [(MTRDevice_Concrete *)self reattemptingSubscription];
  if (reattemptingSubscription)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = reasonCopy;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ reattempting subscription with reason %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      selfCopy2 = self;
      v10 = reasonCopy;
      sub_2393D5320(0, 2);
    }

    [(MTRDevice_Concrete *)self _setupSubscriptionWithReason:reasonCopy, selfCopy2, v10];
  }

  else
  {
    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  }

  v7 = *MEMORY[0x277D85DE8];
  return reattemptingSubscription;
}

- (void)_handleUnsolicitedMessageFromPublisher
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1879);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeState:1];
  lastDeviceBecameActiveCallbackTime = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];

  if (lastDeviceBecameActiveCallbackTime && (-[MTRDevice_Concrete lastDeviceBecameActiveCallbackTime](self, "lastDeviceBecameActiveCallbackTime"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = v5, v4, v6 >= -60.0))
  {
    if (![(MTRDevice_Concrete *)self throttlingDeviceBecameActiveCallbacks])
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        lastDeviceBecameActiveCallbackTime2 = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];
        *buf = 138412546;
        selfCopy = self;
        v16 = 2112;
        v17 = lastDeviceBecameActiveCallbackTime2;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        [dictionary setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
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
        selfCopy3 = self;
        v29 = 2048;
        v30 = v5;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Storing cluster information (data version and attributes) count: %lu", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        selfCopy2 = self;
        v19 = [(NSMutableDictionary *)self->_clusterDataToPersist count];
        sub_2393D5320(0, 2);
      }

      v20 = [(MTRDevice_Concrete *)self _clusterDataToPersistSnapshot:selfCopy2];
      _concreteController = [(MTRDevice_Concrete *)self _concreteController];
      controllerDataStore = [_concreteController controllerDataStore];
      [controllerDataStore storeClusterData:v20 forNodeID:self->super._nodeID];

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
      selfCopy3 = self;
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
        selfCopy = self;
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
    lastObject = [(NSMutableArray *)self->_mostRecentReportTimes lastObject];
    [lastObject timeIntervalSinceNow];
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
        selfCopy2 = self;
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
        selfCopy2 = self;
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
      selfCopy5 = self;
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
      selfCopy5 = self;
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
      array = [MEMORY[0x277CBEB18] array];
      mostRecentReportTimes = self->_mostRecentReportTimes;
      self->_mostRecentReportTimes = array;
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
    lastObject = [(NSMutableArray *)self->_mostRecentReportTimes lastObject];
    mostRecentReportTimeForDescription = self->_mostRecentReportTimeForDescription;
    self->_mostRecentReportTimeForDescription = lastObject;

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
          selfCopy5 = self;
          v51 = 2048;
          v52 = v30;
          _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: device reporting frequently - setting delay multiplier to %lf", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          reportToPersistenceDelayCurrentMultiplier = self->_reportToPersistenceDelayCurrentMultiplier;
          selfCopy6 = self;
          sub_2393D5320(0, 2);
        }
      }

      [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortMinThreshold:selfCopy6];
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
          selfCopy5 = self;
          v51 = 2112;
          v52 = *&v41;
          _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_INFO, "%@ storage behavior: device is reporting excessively @%@", buf, 0x16u);
        }

        if (sub_2393D5398(3u))
        {
          selfCopy6 = self;
          reportToPersistenceDelayCurrentMultiplier = *&self->_deviceReportingExcessivelyStartTime;
          sub_2393D5320(0, 3);
        }
      }
    }

    if (![(MTRDevice_Concrete *)self _deviceIsReportingExcessively:selfCopy6])
    {
      objc_initWeak(buf, self);
      [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeAfterMutiplier];
      v43 = dispatch_time(0, (v42 * 1000000000.0));
      queue = [(MTRDevice_Concrete *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239394A34;
      block[3] = &unk_278A72CD0;
      objc_copyWeak(&v48, buf);
      dispatch_after(v43, queue, block);

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

- (void)setStorageBehaviorConfiguration:(id)configuration
{
  v12 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: setStorageBehaviorConfiguration %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_lock(&self->super._lock);
  objc_storeStrong(&self->_storageBehaviorConfiguration, configuration);
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
    selfCopy3 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ handling report end", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
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

  timeUpdateShortDelayInSeconds = [(MTRDevice_Concrete *)self timeUpdateShortDelayInSeconds];
  timeSynchronizationLossDetected = self->_timeSynchronizationLossDetected;
  os_unfair_lock_unlock(&self->super._lock);
  os_unfair_lock_lock(&self->_timeSyncLock);
  timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];
  if (timeUpdateTimer)
  {
    v8 = self->_lastTimeUpdateScheduledDelayInSeconds == 86400;

    if (timeSynchronizationLossDetected && v8)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ Trying to correct time synchronization loss, reschedule time update", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        selfCopy4 = self;
        sub_2393D5320(0, 2);
      }

      timeUpdateTimer2 = [(MTRDevice_Concrete *)self timeUpdateTimer];
      dispatch_source_cancel(timeUpdateTimer2);

      [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
      [(MTRDevice_Concrete *)self _scheduleNextUpdate:timeUpdateShortDelayInSeconds];
    }
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleCASESessionEstablished:(const void *)established
{
  v21 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 2363);
  if ((*(**established + 16))() == 2)
  {
    v5 = sub_239495304(*established);
    v6 = *(v5 + 112);
    if ((v6 | 2) == 3)
    {
      v12 = *(v5 + 96);
      sub_2393CF6CC(&v12, v17, 0x2Eu);
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
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
      selfCopy3 = self;
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
      selfCopy3 = self;
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

- (BOOL)_interestedPaths:(id)paths includesAttributePath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  pathCopy = path;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = pathsCopy;
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
          endpoint = [pathCopy endpoint];
          v13 = [v11 isEqualToNumber:endpoint];

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          cluster = [v14 cluster];
          cluster2 = [pathCopy cluster];
          v13 = [cluster isEqualToNumber:cluster2];

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
          cluster3 = [v17 cluster];
          cluster4 = [pathCopy cluster];
          if ([cluster3 isEqualToNumber:cluster4])
          {
            attribute = [v17 attribute];
            attribute2 = [pathCopy attribute];
            v22 = [attribute isEqualToNumber:attribute2];

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

- (id)_filteredAttributes:(id)attributes forInterestedPaths:(id)paths
{
  v34 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  pathsCopy = paths;
  v8 = pathsCopy;
  v22 = attributesCopy;
  if (pathsCopy)
  {
    if ([pathsCopy count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = attributesCopy;
      array = 0;
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
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              [array addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v11);
      }

      if ([array count])
      {
        v16 = [array count];
        if (v16 != [v9 count])
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v9 count];
            v19 = [array count];
            *buf = 138412802;
            selfCopy = self;
            v29 = 2048;
            v30 = v18;
            v31 = 2048;
            v32 = v19;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ filtered attribute report %lu => %lu", buf, 0x20u);
          }

          if (sub_2393D5398(2u))
          {
            [v9 count];
            [array count];
            sub_2393D5320(0, 2);
          }
        }
      }
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = attributesCopy;
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_reportAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([attributesCopy count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2393959F8;
    v5[3] = &unk_278A75788;
    v5[4] = self;
    v6 = attributesCopy;
    [(MTRDevice *)self _iterateDelegatesWithBlock:v5];
  }
}

- (void)_injectAttributeReport:(id)report fromSubscription:(BOOL)subscription
{
  v17 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  if (sub_23938A994(reportCopy))
  {
    objc_initWeak(location, self);
    deviceController = self->super._deviceController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_239395E98;
    v10[3] = &unk_278A757B0;
    objc_copyWeak(&v12, location);
    v11 = reportCopy;
    subscriptionCopy = subscription;
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
      v16 = reportCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ injected attribute report is not well-formed: %@", location, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_injectEventReport:(id)report
{
  v11 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  if (sub_23938B148(reportCopy))
  {
    [(MTRDevice_Concrete *)self _injectPossiblyInvalidEventReport:reportCopy];
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = reportCopy;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ injected event report is not well-formed: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_injectPossiblyInvalidEventReport:(id)report
{
  reportCopy = report;
  objc_initWeak(&location, self);
  queue = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239396374;
  block[3] = &unk_278A75698;
  objc_copyWeak(&v9, &location);
  v8 = reportCopy;
  v6 = reportCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_interestedPaths:(id)paths includesEventPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  pathCopy = path;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = pathsCopy;
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
          endpoint = [pathCopy endpoint];
          v13 = [v11 isEqualToNumber:endpoint];

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          cluster = [v14 cluster];
          cluster2 = [pathCopy cluster];
          v13 = [cluster isEqualToNumber:cluster2];

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
          cluster3 = [v17 cluster];
          cluster4 = [pathCopy cluster];
          if ([cluster3 isEqualToNumber:cluster4])
          {
            event = [v17 event];
            event2 = [pathCopy event];
            v22 = [event isEqualToNumber:event2];

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

- (id)_filteredEvents:(id)events forInterestedPaths:(id)paths
{
  v34 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  pathsCopy = paths;
  v8 = pathsCopy;
  v22 = eventsCopy;
  if (pathsCopy)
  {
    if ([pathsCopy count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = eventsCopy;
      array = 0;
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
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              [array addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v11);
      }

      if ([array count])
      {
        v16 = [array count];
        if (v16 != [v9 count])
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v9 count];
            v19 = [array count];
            *buf = 138412802;
            selfCopy = self;
            v29 = 2048;
            v30 = v18;
            v31 = 2048;
            v32 = v19;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ filtered event report %lu => %lu", buf, 0x20u);
          }

          if (sub_2393D5398(2u))
          {
            [v9 count];
            [array count];
            sub_2393D5320(0, 2);
          }
        }
      }
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = eventsCopy;
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_handleEventReport:(id)report
{
  v62 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  os_unfair_lock_lock(&self->super._lock);
  v47 = self->_estimatedStartTime;
  unreportedEvents = self->_unreportedEvents;
  if (unreportedEvents)
  {
    array = unreportedEvents;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v48 = array;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = reportCopy;
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
        selfCopy4 = [(NSDate *)v8 objectForKeyedSubscript:@"eventPath", selfCopy4];
        estimatedStartTime = [selfCopy4 cluster];
        if ([estimatedStartTime unsignedLongValue] == 40)
        {
          event = [selfCopy4 event];
          v12 = [event unsignedLongValue] == 0;

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
              selfCopy2 = self;
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
              selfCopy2 = self;
              sub_2393D5320(0, 2);
            }

            v16 = 0;
          }

          estimatedStartTime = self->_estimatedStartTime;
          self->_estimatedStartTime = v16;
        }

LABEL_24:
        v17 = [(NSDate *)v8 objectForKeyedSubscript:@"eventTimeType", selfCopy2, v44];
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
                highestObservedEventNumber = [(MTRDevice_Concrete *)self highestObservedEventNumber];
                if (!highestObservedEventNumber || (-[MTRDevice_Concrete highestObservedEventNumber](self, "highestObservedEventNumber"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 compare:v25] == -1, v27, highestObservedEventNumber, v28))
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
              selfCopy4 = self;
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
            selfCopy4 = self;
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
        _concreteController = [(MTRDevice_Concrete *)self _concreteController];
        controllerDataStore = [_concreteController controllerDataStore];
        nodeID = self->super._nodeID;
        endpoint = [v6 endpoint];
        cluster = [v6 cluster];
        v12 = [controllerDataStore getStoredClusterDataForNodeID:nodeID endpointID:endpoint clusterID:cluster];

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
    selfCopy = self;
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
    selfCopy2 = self;
    sub_2393D5320(0, 1);
  }

  [(NSMutableSet *)self->_persistedClusters minusSet:v20, selfCopy2, v18, v19];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_clusterDataForPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (!clusterDataToPersist || ([(NSMutableDictionary *)clusterDataToPersist objectForKeyedSubscript:pathCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![(MTRDevice_Concrete *)self _dataStoreExists]|| ([(NSCache *)self->_persistedClusterData objectForKey:pathCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([(NSMutableSet *)self->_persistedClusters containsObject:pathCopy])
      {
        _concreteController = [(MTRDevice_Concrete *)self _concreteController];
        controllerDataStore = [_concreteController controllerDataStore];
        nodeID = self->super._nodeID;
        endpoint = [pathCopy endpoint];
        cluster = [pathCopy cluster];
        v6 = [controllerDataStore getStoredClusterDataForNodeID:nodeID endpointID:endpoint clusterID:cluster];

        v12 = sub_2393D9044(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"YES";
          *buf = 138412802;
          selfCopy = self;
          v19 = 2112;
          if (!v6)
          {
            v13 = @"NO";
          }

          v20 = pathCopy;
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
          [(NSCache *)self->_persistedClusterData setObject:v6 forKey:pathCopy];
        }

        else
        {
          [(MTRDevice_Concrete *)self _reconcilePersistedClustersWithStorage];
          pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Data store has no data for cluster %@", pathCopy];
          [(MTRDevice_Concrete *)self _resetSubscriptionWithReasonString:pathCopy];
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
    allKeys = [(NSMutableDictionary *)clusterDataToPersist allKeys];
    v7 = [v5 setWithArray:allKeys];
    [v3 unionSet:v7];
  }

  return v3;
}

- (id)_getCachedDataVersions
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->super._lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _knownClusters = [(MTRDevice_Concrete *)self _knownClusters];
  v5 = [_knownClusters countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(_knownClusters);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(MTRDevice_Concrete *)self _clusterDataForPath:v8];
        dataVersion = [v9 dataVersion];
        [dictionary setObject:dataVersion forKeyedSubscript:v8];
      }

      v5 = [_knownClusters countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [dictionary count];
    *buf = 138412546;
    selfCopy = self;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "%@ _getCachedDataVersions dataVersions count: %lu", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    [dictionary count];
    sub_2393D5320(0, 3);
  }

  os_unfair_lock_unlock(&self->super._lock);
  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)_commitPendingDataVersionsForClusterPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  v4 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:pathCopy];
  pendingDataVersion = [v4 pendingDataVersion];

  if (pendingDataVersion)
  {
    pendingDataVersion2 = [v4 pendingDataVersion];
    [v4 setDataVersion:pendingDataVersion2];

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

- (id)_cachedAttributeValueForPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  endpoint = [pathCopy endpoint];
  cluster = [pathCopy cluster];
  v7 = [MTRClusterPath clusterPathWithEndpointID:endpoint clusterID:cluster];

  v8 = [(MTRDevice_Concrete *)self _clusterDataForPath:v7];
  v9 = v8;
  if (v8)
  {
    attributes = [v8 attributes];
    attribute = [pathCopy attribute];
    v12 = [attributes objectForKeyedSubscript:attribute];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_setCachedAttributeValue:(id)value forPath:(id)path fromSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  valueCopy = value;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  endpoint = [pathCopy endpoint];
  cluster = [pathCopy cluster];
  v12 = [MTRClusterPath clusterPathWithEndpointID:endpoint clusterID:cluster];

  v13 = [(MTRDevice_Concrete *)self _clusterDataForPath:v12];
  if (!v13)
  {
    if (!valueCopy)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v13 = objc_alloc_init(MTRDeviceClusterData);
  }

  attribute = [pathCopy attribute];
  [(MTRDeviceClusterData *)v13 storeValue:valueCopy forAttribute:attribute];

  if ([(MTRDevice_Concrete *)self _attributePathAffectsDescriptionData:pathCopy])
  {
    [(MTRDevice_Concrete *)self _updateAttributeDependentDescriptionData];
  }

  if (valueCopy && subscriptionCopy && !self->_receivingPrimingReport && sub_2393983AC(pathCopy))
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
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v17 = self->_clusterDataToPersist;
      self->_clusterDataToPersist = dictionary;

      clusterDataToPersist = self->_clusterDataToPersist;
    }

    [(NSMutableDictionary *)clusterDataToPersist setObject:v13 forKeyedSubscript:v12];
  }

LABEL_14:
}

- (void)_removeCachedAttribute:(id)attribute fromCluster:(id)cluster
{
  attributeCopy = attribute;
  clusterCopy = cluster;
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v8 = [(NSMutableDictionary *)clusterDataToPersist objectForKeyedSubscript:clusterCopy];
    [v8 removeValueForAttribute:attributeCopy];
  }
}

- (void)_createDataVersionFilterListFromDictionary:(id)dictionary dataVersionFilterList:(DataVersionFilter *)list count:(unint64_t *)count
{
  v9 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    operator new[]();
  }

  *count = 0;
  *list = 0;

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

- (void)_resetSubscriptionWithReasonString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = stringCopy;
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
  matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  [matterCPPObjectsHolder clearReadClientAndDeleteSubscriptionCallback];

  [(MTRDevice_Concrete *)self _doHandleSubscriptionError:0];
}

- (void)_setupSubscriptionWithReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
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
        v30 = reasonCopy;
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
        v21 = reasonCopy;
        selfCopy3 = self;
        sub_2393D5320(0, 2);
      }

      [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork:selfCopy3];
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
        *&v28[10] = reasonCopy;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ setting up subscription with reason: %@", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        selfCopy3 = self;
        v20 = reasonCopy;
        sub_2393D5320(0, 2);
      }

      if ([(__CFString *)reasonCopy hasPrefix:@"SPI client indicated the device may now be reachable", selfCopy3, v20])
      {
        [(MTRDevice_Concrete *)self setDoingCASEAttemptForDeviceMayBeReachable:1];
      }

      objc_initWeak(buf, self);
      v10 = dispatch_time(0, 10000000000);
      queue = [(MTRDevice_Concrete *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239399220;
      block[3] = &unk_278A72CD0;
      objc_copyWeak(&v26, buf);
      dispatch_after(v10, queue, block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
      *buf = 0;
      *&v28[4] = "dwnpm_dev_initial_subscription_setup";
      v28[16] = 0;
      sub_23948BD20(buf);
      matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
      objc_initWeak(buf, self);
      _concreteController = [(MTRDevice_Concrete *)self _concreteController];
      unsignedLongLongValue = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2393992E8;
      v22[3] = &unk_278A758A0;
      objc_copyWeak(&v24, buf);
      v15 = matterCPPObjectsHolder;
      v23 = v15;
      [_concreteController directlyGetSessionForNode:unsignedLongLongValue completion:v22];

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
      *&v28[10] = reasonCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ _setupSubscription: Subscriptions not allowed. Do not set up subscription (reason: %@)", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      selfCopy3 = self;
      v20 = reasonCopy;
      sub_2393D5320(0, 2);
    }

    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork:selfCopy3];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params
{
  v72[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  v49 = dCopy;
  paramsCopy = params;
  v51 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  if (sub_238EA55DC([iDCopy unsignedIntValue], objc_msgSend(attributeIDCopy, "unsignedIntValue")))
  {
    LOBYTE(v13) = sub_2393983AC(v51);
  }

  else if (paramsCopy)
  {
    v13 = [paramsCopy shouldAssumeUnknownAttributesReportable] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v48 = [(MTRDevice_Concrete *)self _attributeValueDictionaryForAttributePath:v51];
  os_unfair_lock_lock(&self->super._lock);
  suspended = [(MTRDevice_Concrete *)self suspended];
  os_unfair_lock_unlock(&self->super._lock);
  if (suspended || !(v13 & 1 | ![(MTRDevice_Concrete *)self _subscriptionAbleToReport]))
  {
    [(MTRDevice_Concrete *)self _readThroughSkipped];
  }

  else
  {
    v46 = [MTRAttributeRequestPath requestPathWithEndpointID:v49 clusterID:iDCopy attributeID:attributeIDCopy];
    v72[0] = v46;
    null = paramsCopy;
    if (!paramsCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v72[1] = null;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    if (!paramsCopy)
    {
    }

    if (![(MTRAsyncWorkQueue *)self->_asyncWorkQueue hasDuplicateForTypeID:1 workItemData:v47])
    {
      v16 = [MEMORY[0x277CBEB18] arrayWithObject:v47];
      v17 = [MTRAsyncWorkItem alloc];
      queue = [(MTRDevice_Concrete *)self queue];
      v19 = [(MTRAsyncWorkItem *)v17 initWithQueue:queue];

      uniqueID = [(MTRAsyncWorkItem *)v19 uniqueID];
      nodeID = [(MTRDevice *)self nodeID];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_23939BDDC;
      v66[3] = &unk_278A758C8;
      v71 = uniqueID;
      v22 = nodeID;
      v67 = v22;
      v23 = v49;
      v68 = v23;
      v24 = iDCopy;
      v69 = v24;
      v25 = attributeIDCopy;
      v70 = v25;
      [(MTRAsyncWorkItem *)v19 setBatchingID:1 data:v16 handler:v66];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_23939C29C;
      v59[3] = &unk_278A758F0;
      v26 = v16;
      v60 = v26;
      v65 = uniqueID;
      v27 = v22;
      v61 = v27;
      v28 = v23;
      v62 = v28;
      v29 = v24;
      v63 = v29;
      v30 = v25;
      v31 = uniqueID;
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
      unsignedLongLongValue = [v34 unsignedLongLongValue];
      v38 = MTRClusterNameForID([v34 unsignedLongLongValue]);
      unsignedLongLongValue2 = [v35 unsignedLongLongValue];
      v40 = MTRAttributeNameForID([v34 unsignedLongLongValue], objc_msgSend(v35, "unsignedLongLongValue"));
      [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v45 descriptionWithFormat:@"read %@ 0x%llx (%@) 0x%llx (%@)", v33, unsignedLongLongValue, v38, unsignedLongLongValue2, v40];
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v48;
}

- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout
{
  v60[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  v17 = [valueCopy copy];

  if (timeoutCopy)
  {
    v18 = sub_238DB3374(timeoutCopy, &unk_284C43AF0, &unk_284C43B08);

    timeoutCopy = v18;
  }

  v41 = sub_238DB3374(intervalCopy, &unk_284C43AF0, &unk_284C43B20);

  v40 = v17;
  v43 = timeoutCopy;
  v19 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
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
  queue = [(MTRDevice_Concrete *)self queue];
  v24 = [(MTRAsyncWorkItem *)v22 initWithQueue:queue];

  uniqueID = [(MTRAsyncWorkItem *)v24 uniqueID];
  v38 = self->super._nodeID;
  v57[0] = v19;
  v57[1] = v17;
  null = timeoutCopy;
  if (!timeoutCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v57[2] = null;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v54];
  v57[3] = v27;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];

  if (!timeoutCopy)
  {
  }

  v28 = [MEMORY[0x277CBEB18] arrayWithObject:v39];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_23939D3BC;
  v51[3] = &unk_278A75968;
  v53 = uniqueID;
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
  v50 = uniqueID;
  v31 = v19;
  v48 = v31;
  [(MTRAsyncWorkItem *)v24 setReadyHandler:v46];
  asyncWorkQueue = self->_asyncWorkQueue;
  unsignedLongLongValue = [iDCopy unsignedLongLongValue];
  v34 = MTRClusterNameForID([iDCopy unsignedLongLongValue]);
  unsignedLongLongValue2 = [attributeIDCopy unsignedLongLongValue];
  v36 = MTRAttributeNameForID([iDCopy unsignedLongLongValue], objc_msgSend(attributeIDCopy, "unsignedLongLongValue"));
  [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v24 descriptionWithFormat:@"write %@ 0x%llx (%@) 0x%llx (%@): %@", dCopy, unsignedLongLongValue, v34, unsignedLongLongValue2, v36, v40];

  _Block_object_dispose(v55, 8);
  v37 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePaths:(id)paths
{
  v79 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  os_unfair_lock_lock(&self->super._lock);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = pathsCopy;
  v44 = [obj countByEnumeratingWithState:&v69 objects:v78 count:{16, pathsCopy}];
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
        _knownClusters = [(MTRDevice_Concrete *)selfCopy _knownClusters];
        v4 = [_knownClusters countByEnumeratingWithState:&v65 objects:v77 count:16];
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
                objc_enumerationMutation(_knownClusters);
              }

              v5 = *(*(&v65 + 1) + 8 * v53);
              endpoint = [v55 endpoint];
              if (!endpoint)
              {
                goto LABEL_45;
              }

              endpoint2 = [v55 endpoint];
              endpoint3 = [v5 endpoint];
              v9 = [endpoint2 isEqual:endpoint3];

              if (v9)
              {
LABEL_45:
                cluster = [v55 cluster];
                if (!cluster)
                {
                  goto LABEL_15;
                }

                cluster2 = [v55 cluster];
                cluster3 = [v5 cluster];
                v13 = [cluster2 isEqual:cluster3];

                if (v13)
                {
LABEL_15:
                  v52 = [(MTRDevice_Concrete *)selfCopy _clusterDataForPath:v5];
                  attribute = [v55 attribute];
                  v15 = attribute == 0;

                  if (v15)
                  {
                    v63 = 0u;
                    v64 = 0u;
                    v61 = 0u;
                    v62 = 0u;
                    attributes = [v52 attributes];
                    v24 = [attributes countByEnumeratingWithState:&v61 objects:v76 count:16];
                    if (v24)
                    {
                      v25 = *v62;
                      do
                      {
                        for (j = 0; j != v24; ++j)
                        {
                          if (*v62 != v25)
                          {
                            objc_enumerationMutation(attributes);
                          }

                          v27 = *(*(&v61 + 1) + 8 * j);
                          endpoint4 = [v5 endpoint];
                          cluster4 = [v5 cluster];
                          v30 = [MTRAttributePath attributePathWithEndpointID:endpoint4 clusterID:cluster4 attributeID:v27];
                          [v56 addObject:v30];
                        }

                        v24 = [attributes countByEnumeratingWithState:&v61 objects:v76 count:16];
                      }

                      while (v24);
                    }

LABEL_25:
                  }

                  else
                  {
                    attributes2 = [v52 attributes];
                    attribute2 = [v55 attribute];
                    v18 = [attributes2 objectForKey:attribute2];
                    v19 = v18 == 0;

                    if (!v19)
                    {
                      attributes = [v5 endpoint];
                      cluster5 = [v5 cluster];
                      attribute3 = [v55 attribute];
                      v23 = [MTRAttributePath attributePathWithEndpointID:attributes clusterID:cluster5 attributeID:attribute3];
                      [v56 addObject:v23];

                      goto LABEL_25;
                    }
                  }
                }
              }

              v53 = v53 + 1;
            }

            while (v53 != v51);
            v4 = [_knownClusters countByEnumeratingWithState:&v65 objects:v77 count:16];
          }

          while (v4);
        }
      }

      v44 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v44);
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
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
        endpoint5 = [v35 endpoint];
        cluster6 = [v35 cluster];
        attribute4 = [v35 attribute];
        v39 = [(MTRDevice_Concrete *)selfCopy readAttributeWithEndpointID:endpoint5 clusterID:cluster6 attributeID:attribute4 params:0];

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

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2
{
  v86 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  if (!intervalCopy || (v24 = valuesCopy, [intervalCopy compare:&unk_284C43B38] == -1))
  {
    v24 = 0;
  }

  else
  {
    sub_238DB3374(intervalCopy, &unk_284C43AF0, &unk_284C43B20);
    intervalCopy = valuesCopy = intervalCopy;
  }

  v25 = [processingTimeoutCopy copy];
  v26 = [timeoutCopy copy];

  v65 = [fieldsCopy copy];
  v57 = intervalCopy;
  v60 = v25;
  if (v26)
  {
    goto LABEL_8;
  }

  if (sub_2392DEB5C(iDCopy, commandIDCopy))
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
    [(MTRDevice_Concrete *)self setExpectedValues:v24 expectedValueInterval:intervalCopy expectedValueID:&v84];
    array = [MEMORY[0x277CBEB18] array];
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
          [array addObject:v34];

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
    array = 0;
  }

  v35 = [MTRAsyncWorkItem alloc];
  queue = [(MTRDevice_Concrete *)self queue];
  v37 = [(MTRAsyncWorkItem *)v35 initWithQueue:queue];

  v56 = v37;
  uniqueID = [(MTRAsyncWorkItem *)v37 uniqueID];
  [(MTRAsyncWorkItem *)v37 setDuplicateTypeID:1 handler:&unk_284BB75D0];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_23939EB9C;
  v66[3] = &unk_278A75A50;
  v52 = queueCopy;
  v67 = v52;
  v53 = completionCopy;
  v77 = v53;
  v49 = v24;
  v68 = v49;
  v55 = array;
  v69 = v55;
  v78 = v84;
  v50 = v59;
  v70 = v50;
  v54 = v62;
  v71 = v54;
  v79 = uniqueID;
  v39 = dCopy;
  v72 = v39;
  v40 = iDCopy;
  v73 = v40;
  v41 = commandIDCopy;
  v74 = v41;
  v42 = v65;
  v75 = v42;
  v51 = v60;
  v76 = v51;
  [(MTRAsyncWorkItem *)v37 setReadyHandler:v66];
  asyncWorkQueue = self->_asyncWorkQueue;
  unsignedLongLongValue = [v40 unsignedLongLongValue];
  v45 = MTRClusterNameForID([v40 unsignedLongLongValue]);
  unsignedLongLongValue2 = [v41 unsignedLongLongValue];
  v47 = MTRRequestCommandNameForID([v40 unsignedLongLongValue], objc_msgSend(v41, "unsignedLongLongValue"));
  [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v56 descriptionWithFormat:@"invoke %@ 0x%llx (%@) 0x%llx (%@): %@", v39, unsignedLongLongValue, v45, unsignedLongLongValue2, v47, v42];

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)_invokeResponse:(id)response matchesRequiredResponse:(id)requiredResponse
{
  v63 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requiredResponseCopy = requiredResponse;
  v42 = responseCopy;
  v7 = [responseCopy objectForKeyedSubscript:?];

  if (v7)
  {
    v38 = [responseCopy objectForKeyedSubscript:@"data"];
    v8 = [v38 objectForKeyedSubscript:@"type"];
    v9 = [@"Structure" isEqual:v8];

    if (v9)
    {
      v40 = [v38 objectForKeyedSubscript:@"value"];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = requiredResponseCopy;
      v10 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (v10)
      {
        selfCopy = self;
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
              selfCopy3 = selfCopy;
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
          selfCopy3 = selfCopy;
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
      selfCopy3 = self;
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
    selfCopy3 = self;
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

- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  queueCopy = queue;
  completionCopy = completion;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_23939FEE0;
  v46[3] = &unk_278A75A78;
  v24 = queueCopy;
  v47 = v24;
  v25 = completionCopy;
  v48 = v25;
  v9 = MEMORY[0x23EE78590](v46);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  reverseObjectEnumerator = [commandsCopy reverseObjectEnumerator];
  obj = reverseObjectEnumerator;
  v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
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
        reverseObjectEnumerator2 = [v28 reverseObjectEnumerator];
        v14 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v14)
        {
          v15 = *v38;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
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

            v14 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v37 objects:v49 count:16];
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

      reverseObjectEnumerator = obj;
      v11 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v11);
  }

  v9[2](v9, 1, MEMORY[0x277CBEBF8]);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  passcodeCopy = passcode;
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  newBaseDevice = [(MTRDevice_Concrete *)self newBaseDevice];
  [newBaseDevice openCommissioningWindowWithSetupPasscode:passcodeCopy discriminator:discriminatorCopy duration:durationCopy queue:queueCopy completion:completionCopy];
}

- (void)openCommissioningWindowWithDiscriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  newBaseDevice = [(MTRDevice_Concrete *)self newBaseDevice];
  [newBaseDevice openCommissioningWindowWithDiscriminator:discriminatorCopy duration:durationCopy queue:queueCopy completion:completionCopy];
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v24 = 2048;
    typeCopy = type;
    v26 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ downloadLogOfType: %lu, timeout: %f", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    timeoutCopy2 = timeout;
    selfCopy2 = self;
    typeCopy2 = type;
    sub_2393D5320(0, 2);
  }

  v13 = [(MTRDevice_Concrete *)self newBaseDevice:selfCopy2];
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
  v21[1] = type;
  v14 = completionCopy;
  v20 = v14;
  [v13 downloadLogOfType:type timeout:queueCopy queue:v19 completion:timeout];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_checkExpiredExpectedValues
{
  v53 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  date = [MEMORY[0x277CBEAA8] date];
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
        if ([date compare:v9] == 1)
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

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
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
          [array addObject:v19];

          [array2 addObject:v16];
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
    selfCopy = self;
    v46 = 2112;
    v47 = array2;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "%@ report from expired expected values %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    v27 = array2;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice_Concrete *)self _reportAttributes:array, selfCopy2, v27];
  if (v33 && [(NSMutableDictionary *)self->_expectedValueCache count]&& ![(MTRDevice_Concrete *)self expirationCheckScheduled])
  {
    [v33 timeIntervalSinceDate:date];
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
    queue = [(MTRDevice_Concrete *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393A14D8;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v35, buf);
    dispatch_after(v23, queue, block);

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

- (id)_attributeValueDictionaryForAttributePath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self _lockedAttributeValueDictionaryForAttributePath:pathCopy];
  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (id)_lockedAttributeValueDictionaryForAttributePath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:pathCopy];
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [date compare:v7];

    if (v8 != 1)
    {
      v10 = [v5 objectAtIndexedSubscript:1];

      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:pathCopy];
  }

  v9 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
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
      selfCopy = self;
      v17 = 2112;
      v18 = pathCopy;
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

- (id)_dataValueWithoutDataVersion:(id)version
{
  v16[2] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v4 = versionCopy;
  if (versionCopy && ([versionCopy objectForKeyedSubscript:@"type"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
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

- (void)_noteDataVersion:(id)version forClusterPath:(id)path
{
  v24 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (versionCopy && pathCopy)
  {
    v8 = [(MTRDevice_Concrete *)self _clusterDataForPath:pathCopy];
    v9 = v8;
    if (v8)
    {
      dataVersion = [(MTRDeviceClusterData *)v8 dataVersion];
      v11 = [dataVersion isEqualToNumber:versionCopy];

      if (v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      [(MTRDeviceClusterData *)v9 setPendingDataVersion:versionCopy];
    }

    else
    {
      v9 = objc_alloc_init(MTRDeviceClusterData);
      [(MTRDeviceClusterData *)v9 setPendingDataVersion:versionCopy];
    }

    clusterDataToPersist = self->_clusterDataToPersist;
    if (!clusterDataToPersist)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v15 = self->_clusterDataToPersist;
      self->_clusterDataToPersist = dictionary;

      clusterDataToPersist = self->_clusterDataToPersist;
    }

    [(NSMutableDictionary *)clusterDataToPersist setObject:v9 forKeyedSubscript:pathCopy];
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      v21 = pathCopy;
      v22 = 2112;
      v23 = versionCopy;
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
    selfCopy2 = self;
    v20 = 2112;
    v21 = pathCopy;
    v22 = 2112;
    v23 = versionCopy;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ Attempted to update data version with a nil value. clusterPath: %@, dataVersion: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_attributeAffectsDeviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cluster = [configurationCopy cluster];
  unsignedLongValue = [cluster unsignedLongValue];

  if (unsignedLongValue != 29 || ([configurationCopy attribute], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedLongValue"), v6, v7 > 3) || v7 == 2)
  {
    attribute = [configurationCopy attribute];
    unsignedLongValue2 = [attribute unsignedLongValue];

    if ((unsignedLongValue2 - 65529) >= 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x1Du >> (unsignedLongValue2 + 7);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)_removeClusters:(id)clusters doRemoveFromDataStore:(BOOL)store
{
  storeCopy = store;
  v23 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  os_unfair_lock_assert_owner(&self->super._lock);
  [(NSMutableSet *)self->_persistedClusters minusSet:clustersCopy, clustersCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = clustersCopy;
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
        if (storeCopy)
        {
          _concreteController = [(MTRDevice_Concrete *)self _concreteController];
          controllerDataStore = [_concreteController controllerDataStore];
          nodeID = [(MTRDevice *)self nodeID];
          endpoint = [v10 endpoint];
          cluster = [v10 cluster];
          [controllerDataStore clearStoredClusterDataForNodeID:nodeID endpointID:endpoint clusterID:cluster];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeAttributes:(id)attributes fromCluster:(id)cluster
{
  v21 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  clusterCopy = cluster;
  os_unfair_lock_assert_owner(&self->super._lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = attributesCopy;
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

        [(MTRDevice_Concrete *)self _removeCachedAttribute:*(*(&v16 + 1) + 8 * v11++) fromCluster:clusterCopy, v16];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(NSCache *)self->_persistedClusterData removeObjectForKey:clusterCopy];
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  controllerDataStore = [_concreteController controllerDataStore];
  nodeID = [(MTRDevice *)self nodeID];
  [controllerDataStore removeAttributes:v8 fromCluster:clusterCopy forNodeID:nodeID];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_pruneEndpointsIn:(id)in missingFrom:(id)from
{
  v47 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = MEMORY[0x277CBEB58];
  v7 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:in];
  v28 = [v6 setWithArray:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:fromCopy];
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
              endpoint = [v19 endpoint];
              v21 = [endpoint isEqualToNumber:v13];

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
        _concreteController = [(MTRDevice_Concrete *)val _concreteController];
        controllerDataStore = [_concreteController controllerDataStore];
        nodeID = [(MTRDevice *)val nodeID];
        [controllerDataStore clearStoredClusterDataForNodeID:nodeID endpointID:v13];

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

- (void)_pruneClustersIn:(id)in missingFrom:(id)from forEndpoint:(id)endpoint
{
  v43 = *MEMORY[0x277D85DE8];
  inCopy = in;
  fromCopy = from;
  endpointCopy = endpoint;
  v10 = MEMORY[0x277CBEB58];
  selfCopy = self;
  v28 = inCopy;
  v11 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:inCopy];
  v12 = [v10 setWithArray:v11];

  v13 = MEMORY[0x277CBEB98];
  v14 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:fromCopy];
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
        endpoint = [v20 endpoint];
        if ([endpoint isEqualToNumber:endpointCopy])
        {
          cluster = [v20 cluster];
          v23 = [v12 containsObject:cluster];

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

  [(MTRDevice_Concrete *)selfCopy _removeClusters:v32 doRemoveFromDataStore:1];
  objc_initWeak(&location, selfCopy);
  deviceController = selfCopy->super._deviceController;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2393A2AC4;
  v33[3] = &unk_278A75800;
  objc_copyWeak(&v36, &location);
  v25 = v12;
  v34 = v25;
  v26 = endpointCopy;
  v35 = v26;
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v33 errorHandler:0];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_pruneAttributesIn:(id)in missingFrom:(id)from forCluster:(id)cluster
{
  inCopy = in;
  fromCopy = from;
  clusterCopy = cluster;
  v11 = MEMORY[0x277CBEB58];
  v12 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:inCopy];
  v13 = [v11 setWithArray:v12];

  v14 = MEMORY[0x277CBEB98];
  v15 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:fromCopy];
  v16 = [v14 setWithArray:v15];

  [v13 minusSet:v16];
  [(MTRDevice_Concrete *)self _removeAttributes:v13 fromCluster:clusterCopy];
  objc_initWeak(&location, self);
  deviceController = self->super._deviceController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2393A2ED0;
  v20[3] = &unk_278A75800;
  objc_copyWeak(&v23, &location);
  v18 = v13;
  v21 = v18;
  v19 = clusterCopy;
  v22 = v19;
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v20 errorHandler:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_pruneStoredDataForPath:(id)path missingFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  fromCopy = from;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _dataStoreExists]|| [(NSMutableDictionary *)self->_clusterDataToPersist count])
  {
    cluster = [pathCopy cluster];
    unsignedLongValue = [cluster unsignedLongValue];

    if (unsignedLongValue == 29)
    {
      attribute = [pathCopy attribute];
      if ([attribute unsignedLongValue] == 3)
      {
        endpoint = [pathCopy endpoint];
        v12 = [endpoint isEqualToNumber:&unk_284C43AA8];

        if (v12)
        {
          v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
          [(MTRDevice_Concrete *)self _pruneEndpointsIn:v13 missingFrom:fromCopy];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      attribute2 = [pathCopy attribute];
      unsignedLongValue2 = [attribute2 unsignedLongValue];

      if (unsignedLongValue2 == 1)
      {
        v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
        endpoint2 = [pathCopy endpoint];
        [(MTRDevice_Concrete *)self _pruneClustersIn:v13 missingFrom:fromCopy forEndpoint:endpoint2];
LABEL_12:

        goto LABEL_13;
      }
    }

    attribute3 = [pathCopy attribute];
    unsignedLongValue3 = [attribute3 unsignedLongValue];

    if (unsignedLongValue3 == 65531)
    {
      v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
      endpoint2 = [pathCopy endpoint];
      cluster2 = [pathCopy cluster];
      v20 = [MTRClusterPath clusterPathWithEndpointID:endpoint2 clusterID:cluster2];
      [(MTRDevice_Concrete *)self _pruneAttributesIn:v13 missingFrom:fromCopy forCluster:v20];

      goto LABEL_12;
    }
  }

  else
  {
    v22 = sub_2393D9044(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
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

- (id)_getAttributesToReportWithReportedValues:(id)values fromSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  v93 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  os_unfair_lock_assert_owner(&self->super._lock);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = valuesCopy;
  v5 = [obj countByEnumeratingWithState:&v77 objects:v92 count:16];
  selfCopy = self;
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
            v12 = [(MTRDevice_Concrete *)selfCopy _cachedAttributeValueForPath:*&v8];
            v13 = sub_2393D9044(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [(NSMutableDictionary *)selfCopy->_expectedValueCache objectForKeyedSubscript:*&v8];
              *buf = 138413314;
              v83 = selfCopy;
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
              v58 = [(NSMutableDictionary *)selfCopy->_expectedValueCache objectForKeyedSubscript:*&v8];
              v59 = v12;
              v56 = v8;
              v57 = v11;
              v55 = selfCopy;
              sub_2393D5320(0, 1);
            }

            [(NSMutableDictionary *)selfCopy->_expectedValueCache setObject:0 forKeyedSubscript:*&v8, v55, *&v56, v57, v58, v59];
            [(MTRDevice_Concrete *)selfCopy _setCachedAttributeValue:0 forPath:*&v8 fromSubscription:subscriptionCopy];
            v15 = v12;
LABEL_57:
            if (v15)
            {
              v39 = [(NSDate *)v7 mutableCopy];
              [v39 setObject:v15 forKeyedSubscript:@"previousData"];
              [array addObject:v39];
            }

            else
            {
              [array addObject:v7];
            }

            [array2 addObject:{*&v8, v55}];
            goto LABEL_61;
          }

          v69 = [v9 objectForKeyedSubscript:@"dataVersion"];
          endpoint = [*&v8 endpoint];
          cluster = [*&v8 cluster];
          v67 = [MTRClusterPath clusterPathWithEndpointID:endpoint clusterID:cluster];

          if (v69)
          {
            [(MTRDevice_Concrete *)selfCopy _noteDataVersion:v69 forClusterPath:v67];
            v19 = [(MTRDevice_Concrete *)selfCopy _dataValueWithoutDataVersion:v9];

            v9 = v19;
          }

          v15 = [(MTRDevice_Concrete *)selfCopy _cachedAttributeValueForPath:*&v8];
          v20 = [(MTRDevice *)selfCopy _attributeDataValue:v9 isEqualToDataValue:v15];
          if ((v20 & 1) == 0)
          {
            [(MTRDevice_Concrete *)selfCopy _pruneStoredDataForPath:*&v8 missingFrom:v9];
            if (!selfCopy->_deviceConfigurationChanged)
            {
              v21 = [(MTRDevice_Concrete *)selfCopy _attributeAffectsDeviceConfiguration:*&v8];
              selfCopy->_deviceConfigurationChanged = v21;
              if (v21)
              {
                v22 = sub_2393D9044(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v83 = selfCopy;
                  v84 = 2112;
                  v85 = v8;
                  _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "%@ device configuration changed due to changes in attribute %@", buf, 0x16u);
                }

                if (sub_2393D5398(2u))
                {
                  v55 = selfCopy;
                  v56 = v8;
                  sub_2393D5320(0, 2);
                }
              }
            }

            [(MTRDevice_Concrete *)selfCopy _setCachedAttributeValue:v9 forPath:*&v8 fromSubscription:subscriptionCopy, v55];
            [(MTRDevice *)selfCopy _attributeValue:v9 reportedForPath:*&v8];
            cluster2 = [*&v8 cluster];
            if ([cluster2 unsignedLongValue] != 56)
            {
              goto LABEL_30;
            }

            attribute = [*&v8 attribute];
            if ([attribute unsignedLongValue])
            {
              goto LABEL_29;
            }

            shouldDetectTimeSynchronizationLoss = [(MTRDevice_Concrete *)selfCopy shouldDetectTimeSynchronizationLoss];

            if (shouldDetectTimeSynchronizationLoss)
            {
              v41 = [[MTRAttributeReport alloc] initWithResponseValue:v7 error:0];
              cluster2 = v41;
              if (v41)
              {
                attribute = [(MTRAttributeReport *)v41 value];
                unsignedLongLongValue = [attribute unsignedLongLongValue];
                v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(unsignedLongLongValue + 946684800000000) / 1000000.0];
                [v43 timeIntervalSinceNow];
                if (fabs(v44) > 300.0)
                {
                  loga = sub_2393D9044(0);
                  if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v83 = selfCopy;
                    _os_log_impl(&dword_238DAE000, loga, OS_LOG_TYPE_DEFAULT, "%@ Time synchronization loss detected", buf, 0xCu);
                  }

                  if (sub_2393D5398(2u))
                  {
                    v55 = selfCopy;
                    sub_2393D5320(0, 2);
                  }

                  selfCopy->_timeSynchronizationLossDetected = 1;
                  v45 = [MEMORY[0x277CBEAA8] now];
                  timeSynchronizationLossDetectedTime = selfCopy->_timeSynchronizationLossDetectedTime;
                  selfCopy->_timeSynchronizationLossDetectedTime = v45;
                }

LABEL_29:
              }

LABEL_30:
            }
          }

          v25 = [(NSMutableDictionary *)selfCopy->_expectedValueCache objectForKeyedSubscript:*&v8];
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
                v83 = selfCopy;
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
                v83 = selfCopy;
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
                v55 = selfCopy;
                sub_2393D5320(0, 2);
              }
            }
          }

          cluster3 = [*&v8 cluster];
          if ([cluster3 unsignedLongValue] == 51)
          {
            attribute2 = [*&v8 attribute];
            v31 = [attribute2 unsignedLongValue] == 2;

            if (v31)
            {
              v32 = [v9 objectForKeyedSubscript:@"type"];
              v33 = [v32 isEqual:@"UnsignedInteger"];

              if (v33)
              {
                cluster3 = [v9 objectForKeyedSubscript:@"value"];
                unsignedLongLongValue2 = [cluster3 unsignedLongLongValue];
                v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-unsignedLongLongValue2];
                v61 = selfCopy->_estimatedStartTime;
                if (!selfCopy->_estimatedStartTime || [(NSDate *)v35 compare:?]== NSOrderedAscending)
                {
                  v36 = sub_2393D9044(0);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138413058;
                    v83 = selfCopy;
                    v84 = 2048;
                    v85 = unsignedLongLongValue2;
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
                    v56 = unsignedLongLongValue2;
                    v55 = selfCopy;
                    sub_2393D5320(0, 2);
                  }

                  objc_storeStrong(&selfCopy->_estimatedStartTime, v35);
                }

                estimatedStartTimeFromGeneralDiagnosticsUpTime = selfCopy->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
                selfCopy->_estimatedStartTimeFromGeneralDiagnosticsUpTime = v35;
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
          v83 = selfCopy;
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
          v55 = selfCopy;
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
  v47 = array2;
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
          v83 = selfCopy;
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

  return array;
}

- (id)getAllAttributesReport
{
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  v23 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MTRDevice_Concrete *)selfCopy _knownClusters];
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
        v4 = [(MTRDevice_Concrete *)selfCopy _clusterDataForPath:v3];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v19 = v4;
        attributes = [v4 attributes];
        v5 = [attributes countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v5)
        {
          v6 = *v25;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v25 != v6)
              {
                objc_enumerationMutation(attributes);
              }

              v8 = *(*(&v24 + 1) + 8 * j);
              endpoint = [v3 endpoint];
              cluster = [v3 cluster];
              v11 = [MTRAttributePath attributePathWithEndpointID:endpoint clusterID:cluster attributeID:v8];

              v32[1] = @"data";
              v33[0] = v11;
              v32[0] = @"attributePath";
              v12 = [(os_unfair_lock_s *)v23 _lockedAttributeValueDictionaryForAttributePath:v11];
              v33[1] = v12;
              v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
              [array addObject:v13];
            }

            v5 = [attributes countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v5);
        }

        selfCopy = v23;
      }

      v18 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(v23 + 2);
  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)setPersistedClusterData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(MTRDevice_Concrete *)self _doSetPersistedClusterData:dataCopy];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2048;
    v10 = [dataCopy count];
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ setPersistedClusterData count: %lu", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    [dataCopy count];
    sub_2393D5320(0, 2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_doSetPersistedClusterData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy count])
  {
    os_unfair_lock_lock(&self->super._lock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = dataCopy;
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
        attributes = [v13 attributes];
        v16 = [attributes objectForKeyedSubscript:&unk_284C43AD8];
        *buf = 138412802;
        selfCopy = self;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ after setting persisted data, network features: %@, root network commissioning featureMap: %@", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        attributes2 = [v13 attributes];
        v19 = [attributes2 objectForKeyedSubscript:&unk_284C43AD8];
        sub_2393D5320(0, 2);
      }
    }

    self->_deviceCachePrimed = 1;

    os_unfair_lock_unlock(&self->super._lock);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setLastInitialSubscribeLatency:(id)latency
{
  latencyCopy = latency;
  os_unfair_lock_assert_owner(&self->super._lock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_estimatedSubscriptionLatency, latency);
  }
}

- (void)setPersistedDeviceData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dataCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "%@ setPersistedDeviceData: %@", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    selfCopy2 = self;
    v10 = dataCopy;
    sub_2393D5320(0, 3);
  }

  os_unfair_lock_lock(&self->super._lock);
  v6 = [dataCopy objectForKeyedSubscript:@"lastInitialSubscribeLatency"];
  if (v6)
  {
    [(MTRDevice_Concrete *)self _setLastInitialSubscribeLatency:v6];
  }

  v7 = [dataCopy objectForKeyedSubscript:{@"highestObservedEventNumber", selfCopy2, v10}];
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
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  controllerDataStore = [_concreteController controllerDataStore];

  if (controllerDataStore)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = dictionary;
    estimatedSubscriptionLatency = self->_estimatedSubscriptionLatency;
    if (estimatedSubscriptionLatency)
    {
      [dictionary setObject:estimatedSubscriptionLatency forKeyedSubscript:@"lastInitialSubscribeLatency"];
    }

    highestObservedEventNumber = [(MTRDevice_Concrete *)self highestObservedEventNumber];

    if (highestObservedEventNumber)
    {
      highestObservedEventNumber2 = [(MTRDevice_Concrete *)self highestObservedEventNumber];
      [v6 setObject:highestObservedEventNumber2 forKeyedSubscript:@"highestObservedEventNumber"];

      [(MTRDevice_Concrete *)self setHighestObservedEventNumberNeedsPersisting:0];
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "%@ _storePersistedDeviceData: %@", buf, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      selfCopy2 = self;
      v15 = v6;
      sub_2393D5320(0, 3);
    }

    v11 = [v6 copy];
    nodeID = [(MTRDevice *)self nodeID];
    [controllerDataStore storeDeviceData:v11 forNodeID:nodeID];
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

- (void)_setExpectedValue:(id)value attributePath:(id)path expirationTime:(id)time shouldReportValue:(BOOL *)reportValue attributeValueToReport:(id *)report expectedValueID:(unint64_t)d previousValue:(id *)previousValue
{
  v33[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  timeCopy = time;
  os_unfair_lock_assert_owner(&self->super._lock);
  *reportValue = 0;
  v16 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:pathCopy];
  v17 = v16;
  if (v16)
  {
    if (valueCopy)
    {
      v18 = [v16 objectAtIndexedSubscript:1];
      v19 = [(MTRDevice *)self _attributeDataValue:valueCopy isEqualToDataValue:v18];

      if (!v19)
      {
        *reportValue = 1;
        v20 = valueCopy;
        *report = valueCopy;
        *previousValue = [v17 objectAtIndexedSubscript:1];
      }

LABEL_16:
      v33[0] = timeCopy;
      v33[1] = valueCopy;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
      v33[2] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
      [(NSMutableDictionary *)self->_expectedValueCache setObject:v28 forKeyedSubscript:pathCopy];

      goto LABEL_17;
    }

    v21 = [v16 objectAtIndexedSubscript:2];
    if ([v21 unsignedLongLongValue] == d)
    {
      v30 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
      v23 = [v17 objectAtIndexedSubscript:1];
      v24 = [(MTRDevice *)self _attributeDataValue:v23 isEqualToDataValue:v30];

      if (!v24)
      {
        *reportValue = 1;
        *report = v30;
        *previousValue = [v17 objectAtIndexedSubscript:1];
        [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:pathCopy];
      }
    }
  }

  else
  {
    v21 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
    if (valueCopy)
    {
      if ([(MTRDevice *)self _attributeDataValue:valueCopy isEqualToDataValue:v21])
      {
        v22 = 0;
      }

      else
      {
        *reportValue = 1;
        v25 = valueCopy;
        *report = valueCopy;
        v26 = v21;
        v22 = v21;
      }

      *previousValue = v22;

      goto LABEL_16;
    }

    *previousValue = 0;
  }

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];
}

- (id)_getAttributesToReportWithNewExpectedValues:(id)values expirationTime:(id)time expectedValueID:(unint64_t *)d
{
  v43 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  timeCopy = time;
  os_unfair_lock_assert_owner(&self->super._lock);
  expectedValueNextID = self->_expectedValueNextID;
  selfCopy = self;
  self->_expectedValueNextID = expectedValueNextID + 1;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = valuesCopy;
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
        [(MTRDevice_Concrete *)selfCopy _setExpectedValue:v12 attributePath:v11 expirationTime:timeCopy shouldReportValue:buf attributeValueToReport:&v29 expectedValueID:expectedValueNextID previousValue:&v28];
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
          [array addObject:v16];

          [array2 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v8);
  }

  if (d)
  {
    *d = expectedValueNextID;
  }

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = selfCopy;
    v36 = 2112;
    v37 = array2;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ report from new expected values %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v18 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)setExpectedValues:(id)values expectedValueInterval:(id)interval expectedValueID:(unint64_t *)d
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  intervalCopy = interval;
  v10 = MEMORY[0x277CBEAA8];
  [intervalCopy doubleValue];
  v12 = [v10 dateWithTimeIntervalSinceNow:v11 / 1000.0];
  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [v12 timeIntervalSinceNow];
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = valuesCopy;
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
  v15 = [(MTRDevice_Concrete *)self _getAttributesToReportWithNewExpectedValues:valuesCopy expirationTime:v12 expectedValueID:d];
  [(MTRDevice_Concrete *)self _reportAttributes:v15];
  [(MTRDevice_Concrete *)self _checkExpiredExpectedValues];

  os_unfair_lock_unlock(&self->super._lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeExpectedValuesForAttributePaths:(id)paths expectedValueID:(unint64_t)d
{
  v17 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  os_unfair_lock_lock(&self->super._lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = pathsCopy;
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

        [(MTRDevice_Concrete *)self _removeExpectedValueForAttributePath:*(*(&v12 + 1) + 8 * v10++) expectedValueID:d, v12];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->super._lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d
{
  pathCopy = path;
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _removeExpectedValueForAttributePath:pathCopy expectedValueID:d];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  v21 = 0;
  v19 = 0;
  v20 = 0;
  [(MTRDevice_Concrete *)self _setExpectedValue:0 attributePath:pathCopy expirationTime:0 shouldReportValue:&v21 attributeValueToReport:&v20 expectedValueID:d previousValue:&v19];
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

    selfCopy = self;
    v25 = 2112;
    v26 = pathCopy;
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

    v17 = pathCopy;
    v18 = v11;
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  if (v21 == 1)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:pathCopy forKey:@"attributePath"];
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
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:{1, selfCopy2, v17, v18}];
    [(MTRDevice_Concrete *)self _reportAttributes:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)newBaseDevice
{
  nodeID = [(MTRDevice *)self nodeID];
  deviceController = [(MTRDevice *)self deviceController];
  v5 = [MTRBaseDevice deviceWithNodeID:nodeID controller:deviceController];

  return v5;
}

- (id)_informationalNumberAtAttributePath:(id)path
{
  v13[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
  if (v5)
  {
    v6 = [MTRAttributeReport alloc];
    v12[0] = @"attributePath";
    v12[1] = @"data";
    v13[0] = pathCopy;
    v13[1] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = [(MTRAttributeReport *)v6 initWithResponseValue:v7 error:0];

    value = [(MTRAttributeReport *)v8 value];
  }

  else
  {
    value = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return value;
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
  _informationalVendorID = [(MTRDevice_Concrete *)self _informationalVendorID];
  v7 = 2;
  v8 = "dwnfw_device_vendor_id";
  unsignedShortValue = [_informationalVendorID unsignedShortValue];
  v10 = 2;

  sub_23948BD20(&v7);
  _informationalProductID = [(MTRDevice_Concrete *)self _informationalProductID];
  unsignedShortValue2 = [_informationalProductID unsignedShortValue];
  v7 = 2;
  v8 = "dwnfw_device_product_id";
  unsignedShortValue = unsignedShortValue2;
  v10 = 2;

  sub_23948BD20(&v7);
  _deviceUsesThread = [(MTRDevice_Concrete *)self _deviceUsesThread];
  v7 = 2;
  v8 = "dwnfw_device_uses_thread_BOOL";
  unsignedShortValue = _deviceUsesThread;
  v10 = 1;
  sub_23948BD20(&v7);
}

- (BOOL)_attributePathAffectsDescriptionData:(id)data
{
  dataCopy = data;
  os_unfair_lock_assert_owner(&self->super._lock);
  cluster = [dataCopy cluster];
  unsignedLongLongValue = [cluster unsignedLongLongValue];

  if (unsignedLongLongValue == 40)
  {
    attribute = [dataCopy attribute];
    unsignedLongLongValue2 = [attribute unsignedLongLongValue];

    v8 = ((unsignedLongLongValue2 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else if (unsignedLongLongValue == 49)
  {
    attribute2 = [dataCopy attribute];
    v8 = [attribute2 unsignedLongLongValue] == 65532;
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
  _informationalVendorID = [(MTRDevice_Concrete *)self _informationalVendorID];
  _informationalProductID = [(MTRDevice_Concrete *)self _informationalProductID];
  _networkFeatures = [(MTRDevice_Concrete *)self _networkFeatures];
  os_unfair_lock_lock(&self->_descriptionLock);
  vid = self->_vid;
  self->_vid = _informationalVendorID;
  v7 = _informationalVendorID;

  pid = self->_pid;
  self->_pid = _informationalProductID;
  v9 = _informationalProductID;

  allNetworkFeatures = self->_allNetworkFeatures;
  self->_allNetworkFeatures = _networkFeatures;

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

- (id)_cachedListOfNumbersValueForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  v12 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v11];
  v13 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v12];
  v14 = v13;
  if (v13)
  {
    array = v13;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v16 = array;

  return v16;
}

- (id)_serverListForEndpointID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:dCopy clusterID:&unk_284C43A48 attributeID:&unk_284C43A60];

  return v5;
}

- (id)_attributeListForEndpointID:(id)d clusterID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  os_unfair_lock_assert_owner(&self->super._lock);
  v8 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:dCopy clusterID:iDCopy attributeID:&unk_284C43BB0];

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
      selfCopy = self;
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
  lastSubscriptionActiveTime = [(MTRDevice_Concrete *)self lastSubscriptionActiveTime];

  if (lastSubscriptionActiveTime && (-[MTRDevice_Concrete lastSubscriptionActiveTime](self, "lastSubscriptionActiveTime"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = v5, v4, v6 > -1.5))
  {
    v9 = -v6;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
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
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ _deviceMayBeReachable called, resetting subscription", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    objc_initWeak(buf, self);
    _concreteController = [(MTRDevice_Concrete *)self _concreteController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2393A7378;
    v12[3] = &unk_278A756E8;
    objc_copyWeak(&v13, buf);
    [_concreteController asyncGetCommissionerOnMatterQueue:v12 errorHandler:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)deviceWithNodeID:(unint64_t)d deviceController:(id)controller
{
  controllerCopy = controller;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v8 = [self deviceWithNodeID:v7 controller:controllerCopy];

  return v8;
}

@end