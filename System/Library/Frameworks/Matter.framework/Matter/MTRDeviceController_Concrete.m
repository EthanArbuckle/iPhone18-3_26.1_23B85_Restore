@interface MTRDeviceController_Concrete
+ (BOOL)checkForError:(ChipError)a3 logMsg:(id)a4 error:(id *)a5;
- (BOOL)_cancelCommissioning:(id)a3 forNodeID:(id)a4 error:(id *)a5;
- (BOOL)_commissionNodeWithID:(id)a3 commissioningParams:(id)a4 error:(id *)a5;
- (BOOL)_continueCommissioningDevice:(void *)a3 ignoreAttestationFailure:(BOOL)a4 error:(id *)a5;
- (BOOL)addServerEndpoint:(id)a3;
- (BOOL)cancelCommissioningForNodeID:(id)a3 error:(id *)a4;
- (BOOL)checkForInitError:(BOOL)a3 logMsg:(id)a4;
- (BOOL)checkForStartError:(ChipError)a3 logMsg:(id)a4;
- (BOOL)checkIsRunning:(id *)a3;
- (BOOL)commission:(id)a3 withCommissioningID:(id)a4 commissioningParams:(id)a5 error:(id *)a6;
- (BOOL)commissionNodeWithID:(id)a3 commissioningParams:(id)a4 error:(id *)a5;
- (BOOL)continueCommissioning:(id)a3 withOperationalDataset:(id)a4 error:(id *)a5;
- (BOOL)continueCommissioning:(id)a3 withWiFiSSID:(id)a4 credentials:(id)a5 error:(id *)a6;
- (BOOL)continueCommissioningAfterAttestation:(id)a3 forOpaqueHandle:(void *)a4 error:(id *)a5;
- (BOOL)definitelyUsesThreadForDevice:(unint64_t)a3;
- (BOOL)getBaseDevice:(unint64_t)a3 queue:(id)a4 completionHandler:(id)a5;
- (BOOL)matchesPendingShutdownControllerWithOperationalCertificate:(id)a3 andRootCertificate:(id)a4;
- (BOOL)openPairingWindow:(unint64_t)a3 duration:(unint64_t)a4 error:(id *)a5;
- (BOOL)pairDevice:(unint64_t)a3 address:(id)a4 port:(unsigned __int16)a5 setupPINCode:(unsigned int)a6 error:(id *)a7;
- (BOOL)pairDevice:(unint64_t)a3 onboardingPayload:(id)a4 error:(id *)a5;
- (BOOL)setOperationalCertificateIssuer:(id)a3 queue:(id)a4;
- (BOOL)setupCommissioningSessionWithDiscoveredDevice:(id)a3 payload:(id)a4 newNodeID:(id)a5 error:(id *)a6;
- (BOOL)setupCommissioningSessionWithPayload:(id)a3 newNodeID:(id)a4 error:(id *)a5;
- (BOOL)startBrowseForCommissionables:(id)a3 queue:(id)a4;
- (BOOL)startup:(id)a3;
- (BOOL)stopBrowseForCommissionables;
- (BOOL)stopCommissioning:(id)a3 forCommissioningID:(id)a4;
- (BOOL)syncRunOnWorkQueueWithBoolReturnValue:(id)a3 error:(id *)a4;
- (ChipError)isRunningOnFabric:(void *)a3 fabricIndex:(unsigned __int8)a4 isRunning:(BOOL *)a5;
- (ChipError)startCommissioning:(id)a3 withCommissioningID:(id)a4;
- (MTRCommissioningOperation)currentCommissioning;
- (MTRDeviceController_Concrete)initWithFactory:(id)a3 queue:(id)a4 storageDelegate:(id)a5 storageDelegateQueue:(id)a6 otaProviderDelegate:(id)a7 otaProviderDelegateQueue:(id)a8 uniqueIdentifier:(id)a9 concurrentSubscriptionPoolSize:(unint64_t)a10 storageBehaviorConfiguration:(id)a11 startSuspended:(BOOL)a12;
- (MTRDeviceController_Concrete)initWithParameters:(id)a3 error:(id *)a4;
- (NSString)description;
- (id).cxx_construct;
- (id)_setupDeviceForNodeID:(id)a3 prefetchedClusterData:(id)a4;
- (id)accessGrantsForClusterPath:(id)a3;
- (id)attestationChallengeForDeviceID:(id)a3;
- (id)baseDeviceForNodeID:(id)a3;
- (id)compressedFabricID;
- (id)deviceBeingCommissionedWithNodeID:(id)a3 error:(id *)a4;
- (id)fetchAttestationChallengeForDeviceId:(unint64_t)a3;
- (id)neededReadPrivilegeForClusterID:(id)a3 attributeID:(id)a4;
- (id)nodesWithStoredData;
- (id)openPairingWindowWithPIN:(unint64_t)a3 duration:(unint64_t)a4 discriminator:(unint64_t)a5 setupPIN:(unint64_t)a6 error:(id *)a7;
- (id)syncRunOnWorkQueueWithReturnValue:(id)a3 error:(id *)a4;
- (unsigned)sessionTransportTypeForDevice:(id)a3;
- (void)_commissioningDone:(id)a3;
- (void)_controllerResumed;
- (void)_controllerSuspended;
- (void)addRunAssertion;
- (void)asyncDispatchToMatterQueue:(id)a3 errorHandler:(id)a4;
- (void)asyncGetCommissionerOnMatterQueue:(id)a3 errorHandler:(id)a4;
- (void)cleanup;
- (void)cleanupAfterStartup;
- (void)clearDeviceAttestationDelegateBridge;
- (void)clearPendingShutdown;
- (void)commissioning:(id)a3 completedDeviceAttestation:(id)a4 error:(id)a5 completion:(id)a6;
- (void)commissioning:(id)a3 failedWithError:(id)a4 forDeviceID:(id)a5 metrics:(id)a6;
- (void)commissioning:(id)a3 paseSessionEstablishmentComplete:(id)a4;
- (void)commissioning:(id)a3 provisionedNetworkCredentialsForDeviceID:(id)a4;
- (void)commissioning:(id)a3 readCommissioneeInfo:(id)a4;
- (void)commissioning:(id)a3 statusUpdate:(int64_t)a4;
- (void)commissioning:(id)a3 succeededForNodeID:(id)a4 metrics:(id)a5;
- (void)commissioningDone:(id)a3;
- (void)directlyGetSessionForNode:(unint64_t)a3 completion:(id)a4;
- (void)downloadLogFromNodeWithID:(id)a3 type:(int64_t)a4 timeout:(double)a5 queue:(id)a6 completion:(id)a7;
- (void)finalShutdown;
- (void)forgetDeviceWithNodeID:(id)a3;
- (void)getSessionForCommissioneeDevice:(unint64_t)a3 completion:(id)a4;
- (void)getSessionForNode:(unint64_t)a3 completion:(id)a4;
- (void)invalidateCASESessionForNode:(id)a3;
- (void)operationalInstanceAdded:(id)a3;
- (void)removeRunAssertion;
- (void)removeServerEndpointInternal:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)removeServerEndpointOnMatterQueue:(id)a3;
- (void)setNocChainIssuer:(id)a3 queue:(id)a4;
- (void)setPairingDelegate:(id)a3 queue:(id)a4;
- (void)shutDownCppController;
- (void)shutdown;
- (void)syncRunOnWorkQueue:(id)a3 error:(id *)a4;
@end

@implementation MTRDeviceController_Concrete

- (MTRDeviceController_Concrete)initWithParameters:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = +[MTRDeviceControllerFactory sharedInstance];
    v9 = sub_238DCBAF4(v8, self, v7, a4);
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Expected MTRDeviceControllerParameters but got: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a4)
    {
      sub_23921C1E4(MTRError, 0xA60000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (MTRDeviceController_Concrete)initWithFactory:(id)a3 queue:(id)a4 storageDelegate:(id)a5 storageDelegateQueue:(id)a6 otaProviderDelegate:(id)a7 otaProviderDelegateQueue:(id)a8 uniqueIdentifier:(id)a9 concurrentSubscriptionPoolSize:(unint64_t)a10 storageBehaviorConfiguration:(id)a11 startSuspended:(BOOL)a12
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v50 = a4;
  v57 = a5;
  v55 = a6;
  v56 = a7;
  v54 = a8;
  v51 = a9;
  v52 = a11;
  v58.receiver = self;
  v58.super_class = MTRDeviceController_Concrete;
  v19 = [(MTRDeviceController *)&v58 initForSubclasses:a12 uniqueIdentifier:v51];
  v20 = v19;
  v21 = v19;
  if (!v19)
  {
    v39 = 0;
    goto LABEL_60;
  }

  v19[188] = 0;
  *(v19 + 1512) = 0;
  *(v19 + 379) = 0;
  objc_storeWeak(v19 + 201, 0);
  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_create("org.csa-iot.matter.framework.commissioning.workqueue", v22);
  v24 = v21[190];
  v21[190] = v23;

  if (v57)
  {
    if (!v55)
    {
      v38 = sub_2393D9044(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_ERROR, "storageDelegate provided without storageDelegateQueue", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v25 = v57;
    if (+[MTRDeviceControllerLocalTestStorage localTestStorageEnabled])
    {
      v26 = [[MTRDeviceControllerLocalTestStorage alloc] initWithPassThroughStorage:v25];

      v25 = v26;
    }

    v27 = [[MTRDeviceControllerDataStore alloc] initWithController:v21 storageDelegate:v25 storageDelegateQueue:v55];
    v28 = v20[193];
    v20[193] = v27;

    v29 = v20[193] == 0;
    if (v29)
    {
      goto LABEL_26;
    }
  }

  else if (+[MTRDeviceControllerLocalTestStorage localTestStorageEnabled])
  {
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create("org.csa-iot.matter.framework.devicecontroller.localteststorage", v30);

    v32 = [[MTRDeviceControllerLocalTestStorage alloc] initWithPassThroughStorage:0];
    v33 = [[MTRDeviceControllerDataStore alloc] initWithController:v21 storageDelegate:v32 storageDelegateQueue:v31];
    v34 = v20[193];
    v20[193] = v33;

    v35 = v20[193] == 0;
    if (v35)
    {
      goto LABEL_26;
    }
  }

  if (!v56 && v54)
  {
    v36 = sub_2393D9044(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "Must have otaProviderDelegate when we have otaProviderDelegateQueue", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v56 && !v54)
  {
    v37 = sub_2393D9044(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Must have otaProviderDelegateQueue when we have otaProviderDelegate", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!v56)
  {
LABEL_38:
    objc_storeStrong(v20 + 195, a7);
    objc_storeStrong(v20 + 196, a8);
    objc_storeStrong(v20 + 192, a4);
    objc_storeStrong(v20 + 194, a3);
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = v21[209];
    v21[209] = v40;

    v42 = v21[197];
    v21[197] = 0;

    operator new();
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
      {
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
          {
            goto LABEL_38;
          }

          v47 = sub_2393D9044(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v47, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleBDXQueryForNodeID", buf, 2u);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v46 = sub_2393D9044(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v46, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleBDXTransferSessionBeginForNodeID", buf, 2u);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v45 = sub_2393D9044(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v45, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleNotifyUpdateAppliedForNodeID", buf, 2u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v44 = sub_2393D9044(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleApplyUpdateRequestForNodeID", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v43 = sub_2393D9044(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v43, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleQueryImageForNodeID", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_26;
    }
  }

LABEL_25:
  sub_2393D5320(0, 1);
LABEL_26:
  v39 = 0;
LABEL_60:

  v48 = *MEMORY[0x277D85DE8];
  return v39;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MTRDeviceController *)self uniqueIdentifier];
  v7 = [(MTRDeviceController *)self isSuspended];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, uuid: %@, suspended: %@>", v5, self, v6, v8];

  return v9;
}

- (void)_controllerSuspended
{
  v3 = self->_factory;
  chipWorkQueue = self->_chipWorkQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392858F0;
  v6[3] = &unk_278A72298;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(chipWorkQueue, v6);
}

- (void)_controllerResumed
{
  v3 = self->_factory;
  chipWorkQueue = self->_chipWorkQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239285A1C;
  v6[3] = &unk_278A72298;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(chipWorkQueue, v6);
}

- (BOOL)matchesPendingShutdownControllerWithOperationalCertificate:(id)a3 andRootCertificate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [MTRDeviceControllerParameters nodeIDFromNOC:v6];
    v11 = [MTRDeviceControllerParameters fabricIDFromNOC:v6];
    v12 = [MTRDeviceControllerParameters publicKeyFromCertificate:v8];
    os_unfair_lock_lock(&self->_assertionLock);
    if (self->_keepRunningAssertionCounter && self->_shutdownPending)
    {
      v13 = [(MTRDeviceController *)self nodeID];
      if (sub_238DB32F8(v10, v13))
      {
        v14 = [(MTRDeviceController *)self fabricID];
        if (sub_238DB32F8(v11, v14))
        {
          v16 = [(MTRDeviceController *)self rootPublicKey];
          v9 = sub_238DB32F8(v12, v16);
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
    }

    else
    {
      v9 = 0;
    }

    os_unfair_lock_unlock(&self->_assertionLock);
  }

  return v9;
}

- (void)addRunAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_assertionLock);
  if ([(MTRDeviceController_Concrete *)self isRunning])
  {
    v3 = self->_keepRunningAssertionCounter + 1;
    self->_keepRunningAssertionCounter = v3;
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v8 = self;
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Adding keep running assertion, total %lu", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      keepRunningAssertionCounter = self->_keepRunningAssertionCounter;
      sub_2393D5320(0, 2);
    }
  }

  os_unfair_lock_unlock(&self->_assertionLock);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeRunAssertion
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_assertionLock);
  keepRunningAssertionCounter = self->_keepRunningAssertionCounter;
  if (keepRunningAssertionCounter)
  {
    v4 = keepRunningAssertionCounter - 1;
    self->_keepRunningAssertionCounter = keepRunningAssertionCounter - 1;
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = self;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ Removing keep running assertion, total %lu", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v7 = self;
      v9 = self->_keepRunningAssertionCounter;
      sub_2393D5320(0, 2);
    }

    if ([(MTRDeviceController_Concrete *)self isRunning:v7]&& !self->_keepRunningAssertionCounter && self->_shutdownPending)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = self;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ All assertions removed and shutdown is pending, shutting down", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        v8 = self;
        sub_2393D5320(0, 2);
      }

      [(MTRDeviceController_Concrete *)self finalShutdown];
    }
  }

  os_unfair_lock_unlock(&self->_assertionLock);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingShutdown
{
  os_unfair_lock_lock(&self->_assertionLock);
  self->_shutdownPending = 0;

  os_unfair_lock_unlock(&self->_assertionLock);
}

- (void)shutdown
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_assertionLock);
  keepRunningAssertionCounter = self->_keepRunningAssertionCounter;
  if (keepRunningAssertionCounter)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = self;
      v10 = 2048;
      v11 = keepRunningAssertionCounter;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Pending shutdown since %lu assertions are present", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v6 = self->_keepRunningAssertionCounter;
      sub_2393D5320(0, 2);
    }

    self->_shutdownPending = 1;
  }

  else
  {
    [(MTRDeviceController_Concrete *)self finalShutdown];
    v7.receiver = self;
    v7.super_class = MTRDeviceController_Concrete;
    [(MTRDeviceController *)&v7 shutdown];
  }

  os_unfair_lock_unlock(&self->_assertionLock);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)finalShutdown
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_assertionLock);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ shutdown called", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v8 = self;
    sub_2393D5320(0, 2);
  }

  if (self->_cppCommissioner)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down %@: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v6 = objc_opt_class();
      v8 = NSStringFromClass(v6);
      v9 = self;
      sub_2393D5320(0, 2);
    }

    [(MTRDeviceController_Concrete *)self cleanupAfterStartup:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanupAfterStartup
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[MTRDeviceController_Concrete cleanupAfterStartup]";
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v14 = "[MTRDeviceController_Concrete cleanupAfterStartup]";
    v15 = self;
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_lock([(MTRDeviceController *)self deviceMapLock:v14]);
  v4 = [(MTRDeviceController *)self nodeIDToDeviceMap];
  v5 = [v4 objectEnumerator];
  v6 = [v5 allObjects];

  v7 = [(MTRDeviceController *)self nodeIDToDeviceMap];
  [v7 removeAllObjects];

  os_unfair_lock_unlock([(MTRDeviceController *)self deviceMapLock]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * v11++) invalidate];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [(MTRDeviceController_Concrete *)self controllerDataStore];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23928659C;
  v16[3] = &unk_278A72320;
  v16[4] = self;
  [v12 synchronouslyPerformBlock:v16];

  [(MTRDeviceController_Concrete *)self stopBrowseForCommissionables];
  sub_238DC9404(self->_factory, self);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)shutDownCppController
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[MTRDeviceController_Concrete shutDownCppController]";
    v29 = 2048;
    v30 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%s: %p", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v20 = "[MTRDeviceController_Concrete shutDownCppController]";
    v21 = self;
    sub_2393D5320(0, 2);
  }

  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 488);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NSMutableArray *)self->_serverEndpoints copy];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(MTRDeviceController_Concrete *)self removeServerEndpointOnMatterQueue:*(*(&v22 + 1) + 8 * i), v20, v21];
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  cppCommissioner = self->_cppCommissioner;
  if (cppCommissioner)
  {
    self->_cppCommissioner = 0;
    (*(*cppCommissioner + 40))(cppCommissioner);
    _X0 = 0;
    atomic_store(0, &self->_storedFabricIndex.__a_.__a_value);
    v10 = *&self->_anon_60[7];
    do
    {
      _X5 = *&self->_anon_60[15];
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v10;
      v10 = _X4;
    }

    while (!_ZF);
    [(MTRDeviceController *)self setNodeID:0];
    [(MTRDeviceController *)self setFabricID:0];
    [(MTRDeviceController *)self setRootPublicKey:0];
    (*(*cppCommissioner + 8))(cppCommissioner);
    operationalCredentialsDelegate = self->_operationalCredentialsDelegate;
    if (operationalCredentialsDelegate)
    {
      operationalCredentialsDelegate[11] = 0;
    }
  }

  if (![(MTRDeviceController *)self isSuspended:v20])
  {
    v18 = sub_23952B998(self->_factory);
    sub_2392CA900(v18);
  }

  self->_shutdownPending = 0;
  v19 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  if (self->_cppCommissioner)
  {
    sub_23952D13C();
  }

  defaultDACVerifier = self->_defaultDACVerifier;
  if (defaultDACVerifier)
  {
    (*(*defaultDACVerifier + 8))(defaultDACVerifier, a2);
    self->_defaultDACVerifier = 0;
  }

  attestationTrustStoreBridge = self->_attestationTrustStoreBridge;
  if (attestationTrustStoreBridge)
  {
    (*(attestationTrustStoreBridge->var0 + 1))(attestationTrustStoreBridge, a2);
    self->_attestationTrustStoreBridge = 0;
  }

  [(MTRDeviceController_Concrete *)self clearDeviceAttestationDelegateBridge];
  operationalCredentialsDelegate = self->_operationalCredentialsDelegate;
  if (operationalCredentialsDelegate)
  {
    (*(*operationalCredentialsDelegate + 8))(operationalCredentialsDelegate);
    self->_operationalCredentialsDelegate = 0;
  }

  partialDACVerifier = self->_partialDACVerifier;
  if (partialDACVerifier)
  {
    (*(*partialDACVerifier + 8))(partialDACVerifier);
    self->_partialDACVerifier = 0;
  }

  deviceControllerDelegateBridge = self->_deviceControllerDelegateBridge;
  if (deviceControllerDelegateBridge)
  {
    (*(*deviceControllerDelegateBridge + 8))(deviceControllerDelegateBridge);
    self->_deviceControllerDelegateBridge = 0;
  }
}

- (BOOL)startup:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (![(MTRDeviceController_Concrete *)self isRunning])
  {
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239286ECC;
    block[3] = &unk_278A73B40;
    block[4] = self;
    v8 = v4;
    v25 = v8;
    v26 = &v27;
    dispatch_sync(chipWorkQueue, block);
    if (v28[3])
    {
      v9 = [v8 operationalCertificateIssuer];
      v10 = [v8 operationalCertificateIssuerQueue];
      v11 = [(MTRDeviceController_Concrete *)self setOperationalCertificateIssuer:v9 queue:v10];

      if (v11)
      {
        controllerDataStore = self->_controllerDataStore;
        if (controllerDataStore)
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = sub_2392880C0;
          v23[3] = &unk_278A73F40;
          v23[4] = self;
          [(MTRDeviceControllerDataStore *)controllerDataStore fetchAttributeDataForAllDevices:v23];
        }

        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 138412546;
          v32 = v15;
          v33 = 2112;
          v34 = self;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ startup: %@", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          v16 = objc_opt_class();
          v22 = NSStringFromClass(v16);
          sub_2393D5320(0, 2);
        }

        v6 = 1;
        goto LABEL_25;
      }

      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = self;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%@ operationalCertificateIssuer and operationalCertificateIssuerQueue must both be nil or both be non-nil", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
LABEL_24:
        [(MTRDeviceController_Concrete *)self cleanupAfterStartup];
        v6 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v17 = sub_2393D9044(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = self;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "%@ startup failed", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_24;
      }
    }

    v21 = self;
    sub_2393D5320(0, 1);
    goto LABEL_24;
  }

  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v32 = self;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ Unexpected duplicate call to startup", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  v6 = 0;
LABEL_26:
  _Block_object_dispose(&v27, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)setupCommissioningSessionWithPayload:(id)a3 newNodeID:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(MTRDeviceController *)self isSuspended];
  v11 = sub_2393D9044(0);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v23 = self;
      *&v23[8] = 2048;
      *&v23[10] = [v9 unsignedLongLongValue];
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ suspended: can't set up commissioning session for device ID 0x%016llX with setup payload %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      [v9 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x34600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a5 = LOBYTE(self) = 0;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *v23 = self;
      *&v23[8] = 2048;
      *&v23[10] = [v9 unsignedLongLongValue];
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ Setting up commissioning session for device ID 0x%016llX with setup payload %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v20 = [v9 unsignedLongLongValue];
      v21 = v8;
      v19 = self;
      sub_2393D5320(0, 2);
    }

    v13 = [MTRMetricsCollector sharedInstance:v19];
    [v13 resetMetrics];

    *buf = 0;
    *&v23[4] = "dwnfw_device_commissioning";
    v23[16] = 0;
    sub_23948BD20(buf);
    sub_23928893C(v8);
    v14 = [v8 qrCodeString:0];
    if (v14 || ([v8 manualEntryCode], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = objc_alloc_init(MTRCommissioningParameters);
      v16 = [[MTRCommissioningOperation alloc] initWithParameters:v15 setupPayload:v14 commissioningID:v9 isInternallyCreated:1 delegate:self queue:self->_commissioningQueue];
      [(MTRCommissioningOperation *)v16 startWithController:self];

      LOBYTE(self) = 1;
    }

    else
    {
      *buf = 1;
      *&v23[4] = "dwnfw_device_commissioning";
      *&v23[12] = 47;
      v23[16] = 3;
      sub_23948BD20(buf);
      LODWORD(self) = ![MTRDeviceController_Concrete checkForError:0x35A0000002FLL logMsg:"/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm" error:@"Generating Manual Pairing Code failed", a5];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return self;
}

- (ChipError)startCommissioning:(id)a3 withCommissioningID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ starting new commissioning %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v22 = self;
    v23 = v6;
    sub_2393D5320(0, 2);
  }

  [(MTRDeviceController_Concrete *)self setCurrentCommissioning:v6, v22, v23];
  if ([v6 isInternallyCreated])
  {
    [(MTRDeviceController_Concrete *)self setCurrentInternalCommissioning:v6];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4012000000;
  v31 = sub_239288CB4;
  v32 = nullsub_836;
  v33 = "";
  v34 = 0;
  v35 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_239288CC4;
  v25[3] = &unk_278A73F68;
  v29 = buf;
  v9 = v7;
  v26 = v9;
  v27 = self;
  v10 = v6;
  v28 = v10;
  v11 = MEMORY[0x23EE78590](v25);
  v24 = 0;
  v12 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v11 error:&v24];
  v13 = v24;
  v14 = *&buf[8];
  if (!v12 && !*(*&buf[8] + 48))
  {
    v15 = sub_23921D408(MTRError, v13);
    v14 = *&buf[8];
    *(*&buf[8] + 48) = v15;
    *(v14 + 56) = v16;
  }

  v17 = *(v14 + 48);
  v18 = *(v14 + 56);

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
  v20 = v17;
  v21 = v18;
  result.mFile = v21;
  result.mError = v20;
  result.mLine = HIDWORD(v20);
  return result;
}

- (void)commissioningDone:(id)a3
{
  v4 = a3;
  if (([v4 isInternallyCreated] & 1) == 0)
  {
    [(MTRDeviceController_Concrete *)self _commissioningDone:v4];
  }
}

- (void)_commissioningDone:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRDeviceController_Concrete *)self currentCommissioning];

  if (v5 == v4)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ stopping commissioning %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v11 = self;
      v12 = v4;
      sub_2393D5320(0, 2);
    }

    [(MTRDeviceController_Concrete *)self setCurrentCommissioning:0, v11, v12];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2392890F0;
    v13[3] = &unk_278A72320;
    v13[4] = self;
    v7 = MEMORY[0x23EE78590](v13);
    [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v7 error:0];
  }

  v8 = [(MTRDeviceController_Concrete *)self currentInternalCommissioning];
  v9 = v8 == v4;

  if (v9)
  {
    [(MTRDeviceController_Concrete *)self setCurrentInternalCommissioning:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupCommissioningSessionWithDiscoveredDevice:(id)a3 payload:(id)a4 newNodeID:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v14 = sub_2393D9044(0);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ Can't set up commissioning session with discovered device: commissioning %@ in progress", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a6)
    {
      sub_23921C1E4(MTRError, 0x3D000000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a6 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      v37 = [v12 unsignedLongLongValue];
      LOWORD(v38) = 2112;
      *(&v38 + 2) = v11;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "%@ Setting up commissioning session for already-discovered device %@ and device ID 0x%016llX with setup payload %@", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      v23 = [v12 unsignedLongLongValue];
      v24 = v11;
      v21 = self;
      v22 = v10;
      sub_2393D5320(0, 2);
    }

    v17 = [MTRMetricsCollector sharedInstance:v21];
    [v17 resetMetrics];

    *buf = 0;
    *&buf[8] = "dwnfw_device_commissioning";
    buf[20] = 0;
    sub_23948BD20(buf);
    sub_23928893C(v11);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v37 = sub_239288CB4;
    *&v38 = nullsub_836;
    *(&v38 + 1) = "";
    v39 = 0;
    v40 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2392894F8;
    v29[3] = &unk_278A73F90;
    v34 = buf;
    v30 = v12;
    v31 = self;
    v32 = v10;
    v33 = v11;
    v35 = a6;
    v18 = MEMORY[0x23EE78590](v29);
    v16 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v18 error:a6];
    if (!v16)
    {
      v25 = 1;
      v26 = "dwnfw_device_commissioning";
      v27 = *(*&buf[8] + 48);
      v28 = 3;
      sub_23948BD20(&v25);
    }

    _Block_object_dispose(buf, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)commissionNodeWithID:(id)a3 commissioningParams:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v11 = v10;
  if (v10 && ([v10 isInternallyCreated] & 1) == 0)
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Trying to commissionNodeWithID: when using MTRCommissioningOperation; call ignored", v16, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x42800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a5 = LOBYTE(v13) = 0;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v12 = [v9 copy];
    [v12 setPreventNetworkScans:1];
    v13 = [(MTRDeviceController_Concrete *)self _commissionNodeWithID:v8 commissioningParams:v12 error:a5];
    if (v13)
    {
      [v11 setIsWaitingAfterPASEEstablished:0];
    }
  }

  return v13;
}

- (BOOL)commission:(id)a3 withCommissioningID:(id)a4 commissioningParams:(id)a5 error:(id *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v13 == v10)
  {
    v15 = [(MTRDeviceController_Concrete *)self _commissionNodeWithID:v11 commissioningParams:v12 error:a6];
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = self;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ trying to start commissioning %@ but current commissioning is %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a6)
    {
      sub_23921C1E4(MTRError, 0x44500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a6 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_commissionNodeWithID:(id)a3 commissioningParams:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = self;
    v26 = 2048;
    v27 = [v8 unsignedLongLongValue];
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ trying to commission node with ID 0x%016llX parameters %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v17 = [v8 unsignedLongLongValue];
    v18 = v9;
    v16 = self;
    sub_2393D5320(0, 2);
  }

  if ([(MTRDeviceController *)self isSuspended:v16])
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 unsignedLongLongValue];
      *buf = 138412802;
      v25 = self;
      v26 = 2048;
      v27 = v11;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ suspended: can't commission device ID 0x%016llX with parameters %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      [v8 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x45700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23928A058;
    v19[3] = &unk_278A73FB8;
    v20 = v9;
    v21 = self;
    v23 = a5;
    v22 = v8;
    v13 = MEMORY[0x23EE78590](v19);
    v12 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v13 error:a5];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)continueCommissioningAfterAttestation:(id)a3 forOpaqueHandle:(void *)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v9 == v8)
  {
    v11 = [(MTRDeviceController_Concrete *)self _continueCommissioningDevice:a4 ignoreAttestationFailure:1 error:a5];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x50700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_continueCommissioningDevice:(void *)a3 ignoreAttestationFailure:(BOOL)a4 error:(id *)a5
{
  v5 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23928B460;
  v9[3] = &unk_278A73FE0;
  v9[4] = self;
  v9[5] = a3;
  v10 = a4;
  v9[6] = a5;
  v7 = MEMORY[0x23EE78590](v9, a2);
  LOBYTE(v5) = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v7 error:v5];

  return v5;
}

- (BOOL)cancelCommissioningForNodeID:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v8 = v7;
  if (v7 && ([v7 isInternallyCreated] & 1) == 0)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v14 = [v6 unsignedLongLongValue];
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Trying to cancelCommissioningForNodeID 0x%016llX (%@) when using MTRCommissioningOperation; call ignored", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      [v6 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

    if (a4)
    {
      sub_23921C1E4(MTRError, 0x52A00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(MTRDeviceController_Concrete *)self _cancelCommissioning:v8 forNodeID:v6 error:a4];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)stopCommissioning:(id)a3 forCommissioningID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v8 == v6)
  {
    v10 = [(MTRDeviceController_Concrete *)self _cancelCommissioning:v8 forNodeID:v7 error:0];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_cancelCommissioning:(id)a3 forNodeID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 isWaitingAfterPASEEstablished];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23928B97C;
  v16[3] = &unk_278A74008;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  v19 = a5;
  v20 = v10;
  v12 = v8;
  v18 = v12;
  v13 = MEMORY[0x23EE78590](v16);
  v14 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v13 error:a5];
  if ((v14 & v10) == 1)
  {
    [v12 setIsWaitingAfterPASEEstablished:0];
  }

  return v14;
}

- (BOOL)startBrowseForCommissionables:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23928BC54;
  v12[3] = &unk_278A74030;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x23EE78590](v12);
  LOBYTE(self) = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v10 error:0];

  return self;
}

- (BOOL)stopBrowseForCommissionables
{
  v2 = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23928BDF0;
  v5[3] = &unk_278A74058;
  v5[4] = self;
  v3 = MEMORY[0x23EE78590](v5, a2);
  LOBYTE(v2) = [(MTRDeviceController_Concrete *)v2 syncRunOnWorkQueueWithBoolReturnValue:v3 error:0];

  return v2;
}

- (id)deviceBeingCommissionedWithNodeID:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23928C0E0;
  v16[3] = &unk_278A74080;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  v18 = a4;
  v8 = MEMORY[0x23EE78590](v16);
  v9 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithReturnValue:v8 error:a4];
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 unsignedLongLongValue];
    if (a4)
    {
      v12 = *a4;
    }

    else
    {
      v12 = 0;
    }

    *buf = 138413058;
    v20 = self;
    v21 = 2048;
    v22 = v11;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ Getting device being commissioned with node ID 0x%016llX: %@ (error: %@)", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    [v7 unsignedLongLongValue];
    if (a4)
    {
      v13 = *a4;
    }

    sub_2393D5320(0, 2);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)baseDeviceForNodeID:(id)a3
{
  v4 = a3;
  v5 = [[MTRBaseDevice alloc] initWithNodeID:v4 controller:self];

  return v5;
}

- (id)_setupDeviceForNodeID:(id)a3 prefetchedClusterData:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner([(MTRDeviceController *)self deviceMapLock]);
  v8 = [[MTRDevice_Concrete alloc] initWithNodeID:v6 controller:self];
  if ([(MTRDeviceController_Concrete *)self isRunning])
  {
    v9 = [(MTRDeviceController *)self nodeIDToDeviceMap];
    [v9 setObject:v8 forKey:v6];
  }

  if (v7)
  {
    if ([v7 count])
    {
      [(MTRDevice_Concrete *)v8 setPersistedClusterData:v7];
    }
  }

  else
  {
    controllerDataStore = self->_controllerDataStore;
    if (controllerDataStore)
    {
      v11 = [(MTRDeviceControllerDataStore *)controllerDataStore getStoredClusterDataForNodeID:v6];
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v21 = self;
        v22 = 2048;
        v23 = [v11 count];
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ Loaded %lu cluster data from storage for %@", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v18 = [v11 count];
        v19 = v8;
        v17 = self;
        sub_2393D5320(0, 2);
      }

      if ([v11 count])
      {
        [(MTRDevice_Concrete *)v8 setPersistedClusterData:v11];
      }
    }
  }

  v13 = self->_controllerDataStore;
  if (v13)
  {
    v14 = [(MTRDeviceControllerDataStore *)v13 getStoredDeviceDataForNodeID:v6];
    if ([v14 count])
    {
      [(MTRDevice_Concrete *)v8 setPersistedDeviceData:v14];
    }
  }

  [(MTRDevice_Concrete *)v8 setStorageBehaviorConfiguration:self->_storageBehaviorConfiguration];

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)forgetDeviceWithNodeID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@: Forgetting device with node ID: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = self;
    v9 = v4;
    sub_2393D5320(0, 2);
  }

  v10.receiver = self;
  v10.super_class = MTRDeviceController_Concrete;
  [(MTRDeviceController *)&v10 forgetDeviceWithNodeID:v4, v8, v9];
  controllerDataStore = self->_controllerDataStore;
  if (controllerDataStore)
  {
    [(MTRDeviceControllerDataStore *)controllerDataStore clearResumptionInfoForNodeID:v4];
    [(MTRDeviceControllerDataStore *)self->_controllerDataStore clearDeviceDataForNodeID:v4];
    [(MTRDeviceControllerDataStore *)self->_controllerDataStore clearStoredClusterDataForNodeID:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)setOperationalCertificateIssuer:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((!v6 || v7) && (v6 || !v7))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23928C728;
    v12[3] = &unk_278A74030;
    v13 = v6;
    v14 = self;
    v15 = v8;
    v10 = MEMORY[0x23EE78590](v12);
    v9 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v10 error:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)attestationChallengeForDeviceID:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23928C90C;
  v12 = &unk_278A740A8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = MEMORY[0x23EE78590](&v9);
  v7 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithReturnValue:v6 error:0, v9, v10, v11, v12, v13];

  return v7;
}

- (BOOL)addServerEndpoint:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(MTRDeviceController_Concrete *)self checkIsRunning]|| !sub_238DCAAE4(self->_factory, v4))
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (([v4 associateWithController:self] & 1) == 0)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Failed to associate MTRServerEndpoint with %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = objc_opt_class();
      v12 = NSStringFromClass(v9);
      sub_2393D5320(0, 1);
    }

    sub_238DCB0BC(self->_factory, v4);
    goto LABEL_10;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23928CD04;
  v15[3] = &unk_278A72298;
  v15[4] = self;
  v16 = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23928CEA8;
  v13[3] = &unk_278A740D0;
  v13[4] = self;
  v14 = v16;
  [(MTRDeviceController_Concrete *)self asyncDispatchToMatterQueue:v15 errorHandler:v13];

  v5 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)removeServerEndpointInternal:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MTRDeviceController_Concrete *)self checkIsRunning])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23928D1D4;
    v15[3] = &unk_278A73DB8;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23928D37C;
    v11[3] = &unk_278A72FB0;
    v11[4] = self;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    [(MTRDeviceController_Concrete *)self asyncDispatchToMatterQueue:v15 errorHandler:v11];
  }
}

- (void)removeServerEndpointOnMatterQueue:(id)a3
{
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1607);
  [v4 unregisterMatterEndpoint];
  [(NSMutableArray *)self->_serverEndpoints removeObject:v4];
  [v4 invalidate];
  sub_238DCB0BC(self->_factory, v4);
}

- (BOOL)checkForInitError:(BOOL)a3 logMsg:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!a3)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ Error: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v10 = self;
      v11 = v6;
      sub_2393D5320(0, 1);
    }

    [(MTRDeviceController_Concrete *)self cleanup:v10];
  }

  v8 = *MEMORY[0x277D85DE8];
  return !a3;
}

- (void)clearDeviceAttestationDelegateBridge
{
  deviceAttestationDelegateBridge = self->_deviceAttestationDelegateBridge;
  if (deviceAttestationDelegateBridge)
  {
    (*(*deviceAttestationDelegateBridge + 8))(deviceAttestationDelegateBridge, a2);
    self->_deviceAttestationDelegateBridge = 0;
  }
}

- (BOOL)checkForStartError:(ChipError)a3 logMsg:(id)a4
{
  mError = a3.mError;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (mError)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = sub_2393C9138();
      v12 = 2112;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Error(%s): %@ %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return mError != 0;
}

+ (BOOL)checkForError:(ChipError)a3 logMsg:(id)a4 error:(id *)a5
{
  mFile = a3.mFile;
  v7 = *&a3.mError;
  v20 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (v7)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = sub_2393C9138();
      v16 = 2112;
      v17 = a1;
      v18 = 2080;
      v19 = [v9 UTF8String];
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error(%s): %@ %s", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      v11 = v9;
      [v9 UTF8String];
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      *a5 = sub_23921C1E4(MTRError, v7, mFile);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (BOOL)checkIsRunning:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(MTRDeviceController_Concrete *)self isRunning];
  if (!v5)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = self;
      v17 = 2080;
      v18 = [@"Controller is not running. Call startup first." UTF8String];
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@: %@ Error: %s", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [@"Controller is not running. Call startup first." UTF8String];
      sub_2393D5320(0, 1);
    }

    if (a3)
    {
      *a3 = sub_23921C1E4(MTRError, 0x68E00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)definitelyUsesThreadForDevice:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 - 1 > 0xFFFFFFEFFFFFFFFELL)
  {
    v7 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v6 = [(MTRDeviceController *)self deviceForNodeID:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 deviceUsesThread];
    }

    else
    {
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v12 = self;
        v13 = 2112;
        v14 = v6;
        v15 = 2048;
        v16 = a3;
        v17 = 2048;
        v18 = a3;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ somehow has %@ instead of MTRDevice_Concrete for node ID 0x%016llX (%llu)", buf, 0x2Au);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v7 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)getSessionForNode:(unint64_t)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(MTRDeviceController *)self isSuspended])
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MTRDeviceController_Concrete *)self compressedFabricID];
      *buf = 138413058;
      *v19 = self;
      *&v19[8] = 2048;
      *&v19[10] = [v8 unsignedLongLongValue];
      v20 = 2048;
      v21 = a3;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ suspended: can't get session for node %016llX-%016llx (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      v9 = [(MTRDeviceController_Concrete *)self compressedFabricID];
      [v9 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

    buf[0] = 0;
    v10 = sub_23921C1E4(MTRError, 0x6B100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    (*(v6 + 2))(v6, 0, buf, v10, 0);

    if (buf[0] == 1)
    {
      (*(**&v19[4] + 32))(*&v19[4]);
    }
  }

  else if ([(MTRDeviceController_Concrete *)self definitelyUsesThreadForDevice:a3])
  {
    v11 = [MTRAsyncWorkItem alloc];
    v12 = dispatch_get_global_queue(21, 0);
    v13 = [(MTRAsyncWorkItem *)v11 initWithQueue:v12];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23928E058;
    v15[3] = &unk_278A74120;
    v15[4] = self;
    v16 = v6;
    v17 = a3;
    [(MTRAsyncWorkItem *)v13 setReadyHandler:v15];
    [(MTRAsyncWorkQueue *)self->_concurrentSubscriptionPool enqueueWorkItem:v13 descriptionWithFormat:@"device controller getSessionForNode nodeID: 0x%016llX", a3];
  }

  else
  {
    [(MTRDeviceController_Concrete *)self directlyGetSessionForNode:a3 completion:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)directlyGetSessionForNode:(unint64_t)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(MTRDeviceController *)self isSuspended])
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MTRDeviceController_Concrete *)self compressedFabricID];
      *buf = 138413058;
      *v18 = self;
      *&v18[8] = 2048;
      *&v18[10] = [v8 unsignedLongLongValue];
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ suspended: can't get session for node %016llX-%016llx (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      v9 = [(MTRDeviceController_Concrete *)self compressedFabricID];
      [v9 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

    buf[0] = 0;
    v10 = sub_23921C1E4(MTRError, 0x6CF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    (*(v6 + 2))(v6, 0, buf, v10, 0);

    if (buf[0] == 1)
    {
      (*(**&v18[4] + 32))(*&v18[4]);
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23928E4E8;
    v14[3] = &unk_278A74148;
    v15 = v6;
    v16 = a3;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23928E594;
    v12[3] = &unk_278A74170;
    v13 = v15;
    [(MTRDeviceController_Concrete *)self asyncGetCommissionerOnMatterQueue:v14 errorHandler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getSessionForCommissioneeDevice:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23928E750;
  v10[3] = &unk_278A74148;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23928E9C4;
  v8[3] = &unk_278A74170;
  v9 = v11;
  v7 = v11;
  [(MTRDeviceController_Concrete *)self asyncGetCommissionerOnMatterQueue:v10 errorHandler:v8];
}

- (unsigned)sessionTransportTypeForDevice:(id)a3
{
  v4 = a3;
  if ([(MTRDeviceController_Concrete *)self checkIsRunning])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23928EB6C;
    block[3] = &unk_278A73B40;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(chipWorkQueue, block);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)asyncGetCommissionerOnMatterQueue:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(MTRDeviceController_Concrete *)self checkIsRunning:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {

    chipWorkQueue = self->_chipWorkQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23928EDEC;
    v12[3] = &unk_278A74198;
    v12[4] = self;
    v13 = v7;
    v14 = v6;
    dispatch_async(chipWorkQueue, v12);
  }

  else
  {
    if (v7)
    {
      (*(v7 + 2))(v7, v9);
    }
  }
}

- (void)asyncDispatchToMatterQueue:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23928EF68;
  v10[3] = &unk_278A741C0;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = MEMORY[0x23EE78590](v10);
  [(MTRDeviceController_Concrete *)self asyncGetCommissionerOnMatterQueue:v9 errorHandler:v8];
}

- (void)syncRunOnWorkQueue:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (qword_27DF7BD08 != -1)
  {
    sub_23952D264();
  }

  if (sub_239479DB0(&byte_27DF7BCA8))
  {
    v9 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
      v15 = 1024;
      v16 = 1842;
      v17 = 2080;
      v18 = "!chip::DeviceLayer::PlatformMgrImpl().IsWorkQueueCurrentQueue()";
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  if ([(MTRDeviceController_Concrete *)self checkIsRunning:a4])
  {
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23928F164;
    block[3] = &unk_278A741E8;
    block[4] = self;
    v12 = a4;
    v11 = v6;
    dispatch_sync(chipWorkQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)syncRunOnWorkQueueWithReturnValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_23928F314;
  v21 = sub_23928F324;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_23928F32C;
  v14 = &unk_278A74210;
  v15 = v6;
  v16 = &v17;
  v7 = v6;
  v8 = MEMORY[0x23EE78590](&v11);
  [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v8 error:a4, v11, v12, v13, v14];
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (BOOL)syncRunOnWorkQueueWithBoolReturnValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_23928F48C;
  v13 = &unk_278A74210;
  v14 = v6;
  v15 = &v16;
  v7 = v6;
  v8 = MEMORY[0x23EE78590](&v10);
  [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v8 error:a4, v10, v11, v12, v13];
  LOBYTE(a4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a4;
}

- (id)compressedFabricID
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  return 0;
}

- (ChipError)isRunningOnFabric:(void *)a3 fabricIndex:(unsigned __int8)a4 isRunning:(BOOL *)a5
{
  v6 = a4;
  v21[10] = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1889);
  if (![(MTRDeviceController_Concrete *)self isRunning])
  {
    goto LABEL_12;
  }

  v9 = sub_2394A7FC0(a3, v6);
  if (!v9)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
    v14 = 0x76B00000000;
    v15 = 3;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_239293160(self->_cppCommissioner);
  v12 = v11 ? *(v11 + 8) : 0;
  if (v12 != *(v10 + 8))
  {
LABEL_12:
    v15 = 0;
    v14 = 0;
    v13 = 0;
    *a5 = 0;
    goto LABEL_13;
  }

  v21[0] = &unk_284BB9138;
  v20[0] = &unk_284BB9138;
  v16 = sub_23950EDF0(self->_cppCommissioner, v21);
  if (v16 || (v16 = sub_2394A8620(a3, *(v10 + 137), v20), v16))
  {
    v14 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
    v19 = sub_23928F6C0(v21, v20);
    LODWORD(v16) = 0;
    v14 = 0;
    v13 = 0;
    *a5 = v19;
  }

  v15 = v16;
LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  v18 = v14 | v15;
  result.mFile = v13;
  result.mError = v18;
  result.mLine = HIDWORD(v18);
  return result;
}

- (void)invalidateCASESessionForNode:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_23928F8C0;
  v10 = &unk_278A72298;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x23EE78590](&v7);
  [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v6 error:0, v7, v8, v9, v10, v11];
}

- (void)operationalInstanceAdded:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v18 = self;
    v19 = 1024;
    *v20 = [(MTRDeviceController_Concrete *)self fabricIndex];
    *&v20[4] = 2048;
    *&v20[6] = [v4 unsignedLongLongValue];
    *&v20[14] = 2048;
    *&v20[16] = [v4 unsignedLongLongValue];
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ at fabric index %u notified about new operational node 0x%016llx (%llu)", buf, 0x26u);
  }

  if (sub_2393D5398(2u))
  {
    v6 = [(MTRDeviceController_Concrete *)self fabricIndex];
    v15 = [v4 unsignedLongLongValue];
    v16 = [v4 unsignedLongLongValue];
    v11 = self;
    v13 = v6;
    sub_2393D5320(0, 2);
  }

  v7 = [(MTRDeviceController *)self _deviceForNodeID:v4 createIfNeeded:0, v11, v13, v15, v16];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = self;
        v19 = 2112;
        *v20 = v7;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ Notifying %@ about its node advertising", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        v12 = self;
        v14 = v7;
        sub_2393D5320(0, 2);
      }

      [v7 nodeMayBeAdvertisingOperational];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = [v4 unsignedLongLongValue];
        v9 = [v4 unsignedLongLongValue];
        *buf = 138413058;
        v18 = self;
        v19 = 2112;
        *v20 = v7;
        *&v20[8] = 2048;
        *&v20[10] = v8;
        *&v20[18] = 2048;
        *&v20[20] = v9;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ somehow has %@ instead of MTRDevice_Concrete for node ID 0x%016llX (%llu)", buf, 0x2Au);
      }

      if (sub_2393D5398(1u))
      {
        [v4 unsignedLongLongValue];
        [v4 unsignedLongLongValue];
        sub_2393D5320(0, 1);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)downloadLogFromNodeWithID:(id)a3 type:(int64_t)a4 timeout:(double)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23928FDA8;
  v20[3] = &unk_278A74238;
  v20[4] = self;
  v21 = v12;
  v25 = a5;
  v24 = a4;
  v22 = v13;
  v23 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23928FDCC;
  v18[3] = &unk_278A74170;
  v19 = v23;
  v15 = v23;
  v16 = v13;
  v17 = v12;
  [(MTRDeviceController_Concrete *)self asyncDispatchToMatterQueue:v20 errorHandler:v18];
}

- (id)accessGrantsForClusterPath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1973);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_serverEndpoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    v8 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v4 endpoint];
        v12 = [v10 endpointID];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = [v4 cluster];
          v8 = [v10 matterAccessGrantsForCluster:v14];

          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)neededReadPrivilegeForClusterID:(id)a3 attributeID:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1987);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_serverEndpoints;
  v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v23)
  {
    v24 = *v39;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v28 = [v7 serverClusters];
        v8 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v8)
        {
          v27 = *v35;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v35 != v27)
              {
                objc_enumerationMutation(v28);
              }

              v10 = *(*(&v34 + 1) + 8 * j);
              v11 = [v10 clusterID];
              v12 = [v11 isEqual:v29];

              if (v12)
              {
                v32 = 0u;
                v33 = 0u;
                v30 = 0u;
                v31 = 0u;
                v13 = [v10 attributes];
                v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
                if (v14)
                {
                  v15 = *v31;
                  while (2)
                  {
                    for (k = 0; k != v14; ++k)
                    {
                      if (*v31 != v15)
                      {
                        objc_enumerationMutation(v13);
                      }

                      v17 = *(*(&v30 + 1) + 8 * k);
                      v18 = [v17 attributeID];
                      v19 = [v18 isEqual:v6];

                      if (v19)
                      {
                        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v17, "requiredReadPrivilege")}];

                        goto LABEL_28;
                      }
                    }

                    v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
                    if (v14)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }

            v8 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v8);
        }
      }

      v20 = 0;
      v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v23);
  }

  else
  {
    v20 = 0;
  }

LABEL_28:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)nodesWithStoredData
{
  v3 = [(MTRDeviceController_Concrete *)self controllerDataStore];

  if (v3)
  {
    v4 = [(MTRDeviceController_Concrete *)self controllerDataStore];
    v5 = [v4 nodesWithStoredData];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (BOOL)continueCommissioning:(id)a3 withWiFiSSID:(id)a4 credentials:(id)a5 error:(id *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v13 == v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_239290654;
    v19[3] = &unk_278A73FB8;
    v19[4] = self;
    v22 = a6;
    v20 = v11;
    v21 = v12;
    v16 = MEMORY[0x23EE78590](v19);
    v15 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v16 error:a6];
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = self;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a6)
    {
      sub_23921C1E4(MTRError, 0x7EB00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a6 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)continueCommissioning:(id)a3 withOperationalDataset:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v10 == v8)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_239290BD4;
    v16[3] = &unk_278A74260;
    v16[4] = self;
    v18 = a5;
    v17 = v9;
    v13 = MEMORY[0x23EE78590](v16);
    v12 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v13 error:a5];
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x81500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)commissioning:(id)a3 readCommissioneeInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v8 == v6)
  {
    [(MTRDeviceController *)self controller:self readCommissioneeInfo:v7];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "readCommissioneeInfo: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)commissioning:(id)a3 completedDeviceAttestation:(id)a4 error:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v18 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)commissioning:(id)a3 succeededForNodeID:(id)a4 metrics:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v11 == v8)
  {
    if ([v8 isInternallyCreated])
    {
      [(MTRDeviceController_Concrete *)self _commissioningDone:v8];
    }

    [(MTRDeviceController *)self controller:self commissioningComplete:0 nodeID:v9 metrics:v10];
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "commissioning:succeededForNodeID: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)commissioning:(id)a3 paseSessionEstablishmentComplete:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v8 == v6)
  {
    [(MTRDeviceController *)self controller:self commissioningSessionEstablishmentDone:v7];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "commissioning:paseSessionEstablishmentComplete: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)commissioning:(id)a3 statusUpdate:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v7 == v6)
  {
    [(MTRDeviceController *)self controller:self statusUpdate:a4];
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "commissioning:statusUpdate: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)commissioning:(id)a3 provisionedNetworkCredentialsForDeviceID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v8 == v6)
  {
    [(MTRDeviceController *)self controller:self commissioneeHasReceivedNetworkCredentials:v7];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "commissioningProvisionedNetworkCredentials: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)commissioning:(id)a3 failedWithError:(id)a4 forDeviceID:(id)a5 metrics:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v13 isInternallyCreated])
  {
    [(MTRDeviceController_Concrete *)self _commissioningDone:v13];
  }

  [(MTRDeviceController *)self controller:self commissioningComplete:v10 nodeID:v11 metrics:v12];
}

- (MTRCommissioningOperation)currentCommissioning
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCommissioning);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 15) = &unk_284BB9138;
  *(self + 712) = 0;
  *(self + 14) = &unk_284BA8C20;
  *(self + 90) = 0;
  *(self + 91) = &unk_284BB9138;
  *(self + 102) = &unk_284BB9138;
  *(self + 1408) = 0;
  *(self + 101) = &unk_284BA8C20;
  *(self + 177) = 0;
  *(self + 178) = &unk_284BB9138;
  return self;
}

- (id)fetchAttestationChallengeForDeviceId:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(MTRDeviceController_Concrete *)self attestationChallengeForDeviceID:v4];

  return v5;
}

- (BOOL)getBaseDevice:(unint64_t)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22 = 0;
  v10 = [(MTRDeviceController_Concrete *)self checkIsRunning:&v22];
  v11 = v22;
  if (v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_239291D6C;
    v15[3] = &unk_278A742B0;
    v18 = a3;
    v16[0] = v8;
    v16[1] = self;
    v17 = v9;
    [(MTRDeviceController_Concrete *)self getSessionForNode:a3 completion:v15];
    v12 = v16;
    v13 = v17;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239291D54;
    block[3] = &unk_278A71698;
    v12 = &v21;
    v21 = v9;
    v20 = v11;
    dispatch_async(v8, block);
    v13 = v20;
  }

  return v10;
}

- (BOOL)pairDevice:(unint64_t)a3 address:(id)a4 port:(unsigned __int16)a5 setupPINCode:(unsigned int)a6 error:(id *)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (v13)
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ Can't set up commissioning session with address/port: commissioning %@ in progress", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a7)
    {
      sub_23921C1E4(MTRError, 0x8F400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a7 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = +[MTRMetricsCollector sharedInstance];
    [v16 resetMetrics];

    *buf = 0;
    *&buf[8] = "dwnfw_device_commissioning";
    buf[20] = 0;
    sub_23948BD20(buf);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v33 = sub_239288CB4;
    v34 = nullsub_836;
    v35 = "";
    v36 = 0;
    v37 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_239292304;
    v24[3] = &unk_278A742D8;
    v27 = buf;
    v31 = a5;
    v25 = v12;
    v26 = self;
    v30 = a6;
    v28 = a3;
    v29 = a7;
    v17 = MEMORY[0x23EE78590](v24);
    v15 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v17 error:a7];
    if (!v15)
    {
      v20 = 1;
      v21 = "dwnfw_device_commissioning";
      v22 = *(*&buf[8] + 48);
      v23 = 3;
      sub_23948BD20(&v20);
    }

    _Block_object_dispose(buf, 8);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)pairDevice:(unint64_t)a3 onboardingPayload:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [[MTRSetupPayload alloc] initWithPayload:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v11 = [(MTRDeviceController_Concrete *)self setupCommissioningSessionWithPayload:v9 newNodeID:v10 error:a5];
  }

  else if (a5)
  {
    sub_23921C1E4(MTRError, 0x9280000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)openPairingWindow:(unint64_t)a3 duration:(unint64_t)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4 < 0x10000)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2392927C8;
    v13[3] = &unk_278A74300;
    v13[4] = self;
    v13[5] = a3;
    v13[6] = a4;
    v13[7] = a5;
    v10 = MEMORY[0x23EE78590](v13, a2);
    v9 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v10 error:a5];
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = self;
      v16 = 2048;
      v17 = a4;
      v18 = 1024;
      v19 = 0xFFFF;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ Error: Duration %lu is too large. Max value %d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x9350000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a5 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)openPairingWindowWithPIN:(unint64_t)a3 duration:(unint64_t)a4 discriminator:(unint64_t)a5 setupPIN:(unint64_t)a6 error:(id *)a7
{
  v31 = *MEMORY[0x277D85DE8];
  if (a4 >= 0x10000)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      *&buf[22] = 1024;
      LODWORD(v25) = 0xFFFF;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ Error: Duration %lu is too large. Max value %d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a7)
    {
      v11 = sub_23921C1E4(MTRError, 0x94F0000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
LABEL_15:
      v14 = 0;
      *a7 = v11;
      goto LABEL_28;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_28;
  }

  if (a5 >= 0x1000)
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = a5;
      *&buf[22] = 1024;
      LODWORD(v25) = 4095;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ Error: Discriminator %lu is too large. Max value %d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a7)
    {
      v11 = sub_23921C1E4(MTRError, 0x9570000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4012000000;
  v25 = sub_239288CB4;
  v26 = nullsub_836;
  v27 = "";
  v28[0] = 0;
  v28[1] = 0;
  v23[0] = "dwnfw_open_pairing_window";
  v23[1] = v28;
  *v29 = 0;
  *&v30[4] = "dwnfw_open_pairing_window";
  v30[16] = 0;
  sub_23948BD20(v29);
  if (HIDWORD(a6) || (sub_23948FB60(a6) & 1) == 0)
  {
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v29 = 138412546;
      *v30 = self;
      *&v30[8] = 2048;
      *&v30[10] = a6;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%@ Error: Setup pin %lu is not valid", v29, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v19 = *&buf[8];
    *(*&buf[8] + 48) = 0x9610000008FLL;
    *(v19 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
    if (a7)
    {
      sub_23921C1E4(MTRError, *(v19 + 48), "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *a7 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_239292CD4;
    v22[3] = &unk_278A74328;
    v22[4] = self;
    v22[5] = buf;
    v22[6] = a3;
    v22[7] = a4;
    v22[8] = a5;
    v22[9] = a6;
    v22[10] = a7;
    v17 = MEMORY[0x23EE78590](v22);
    v14 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithReturnValue:v17 error:a7];
  }

  sub_238F3F7E4(v23);
  _Block_object_dispose(buf, 8);
LABEL_28:
  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setPairingDelegate:(id)a3 queue:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[MTRDevicePairingDelegateShim alloc] initWithDelegate:v8];
  [(MTRDeviceController *)self setDeviceControllerDelegate:v7 queue:v6];
}

- (void)setNocChainIssuer:(id)a3 queue:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[MTROperationalCertificateChainIssuerShim alloc] initWithIssuer:v8];
  [(MTRDeviceController_Concrete *)self setOperationalCertificateIssuer:v7 queue:v6];
}

@end