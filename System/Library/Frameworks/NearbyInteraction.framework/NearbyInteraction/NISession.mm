@interface NISession
+ (BOOL)_supportedPlatform:(id)a3;
+ (BOOL)isSupported;
+ (NIInternalDeviceCapability)internalDeviceCapabilities;
+ (NSArray)activelyInteractingDiscoveryTokens;
+ (NSArray)interactableDiscoveryTokens;
+ (id)_localDeviceLogger;
+ (id)deviceCapabilities;
+ (id)generateBluetoothDeviceTokenWithPublicAddress:(id)a3 IRK:(id)a4;
+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)a3;
+ (id)generateFindingDiscoveryToken;
+ (id)generateFindingDiscoveryTokenWithIdentityResolvingKey:(id)a3;
+ (id)generateFindingDiscoveryTokenWithSharedSecret:(id)a3;
+ (id)localDevicePrintableState;
+ (id)observerSession;
+ (id)setLocalDeviceDebugParameters:(id)a3;
+ (id)setLocalDeviceInteractableDiscoveryTokens:(id)a3;
+ (void)_queryAndCacheCapabilities;
+ (void)generateSOSBeaconSearcherDataMatchingSubjectData:(id)a3 completion:(id)a4;
+ (void)generateSOSBeaconSubjectDataWithCompletion:(id)a3;
+ (void)getAsyncActivelyInteractingDiscoveryTokens:(id)a3;
+ (void)getAsyncInteractableDiscoveryTokens:(id)a3;
+ (void)setAsyncLocalDeviceInteractableDiscoveryTokens:(id)a3 completion:(id)a4;
- (BOOL)_configurationSupportsRetry;
- (BOOL)_isInternalClient;
- (BOOL)_isValidARSession:(id)a3 andConfiguration:(id)a4;
- (BOOL)_shouldReConnectToDaemonAfterCrash;
- (BOOL)_shouldReRunSessionAfterSessionInterruptionEnded;
- (BOOL)_tryToRecoverFromFailure:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExtendedDistanceMeasurementAllowed;
- (BOOL)isPreciseRangingAllowed;
- (BOOL)isRangingLimitExceeded;
- (NIAcwgEventNotifier)acwgEventNotifier;
- (NICarKeyEventNotifier)carKeyEventNotifier;
- (NIConfiguration)configuration;
- (NIDevicePresenceNotifier)devicePresenceNotifier;
- (NIDiscoveryToken)discoveryToken;
- (NIFindingNotifier)findingNotifier;
- (NIInternalSessionDelegate)internalDelegate;
- (NISystemEventNotifier)systemEventNotifier;
- (NSString)description;
- (double)lightEstimateFromARLightEstimate:(id)a3;
- (id).cxx_construct;
- (id)_getSessionFailureError;
- (id)_initAndConnectToServerWithOptions:(unint64_t)a3;
- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4;
- (id)_setURSKTTL:(unint64_t)a3;
- (id)_verifyError:(id)a3;
- (id)delegate;
- (id)deleteURSKs;
- (int64_t)motionState;
- (int64_t)niVisionInputTrackingStateFromARTRackingState:(int64_t)a3;
- (simd_float4x4)worldTransformForObject:(NINearbyObject *)object;
- (void)_addObject:(id)a3;
- (void)_addRegionPredicate:(id)a3;
- (void)_configureAndRunInternalARSession;
- (void)_handleARSession:(id)a3 willRunWithConfiguration:(id)a4;
- (void)_handleARSessionDidChangeState:(unint64_t)a3;
- (void)_handleARSessionDidFailWithError:(id)a3;
- (void)_handleARSessionDidUpdateFrame:(id)a3;
- (void)_handleARSessionInterruptionEnded;
- (void)_handleARSessionWasInterrupted;
- (void)_handleActivationError:(id)a3;
- (void)_handleActivationSuccess:(id)a3;
- (void)_handlePauseSessionError:(id)a3;
- (void)_handlePauseSessionSuccess;
- (void)_handleRunSessionError:(id)a3;
- (void)_handleRunSessionSuccess;
- (void)_internalRunWithConfiguration:(id)a3;
- (void)_interruptSessionWithInternalReason:(int64_t)a3 cachedInterruption:(BOOL)a4 nearbydReSuspension:(BOOL)a5;
- (void)_invalidateInternal;
- (void)_invalidateInternalARSessionIfNeeded;
- (void)_invalidateSessionAndNotifyError:(id)a3;
- (void)_logDurationAndSubmit:(BOOL)a3;
- (void)_logTime;
- (void)_notifyDidInvalidateWithError:(id)a3;
- (void)_osLogNearbyObjectUpdate:(id)a3;
- (void)_pauseInternalARSessionIfNeeded;
- (void)_performBlockOnDelegateQueue:(id)a3 ifRespondsToSelector:(SEL)a4 evenIfNotRunning:(BOOL)a5;
- (void)_processUpdatedLockState:(unsigned __int16)a3;
- (void)_provideTruthTag:(id)a3;
- (void)_reinterruptSessionWithCachedInterruption;
- (void)_removeObject:(id)a3;
- (void)_removeRegionPredicate:(id)a3;
- (void)_sendRemoteDevice:(id)a3 changedState:(int64_t)a4;
- (void)_serverConnectionInterrupted;
- (void)_serverConnectionInvalidated;
- (void)_setARSessionInternal:(id)a3;
- (void)_submitErrorMetric:(id)a3;
- (void)dealloc;
- (void)didDiscoverNearbyObject:(id)a3;
- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4;
- (void)didPrefetchAcwgUrsk:(unsigned int)a3 error:(id)a4;
- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4;
- (void)didReceiveAopSFZoneUpdate:(id)a3;
- (void)didReceiveRangingAuthRecommendation:(BOOL)a3 forObject:(id)a4;
- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4;
- (void)didStartAcwgRanging:(int64_t)a3;
- (void)didSuspendAcwgRanging:(int64_t)a3;
- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4;
- (void)didUpdateDLTDOAMeasurements:(id)a3;
- (void)didUpdateHealthStatus:(int64_t)a3;
- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a3;
- (void)didUpdateLocalDiscoveryToken:(id)a3;
- (void)didUpdateMotionState:(int64_t)a3;
- (void)didUpdateNICoordinates:(id)a3;
- (void)didUpdateNearbyObjects:(id)a3;
- (void)didUpdateState:(int64_t)a3 forItem:(id)a4;
- (void)discoveryToken;
- (void)invalidate;
- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5;
- (void)pause;
- (void)prefetchAcwgUrsk:(unsigned int)a3;
- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4;
- (void)processAcwgM3Msg:(id)a3;
- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4;
- (void)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5;
- (void)processDCKMessage:(id)a3 responseCallback:(id)a4;
- (void)processVisionInput:(id)a3;
- (void)relayDCKMessage:(id)a3;
- (void)requestAcwgRangingSessionSuspend:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
- (void)runWithConfiguration:(NIConfiguration *)configuration;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4;
- (void)sessionWasInterrupted:(id)a3;
- (void)setARSession:(ARSession *)session;
- (void)setConfigurationForTesting:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)setDelegateQueue:(dispatch_queue_t)delegateQueue;
- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationTypeWithName:(id)a4;
- (void)systemDidUpdateState:(id)a3;
- (void)updateResponderDeviceIdentifier:(id)a3 completionHandler:(id)a4;
- (void)uwbSessionDidFailWithError:(id)a3;
- (void)uwbSessionDidInvalidateWithError:(id)a3;
- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4;
@end

@implementation NISession

- (NIDevicePresenceNotifier)devicePresenceNotifier
{
  devicePresenceNotifier = self->_devicePresenceNotifier;
  if (!devicePresenceNotifier)
  {
    v4 = [[NIDevicePresenceNotifier alloc] initWithParentSession:self];
    v5 = self->_devicePresenceNotifier;
    self->_devicePresenceNotifier = v4;

    devicePresenceNotifier = self->_devicePresenceNotifier;
  }

  return devicePresenceNotifier;
}

+ (BOOL)isSupported
{
  if (+[NIPlatformInfo supportsUWB])
  {
    return 1;
  }

  v3 = +[NISession cachedPlatformCapabilities];

  if (!v3)
  {
    +[NISession _queryAndCacheCapabilities];
  }

  v4 = +[NISession cachedPlatformCapabilities];
  v2 = [NISession _supportedPlatform:v4];

  return v2;
}

- (void)_reinterruptSessionWithCachedInterruption
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (int64_t)motionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__NISession_motionState__block_invoke;
  v5[3] = &unk_1E7F13958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_initAndConnectToServerWithOptions:(unint64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = NISession;
  v4 = [(NISession *)&v35 init];
  v5 = v4;
  if (v4)
  {
    v4->_connectionOptions = a3;
    v6 = [MEMORY[0x1E696AFB0] UUID];
    internalID = v5->_internalID;
    v5->_internalID = v6;

    atomic_store(0, &v5->_readyForCallbacks);
    v5->_startTime = 0.0;
    v5->_duration = 0.0;
    v5->_updatedNearbyObjects = 0;
    v8 = os_log_create("com.apple.NearbyInteraction", "NISession");
    log = v5->_log;
    v5->_log = v8;

    v10 = objc_alloc_init(NISessionVisionContext);
    visionContext = v5->_visionContext;
    v5->_visionContext = v10;

    [(NISession *)v5 setInternalState:0];
    [(NISession *)v5 setInvalidationError:0];
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("com.apple.NearbyInteraction", v12);
    queue = v5->_queue;
    v5->_queue = v13;

    objc_storeStrong(&v5->_delegateQueue, MEMORY[0x1E69E96A0]);
    v15 = [[NIExportedObjectForwarder alloc] initWithExportedObject:v5];
    exportedObjectForwarder = v5->_exportedObjectForwarder;
    v5->_exportedObjectForwarder = v15;

    v17 = [[NIServerConnection alloc] initWithSessionID:v5->_internalID queue:v5->_queue exportedObject:v5->_exportedObjectForwarder options:a3];
    connection = v5->_connection;
    v5->_connection = v17;

    v19 = dispatch_semaphore_create(0);
    discoveryTokenSemaphore = v5->_discoveryTokenSemaphore;
    v5->_discoveryTokenSemaphore = v19;

    v5->_itemLocalizerDidPrewarmRanging = 0;
    objc_initWeak(&location, v5);
    v21 = v5->_connection;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __48__NISession__initAndConnectToServerWithOptions___block_invoke;
    v32[3] = &unk_1E7F13980;
    objc_copyWeak(&v33, &location);
    [(NIServerConnection *)v21 setInterruptionHandler:v32];
    v22 = v5->_connection;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __48__NISession__initAndConnectToServerWithOptions___block_invoke_2;
    v30[3] = &unk_1E7F13980;
    objc_copyWeak(&v31, &location);
    [(NIServerConnection *)v22 setInvalidationHandler:v30];
    [(NIServerConnection *)v5->_connection resume];
    if (+[NIPlatformInfo isInternalBuild])
    {
      v23 = v5->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v5->_internalID;
        *buf = 138412290;
        v37 = v24;
        _os_log_impl(&dword_1BAC42000, v23, OS_LOG_TYPE_DEFAULT, "NISession init [%@]", buf, 0xCu);
      }
    }

    v25 = [(NISession *)v5 _remoteObject];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __48__NISession__initAndConnectToServerWithOptions___block_invoke_891;
    v28[3] = &unk_1E7F139A8;
    v29 = v5;
    [v25 activate:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

void __48__NISession__initAndConnectToServerWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInterrupted];
}

void __48__NISession__initAndConnectToServerWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInvalidated];
}

void __48__NISession__initAndConnectToServerWithOptions___block_invoke_891(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _handleActivationError:v5];
  }

  else
  {
    [v6 _handleActivationSuccess:v7];
  }
}

+ (BOOL)_supportedPlatform:(id)a3
{
  v3 = [a3 objectForKey:@"SupportedPlatform"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (void)_queryAndCacheCapabilities
{
  v2 = [NIServerConnection createOneShotConnectionAndResume:1];
  v3 = [v2 remoteObjectProxy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __39__NISession__queryAndCacheCapabilities__block_invoke;
  v10 = &unk_1E7F139D0;
  v12 = &v13;
  v5 = v4;
  v11 = v5;
  [v3 queryDeviceCapabilities:&v7];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  [v2 invalidate];
  [NISession setCachedPlatformCapabilities:v14[5]];

  _Block_object_dispose(&v13, 8);
}

void __39__NISession__queryAndCacheCapabilities__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_osLogNearbyObjectUpdate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  ++self->_objectUpdateLogging.totalUpdates;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__NISession__osLogNearbyObjectUpdate___block_invoke;
  v15[3] = &unk_1E7F139F8;
  v15[4] = self;
  [v4 enumerateObjectsUsingBlock:v15];
  if (self->_lastObjectUpdateLogTime)
  {
    [v5 timeIntervalSinceDate:?];
    v7 = v6;
    if (v6 < 5.0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0.0;
  }

  objc_storeStrong(&self->_lastObjectUpdateLogTime, v5);
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DelegateProxy: nearbyObjectUpdates [last %0.1f s]. Updates %d, objects %d, w/dist %d, w/HA %d.", *&v7, self->_objectUpdateLogging.totalUpdates, self->_objectUpdateLogging.totalObjects, self->_objectUpdateLogging.objectsWithDistance, self->_objectUpdateLogging.objectsWithHorizontalAngle];
  v9 = v8;
  if (self->_objectUpdateLogging.objectsWithDistance >= 1)
  {
    [v8 appendFormat:@" Distance: first %0.2f m, last %0.2f m, min %0.2f m, max %0.2f m.", self->_objectUpdateLogging.firstDistance, self->_objectUpdateLogging.lastDistance, self->_objectUpdateLogging.minDistance, self->_objectUpdateLogging.maxDistance];
  }

  if (self->_objectUpdateLogging.objectsWithHorizontalAngle >= 1)
  {
    [v9 appendFormat:@" HA: first %0.1f deg, last %0.1f deg.", self->_objectUpdateLogging.firstHorizontalAngleRad * 57.2957795, self->_objectUpdateLogging.lastHorizontalAngleRad * 57.2957795];
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v17 = v9;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
    }
  }

  v11 = &NINearbyObjectDistanceNotAvailable;
  v12 = NINearbyObjectAngleNotAvailable;
  *&self->_objectUpdateLogging.totalUpdates = 0;
  *&self->_objectUpdateLogging.objectsWithDistance = 0;
  v13 = vld1q_dup_f32(v11);
  *&self->_objectUpdateLogging.firstDistance = v13;
  self->_objectUpdateLogging.firstHorizontalAngleRad = v12;
  self->_objectUpdateLogging.lastHorizontalAngleRad = v12;

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
}

void __38__NISession__osLogNearbyObjectUpdate___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 distance];
  v4 = v3;
  [v14 horizontalAngle];
  ++*(*(a1 + 32) + 204);
  v6 = NINearbyObjectDistanceNotAvailable;
  if (v4 != NINearbyObjectDistanceNotAvailable)
  {
    ++*(*(a1 + 32) + 208);
    *(*(a1 + 32) + 220) = v4;
    v7 = *(a1 + 32);
    if (v7[54] == v6)
    {
      v7[54] = v4;
      v7 = *(a1 + 32);
    }

    v8 = v7[56];
    if (v8 == v6 || v8 > v4)
    {
      v7[56] = v4;
      v7 = *(a1 + 32);
    }

    v10 = v7[57];
    if (v10 == v6 || v10 < v4)
    {
      v7[57] = v4;
    }
  }

  v12 = NINearbyObjectAngleNotAvailable;
  if (v5 != NINearbyObjectAngleNotAvailable)
  {
    ++*(*(a1 + 32) + 212);
    *(*(a1 + 32) + 236) = v5;
    v13 = *(a1 + 32);
    if (*(v13 + 232) == v12)
    {
      *(v13 + 232) = v5;
    }
  }
}

- (void)_logTime
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    self->_duration = v4 - startTime + self->_duration;
    AnalyticsSendEventLazy();
  }

  self->_startTime = v4;
}

id __21__NISession__logTime__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"duration";
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 104)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_logDurationAndSubmit:(BOOL)a3
{
  v3 = a3;
  if (self->_startTime != 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_duration = self->_duration + v5 - self->_startTime;
    self->_startTime = 0.0;
  }

  if (v3)
  {
    AnalyticsSendEventLazy();
  }
}

id __35__NISession__logDurationAndSubmit___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"duration";
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 104)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_submitErrorMetric:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userInfo];

    if (v5)
    {
      v6 = [v4 userInfo];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A588]];

      if (!v7)
      {
        v8 = [v4 userInfo];
        v7 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

        if (!v7)
        {
          v7 = &stru_1F38CC5C0;
        }
      }
    }

    else
    {
      v7 = &stru_1F38CC5C0;
    }

    v10 = v4;
    v11 = v7;
    v9 = v7;
    AnalyticsSendEventLazy();
  }
}

id __32__NISession__submitErrorMetric___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"domain";
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) domain];
  v10[0] = v3;
  v9[1] = @"code";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*v2, "code")}];
  v9[2] = @"string";
  v5 = *(a1 + 40);
  v10[1] = v4;
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__NISession_setDelegate___block_invoke;
  v7[3] = &unk_1E7F13A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

id __25__NISession_setDelegate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 134283521;
      v7 = v3;
      _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "Set delegate: %{private}p", &v6, 0xCu);
    }
  }

  result = objc_storeWeak((*(a1 + 32) + 248), *(a1 + 40));
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDelegateQueue:(dispatch_queue_t)delegateQueue
{
  v5 = delegateQueue;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:518 description:{@"Invalid parameter not satisfying: %@", @"delegateQueue"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__NISession_setDelegateQueue___block_invoke;
  block[3] = &unk_1E7F13A70;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __30__NISession_setDelegateQueue___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 134283521;
      v6 = v3;
      _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "Set delegate queue: %{private}p", &v5, 0xCu);
    }
  }

  objc_storeStrong((*(a1 + 32) + 256), *(a1 + 40));
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)deviceCapabilities
{
  v2 = [[NIDeviceCapabilities alloc] initWithFineRangingSupport:+[NIPlatformInfo supportsUWB](NIPlatformInfo aoaSupport:"supportsUWB") extendedDistanceMeasurementSupport:+[NIPlatformInfo supportsAoA](NIPlatformInfo syntheticApertureSupport:"supportsAoA"), +[NIPlatformInfo supportsNBAMMS](NIPlatformInfo, "supportsNBAMMS"), +[NIPlatformInfo supportsSyntheticAperture]];

  return v2;
}

- (NIConfiguration)configuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__NISession_configuration__block_invoke;
  v5[3] = &unk_1E7F13958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__NISession_configuration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NIDiscoveryToken)discoveryToken
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__NISession_discoveryToken__block_invoke;
  block[3] = &unk_1E7F13958;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(queue, block);
  v4 = v15[5];
  if (!v4)
  {
    v5 = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __27__NISession_discoveryToken__block_invoke_2;
    v12[3] = &unk_1E7F13A98;
    v12[4] = self;
    dispatch_sync(v5, v12);
    discoveryTokenSemaphore = self->_discoveryTokenSemaphore;
    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(discoveryTokenSemaphore, v7);
    v8 = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __27__NISession_discoveryToken__block_invoke_3;
    v11[3] = &unk_1E7F13958;
    v11[4] = self;
    v11[5] = &v14;
    dispatch_sync(v8, v11);
    if (!v15[5] && +[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [NISession discoveryToken];
    }

    v4 = v15[5];
  }

  v9 = v4;
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __27__NISession_discoveryToken__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __27__NISession_discoveryToken__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObject];
  [v1 generateDiscoveryToken];
}

void __27__NISession_discoveryToken__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_isInternalClient
{
  v2 = [(NISession *)self activationResponse];
  v3 = [v2 objectForKey:@"InternalClient"];

  v4 = 0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)runWithConfiguration:(NIConfiguration *)configuration
{
  v5 = configuration;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NISession_runWithConfiguration___block_invoke;
  block[3] = &unk_1E7F13A70;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __34__NISession_runWithConfiguration___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      v5 = v3;
      v6 = NISessionInternalStateToString(v2);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v31 = v4;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Client: runWithConfiguration [%@]. State: %@. Config: %@.", buf, 0x20u);
    }
  }

  atomic_store(1u, (*(a1 + 32) + 80));
  v28[1] = MEMORY[0x1E69E9820];
  v28[2] = 3221225472;
  v28[3] = __34__NISession_runWithConfiguration___block_invoke_939;
  v28[4] = &__block_descriptor_36_e19___NSDictionary_8__0l;
  v29 = v2;
  AnalyticsSendEventLazy();
  if (v2 <= 3)
  {
    if (v2 >= 2 && ((v2 - 2) >= 2 || [*(*(a1 + 32) + 40) isEqual:*(a1 + 40)]))
    {
LABEL_19:
      if (+[NIPlatformInfo isInternalBuild])
      {
        v20 = *(*(a1 + 32) + 88);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BAC42000, v20, OS_LOG_TYPE_DEFAULT, "Not runnable", buf, 2u);
        }
      }

      goto LABEL_16;
    }

LABEL_15:
    v16 = (a1 + 32);
    [*(a1 + 32) setInternalState:2];
    v17 = [*(a1 + 40) copy];
    v18 = *(*(a1 + 32) + 40);
    *(*v16 + 5) = v17;

    [*(a1 + 32) _logTime];
    [*v16 _internalRunWithConfiguration:*(*v16 + 5)];
    goto LABEL_16;
  }

  if ((v2 - 4) < 2)
  {
    goto LABEL_15;
  }

  if ((v2 - 7) >= 2)
  {
    if (v2 == 6)
    {
      [*(a1 + 32) _reinterruptSessionWithCachedInterruption];
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v8 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      v9 = *(*(a1 + 32) + 88);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 16);
        *buf = 138412290;
        v31 = v10;
        _os_log_impl(&dword_1BAC42000, v9, OS_LOG_TYPE_DEFAULT, "Client: enact ranging-auth mitigation (147495615) [%@].", buf, 0xCu);
      }
    }

    v11 = [[NIServerConnection alloc] initWithSessionID:*(*(a1 + 32) + 16) queue:*(*(a1 + 32) + 8) exportedObject:*(*(a1 + 32) + 32) options:*(*(a1 + 32) + 144)];
    v12 = *(*(a1 + 32) + 24);
    *(*(a1 + 32) + 24) = v11;

    objc_initWeak(buf, *(a1 + 32));
    v13 = *(*(a1 + 32) + 24);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __34__NISession_runWithConfiguration___block_invoke_945;
    v27[3] = &unk_1E7F13980;
    objc_copyWeak(v28, buf);
    [v13 setInterruptionHandler:v27];
    v14 = *(*(a1 + 32) + 24);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __34__NISession_runWithConfiguration___block_invoke_2;
    v25[3] = &unk_1E7F13980;
    objc_copyWeak(&v26, buf);
    [v14 setInvalidationHandler:v25];
    [*(*(a1 + 32) + 24) resume];
    v15 = [*(a1 + 32) _remoteObject];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __34__NISession_runWithConfiguration___block_invoke_3;
    v24[3] = &unk_1E7F139A8;
    v24[4] = *(a1 + 32);
    [v15 activate:v24];

    [*(a1 + 32) setInternalState:0];
    [*(a1 + 32) setInvalidationError:0];
    objc_destroyWeak(&v26);
    objc_destroyWeak(v28);
    objc_destroyWeak(buf);
    goto LABEL_15;
  }

  v21 = [*(a1 + 32) invalidationError];
  v22 = *(a1 + 32);
  if (v21)
  {
    [v22 invalidationError];
  }

  else
  {
    [v22 _getSessionFailureError];
  }
  v23 = ;

  [*(a1 + 32) _notifyDidInvalidateWithError:v23];
LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
}

id __34__NISession_runWithConfiguration___block_invoke_939(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"state";
  v1 = NISessionInternalStateToString(*(a1 + 32));
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __34__NISession_runWithConfiguration___block_invoke_945(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInterrupted];
}

void __34__NISession_runWithConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInvalidated];
}

void __34__NISession_runWithConfiguration___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _handleActivationError:v5];
  }

  else
  {
    [v6 _handleActivationSuccess:v7];
  }
}

- (void)pause
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__NISession_pause__block_invoke;
  block[3] = &unk_1E7F13A98;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __18__NISession_pause__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      v5 = v3;
      v6 = NISessionInternalStateToString(v2);
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Client: pause [%@]. State: %@.", buf, 0x16u);
    }
  }

  if ((v2 - 2) < 2)
  {
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    [v10 setInternalState:4];
    [*v9 _pauseInternalARSessionIfNeeded];
    v11 = [*v9 _remoteObject];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __18__NISession_pause__block_invoke_946;
    v14[3] = &unk_1E7F13AE0;
    v14[4] = *v9;
    [v11 pause:v14];
  }

  else if ((v2 - 7) >= 2)
  {
    if (v2 == 6)
    {
      [*(a1 + 32) _reinterruptSessionWithCachedInterruption];
    }
  }

  else
  {
    v7 = [*(a1 + 32) invalidationError];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 invalidationError];
    }

    else
    {
      [v8 _getSessionFailureError];
    }
    v12 = ;

    [*(a1 + 32) _notifyDidInvalidateWithError:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __18__NISession_pause__block_invoke_946(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    [v4 _handlePauseSessionError:v3];
  }

  else
  {
    [v4 _handlePauseSessionSuccess];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__NISession_invalidate__block_invoke;
  block[3] = &unk_1E7F13A98;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __23__NISession_invalidate__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v3[2];
      v5 = NISessionInternalStateToString([v3 internalState]);
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "Client: invalidate [%@]. State: %@.", &v8, 0x16u);
    }
  }

  result = [*(a1 + 32) _invalidateInternal];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      *buf = 138412290;
      v8 = internalID;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "Client: dealloc [%@]", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = NISession;
  [(NISession *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setARSession:(ARSession *)session
{
  v4 = session;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "setARSession", buf, 2u);
    }
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__NISession_setARSession___block_invoke;
  v8[3] = &unk_1E7F13A70;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(queue, v8);
}

- (void)_setARSessionInternal:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([v4 state] == 1)
  {
    v5 = [v4 configuration];
    [(NISession *)self _handleARSession:v4 willRunWithConfiguration:v5];
  }

  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NISessionVisionContext *)self->_visionContext arSession];
    if ([v7 state] == 2)
    {
      v8 = [v4 state];

      if (v8 != 2)
      {
        if (+[NIPlatformInfo isInternalBuild])
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "_setARSessionInternal: ARSession was interrupted, new ARSession created in uninterrupted state.", v11, 2u);
          }
        }

        [(NISession *)self _handleARSessionInterruptionEnded];
      }
    }

    else
    {
    }
  }

  [(NISessionVisionContext *)self->_visionContext setArSession:v4];
  v10 = [(NISessionVisionContext *)self->_visionContext arSession];
  [v10 _addObserver:self];
}

- (simd_float4x4)worldTransformForObject:(NINearbyObject *)object
{
  v4 = object;
  v18 = 0;
  v19 = &v18;
  v20 = 0x7012000000;
  v21 = __Block_byref_object_copy__951;
  v22 = __Block_byref_object_dispose__952;
  v23 = &unk_1BAC882AE;
  v24 = NINearbyObjectWorldTransformNotAvailable;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NISession_worldTransformForObject___block_invoke;
  block[3] = &unk_1E7F13B08;
  block[4] = self;
  v16 = v4;
  v17 = &v18;
  v6 = v4;
  dispatch_sync(queue, block);
  v13 = v19[5];
  v14 = v19[6];
  v11 = v19[3];
  v12 = v19[4];

  _Block_object_dispose(&v18, 8);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  result.columns[3] = v10;
  result.columns[2] = v9;
  result.columns[1] = v8;
  result.columns[0] = v7;
  return result;
}

uint32x4_t __37__NISession_worldTransformForObject___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    v3 = [v2 latestARFrame];

    if (v3)
    {
      v5 = [*(*(a1 + 32) + 184) latestARFrame];
      v6 = [v5 camera];
      v7 = [v6 trackingState];

      if (v7 == 2)
      {
        [*(a1 + 40) worldPosition];
        result = vceqq_f32(v8, NINearbyObjectWorldPositionNotAvailable);
        result.i32[3] = result.i32[2];
        result.i32[0] = vminvq_u32(result);
        if ((result.i32[0] & 0x80000000) == 0)
        {
          [*(a1 + 40) worldPosition];
          result.i32[3] = 1.0;
          v9 = *(*(a1 + 48) + 8);
          *(v9 + 48) = xmmword_1BAC847E0;
          *(v9 + 64) = xmmword_1BAC847F0;
          *(v9 + 80) = xmmword_1BAC848B0;
          *(v9 + 96) = result;
        }
      }
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(NSUUID *)self->_internalID isEqual:v4->_internalID];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v22 = [v3 initWithFormat:@"<%@: %@", v5, self->_internalID];

  v6 = +[NISession deviceCapabilities];
  v7 = v18[5];
  if ([v6 supportsPreciseDistanceMeasurement])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v7 appendFormat:@", preciseDistance: %@", v8];
  v9 = v18[5];
  if ([v6 supportsDirectionMeasurement])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v9 appendFormat:@", direction: %@", v10];
  v11 = v18[5];
  if ([v6 supportsCameraAssistance])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v11 appendFormat:@", cameraAssistance: %@", v12];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__NISession_description__block_invoke;
  block[3] = &unk_1E7F13958;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(queue, block);
  [v18[5] appendString:@">"];
  v14 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v14;
}

void __24__NISession_description__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [*(*(a1 + 32) + 128) descriptionInternal];
  [v2 appendFormat:@", Token: %@", v5];

  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [*(v3 + 40) descriptionInternal];
  [v4 appendFormat:@", Config: %@", v6];
}

- (void)setConfigurationForTesting:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NISession_setConfigurationForTesting___block_invoke;
  v7[3] = &unk_1E7F13A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_serverConnectionInvalidated
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NISession *)self internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v6 = log;
      v7 = NISessionInternalStateToString(v3);
      v10 = 138412546;
      v11 = internalID;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1BAC42000, v6, OS_LOG_TYPE_DEFAULT, "Server connection invalidated [%@]. State: %@.", &v10, 0x16u);
    }
  }

  [(NISession *)self setInternalState:8];
  if (v3 != 7)
  {
    v8 = [(NISession *)self _getSessionFailureError];
    [(NISession *)self _notifyDidInvalidateWithError:v8];
  }

  dispatch_semaphore_signal(self->_discoveryTokenSemaphore);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_serverConnectionInterrupted
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v5 = NISessionInternalStateToString([(NISession *)self internalState]);
      *buf = 138412546;
      v22 = internalID;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_1BAC42000, v3, OS_LOG_TYPE_DEFAULT, "Server connection interrupted [%@]. State: %@.", buf, 0x16u);
    }
  }

  if ([(NISession *)self _shouldReConnectToDaemonAfterCrash])
  {
    objc_initWeak(buf, self);
    v6 = dispatch_time(0, 1000000 * NomininalRetryTimeMilliseconds);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__NISession__serverConnectionInterrupted__block_invoke;
    block[3] = &unk_1E7F13980;
    objc_copyWeak(&v18, buf);
    dispatch_after(v6, queue, block);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    currentConfiguration = self->_currentConfiguration;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOWORD(v22) = 1026;
      *buf = 33558787;
      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:6];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __41__NISession__serverConnectionInterrupted__block_invoke_2;
      v15[3] = &unk_1E7F13A70;
      v15[4] = self;
      v16 = v9;
      v10 = v9;
      [(NISession *)self _performBlockOnDelegateQueue:v15 ifRespondsToSelector:sel_session_relayDCKMessage_];
    }

    v11 = *MEMORY[0x1E696A598];
    v19[0] = *MEMORY[0x1E696A588];
    v19[1] = v11;
    v20[0] = @"The session token has been invalidated. This session cannot be restarted.";
    v20[1] = @"Create a new session and exchange token again.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v13 = NIErrorWithCodeAndUserInfo(-5887, v12);

    [(NISession *)self _invalidateSessionAndNotifyError:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __41__NISession__serverConnectionInterrupted__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained uwbSessionInterruptedWithReason:7 timestamp:PRCommonGetMachContinuousTimeSeconds()];
    if (+[NIPlatformInfo isInternalBuild])
    {
      v2 = WeakRetained[11];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = WeakRetained[2];
        *buf = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "NISession trying to re-activate nearbyd [%@]", buf, 0xCu);
      }
    }

    v4 = [WeakRetained _remoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__NISession__serverConnectionInterrupted__block_invoke_981;
    v6[3] = &unk_1E7F139A8;
    v6[4] = WeakRetained;
    [v4 activate:v6];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41__NISession__serverConnectionInterrupted__block_invoke_981(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _handleActivationError:v5];
  }

  else
  {
    [v6 _handleActivationSuccess:v7];
  }
}

void __41__NISession__serverConnectionInterrupted__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) relayDCKMessage:*(a1 + 40)];
}

- (BOOL)_shouldReConnectToDaemonAfterCrash
{
  v3 = [(NISession *)self _configurationSupportsRetry];
  v4 = [(NISession *)self internalState]== 3 && v3;
  if (v4)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "Configuration supports nearbyd relaunch after crash", v7, 2u);
      }
    }
  }

  return v4;
}

- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109379;
      v15 = a4;
      v16 = 2113;
      v17 = v6;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: removed objects with reason: %d. Objects: %{private}@", buf, 0x12u);
    }
  }

  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v9 = self->_currentConfiguration, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(NISession *)self _pauseInternalARSessionIfNeeded];
    [(NISession *)self setInternalState:5];
  }

  if (a4 == 1)
  {
    v10 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__NISession_didRemoveNearbyObjects_withReason___block_invoke_2;
    v12[3] = &unk_1E7F13A70;
    v12[4] = self;
    v12[5] = v6;
    [(NISession *)self _performBlockOnDelegateQueue:v12 ifRespondsToSelector:sel_session_didRemoveNearbyObjects_withReason_];
    goto LABEL_11;
  }

  if (!a4)
  {
    v10 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__NISession_didRemoveNearbyObjects_withReason___block_invoke;
    v13[3] = &unk_1E7F13A70;
    v13[4] = self;
    v13[5] = v6;
    [(NISession *)self _performBlockOnDelegateQueue:v13 ifRespondsToSelector:sel_session_didRemoveNearbyObjects_withReason_];
LABEL_11:
  }

  AnalyticsSendEventLazy();

  v11 = *MEMORY[0x1E69E9840];
}

void __47__NISession_didRemoveNearbyObjects_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didRemoveNearbyObjects:*(a1 + 40) withReason:0];
}

void __47__NISession_didRemoveNearbyObjects_withReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didRemoveNearbyObjects:*(a1 + 40) withReason:1];
}

id __47__NISession_didRemoveNearbyObjects_withReason___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"reason";
  v1 = UWBTrackingStopReasonInternalToString(*(a1 + 32));
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didUpdateNearbyObjects:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __36__NISession_didUpdateNearbyObjects___block_invoke;
  v19 = &unk_1E7F13A70;
  v20 = self;
  v5 = v4;
  v21 = v5;
  [(NISession *)self _performBlockOnDelegateQueue:&v16 ifRespondsToSelector:sel_session_didUpdateNearbyObjects_];
  self->_updatedNearbyObjects = 1;
  [(NISession *)self _osLogNearbyObjectUpdate:v5, v16, v17, v18, v19, v20];
  v6 = [v5 firstObject];
  v7 = [v6 resetARSession];

  if (v7)
  {
    v8 = [(NISessionVisionContext *)self->_visionContext arSession];

    v9 = [(NISessionVisionContext *)self->_visionContext arSession];
    v10 = [v9 state];

    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v23 = v8 != 0;
        v24 = 1024;
        v25 = v10 == 1;
        _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: reset ARSession (Exists: %d. Running: %d)", buf, 0xEu);
      }
    }

    if (v8 && v10 == 1)
    {
      v12 = [(NISessionVisionContext *)self->_visionContext arSession];
      v13 = [(NISessionVisionContext *)self->_visionContext arSession];
      v14 = [v13 configuration];
      [v12 runWithConfiguration:v14 options:15];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __36__NISession_didUpdateNearbyObjects___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateNearbyObjects:*(a1 + 40)];
}

- (void)uwbSessionDidFailWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [NISession uwbSessionDidFailWithError:];
  }

  if (![(NISession *)self _tryToRecoverFromFailure:v4])
  {
    [(NISession *)self _invalidateSessionAndNotifyError:v4];
  }
}

- (void)uwbSessionDidInvalidateWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [NISession uwbSessionDidInvalidateWithError:];
  }

  [(NISession *)self _invalidateSessionAndNotifyError:v4];
}

- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NISessionInternalStateToString([(NISession *)self internalState]);
      v9 = UWBSessionInterruptionReasonInternalToString(a3);
      *buf = 138478339;
      v29 = v8;
      v30 = 2113;
      v31 = v9;
      v32 = 2048;
      v33 = a4;
      _os_log_impl(&dword_1BAC42000, v7, OS_LOG_TYPE_DEFAULT, "DelegateProxy: suspension reason started. State: %{private}@. Reason: %{private}@. Timestamp: %f", buf, 0x20u);
    }
  }

  begin = self->_interruptions.__begin_;
  p_interruptions = &self->_interruptions;
  if (begin == self->_interruptions.__end_)
  {
    v14 = 0;
    v13 = &stru_1F38CC5C0;
  }

  else
  {
    v12 = *begin;
    v13 = UWBSessionInterruptionReasonInternalToString(*begin);
    v14 = v12 == a3;
  }

  end = self->_interruptions.__end_;
  cap = self->_interruptions.__cap_;
  if (end >= cap)
  {
    v18 = p_interruptions->__begin_;
    v19 = end - p_interruptions->__begin_;
    v20 = v19 >> 4;
    v21 = (v19 >> 4) + 1;
    if (v21 >> 60)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v22 = cap - v18;
    if (v22 >> 3 > v21)
    {
      v21 = v22 >> 3;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<UWBSessionInterruptionBookkeeping>>(&self->_interruptions, v21);
    }

    v23 = 16 * v20;
    *v23 = a3;
    *(v23 + 8) = a4;
    v17 = (16 * v20 + 16);
    v24 = (v23 - 16 * (v19 >> 4));
    memcpy(v24, v18, v19);
    v25 = self->_interruptions.__begin_;
    self->_interruptions.__begin_ = v24;
    self->_interruptions.__end_ = v17;
    self->_interruptions.__cap_ = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *end = a3;
    *(end + 1) = a4;
    v17 = (end + 16);
  }

  self->_interruptions.__end_ = v17;
  v27 = v13;
  AnalyticsSendEventLazy();
  [(NISession *)self _interruptSessionWithInternalReason:a3 cachedInterruption:0 nearbydReSuspension:v14];

  v26 = *MEMORY[0x1E69E9840];
}

id __55__NISession_uwbSessionInterruptedWithReason_timestamp___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"reason";
  v2 = UWBSessionInterruptionReasonInternalToString(*(a1 + 40));
  v9[0] = v2;
  v8[1] = @"reinterrupted";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v8[2] = @"previousReason";
  v4 = *(a1 + 32);
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NISessionInternalStateToString([(NISession *)self internalState]);
      v9 = UWBSessionInterruptionReasonInternalToString(a3);
      *buf = 138478339;
      *&buf[4] = v8;
      *&buf[12] = 2113;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      v32 = a4;
      _os_log_impl(&dword_1BAC42000, v7, OS_LOG_TYPE_DEFAULT, "DelegateProxy: suspension reason ended. State: %{private}@. Reason: %{private}@. Timestamp: %f", buf, 0x20u);
    }
  }

  memset(buf, 0, sizeof(buf));
  begin = self->_interruptions.__begin_;
  end = self->_interruptions.__end_;
  if (end == begin)
  {
    v13 = 0;
    v15 = 0;
    begin = self->_interruptions.__end_;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (*(begin + v12) == a3)
      {
        v15 = 1;
      }

      else
      {
        if (v13 >= *&buf[16])
        {
          v16 = &v13[-*buf] >> 4;
          if ((v16 + 1) >> 60)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v17 = (*&buf[16] - *buf) >> 3;
          if (v17 <= v16 + 1)
          {
            v17 = v16 + 1;
          }

          if (*&buf[16] - *buf >= 0x7FFFFFFFFFFFFFF0uLL)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<UWBSessionInterruptionBookkeeping>>(buf, v18);
          }

          v19 = (16 * v16);
          *v19 = *(begin + v12);
          v13 = (16 * v16 + 16);
          v20 = v19 - (*&buf[8] - *buf);
          memcpy(v20, *buf, *&buf[8] - *buf);
          v21 = *buf;
          *buf = v20;
          *&buf[8] = v13;
          *&buf[16] = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v13 = *(begin + v12);
          v13 += 16;
        }

        *&buf[8] = v13;
        begin = self->_interruptions.__begin_;
        end = self->_interruptions.__end_;
      }

      ++v14;
      v12 += 16;
    }

    while (v14 < (end - begin) >> 4);
  }

  if (&self->_interruptions != buf)
  {
    std::vector<UWBSessionInterruptionBookkeeping>::__assign_with_size[abi:ne200100]<UWBSessionInterruptionBookkeeping*,UWBSessionInterruptionBookkeeping*>(&self->_interruptions.__begin_, *buf, v13, &v13[-*buf] >> 4);
    begin = self->_interruptions.__begin_;
    end = self->_interruptions.__end_;
  }

  if (v15)
  {
    v28[5] = MEMORY[0x1E69E9820];
    v28[6] = 3221225472;
    v28[7] = __57__NISession_uwbSessionInterruptionReasonEnded_timestamp___block_invoke;
    v28[8] = &__block_descriptor_56_e19___NSDictionary_8__0l;
    v28[9] = a3;
    *&v28[10] = a4;
    v28[11] = 0;
    AnalyticsSendEventLazy();
    if (begin == end)
    {
      [(NISession *)self setInternalState:5];
      if (+[NIPlatformInfo isInternalBuild])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          internalID = self->_internalID;
          *v29 = 138412290;
          v30 = internalID;
          _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "Delegate: notify suspension ended [%@]", v29, 0xCu);
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __57__NISession_uwbSessionInterruptionReasonEnded_timestamp___block_invoke_1009;
      v28[3] = &unk_1E7F13A98;
      v28[4] = self;
      [(NISession *)self _performBlockOnDelegateQueue:v28 ifRespondsToSelector:sel_sessionSuspensionEnded_];
    }

    v24 = InternalInterruptionReasonToNISessionSuspensionReason(a3);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__NISession_uwbSessionInterruptionReasonEnded_timestamp___block_invoke_2;
    v26[3] = &unk_1E7F13B98;
    v26[4] = self;
    v26[5] = v24;
    v27 = begin == end;
    [(NISession *)self _performBlockOnDelegateQueue:v26 ifRespondsToSelector:sel_session_suspensionReasonEnded_isNoLongerSuspended_];
    if (begin == end && [(NISession *)self _shouldReRunSessionAfterSessionInterruptionEnded])
    {
      [(NISession *)self _internalRunWithConfiguration:self->_currentConfiguration];
    }
  }

  else if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [NISession uwbSessionInterruptionReasonEnded:timestamp:];
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v25 = *MEMORY[0x1E69E9840];
}

id __57__NISession_uwbSessionInterruptionReasonEnded_timestamp___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"reason";
  v2 = UWBSessionInterruptionReasonInternalToString(*(a1 + 32));
  v7[1] = @"duration";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40) - *(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __57__NISession_uwbSessionInterruptionReasonEnded_timestamp___block_invoke_1009(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionSuspensionEnded:*(a1 + 32)];
}

void __57__NISession_uwbSessionInterruptionReasonEnded_timestamp___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) suspensionReasonEnded:*(a1 + 40) isNoLongerSuspended:*(a1 + 48)];
}

- (void)didUpdateLocalDiscoveryToken:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v10 = v5;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: updated token %{private}@", buf, 0xCu);
    }
  }

  objc_storeStrong(&self->_discoveryToken, a3);
  dispatch_semaphore_signal(self->_discoveryTokenSemaphore);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__NISession_didUpdateLocalDiscoveryToken___block_invoke;
  v8[3] = &unk_1E7F13A98;
  v8[4] = self;
  [(NISession *)self _performBlockOnDelegateQueue:v8 ifRespondsToSelector:sel_sessionDidUpdateDiscoveryToken_];

  v7 = *MEMORY[0x1E69E9840];
}

void __42__NISession_didUpdateLocalDiscoveryToken___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionDidUpdateDiscoveryToken:*(a1 + 32)];
}

- (void)didReceiveRangingAuthRecommendation:(BOOL)a3 forObject:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NISession_didReceiveRangingAuthRecommendation_forObject___block_invoke;
  v8[3] = &unk_1E7F13BC0;
  v8[4] = self;
  v10 = a3;
  v7 = v6;
  v9 = v7;
  [(NISession *)self _performBlockOnDelegateQueue:v8 ifRespondsToSelector:sel_session_didReceiveRangingAuthRecommendation_forObject_];
}

void __59__NISession_didReceiveRangingAuthRecommendation_forObject___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didReceiveRangingAuthRecommendation:*(a1 + 48) forObject:*(a1 + 40)];
}

- (void)didDiscoverNearbyObject:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v11 = v4;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: discovered object: %{private}@", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__NISession_didDiscoverNearbyObject___block_invoke;
  v8[3] = &unk_1E7F13A70;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v8 ifRespondsToSelector:sel_session_didDiscoverNearbyObject_];

  v7 = *MEMORY[0x1E69E9840];
}

void __37__NISession_didDiscoverNearbyObject___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didDiscoverNearbyObject:*(a1 + 40)];
}

- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v21 = v9;
      v22 = 2113;
      v23 = v10;
      v24 = 2113;
      v25 = v8;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: updated region %{private}@ (previous: %{private}@). Object: %{private}@", buf, 0x20u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__NISession_object_didUpdateRegion_previousRegion___block_invoke;
  v16[3] = &unk_1E7F13BE8;
  v16[4] = self;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = v10;
  v19 = v14;
  [(NISession *)self _performBlockOnDelegateQueue:v16 ifRespondsToSelector:sel_session_object_didUpdateRegion_previousRegion_];

  v15 = *MEMORY[0x1E69E9840];
}

void __51__NISession_object_didUpdateRegion_previousRegion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] object:a1[5] didUpdateRegion:a1[6] previousRegion:a1[7]];
}

- (void)didUpdateMotionState:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  self->_motionState = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NISession_didUpdateMotionState___block_invoke;
  v5[3] = &unk_1E7F13C10;
  v5[4] = self;
  v5[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v5 ifRespondsToSelector:sel_session_didUpdateLocalMotionState_];
}

void __34__NISession_didUpdateMotionState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateLocalMotionState:*(a1 + 40)];
}

- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NISession_didUpdateHomeDeviceUWBRangingAvailability___block_invoke;
  v5[3] = &unk_1E7F13C38;
  v5[4] = self;
  v6 = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v5 ifRespondsToSelector:sel_session_didUpdateHomeDeviceUWBRangingAvailability_];
}

void __55__NISession_didUpdateHomeDeviceUWBRangingAvailability___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateHomeDeviceUWBRangingAvailability:*(a1 + 40)];
}

- (void)relayDCKMessage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__NISession_relayDCKMessage___block_invoke;
  v6[3] = &unk_1E7F13A70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:sel_session_relayDCKMessage_];
}

void __29__NISession_relayDCKMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) relayDCKMessage:*(a1 + 40)];
}

- (void)didUpdateHealthStatus:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__NISession_didUpdateHealthStatus___block_invoke;
  v3[3] = &unk_1E7F13C10;
  v3[4] = self;
  v3[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v3 ifRespondsToSelector:sel_session_didUpdateHealthStatus_];
}

void __35__NISession_didUpdateHealthStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateHealthStatus:*(a1 + 40)];
}

- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__NISession_didProcessAcwgM1MsgWithResponse_error___block_invoke;
  v10[3] = &unk_1E7F13C60;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v10 ifRespondsToSelector:sel_session_didProcessAcwgM1MsgWithResponse_error_];
}

void __51__NISession_didProcessAcwgM1MsgWithResponse_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessAcwgM1MsgWithResponse:a1[5] error:a1[6]];
}

- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__NISession_didProcessAcwgM3MsgWithResponse_error___block_invoke;
  v10[3] = &unk_1E7F13C60;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v10 ifRespondsToSelector:sel_session_didProcessAcwgM3MsgWithResponse_error_];
}

void __51__NISession_didProcessAcwgM3MsgWithResponse_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessAcwgM3MsgWithResponse:a1[5] error:a1[6]];
}

- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__NISession_didProcessAcwgRangingSessionResumeRequestMsgWithResponse_error___block_invoke;
  v10[3] = &unk_1E7F13C60;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v10 ifRespondsToSelector:sel_session_didProcessAcwgRangingSessionResumeRequestMsgWithResponse_error_];
}

void __76__NISession_didProcessAcwgRangingSessionResumeRequestMsgWithResponse_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessAcwgRangingSessionResumeRequestMsgWithResponse:a1[5] error:a1[6]];
}

- (void)requestAcwgRangingSessionSuspend:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__NISession_requestAcwgRangingSessionSuspend_withSuspendTriggerReason___block_invoke;
  v4[3] = &unk_1E7F13C88;
  v5 = a3;
  v4[4] = self;
  v4[5] = a4;
  [(NISession *)self _performBlockOnDelegateQueue:v4 ifRespondsToSelector:sel_session_requestAcwgRangingSessionSuspend_withSuspendTriggerReason_];
}

void __71__NISession_requestAcwgRangingSessionSuspend_withSuspendTriggerReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) requestAcwgRangingSessionSuspend:*(a1 + 48) withSuspendTriggerReason:*(a1 + 40)];
}

- (void)didStartAcwgRanging:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__NISession_didStartAcwgRanging___block_invoke;
  v3[3] = &unk_1E7F13C10;
  v3[4] = self;
  v3[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v3 ifRespondsToSelector:sel_session_didStartAcwgRanging_];
}

void __33__NISession_didStartAcwgRanging___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didStartAcwgRanging:*(a1 + 40)];
}

- (void)didSuspendAcwgRanging:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__NISession_didSuspendAcwgRanging___block_invoke;
  v3[3] = &unk_1E7F13C10;
  v3[4] = self;
  v3[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v3 ifRespondsToSelector:sel_session_didSuspendAcwgRanging_];
}

void __35__NISession_didSuspendAcwgRanging___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didSuspendAcwgRanging:*(a1 + 40)];
}

- (void)didPrefetchAcwgUrsk:(unsigned int)a3 error:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__NISession_didPrefetchAcwgUrsk_error___block_invoke;
  v8[3] = &unk_1E7F13CB0;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v8 ifRespondsToSelector:sel_session_didPrefetchAcwgUrsk_error_];
}

void __39__NISession_didPrefetchAcwgUrsk_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didPrefetchAcwgUrsk:*(a1 + 48) error:*(a1 + 40)];
}

- (void)didReceiveAopSFZoneUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__NISession_didReceiveAopSFZoneUpdate___block_invoke;
  v6[3] = &unk_1E7F13A70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:sel_session_didReceiveAopSFZoneUpdate_];
}

void __39__NISession_didReceiveAopSFZoneUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didReceiveAopSFZoneUpdate:*(a1 + 40)];
}

- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v16 = v6;
      v17 = 2113;
      v18 = v7;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: generated shareable config: %{private}@. Object: %{private}@", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__NISession_didGenerateShareableConfigurationData_forObject___block_invoke;
  v12[3] = &unk_1E7F13C60;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [(NISession *)self _performBlockOnDelegateQueue:v12 ifRespondsToSelector:sel_session_didGenerateShareableConfigurationData_forObject_];

  v11 = *MEMORY[0x1E69E9840];
}

void __61__NISession_didGenerateShareableConfigurationData_forObject___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didGenerateShareableConfigurationData:a1[5] forObject:a1[6]];
}

- (void)systemDidUpdateState:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v11 = v4;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: system updated state: %{private}@", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__NISession_systemDidUpdateState___block_invoke;
  v8[3] = &unk_1E7F13A70;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v8 ifRespondsToSelector:sel_systemConfigurator_didUpdateState_];

  v7 = *MEMORY[0x1E69E9840];
}

void __34__NISession_systemDidUpdateState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained systemConfigurator:*(a1 + 32) didUpdateState:*(a1 + 40)];
}

- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationTypeWithName:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67174915;
      v13 = v4;
      v14 = 2113;
      v15 = v6;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: system updated resource usage limit exceeded: %{private}d. Configuration type: %{private}@", buf, 0x12u);
    }
  }

  v8 = NSClassFromString(v6);
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__NISession_systemDidUpdateResourceUsageLimitExceeded_forSessionConfigurationTypeWithName___block_invoke;
    v10[3] = &unk_1E7F13CD8;
    v11 = v4;
    v10[4] = self;
    v10[5] = v8;
    [(NISession *)self _performBlockOnDelegateQueue:v10 ifRespondsToSelector:sel_systemConfigurator_didUpdateResourceUsageLimitExceeded_forSessionConfigurationType_];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __91__NISession_systemDidUpdateResourceUsageLimitExceeded_forSessionConfigurationTypeWithName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained systemConfigurator:*(a1 + 32) didUpdateResourceUsageLimitExceeded:*(a1 + 48) forSessionConfigurationType:*(a1 + 40)];
}

- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 convergence];
  v9 = objc_opt_new();
  if ([v6 insufficientSignalStrength])
  {
    [v9 addObject:@"insufficientSignalStrength"];
  }

  if ([v6 insufficientHorizontalSweep])
  {
    [v9 addObject:@"insufficientHorizontalSweep"];
  }

  if ([v6 insufficientVerticalSweep])
  {
    [v9 addObject:@"insufficientVerticalSweep"];
  }

  if ([v6 insufficientMovement])
  {
    [v9 addObject:@"insufficientMovement"];
  }

  if ([v6 insufficientLighting])
  {
    [v9 addObject:@"insufficientLighting"];
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109635;
      v24 = v8;
      v25 = 2113;
      v26 = v7;
      v27 = 2113;
      v28 = v9;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: algorithm convergence status: %d. Object: %{private}@. Reasons: %{private}@", buf, 0x1Cu);
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__NISession_didUpdateAlgorithmState_forObject___block_invoke;
  v19[3] = &unk_1E7F13D00;
  v19[4] = self;
  v22 = v8;
  v11 = v9;
  v20 = v11;
  v12 = v7;
  v21 = v12;
  [(NISession *)self _performBlockOnDelegateQueue:v19 ifRespondsToSelector:sel_session_didUpdateAlgorithmConvergence_forObject_];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__NISession_didUpdateAlgorithmState_forObject___block_invoke_2;
  v16[3] = &unk_1E7F13C60;
  v16[4] = self;
  v13 = v6;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  [(NISession *)self _performBlockOnDelegateQueue:v16 ifRespondsToSelector:sel_session_didUpdateAlgorithmState_forObject_];

  v15 = *MEMORY[0x1E69E9840];
}

void __47__NISession_didUpdateAlgorithmState_forObject___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  v2 = a1[4];
  v3 = [[NIAlgorithmConvergence alloc] initWithStatus:a1[7] andReasons:a1[5]];
  [WeakRetained session:v2 didUpdateAlgorithmConvergence:v3 forObject:a1[6]];
}

void __47__NISession_didUpdateAlgorithmState_forObject___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didUpdateAlgorithmState:a1[5] forObject:a1[6]];
}

- (void)didUpdateState:(int64_t)a3 forItem:(id)a4
{
  v6 = a4;
  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "#item-loc, didUpdateState:forItem: Configuration not of item localizer type", v17, 2u);
      }
    }

    goto LABEL_30;
  }

  switch(a3)
  {
    case 0:
LABEL_13:
      [(NISession *)self _sendRemoteDevice:v6 changedState:a3];
      break;
    case 2:
      a3 = 4;
      goto LABEL_13;
    case 1:
      v8 = [(NIConfiguration *)self->_currentConfiguration copy];
      if ([v8 preferredUpdateRate] == 3)
      {
        [(NISession *)self _sendRemoteDevice:v6 changedState:1];
        if (+[NIPlatformInfo isInternalBuild])
        {
          v9 = self->_log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BAC42000, v9, OS_LOG_TYPE_DEFAULT, "#item-loc, Remote device findable", buf, 2u);
          }
        }
      }

      else
      {
        if ([v8 preferredUpdateRate] != 2)
        {
          if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [NISession didUpdateState:forItem:];
          }

          goto LABEL_29;
        }

        if (self->_itemLocalizerDidPrewarmRanging)
        {
          if (+[NIPlatformInfo isInternalBuild])
          {
            v11 = self->_log;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 0;
              _os_log_impl(&dword_1BAC42000, v11, OS_LOG_TYPE_DEFAULT, "#item-loc, Remote device Reconnected", v14, 2u);
            }
          }

          v12 = 3;
        }

        else
        {
          if (+[NIPlatformInfo isInternalBuild])
          {
            v13 = self->_log;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v15 = 0;
              _os_log_impl(&dword_1BAC42000, v13, OS_LOG_TYPE_DEFAULT, "#item-loc, Remote device findable", v15, 2u);
            }
          }

          v12 = 1;
        }

        [(NISession *)self _sendRemoteDevice:v6 changedState:v12];
      }

      self->_itemLocalizerDidPrewarmRanging = 1;
LABEL_29:

      break;
  }

LABEL_30:
}

- (void)didUpdateNICoordinates:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NISession_didUpdateNICoordinates___block_invoke;
  v6[3] = &unk_1E7F13A70;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:sel_session_didUpdateNICoordinates_];
}

void __36__NISession_didUpdateNICoordinates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateNICoordinates:*(a1 + 40)];
}

- (void)didUpdateDLTDOAMeasurements:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__NISession_didUpdateDLTDOAMeasurements___block_invoke;
  v6[3] = &unk_1E7F13A70;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:sel_session_didUpdateDLTDOAMeasurements_];
}

void __41__NISession_didUpdateDLTDOAMeasurements___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateDLTDOAMeasurements:*(a1 + 40)];
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__NISession_session_didUpdateFrame___block_invoke;
  v8[3] = &unk_1E7F13A70;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__NISession_session_didFailWithError___block_invoke;
  v8[3] = &unk_1E7F13A70;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)sessionWasInterrupted:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NISession_sessionWasInterrupted___block_invoke;
  block[3] = &unk_1E7F13A98;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sessionInterruptionEnded:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NISession_sessionInterruptionEnded___block_invoke;
  block[3] = &unk_1E7F13A98;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__NISession_session_didChangeState___block_invoke;
  v5[3] = &unk_1E7F13C10;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__NISession_session_willRunWithConfiguration___block_invoke;
  block[3] = &unk_1E7F13C60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:1664 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NISession_sessionShouldAttemptRelocalization_completion___block_invoke;
  block[3] = &unk_1E7F13D28;
  block[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __59__NISession_sessionShouldAttemptRelocalization_completion___block_invoke(uint64_t a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "Called with sessionShouldAttemptRelocalization", v4, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_handleARSessionDidUpdateFrame:(id)a3
{
  v26 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 3)
  {
    [(NISessionVisionContext *)self->_visionContext setLatestARFrame:v26];
    v4 = [v26 camera];
    v5 = -[NISession niVisionInputTrackingStateFromARTRackingState:](self, "niVisionInputTrackingStateFromARTRackingState:", [v4 trackingState]);

    v6 = [v26 worldTrackingState];

    if (v6)
    {
      v7 = [v26 worldTrackingState];
      v6 = [v7 majorRelocalization];

      v8 = [v26 worldTrackingState];
      v9 = [v8 minorRelocalization];
    }

    else
    {
      v9 = 0;
    }

    v10 = [NIVisionInput alloc];
    [v26 timestamp];
    v12 = v11;
    v13 = [v26 camera];
    [v13 transform];
    v24 = v15;
    v25 = v14;
    v22 = v17;
    v23 = v16;
    v18 = [v26 lightEstimate];
    [(NISession *)self lightEstimateFromARLightEstimate:v18];
    v20 = [(NIVisionInput *)v10 initWithTimestamp:v5 devicePose:v6 trackingState:v9 lightEstimate:v12 majorRelocalization:v25 minorRelocalization:v24, v23, v22, v19];

    v21 = [(NISession *)self _remoteObject];
    [v21 processVisionInput:v20];
  }
}

- (void)_handleARSessionDidFailWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [NISession _handleARSessionDidFailWithError:];
  }

  v5 = [(NISession *)self _remoteObject];
  [v5 arSessionDidFailWithError:v4];
}

- (void)_handleARSessionWasInterrupted
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "ARSession: interrupted", v5, 2u);
    }
  }

  v4 = [(NISession *)self _remoteObject];
  [v4 arSessionWasInterrupted];
}

- (void)_handleARSessionInterruptionEnded
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "ARSession: interruption ended", v5, 2u);
    }
  }

  v4 = [(NISession *)self _remoteObject];
  [v4 arSessionInterruptionEnded];
}

- (void)_handleARSessionDidChangeState:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a3;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "ARSession: changed state: %d", v7, 8u);
    }
  }

  [(NISessionVisionContext *)self->_visionContext setArSessionState:a3];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleARSession:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (![(NISession *)self _isValidARSession:v6 andConfiguration:v7])
  {
    if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [NISession _handleARSession:willRunWithConfiguration:];
    }

    v8 = [(NISession *)self _remoteObject];
    [v8 arSessionWillRunWithInvalidConfiguration];
  }
}

- (void)_configureAndRunInternalARSession
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__NISession__configureAndRunInternalARSession__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Invalid camera assistance configuration.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v3];
  [v1 _invalidateSessionAndNotifyError:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isValidARSession:(id)a3 andConfiguration:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!v6)
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_33;
    }

    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v14 = "_isValidARSession returning NO: session is nil";
    goto LABEL_32;
  }

  visionContext = self->_visionContext;
  if (!visionContext || ![(NISessionVisionContext *)visionContext isARSessionInClientProcess])
  {
    __assert_rtn("[NISession _isValidARSession:andConfiguration:]", "NISession.mm", 1798, "_visionContext && _visionContext.isARSessionInClientProcess");
  }

  if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal])
  {
    v9 = [(NISessionVisionContext *)self->_visionContext arSession];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __48__NISession__isValidARSession_andConfiguration___block_invoke;
    v26[3] = &unk_1E7F13D50;
    v26[4] = self;
    [(NISession *)self sessionShouldAttemptRelocalization:v9 completion:v26];

    goto LABEL_6;
  }

  v15 = [v6 delegate];
  if (!v15)
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_28;
    }

    v16 = self->_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "_isValidARSession returning NO: session.delegate is nil";
    goto LABEL_27;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [v15 sessionShouldAttemptRelocalization:v6])
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_28;
    }

    v16 = self->_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "_isValidARSession returning NO: attempting relocalization is not disabled";
LABEL_27:
    _os_log_impl(&dword_1BAC42000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
LABEL_28:

    goto LABEL_33;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v15 sessionShouldAttemptRelocalization:v6];
      v23 = "NO";
      if (v22)
      {
        v23 = "YES";
      }

      *buf = 136315138;
      v28 = v23;
      _os_log_impl(&dword_1BAC42000, v21, OS_LOG_TYPE_DEFAULT, "_isValidARSession got %s from sessionShouldAttemptRelocalization", buf, 0xCu);
    }
  }

LABEL_6:
  if (!v7)
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_33;
    }

    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v14 = "_isValidARSession returning NO: configuration is nil";
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    if ([v10 worldAlignment])
    {
      if (!+[NIPlatformInfo isInternalBuild])
      {
        goto LABEL_51;
      }

      v11 = self->_log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v12 = "_isValidARSession returning NO: world alignment is not gravity";
    }

    else
    {
      v24 = [v10 initialWorldMap];
      v25 = v24 == 0;

      if (v25)
      {
        if (![v10 isCollaborationEnabled])
        {
          v18 = 1;
          goto LABEL_52;
        }

        if (!+[NIPlatformInfo isInternalBuild]|| (v11 = self->_log, !os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_51:
          v18 = 0;
LABEL_52:

          goto LABEL_34;
        }

        *buf = 0;
        v12 = "_isValidARSession returning NO: collaboration is not disabled";
      }

      else
      {
        if (!+[NIPlatformInfo isInternalBuild])
        {
          goto LABEL_51;
        }

        v11 = self->_log;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        *buf = 0;
        v12 = "_isValidARSession returning NO: initial world map is non-nil";
      }
    }

    _os_log_impl(&dword_1BAC42000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    goto LABEL_51;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "_isValidARSession returning NO: configuration is not ARWorldTrackingConfiguration";
LABEL_32:
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

LABEL_33:
  v18 = 0;
LABEL_34:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void __48__NISession__isValidARSession_andConfiguration___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      v3 = *(*(a1 + 32) + 88);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1BAC42000, v3, OS_LOG_TYPE_DEFAULT, "_isValidARSession invalidating session: attempting relocalization is not disabled in internal session", v5, 2u);
      }
    }

    v4 = [*(a1 + 32) _remoteObject];
    [v4 arSessionWillRunWithInvalidConfiguration];
  }
}

- (void)_pauseInternalARSessionIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal]&& [(NISessionVisionContext *)self->_visionContext isARSessionInClientProcess])
  {
    v3 = [(NISessionVisionContext *)self->_visionContext arSession];
    [v3 pause];
  }
}

- (void)_invalidateInternalARSessionIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal]&& [(NISessionVisionContext *)self->_visionContext isARSessionInClientProcess])
  {
    v3 = [(NISessionVisionContext *)self->_visionContext arSession];
    [v3 pause];

    v4 = [(NISessionVisionContext *)self->_visionContext arSession];
    [v4 _removeObserver:self];

    visionContext = self->_visionContext;
    self->_visionContext = 0;
  }
}

- (int64_t)niVisionInputTrackingStateFromARTRackingState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (double)lightEstimateFromARLightEstimate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 ambientIntensity];
    v6 = v5;
  }

  else
  {
    v6 = *&NIARLightEstimateNotAvailable;
  }

  return v6;
}

- (void)_invalidateSessionAndNotifyError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(NISession *)self _notifyDidInvalidateWithError:v4];
  [(NISession *)self _invalidateInternal];
}

- (void)_interruptSessionWithInternalReason:(int64_t)a3 cachedInterruption:(BOOL)a4 nearbydReSuspension:(BOOL)a5
{
  v6 = a4;
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 6 && !v6)
  {
    if (a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(NISession *)self setInternalState:6];
  if (!a5)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        internalID = self->_internalID;
        *buf = 138412290;
        v16 = internalID;
        _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "Delegate: notify suspension started [%@]", buf, 0xCu);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__NISession__interruptSessionWithInternalReason_cachedInterruption_nearbydReSuspension___block_invoke;
    v14[3] = &unk_1E7F13A98;
    v14[4] = self;
    [(NISession *)self _performBlockOnDelegateQueue:v14 ifRespondsToSelector:sel_sessionWasSuspended_];
LABEL_10:
    v11 = InternalInterruptionReasonToNISessionSuspensionReason(a3);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__NISession__interruptSessionWithInternalReason_cachedInterruption_nearbydReSuspension___block_invoke_2;
    v13[3] = &unk_1E7F13C10;
    v13[4] = self;
    v13[5] = v11;
    [(NISession *)self _performBlockOnDelegateQueue:v13 ifRespondsToSelector:sel_session_suspendedWithReason_];
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
}

void __88__NISession__interruptSessionWithInternalReason_cachedInterruption_nearbydReSuspension___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionWasSuspended:*(a1 + 32)];
}

void __88__NISession__interruptSessionWithInternalReason_cachedInterruption_nearbydReSuspension___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) suspendedWithReason:*(a1 + 40)];
}

- (void)_invalidateInternal
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NISession *)self internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v6 = log;
      v7 = NISessionInternalStateToString(v3);
      v10 = 138412546;
      v11 = internalID;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1BAC42000, v6, OS_LOG_TYPE_DEFAULT, "invalidateInternal [%@]. State: %@.", &v10, 0x16u);
    }
  }

  if (v3 <= 6)
  {
    [(NISession *)self _logDurationAndSubmit:self->_updatedNearbyObjects];
    [(NISession *)self setInternalState:7];
    [(NIServerConnection *)self->_connection invalidate];
    currentConfiguration = self->_currentConfiguration;
    self->_currentConfiguration = 0;

    self->_itemLocalizerDidPrewarmRanging = 0;
    [(NISession *)self _invalidateInternalARSessionIfNeeded];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleActivationError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = NISessionInternalStateToString([(NISession *)self internalState]);
      v9 = 138412802;
      v10 = internalID;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Activation error [%@]. State: %@. Error: %@", &v9, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NISession *)self _invalidateSessionAndNotifyError:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleActivationSuccess:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = NISessionInternalStateToString([(NISession *)self internalState]);
      v9 = 138412802;
      v10 = internalID;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Activation success [%@]. State: %@. Response: %@", &v9, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 6)
  {
    [(NISession *)self setInternalState:1];
    [(NISession *)self uwbSessionInterruptionReasonEnded:7 timestamp:PRCommonGetMachContinuousTimeSeconds()];
  }

  else if (![(NISession *)self internalState])
  {
    [(NISession *)self setInternalState:1];
  }

  if (!v4)
  {
    __assert_rtn("[NISession _handleActivationSuccess:]", "NISession.mm", 2015, "activationResponse != nil");
  }

  [(NISession *)self setActivationResponse:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleRunSessionError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = NISessionInternalStateToString([(NISession *)self internalState]);
      v9 = 138412802;
      v10 = internalID;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Run session error [%@]. State: %@. Error: %@", &v9, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if (![(NISession *)self _tryToRecoverFromFailure:v4])
  {
    [(NISession *)self _invalidateSessionAndNotifyError:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleRunSessionSuccess
{
  v12 = *MEMORY[0x1E69E9840];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v5 = NISessionInternalStateToString([(NISession *)self internalState]);
      *buf = 138412546;
      v9 = internalID;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1BAC42000, v3, OS_LOG_TYPE_DEFAULT, "Run session succeeded [%@]. State: %@", buf, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 2)
  {
    [(NISession *)self setInternalState:3];
    if ([(NIConfiguration *)self->_currentConfiguration _internalIsCameraAssistanceEnabled])
    {
      [(NISession *)self _configureAndRunInternalARSession];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__NISession__handleRunSessionSuccess__block_invoke;
    v7[3] = &unk_1E7F13A98;
    v7[4] = self;
    [(NISession *)self _performBlockOnDelegateQueue:v7 ifRespondsToSelector:sel_sessionDidStartRunning_];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __37__NISession__handleRunSessionSuccess__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionDidStartRunning:*(a1 + 32)];
}

- (void)_handlePauseSessionError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = NISessionInternalStateToString([(NISession *)self internalState]);
      v9 = 138412802;
      v10 = internalID;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Pause session error [%@]. State: %@. Error: %@", &v9, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NISession *)self _invalidateSessionAndNotifyError:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handlePauseSessionSuccess
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v5 = NISessionInternalStateToString([(NISession *)self internalState]);
      v7 = 138412546;
      v8 = internalID;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1BAC42000, v3, OS_LOG_TYPE_DEFAULT, "Pause session success [%@]. State: %@", &v7, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 4)
  {
    [(NISession *)self setInternalState:5];
    [(NISession *)self _logDurationAndSubmit:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performBlockOnDelegateQueue:(id)a3 ifRespondsToSelector:(SEL)a4 evenIfNotRunning:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  v10 = atomic_load(&self->_readyForCallbacks);
  if ((v10 & 1) != 0 || v5)
  {
    block = v8;
    if (a4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        goto LABEL_10;
      }

      delegateQueue = self->_delegateQueue;

      v9 = block;
      if (!delegateQueue)
      {
        goto LABEL_11;
      }

      v13 = self->_delegateQueue;
    }

    else
    {
      v13 = self->_delegateQueue;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    dispatch_async(v13, block);
LABEL_10:
    v9 = block;
  }

LABEL_11:
}

- (id)_verifyError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 code];
  if ((v5 + 5889) < 8)
  {
    v6 = [v4 code];
    v7 = [v4 userInfo];
    v8 = NIErrorWithCodeAndUserInfo(v6, v7);
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  if ((v5 + 10017) < 2)
  {
    v7 = [v4 userInfo];
    v8 = NIErrorWithCodeAndUserInfo(-5887, v7);
    goto LABEL_5;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid error code blocked from being sent to NISessionDelegate.  Error: %@", v4];
      [(NISession *)v13 _verifyError:buf, v12];
    }
  }

  v9 = NIErrorWithCodeAndUserInfo(-5887, 0);
LABEL_6:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_notifyDidInvalidateWithError:(id)a3
{
  v4 = a3;
  if ([(NISession *)self _isInternalClient])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(NISession *)self _verifyError:v4];
  }

  v6 = v5;
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [NISession _notifyDidInvalidateWithError:];
  }

  [(NISession *)self setInvalidationError:v6];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__NISession__notifyDidInvalidateWithError___block_invoke;
  v11 = &unk_1E7F13A70;
  v12 = self;
  v7 = v6;
  v13 = v7;
  [(NISession *)self _performBlockOnDelegateQueue:&v8 ifRespondsToSelector:sel_session_didInvalidateWithError_];
  [(NISession *)self _submitErrorMetric:v4, v8, v9, v10, v11, v12];
}

void __43__NISession__notifyDidInvalidateWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

- (id)_getSessionFailureError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E696A588];
  v7[0] = @"This session object is invalidated. Dispose of it and create a new one instead.";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = NIErrorWithCodeAndUserInfo(-5887, v2);

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)_shouldReRunSessionAfterSessionInterruptionEnded
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NISession *)self _configurationSupportsRetry];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "_shouldReRunSessionAfterSessionInterruptionEnded %d", v7, 8u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_internalRunWithConfiguration:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NISessionInternalStateToString([(NISession *)self internalState]);
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "Calling _internalRunWithConfiguration with Config: %@, internal state: %@", buf, 0x16u);
    }
  }

  [(NISession *)self setInternalState:2];
  v7 = [(NISession *)self _remoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__NISession__internalRunWithConfiguration___block_invoke;
  v9[3] = &unk_1E7F13AE0;
  v9[4] = self;
  [v7 runWithConfiguration:v4 reply:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __43__NISession__internalRunWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    [v4 _handleRunSessionError:v3];
  }

  else
  {
    [v4 _handleRunSessionSuccess];
  }
}

- (void)_sendRemoteDevice:(id)a3 changedState:(int64_t)a4
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [NIDiscoveryToken generateTokenWithUUID:v9];
  if (!v7)
  {
    __assert_rtn("[NISession _sendRemoteDevice:changedState:]", "NISession.mm", 2162, "dicoveryTokenFromUUID != nil");
  }

  v8 = [[NINearbyObject alloc] initWithToken:v7];
  [(NINearbyObject *)v8 setItemState:a4];
  [v6 addObject:v8];
  [(NISession *)self didUpdateNearbyObjects:v6];
}

- (BOOL)_tryToRecoverFromFailure:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!-[NISession _configurationSupportsRetry](self, "_configurationSupportsRetry") || [v4 code] == -5889 || objc_msgSend(v4, "code") == -5888 || objc_msgSend(v4, "code") == 304 || objc_msgSend(v4, "code") == 300)
  {
    v5 = 0;
  }

  else
  {
    if ([(NISession *)self internalState]== 6)
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1BAC42000, log, OS_LOG_TYPE_DEFAULT, "#item-loc, _tryToRecoverFromFailure: Waiting for interruption to end", buf, 2u);
        }
      }
    }

    else
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        v8 = self->_log;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1BAC42000, v8, OS_LOG_TYPE_DEFAULT, "#item-loc, _tryToRecoverFromFailure: UWB session not interrupted (xpc connection intact), trying to run session again", buf, 2u);
        }
      }

      v9 = NomininalRetryTimeMilliseconds;
      objc_initWeak(buf, self);
      v10 = dispatch_time(0, 1000000 * v9);
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__NISession__tryToRecoverFromFailure___block_invoke;
      block[3] = &unk_1E7F13980;
      objc_copyWeak(&v13, buf);
      dispatch_after(v10, queue, block);
      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    v5 = 1;
  }

  return v5;
}

void __38__NISession__tryToRecoverFromFailure___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _internalRunWithConfiguration:WeakRetained[5]];
  }
}

- (BOOL)_configurationSupportsRetry
{
  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v5 = self->_currentConfiguration;
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [(NIConfiguration *)self->_currentConfiguration discoveryTokenVariant]== 2;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NIInternalSessionDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  v2 = &NINearbyObjectDistanceNotAvailable;
  v3 = vld1q_dup_f32(v2);
  *(self + 216) = v3;
  v3.f32[0] = NINearbyObjectAngleNotAvailable;
  *(self + 58) = NINearbyObjectAngleNotAvailable;
  *(self + 59) = v3.i32[0];
  return self;
}

+ (NIInternalDeviceCapability)internalDeviceCapabilities
{
  v2 = +[NISession cachedPlatformCapabilities];

  if (!v2)
  {
    +[NISession _queryAndCacheCapabilities];
  }

  v3 = +[NISession cachedPlatformCapabilities];
  v4 = [v3 objectForKey:@"UWBSupportedPlatform"];
  v5 = [v4 BOOLValue];

  v6 = +[NISession cachedPlatformCapabilities];
  v7 = [v6 objectForKey:@"WifiSupportedPlatform"];
  v8 = [v7 BOOLValue];

  v9 = +[NISession cachedPlatformCapabilities];
  v10 = [v9 objectForKey:@"UWBSupportedPlatformPDOA"];
  v11 = [v10 BOOLValue];

  v12 = +[NISession cachedPlatformCapabilities];
  v13 = [v12 objectForKey:@"UWBSupportedPlatformSyntheticAperture"];
  v14 = [v13 BOOLValue];

  v15 = +[NISession cachedPlatformCapabilities];
  v16 = [v15 objectForKey:@"UWBSupportedPlatformExtendedDistance"];
  v17 = [v16 BOOLValue];

  v18 = [[NIDeviceCapabilities alloc] initWithFineRangingSupport:v5 coarseRangingSupport:v8 aoaSupport:v11 extendedDistanceMeasurementSupport:v17 syntheticApertureSupport:v14];

  return v18;
}

- (void)_addObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2343 description:{@"Invalid parameter not satisfying: %@", @"discoveryToken"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NISession_Internal___addObject___block_invoke;
  block[3] = &unk_1E7F13A70;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __34__NISession_Internal___addObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__NISession_Internal___addObject___block_invoke_2;
  v4[3] = &unk_1E7F13AE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 _addObject:v3 reply:v4];
}

void __34__NISession_Internal___addObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__NISession_Internal___addObject___block_invoke_3;
    v6[3] = &unk_1E7F13A70;
    v6[4] = v5;
    v7 = v3;
    [v5 _performBlockOnDelegateQueue:v6 ifRespondsToSelector:sel_session_didFailWithError_];
  }
}

void __34__NISession_Internal___addObject___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_removeObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2357 description:{@"Invalid parameter not satisfying: %@", @"discoveryToken"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NISession_Internal___removeObject___block_invoke;
  block[3] = &unk_1E7F13A70;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __37__NISession_Internal___removeObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__NISession_Internal___removeObject___block_invoke_2;
  v4[3] = &unk_1E7F13AE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 _removeObject:v3 reply:v4];
}

void __37__NISession_Internal___removeObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__NISession_Internal___removeObject___block_invoke_3;
    v6[3] = &unk_1E7F13A70;
    v6[4] = v5;
    v7 = v3;
    [v5 _performBlockOnDelegateQueue:v6 ifRespondsToSelector:sel_session_didFailWithError_];
  }
}

void __37__NISession_Internal___removeObject___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_addRegionPredicate:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2371 description:@"_addRegionPredicate is deprecated"];
}

- (void)_removeRegionPredicate:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2375 description:@"_removeRegionPredicate is deprecated"];
}

+ (id)observerSession
{
  v2 = [[NISession alloc] _initAndConnectToServerWithOptions:1];

  return v2;
}

- (BOOL)isPreciseRangingAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__NISession_Internal__isPreciseRangingAllowed__block_invoke;
  v5[3] = &unk_1E7F13DA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __46__NISession_Internal__isPreciseRangingAllowed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__NISession_Internal__isPreciseRangingAllowed__block_invoke_2;
  v3[3] = &unk_1E7F13D78;
  v4 = *(a1 + 32);
  [v2 isPreciseRangingAllowed:v3];
}

void __46__NISession_Internal__isPreciseRangingAllowed__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) _invalidateSessionAndNotifyError:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (BOOL)isExtendedDistanceMeasurementAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NISession_Internal__isExtendedDistanceMeasurementAllowed__block_invoke;
  v5[3] = &unk_1E7F13DA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__NISession_Internal__isExtendedDistanceMeasurementAllowed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__NISession_Internal__isExtendedDistanceMeasurementAllowed__block_invoke_2;
  v3[3] = &unk_1E7F13D78;
  v4 = *(a1 + 32);
  [v2 isExtendedDistanceMeasurementAllowed:v3];
}

void __59__NISession_Internal__isExtendedDistanceMeasurementAllowed__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) _invalidateSessionAndNotifyError:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__NISession_Internal__processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter___block_invoke;
  v6[3] = &unk_1E7F13DF0;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_sync(queue, v6);
}

void __87__NISession_Internal__processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__NISession_Internal__processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter___block_invoke_2;
  v6[3] = &unk_1E7F13DC8;
  v6[4] = *(a1 + 32);
  [v2 processBluetoothHostTimeSyncWithType:v3 btcClockTicks:v4 eventCounter:v5 reply:v6];
}

void __87__NISession_Internal__processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 _invalidateSessionAndNotifyError:v6];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__NISession_Internal__processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter___block_invoke_3;
    v8[3] = &unk_1E7F13C60;
    v8[4] = v7;
    v9 = v5;
    v10 = 0;
    [v7 _performBlockOnDelegateQueue:v8 ifRespondsToSelector:sel_session_didProcessBluetoothHostTimeSyncWithResponse_error_];
  }
}

void __87__NISession_Internal__processBluetoothHostTimeSyncWithType_btcClockTicks_eventCounter___block_invoke_3(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessBluetoothHostTimeSyncWithResponse:a1[5] error:a1[6]];
}

- (void)processDCKMessage:(id)a3 responseCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2543 description:{@"Invalid parameter not satisfying: %@", @"dckMessage"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2544 description:{@"Invalid parameter not satisfying: %@", @"responseCallback"}];

LABEL_3:
  if ([v7 length])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke_2;
    block[3] = &unk_1E7F13EB0;
    block[4] = self;
    v18 = v7;
    v19 = v9;
    v11 = v9;
    dispatch_sync(queue, block);

    v12 = v18;
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke;
    v20[3] = &unk_1E7F13E38;
    v21 = v9;
    v14 = v9;
    dispatch_async(delegateQueue, v20);
    v12 = v21;
  }
}

void __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Received a nil or 0 length DCK message.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.NearbyInteraction" code:-19889 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke_3;
  v4[3] = &unk_1E7F13E88;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 processDCKMessage:v3 reply:v4];
}

void __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 256);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NISession_CarKey__processDCKMessage_responseCallback___block_invoke_4;
  block[3] = &unk_1E7F13E60;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)deleteURSKs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__NISession_CarKey__deleteURSKs__block_invoke;
  v5[3] = &unk_1E7F13DA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__NISession_CarKey__deleteURSKs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__NISession_CarKey__deleteURSKs__block_invoke_2;
  v3[3] = &unk_1E7F13ED8;
  v3[4] = *(a1 + 40);
  [v2 deleteURSKs:v3];
}

- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NISession_CarKey___setDebugURSK_transactionIdentifier___block_invoke;
    block[3] = &unk_1E7F13F00;
    block[4] = self;
    v17 = a4;
    v15 = v6;
    v16 = &v18;
    dispatch_sync(queue, block);
    v9 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Given nil URSK.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [v10 errorWithDomain:@"com.apple.NearbyInteraction" code:-19886 userInfo:v11];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

void __57__NISession_CarKey___setDebugURSK_transactionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NISession_CarKey___setDebugURSK_transactionIdentifier___block_invoke_2;
  v5[3] = &unk_1E7F13ED8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v2 _setDebugURSK:v4 transactionIdentifier:v3 reply:v5];
}

- (BOOL)isRangingLimitExceeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__NISession_CarKey__isRangingLimitExceeded__block_invoke;
  v5[3] = &unk_1E7F13DA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__NISession_CarKey__isRangingLimitExceeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NISession_CarKey__isRangingLimitExceeded__block_invoke_2;
  v3[3] = &unk_1E7F13D78;
  v4 = *(a1 + 32);
  [v2 isRangingLimitExceeded:v3];
}

void __43__NISession_CarKey__isRangingLimitExceeded__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) _invalidateSessionAndNotifyError:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (NICarKeyEventNotifier)carKeyEventNotifier
{
  carKeyEventNotifier = self->_carKeyEventNotifier;
  if (!carKeyEventNotifier)
  {
    v4 = [[NICarKeyEventNotifier alloc] initWithParentSession:self];
    v5 = self->_carKeyEventNotifier;
    self->_carKeyEventNotifier = v4;

    carKeyEventNotifier = self->_carKeyEventNotifier;
  }

  return carKeyEventNotifier;
}

- (id)_setURSKTTL:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NISession_CarKey_Project___setURSKTTL___block_invoke;
  block[3] = &unk_1E7F13F28;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __41__NISession_CarKey_Project___setURSKTTL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__NISession_CarKey_Project___setURSKTTL___block_invoke_2;
  v4[3] = &unk_1E7F13ED8;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  [v2 _setURSKTTL:v3 reply:v4];
}

- (NIAcwgEventNotifier)acwgEventNotifier
{
  acwgEventNotifier = self->_acwgEventNotifier;
  if (!acwgEventNotifier)
  {
    v4 = [[NIAcwgEventNotifier alloc] initWithParentSession:self];
    v5 = self->_acwgEventNotifier;
    self->_acwgEventNotifier = v4;

    acwgEventNotifier = self->_acwgEventNotifier;
  }

  return acwgEventNotifier;
}

- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2716 description:{@"Invalid parameter not satisfying: %@", @"m1Msg"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NISession_Acwg__processAcwgM1Msg_withSessionTriggerReason___block_invoke;
  block[3] = &unk_1E7F13F50;
  block[4] = self;
  v12 = v7;
  v13 = a4;
  v9 = v7;
  dispatch_sync(queue, block);
}

void __61__NISession_Acwg__processAcwgM1Msg_withSessionTriggerReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processAcwgM1Msg:*(a1 + 40) withSessionTriggerReason:*(a1 + 48)];
}

- (void)processAcwgM3Msg:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2726 description:{@"Invalid parameter not satisfying: %@", @"m3Msg"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NISession_Acwg__processAcwgM3Msg___block_invoke;
  block[3] = &unk_1E7F13A70;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __36__NISession_Acwg__processAcwgM3Msg___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processAcwgM3Msg:*(a1 + 40)];
}

- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NISession_Acwg__suspendAcwgRanging_withSuspendTriggerReason___block_invoke;
  block[3] = &unk_1E7F13C88;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(queue, block);
}

void __63__NISession_Acwg__suspendAcwgRanging_withSuspendTriggerReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 suspendAcwgRanging:*(a1 + 48) withSuspendTriggerReason:*(a1 + 40)];
}

- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__NISession_Acwg__processAcwgRangingSessionResumeRequestMsg_withResumeTriggerReason___block_invoke;
  block[3] = &unk_1E7F13C88;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(queue, block);
}

void __85__NISession_Acwg__processAcwgRangingSessionResumeRequestMsg_withResumeTriggerReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processAcwgRangingSessionResumeRequestMsg:*(a1 + 48) withResumeTriggerReason:*(a1 + 40)];
}

- (void)prefetchAcwgUrsk:(unsigned int)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__NISession_Acwg__prefetchAcwgUrsk___block_invoke;
  v4[3] = &unk_1E7F13F78;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

void __36__NISession_Acwg__prefetchAcwgUrsk___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 prefetchAcwgUrsk:*(a1 + 40)];
}

- (void)_processUpdatedLockState:(unsigned __int16)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__NISession_Acwg___processUpdatedLockState___block_invoke;
  v4[3] = &unk_1E7F13FA0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

void __44__NISession_Acwg___processUpdatedLockState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processUpdatedLockState:*(a1 + 40)];
}

- (void)updateResponderDeviceIdentifier:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2771 description:{@"Invalid parameter not satisfying: %@", @"deviceIdentifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2772 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v7[2](v7, 1, 0);
}

- (void)processVisionInput:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NISession_Vision__processVisionInput___block_invoke;
  v7[3] = &unk_1E7F13A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __40__NISession_Vision__processVisionInput___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processVisionInput:*(a1 + 40)];
}

+ (id)generateBluetoothDeviceTokenWithPublicAddress:(id)a3 IRK:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"NISession.mm" lineNumber:2832 description:{@"Invalid parameter not satisfying: %@", @"IRK"}];
  }

  if ([v8 length] != 16)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"NISession.mm" lineNumber:2833 description:{@"Invalid parameter not satisfying: %@", @"[IRK length] == NIDiscoveryTokenIRKLengthBytes"}];
  }

  v17[0] = &unk_1F38D7A58;
  v17[1] = &unk_1F38D7A70;
  v18[0] = v8;
  v18[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v10 = MEMORY[0x1BFAFF9B0](v9, 8, 0);
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"NISession.mm" lineNumber:2839 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v11 = [[NIDiscoveryToken alloc] initWithBytes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)generateFindingDiscoveryToken
{
  v2 = NSRandomData();
  v3 = [NIDiscoveryToken generateFindingTokenWithIRK:v2];

  return v3;
}

+ (id)generateFindingDiscoveryTokenWithSharedSecret:(id)a3
{
  v3 = a3;
  if ([v3 length] == 16)
  {
    v4 = [NIDiscoveryToken generateFindingTokenWithIRK:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)generateFindingDiscoveryTokenWithIdentityResolvingKey:(id)a3
{
  v3 = [NISession generateFindingDiscoveryTokenWithSharedSecret:a3];

  return v3;
}

+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)a3
{
  v3 = [NIDiscoveryToken generateDiscoveryTokenFromBeaconIdentifier:a3];

  return v3;
}

- (NIFindingNotifier)findingNotifier
{
  findingNotifier = self->_findingNotifier;
  if (!findingNotifier)
  {
    v4 = [[NIFindingNotifier alloc] initWithParentSession:self];
    v5 = self->_findingNotifier;
    self->_findingNotifier = v4;

    findingNotifier = self->_findingNotifier;
  }

  return findingNotifier;
}

- (void)_provideTruthTag:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NISession_Perf___provideTruthTag___block_invoke;
  v7[3] = &unk_1E7F13A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __36__NISession_Perf___provideTruthTag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _provideTruthTag:*(a1 + 40)];
}

- (NISystemEventNotifier)systemEventNotifier
{
  systemEventNotifier = self->_systemEventNotifier;
  if (!systemEventNotifier)
  {
    v4 = [[NISystemEventNotifier alloc] initWithParentSession:self];
    v5 = self->_systemEventNotifier;
    self->_systemEventNotifier = v4;

    systemEventNotifier = self->_systemEventNotifier;
  }

  return systemEventNotifier;
}

+ (id)_localDeviceLogger
{
  if (+[NISession(LocalDeviceInteraction) _localDeviceLogger]::onceToken != -1)
  {
    +[NISession(LocalDeviceInteraction) _localDeviceLogger];
  }

  v3 = +[NISession(LocalDeviceInteraction) _localDeviceLogger]::logger;

  return v3;
}

void __55__NISession_LocalDeviceInteraction___localDeviceLogger__block_invoke()
{
  v0 = os_log_create("com.apple.NearbyInteraction", "LocalDeviceInteraction");
  v1 = +[NISession(LocalDeviceInteraction) _localDeviceLogger]::logger;
  +[NISession(LocalDeviceInteraction) _localDeviceLogger]::logger = v0;
}

+ (void)setAsyncLocalDeviceInteractableDiscoveryTokens:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 copy];
  v8 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = [v7 count];
      _os_log_impl(&dword_1BAC42000, v9, OS_LOG_TYPE_DEFAULT, "setAsyncLocalDeviceInteractableDiscoveryTokens:completion: with %d tokens", buf, 8u);
    }
  }

  v10 = [NIServerConnection createOneShotConnectionAndResume:1];
  v11 = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__NISession_LocalDeviceInteraction__setAsyncLocalDeviceInteractableDiscoveryTokens_completion___block_invoke;
  v16[3] = &unk_1E7F14090;
  v12 = v8;
  v17 = v12;
  v13 = v6;
  v19 = v13;
  v14 = v10;
  v18 = v14;
  [v11 setLocalDeviceInteractableDiscoveryTokens:v7 reply:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __95__NISession_LocalDeviceInteraction__setAsyncLocalDeviceInteractableDiscoveryTokens_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1BAC42000, v4, OS_LOG_TYPE_DEFAULT, "setAsyncLocalDeviceInteractableDiscoveryTokens:completion replied error: %@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  [*(a1 + 40) invalidate];

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)getAsyncInteractableDiscoveryTokens:(id)a3
{
  v3 = a3;
  v4 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAC42000, v4, OS_LOG_TYPE_DEFAULT, "getAsyncInteractableDiscoveryTokens:", buf, 2u);
  }

  v5 = [NIServerConnection createOneShotConnectionAndResume:1];
  v6 = [v5 remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__NISession_LocalDeviceInteraction__getAsyncInteractableDiscoveryTokens___block_invoke;
  v10[3] = &unk_1E7F140B8;
  v7 = v4;
  v11 = v7;
  v8 = v3;
  v13 = v8;
  v9 = v5;
  v12 = v9;
  [v6 getInteractableDiscoveryTokens:v10];
}

void __73__NISession_LocalDeviceInteraction__getAsyncInteractableDiscoveryTokens___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109378;
      v10[1] = [v5 count];
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1BAC42000, v7, OS_LOG_TYPE_DEFAULT, "getAsyncInteractableDiscoveryTokens: replied %d tokens. Server error: %@", v10, 0x12u);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  [*(a1 + 40) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)getAsyncActivelyInteractingDiscoveryTokens:(id)a3
{
  v3 = a3;
  v4 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAC42000, v4, OS_LOG_TYPE_DEFAULT, "getAsyncActivelyInteractingDiscoveryTokens:", buf, 2u);
  }

  v5 = [NIServerConnection createOneShotConnectionAndResume:1];
  v6 = [v5 remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__NISession_LocalDeviceInteraction__getAsyncActivelyInteractingDiscoveryTokens___block_invoke;
  v10[3] = &unk_1E7F140B8;
  v7 = v4;
  v11 = v7;
  v8 = v3;
  v13 = v8;
  v9 = v5;
  v12 = v9;
  [v6 getActivelyInteractingDiscoveryTokens:v10];
}

void __80__NISession_LocalDeviceInteraction__getAsyncActivelyInteractingDiscoveryTokens___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109378;
      v10[1] = [v5 count];
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1BAC42000, v7, OS_LOG_TYPE_DEFAULT, "getAsyncActivelyInteractingDiscoveryTokens: replied %d tokens. Server error: %@", v10, 0x12u);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  [*(a1 + 40) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

void __83__NISession_LocalDeviceInteraction__setLocalDeviceCanInteract_withDiscoveryTokens___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)setLocalDeviceDebugParameters:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 copy];
  v5 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "setLocalDeviceDebugParameters:%@", &buf, 0xCu);
  }

  v6 = [NIServerConnection createOneShotConnectionAndResume:1];
  v7 = [v6 remoteObjectProxy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v8 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__NISession_LocalDeviceInteraction__setLocalDeviceDebugParameters___block_invoke;
  v19[3] = &unk_1E7F13FC8;
  v21 = &v23;
  p_buf = &buf;
  v9 = v8;
  v20 = v9;
  [v7 setLocalDeviceDebugParameters:v4 reply:v19];
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v9, v10);
  [v6 invalidate];
  if ((v24[3] & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Server did not reply.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v12];
    v14 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v13;
  }

  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(&buf + 1) + 40);
    *v27 = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "setLocalDeviceDebugParameters return error: %@", v27, 0xCu);
  }

  v16 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v23, 8);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __67__NISession_LocalDeviceInteraction__setLocalDeviceDebugParameters___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)setLocalDeviceInteractableDiscoveryTokens:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 copy];
  v5 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = [v4 count];
      _os_log_impl(&dword_1BAC42000, v6, OS_LOG_TYPE_DEFAULT, "setLocalDeviceInteractableDiscoveryTokens with %d tokens", buf, 8u);
    }
  }

  v7 = [NIServerConnection createOneShotConnectionAndResume:1];
  v8 = [v7 remoteObjectProxy];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v9 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__NISession_LocalDeviceInteraction__setLocalDeviceInteractableDiscoveryTokens___block_invoke;
  v20[3] = &unk_1E7F13FC8;
  v22 = &v24;
  v23 = buf;
  v10 = v9;
  v21 = v10;
  [v8 setLocalDeviceInteractableDiscoveryTokens:v4 reply:v20];
  v11 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v10, v11);
  [v7 invalidate];
  if ((v25[3] & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Server did not reply.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v13];
    v15 = *(v33 + 5);
    *(v33 + 5) = v14;
  }

  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v33 + 5);
    *v28 = 138412290;
    v29 = v16;
    _os_log_impl(&dword_1BAC42000, v5, OS_LOG_TYPE_DEFAULT, "setLocalDeviceInteractableDiscoveryTokens return error: %@", v28, 0xCu);
  }

  v17 = *(v33 + 5);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v24, 8);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __79__NISession_LocalDeviceInteraction__setLocalDeviceInteractableDiscoveryTokens___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (NSArray)interactableDiscoveryTokens
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "interactableDiscoveryTokens", buf, 2u);
  }

  v3 = [NIServerConnection createOneShotConnectionAndResume:1];
  v4 = [v3 remoteObjectProxy];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v5 = dispatch_semaphore_create(0);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __64__NISession_LocalDeviceInteraction__interactableDiscoveryTokens__block_invoke;
  v22 = &unk_1E7F140E0;
  v24 = &v39;
  v25 = buf;
  v26 = &v27;
  v6 = v5;
  v23 = v6;
  [v4 getInteractableDiscoveryTokens:&v19];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  [v3 invalidate];
  if ((v40[3] & 1) == 0)
  {
    v8 = *(v34 + 5);
    *(v34 + 5) = 0;

    v9 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"Server did not reply.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    v12 = v28[5];
    v28[5] = v11;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v13 = v2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(v34 + 5) count];
      v15 = v28[5];
      *v43 = 67109378;
      v44 = v14;
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&dword_1BAC42000, v13, OS_LOG_TYPE_DEFAULT, "interactableDiscoveryTokens return %d tokens. Server error: %@", v43, 0x12u);
    }
  }

  v16 = *(v34 + 5);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v39, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __64__NISession_LocalDeviceInteraction__interactableDiscoveryTokens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (NSArray)activelyInteractingDiscoveryTokens
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "activelyInteractingDiscoveryTokens", buf, 2u);
  }

  v3 = [NIServerConnection createOneShotConnectionAndResume:1];
  v4 = [v3 remoteObjectProxy];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v5 = dispatch_semaphore_create(0);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __71__NISession_LocalDeviceInteraction__activelyInteractingDiscoveryTokens__block_invoke;
  v22 = &unk_1E7F140E0;
  v24 = &v39;
  v25 = buf;
  v26 = &v27;
  v6 = v5;
  v23 = v6;
  [v4 getActivelyInteractingDiscoveryTokens:&v19];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  [v3 invalidate];
  if ((v40[3] & 1) == 0)
  {
    v8 = *(v34 + 5);
    *(v34 + 5) = 0;

    v9 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"Server did not reply.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    v12 = v28[5];
    v28[5] = v11;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v13 = v2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(v34 + 5) count];
      v15 = v28[5];
      *v43 = 67109378;
      v44 = v14;
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&dword_1BAC42000, v13, OS_LOG_TYPE_DEFAULT, "activelyInteractingDiscoveryTokens return %d tokens. Server error: %@", v43, 0x12u);
    }
  }

  v16 = *(v34 + 5);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v39, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __71__NISession_LocalDeviceInteraction__activelyInteractingDiscoveryTokens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)localDevicePrintableState
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "localDevicePrintableState", buf, 2u);
  }

  v3 = [NIServerConnection createOneShotConnectionAndResume:1];
  v4 = [v3 remoteObjectProxy];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v5 = dispatch_semaphore_create(0);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __62__NISession_LocalDeviceInteraction__localDevicePrintableState__block_invoke;
  v20 = &unk_1E7F14108;
  v22 = &v37;
  v23 = buf;
  v24 = &v25;
  v6 = v5;
  v21 = v6;
  [v4 getLocalDevicePrintableState:&v17];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  [v3 invalidate];
  if ((v38[3] & 1) == 0)
  {
    v8 = *(v32 + 5);
    *(v32 + 5) = 0;

    v9 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44[0] = @"Server did not reply.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    v12 = v26[5];
    v26[5] = v11;
  }

  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v26[5];
    *v41 = 138412290;
    v42 = v13;
    _os_log_impl(&dword_1BAC42000, v2, OS_LOG_TYPE_DEFAULT, "localDevicePrintableState error: %@", v41, 0xCu);
  }

  v14 = *(v32 + 5);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v37, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __62__NISession_LocalDeviceInteraction__localDevicePrintableState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)generateSOSBeaconSubjectDataWithCompletion:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Operation not enabled";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v5];
  v3[2](v3, 0, v6);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)generateSOSBeaconSearcherDataMatchingSubjectData:(id)a3 completion:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Operation not enabled";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v6];
  v4[2](v4, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)discoveryToken
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uwbSessionDidFailWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)uwbSessionDidInvalidateWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)uwbSessionInterruptionReasonEnded:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didUpdateState:forItem:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleARSessionDidFailWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleARSession:willRunWithConfiguration:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_verifyError:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BAC42000, log, OS_LOG_TYPE_ERROR, "%{private}@", buf, 0xCu);
}

- (void)_notifyDidInvalidateWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1BAC42000, v1, OS_LOG_TYPE_ERROR, "Delegate: notify invalidation: %@. Sanitized: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end