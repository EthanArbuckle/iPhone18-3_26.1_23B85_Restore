@interface PTChannelManager
+ (void)channelManagerWithDelegate:(id)delegate restorationDelegate:(id)restorationDelegate completionHandler:(void *)completionHandler;
- (PTChannelManagerDelegate)channelEventDelegate;
- (PTChannelRestorationDelegate)channelRestorationDelegate;
- (id)_initWithEventDelegate:(id)delegate restorationDelegate:(id)restorationDelegate instantiationCompletion:(id)completion;
- (void)_deliverChannelManagerInstanceToClientIfNeeded;
- (void)_deliverPendingPushes;
- (void)_ensureDelegateIsReadyToReceiveActions:(id)actions joinReason:(int64_t)reason;
- (void)_handleLeaveCheckinResult:(id)result;
- (void)_handlePushResult:(id)result pendingPush:(id)push;
- (void)_performChannelRestorationAndUpdateChannelDescriptor:(id)descriptor pushPayload:(id)payload;
- (void)_requestJoinChannelWithUUID:(id)d channelDescriptor:(id)descriptor originator:(int64_t)originator completion:(id)completion;
- (void)leaveChannelWithUUID:(NSUUID *)channelUUID;
- (void)provider:(id)provider didActivateAudioSession:(id)session;
- (void)provider:(id)provider didDeactivateAudioSession:(id)session;
- (void)provider:(id)provider didReceiveChannelPushToken:(id)token;
- (void)provider:(id)provider didReceiveCheckInResult:(int64_t)result channelUUID:(id)d;
- (void)provider:(id)provider performChannelJoinAction:(id)action;
- (void)provider:(id)provider performChannelLeaveAction:(id)action;
- (void)provider:(id)provider performChannelTransmitStartAction:(id)action;
- (void)provider:(id)provider performChannelTransmitStopAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)requestBeginTransmittingWithChannelUUID:(NSUUID *)channelUUID;
- (void)requestJoinChannelWithUUID:(NSUUID *)channelUUID descriptor:(PTChannelDescriptor *)descriptor;
- (void)setChannelDescriptor:(PTChannelDescriptor *)channelDescriptor forChannelUUID:(NSUUID *)channelUUID completionHandler:(void *)completionHandler;
- (void)setServiceStatus:(PTServiceStatus)status forChannelUUID:(NSUUID *)channelUUID completionHandler:(void *)completionHandler;
- (void)setTransmissionMode:(PTTransmissionMode)transmissionMode forChannelUUID:(NSUUID *)channelUUID completionHandler:(void *)completionHandler;
- (void)stopTransmittingWithChannelUUID:(NSUUID *)channelUUID;
- (void)unregisterChannelPushToken;
@end

@implementation PTChannelManager

- (id)_initWithEventDelegate:(id)delegate restorationDelegate:(id)restorationDelegate instantiationCompletion:(id)completion
{
  delegateCopy = delegate;
  restorationDelegateCopy = restorationDelegate;
  completionCopy = completion;
  v25.receiver = self;
  v25.super_class = PTChannelManager;
  v11 = [(PTChannelManager *)&v25 init];
  if (v11)
  {
    array = [MEMORY[0x277CBEB18] array];
    v13 = *(v11 + 9);
    *(v11 + 9) = array;

    v14 = MEMORY[0x23EE8B1E0](completionCopy);
    v15 = *(v11 + 8);
    *(v11 + 8) = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBAF50]);
    v17 = *(v11 + 4);
    *(v11 + 4) = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.PTChannelManager.callbackqueue", v18);
    v20 = *(v11 + 7);
    *(v11 + 7) = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBAFA0]);
    v22 = [objc_alloc(MEMORY[0x277CBAF98]) initWithConfiguration:v21];
    v23 = *(v11 + 3);
    *(v11 + 3) = v22;

    objc_storeWeak(v11 + 6, delegateCopy);
    objc_storeWeak(v11 + 5, restorationDelegateCopy);
    [*(v11 + 3) setDelegate:v11 queue:*(v11 + 7)];
    *(v11 + 9) = 0;
  }

  return v11;
}

+ (void)channelManagerWithDelegate:(id)delegate restorationDelegate:(id)restorationDelegate completionHandler:(void *)completionHandler
{
  v7 = delegate;
  v8 = restorationDelegate;
  v9 = completionHandler;
  v10 = _pttCheckIfErrorPreventingInstantiationExists();
  if (v10)
  {
    v9[2](v9, 0, v10);
  }

  else
  {
    v11 = PTDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23A70A000, v11, OS_LOG_TYPE_DEFAULT, "PTT requested channel manager instance", buf, 2u);
    }

    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __85__PTChannelManager_channelManagerWithDelegate_restorationDelegate_completionHandler___block_invoke;
    v18 = &unk_278B556A0;
    v19 = v7;
    v20 = v8;
    v12 = v9;
    v21 = v12;
    v22 = buf;
    if (channelManagerWithDelegate_restorationDelegate_completionHandler__onceToken != -1)
    {
      dispatch_once(&channelManagerWithDelegate_restorationDelegate_completionHandler__onceToken, &v15);
    }

    instantiationCompletionBlock = [channelManagerWithDelegate_restorationDelegate_completionHandler__sharedInstance instantiationCompletionBlock];

    if (instantiationCompletionBlock)
    {
      if ((v24[24] & 1) == 0)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.pushtotalk.instantiation" code:5 userInfo:0];
        v12[2](v12, 0, v14);
      }
    }

    else
    {
      v12[2](v12, channelManagerWithDelegate_restorationDelegate_completionHandler__sharedInstance, 0);
    }

    _Block_object_dispose(buf, 8);
  }
}

void __85__PTChannelManager_channelManagerWithDelegate_restorationDelegate_completionHandler___block_invoke(void *a1)
{
  v2 = [[PTChannelManager alloc] _initWithEventDelegate:a1[4] restorationDelegate:a1[5] instantiationCompletion:a1[6]];
  v3 = channelManagerWithDelegate_restorationDelegate_completionHandler__sharedInstance;
  channelManagerWithDelegate_restorationDelegate_completionHandler__sharedInstance = v2;

  *(*(a1[7] + 8) + 24) = 1;
}

- (void)requestBeginTransmittingWithChannelUUID:(NSUUID *)channelUUID
{
  v4 = channelUUID;
  v5 = [objc_alloc(MEMORY[0x277CBAFA8]) initWithChannelUUID:v4];
  [v5 setOriginator:2];
  callController = self->_callController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PTChannelManager_requestBeginTransmittingWithChannelUUID___block_invoke;
  v8[3] = &unk_278B556F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(CXCallController *)callController requestTransactionWithAction:v5 completion:v8];
}

void __60__PTChannelManager_requestBeginTransmittingWithChannelUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = _pttAttemptTranslateErrorFromCXError(a2);
  v4 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PTChannelManager_requestBeginTransmittingWithChannelUUID___block_invoke_2;
  block[3] = &unk_278B556C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __60__PTChannelManager_requestBeginTransmittingWithChannelUUID___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = PTDefaultLog();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_23A70A000, v5, OS_LOG_TYPE_DEFAULT, "PTT transmission start request completed successfully, will be fulfilled soon", v14, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__PTChannelManager_requestBeginTransmittingWithChannelUUID___block_invoke_2_cold_1(v2, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = [*(a1 + 40) channelEventDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v5 = [*(a1 + 40) channelEventDelegate];
    [v5 channelManager:*(a1 + 40) failedToBeginTransmittingInChannelWithUUID:*(a1 + 48) error:*(a1 + 32)];
LABEL_8:
  }
}

- (void)stopTransmittingWithChannelUUID:(NSUUID *)channelUUID
{
  v4 = channelUUID;
  if (self->_isWaitingForPushResult && (waitingForPushResultChannelUUID = self->_waitingForPushResultChannelUUID) != 0 && [(NSUUID *)waitingForPushResultChannelUUID isEqual:v4])
  {
    v6 = PTDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23A70A000, v6, OS_LOG_TYPE_DEFAULT, "Stop Transmit requested while waiting for a PTPushResult. The Stop Transmit action will be fulfilled after the PTPushResult is processed.", buf, 2u);
    }

    self->_stopTransmitRequestedWhileWaitingForPushResult = 1;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBAFB0]) initWithChannelUUID:v4];
    [v7 setOriginator:2];
    callController = self->_callController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__PTChannelManager_stopTransmittingWithChannelUUID___block_invoke;
    v9[3] = &unk_278B556F0;
    v9[4] = self;
    v10 = v4;
    [(CXCallController *)callController requestTransactionWithAction:v7 completion:v9];
  }
}

void __52__PTChannelManager_stopTransmittingWithChannelUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = _pttAttemptTranslateErrorFromCXError(a2);
  v4 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PTChannelManager_stopTransmittingWithChannelUUID___block_invoke_2;
  block[3] = &unk_278B556C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __52__PTChannelManager_stopTransmittingWithChannelUUID___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = PTDefaultLog();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_23A70A000, v5, OS_LOG_TYPE_DEFAULT, "PTT transmission stop request completed successfully, will be fulfilled soon", v14, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__PTChannelManager_stopTransmittingWithChannelUUID___block_invoke_2_cold_1(v2, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = [*(a1 + 40) channelEventDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v5 = [*(a1 + 40) channelEventDelegate];
    [v5 channelManager:*(a1 + 40) failedToStopTransmittingInChannelWithUUID:*(a1 + 48) error:*(a1 + 32)];
LABEL_8:
  }
}

- (void)requestJoinChannelWithUUID:(NSUUID *)channelUUID descriptor:(PTChannelDescriptor *)descriptor
{
  v6 = channelUUID;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__PTChannelManager_requestJoinChannelWithUUID_descriptor___block_invoke;
  v8[3] = &unk_278B556F0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PTChannelManager *)self _requestJoinChannelWithUUID:v7 channelDescriptor:descriptor originator:2 completion:v8];
}

void __58__PTChannelManager_requestJoinChannelWithUUID_descriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [*(a1 + 32) channelEventDelegate];
    v5 = objc_opt_respondsToSelector();

    v3 = v7;
    if (v5)
    {
      v6 = [*(a1 + 32) channelEventDelegate];
      [v6 channelManager:*(a1 + 32) failedToJoinChannelWithUUID:*(a1 + 40) error:v7];

      v3 = v7;
    }
  }
}

- (void)_requestJoinChannelWithUUID:(id)d channelDescriptor:(id)descriptor originator:(int64_t)originator completion:(id)completion
{
  dCopy = d;
  descriptorCopy = descriptor;
  completionCopy = completion;
  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  [underlyingProvider requestChannelPushToken];

  v14 = objc_alloc(MEMORY[0x277CBAF88]);
  name = [descriptorCopy name];
  v16 = [v14 initWithChannelUUID:dCopy name:name];

  imageFileURL = [descriptorCopy imageFileURL];
  [v16 setImageURL:imageFileURL];

  [v16 setOriginator:originator];
  objc_initWeak(&location, self);
  callController = self->_callController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__PTChannelManager__requestJoinChannelWithUUID_channelDescriptor_originator_completion___block_invoke;
  v20[3] = &unk_278B55740;
  objc_copyWeak(&v22, &location);
  v20[4] = self;
  v19 = completionCopy;
  v21 = v19;
  [(CXCallController *)callController requestTransactionWithAction:v16 completion:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __88__PTChannelManager__requestJoinChannelWithUUID_channelDescriptor_originator_completion___block_invoke(id *a1, void *a2)
{
  v3 = _pttAttemptTranslateErrorFromCXError(a2);
  if (v3)
  {
    v4 = PTDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__PTChannelManager__requestJoinChannelWithUUID_channelDescriptor_originator_completion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained setSuppressRejoinForRecentlyDisconnectedChannelUUID:0];

    v4 = PTDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23A70A000, v4, OS_LOG_TYPE_DEFAULT, "PTT join request completed successfully, should be fulfilled soon", buf, 2u);
    }
  }

  v12 = [a1[4] callbackQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__PTChannelManager__requestJoinChannelWithUUID_channelDescriptor_originator_completion___block_invoke_62;
  v15[3] = &unk_278B55718;
  v13 = a1[5];
  v16 = v3;
  v17 = v13;
  v14 = v3;
  dispatch_async(v12, v15);
}

- (void)leaveChannelWithUUID:(NSUUID *)channelUUID
{
  v4 = channelUUID;
  v5 = [objc_alloc(MEMORY[0x277CBAF90]) initWithChannelUUID:v4];
  [v5 setOriginator:2];
  callController = self->_callController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__PTChannelManager_leaveChannelWithUUID___block_invoke;
  v8[3] = &unk_278B556F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(CXCallController *)callController requestTransactionWithAction:v5 completion:v8];
}

void __41__PTChannelManager_leaveChannelWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = _pttAttemptTranslateErrorFromCXError(a2);
  v4 = PTDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__PTChannelManager_leaveChannelWithUUID___block_invoke_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PTChannelManager_leaveChannelWithUUID___block_invoke_64;
    block[3] = &unk_278B556C8;
    v13 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = v13;
    v16 = v3;
    dispatch_async(v12, block);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23A70A000, v5, OS_LOG_TYPE_DEFAULT, "PTT leave request completed successfully, should be fulfilled soon", buf, 2u);
    }
  }
}

void __41__PTChannelManager_leaveChannelWithUUID___block_invoke_64(uint64_t a1)
{
  v2 = [*(a1 + 32) channelEventDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) channelEventDelegate];
    [v4 channelManager:*(a1 + 32) failedToLeaveChannelWithUUID:*(a1 + 40) error:*(a1 + 48)];
  }
}

uint64_t __115__PTChannelManager__setActiveRemoteParticipant_forChannelUUID_shouldReplaceOutgoingTransmission_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  _pttAttemptTranslateErrorFromCXError(a2);
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setChannelDescriptor:(PTChannelDescriptor *)channelDescriptor forChannelUUID:(NSUUID *)channelUUID completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = MEMORY[0x277CBAFB8];
  v10 = channelUUID;
  v11 = channelDescriptor;
  v12 = objc_alloc_init(v9);
  name = [(PTChannelDescriptor *)v11 name];
  [v12 setName:name];

  imageFileURL = [(PTChannelDescriptor *)v11 imageFileURL];

  [v12 setImageURL:imageFileURL];
  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__PTChannelManager_setChannelDescriptor_forChannelUUID_completionHandler___block_invoke;
  v17[3] = &unk_278B55768;
  v18 = v8;
  v16 = v8;
  [underlyingProvider reportChannelWithUUID:v10 updated:v12 completionHandler:v17];
}

uint64_t __74__PTChannelManager_setChannelDescriptor_forChannelUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  _pttAttemptTranslateErrorFromCXError(a2);
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setServiceStatus:(PTServiceStatus)status forChannelUUID:(NSUUID *)channelUUID completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = MEMORY[0x277CBAFB8];
  v10 = channelUUID;
  v11 = objc_alloc_init(v9);
  [v11 setServiceStatus:status];
  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__PTChannelManager_setServiceStatus_forChannelUUID_completionHandler___block_invoke;
  v14[3] = &unk_278B55768;
  v15 = v8;
  v13 = v8;
  [underlyingProvider reportChannelWithUUID:v10 updated:v11 completionHandler:v14];
}

uint64_t __70__PTChannelManager_setServiceStatus_forChannelUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  _pttAttemptTranslateErrorFromCXError(a2);
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setTransmissionMode:(PTTransmissionMode)transmissionMode forChannelUUID:(NSUUID *)channelUUID completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = MEMORY[0x277CBAFB8];
  v10 = channelUUID;
  v11 = objc_alloc_init(v9);
  [v11 setTransmissionMode:transmissionMode];
  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__PTChannelManager_setTransmissionMode_forChannelUUID_completionHandler___block_invoke;
  v14[3] = &unk_278B55768;
  v15 = v8;
  v13 = v8;
  [underlyingProvider reportChannelWithUUID:v10 updated:v11 completionHandler:v14];
}

uint64_t __73__PTChannelManager_setTransmissionMode_forChannelUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  _pttAttemptTranslateErrorFromCXError(a2);
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __85__PTChannelManager_setAccessoryButtonEventsEnabled_forChannelUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  _pttAttemptTranslateErrorFromCXError(a2);
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)unregisterChannelPushToken
{
  v3 = PTDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(PTChannelManager *)v3 unregisterChannelPushToken];
  }

  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  [underlyingProvider unregisterChannelPushToken];
}

- (void)providerDidBegin:(id)begin
{
  v3 = PTDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A70A000, v3, OS_LOG_TYPE_DEFAULT, "PTT channel manager's provider did begin", v4, 2u);
  }
}

- (void)providerDidReset:(id)reset
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  [underlyingProvider setDelegate:0 queue:0];

  underlyingProvider2 = [(PTChannelManager *)self underlyingProvider];
  [underlyingProvider2 invalidate];

  v6 = PTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PTChannelManager providerDidReset:v6];
  }

  activeChannelUUID = self->_activeChannelUUID;
  self->_activeChannelUUID = 0;

  v8 = objc_alloc_init(MEMORY[0x277CBAFA0]);
  v9 = [objc_alloc(MEMORY[0x277CBAF98]) initWithConfiguration:v8];
  underlyingProvider = self->_underlyingProvider;
  self->_underlyingProvider = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBAF50]);
  callController = self->_callController;
  self->_callController = v11;

  [(CXChannelProvider *)self->_underlyingProvider setDelegate:self queue:self->_callbackQueue];
}

- (void)_performChannelRestorationAndUpdateChannelDescriptor:(id)descriptor pushPayload:(id)payload
{
  v18 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  payloadCopy = payload;
  dispatch_assert_queue_V2(self->_callbackQueue);
  if (!self->_attemptingChannelRestoration)
  {
    if ([(NSUUID *)self->_suppressRejoinForRecentlyDisconnectedChannelUUID isEqual:descriptorCopy])
    {
      v8 = PTDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = descriptorCopy;
        _os_log_impl(&dword_23A70A000, v8, OS_LOG_TYPE_DEFAULT, "PTChannelManager skipping channel restoration for channel that was just torn down %@", buf, 0xCu);
      }
    }

    else
    {
      self->_attemptingChannelRestoration = 1;
      underlyingProvider = [(PTChannelManager *)self underlyingProvider];
      [underlyingProvider requestChannelPushToken];

      v10 = PTDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = descriptorCopy;
        _os_log_impl(&dword_23A70A000, v10, OS_LOG_TYPE_DEFAULT, "PTChannelManager asking channel restoration delegate for descriptor for %{public}@", buf, 0xCu);
      }

      channelRestorationDelegate = [(PTChannelManager *)self channelRestorationDelegate];
      v8 = [channelRestorationDelegate channelDescriptorForRestoredChannelUUID:descriptorCopy];

      if (!v8)
      {
        [PTChannelManager _performChannelRestorationAndUpdateChannelDescriptor:pushPayload:];
      }

      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __85__PTChannelManager__performChannelRestorationAndUpdateChannelDescriptor_pushPayload___block_invoke;
      v13[3] = &unk_278B55790;
      objc_copyWeak(&v15, buf);
      v14 = descriptorCopy;
      [(PTChannelManager *)self setChannelDescriptor:v8 forChannelUUID:v14 completionHandler:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __85__PTChannelManager__performChannelRestorationAndUpdateChannelDescriptor_pushPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = PTDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __85__PTChannelManager__performChannelRestorationAndUpdateChannelDescriptor_pushPayload___block_invoke_cold_1(v3, v6, v7, v8, v9, v10, v11, v12);
    }

    [v5 _deliverChannelManagerInstanceToClientIfNeeded];
  }

  else
  {
    [WeakRetained _ensureDelegateIsReadyToReceiveActions:*(a1 + 32) joinReason:1];
    v13 = PTDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_23A70A000, v13, OS_LOG_TYPE_DEFAULT, "PTChannelManager rejoin channel descriptor flush succeeded", v14, 2u);
    }
  }

  [v5 setAttemptingChannelRestoration:0];
}

- (void)_handleLeaveCheckinResult:(id)result
{
  v24 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v5 = PTDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = resultCopy;
    _os_log_impl(&dword_23A70A000, v5, OS_LOG_TYPE_DEFAULT, "PTChannelManager leaving channel with UUID %{public}@", buf, 0xCu);
  }

  underlyingProvider = [(PTChannelManager *)self underlyingProvider];
  date = [MEMORY[0x277CBEAA8] date];
  [underlyingProvider reportChannelWithUUID:resultCopy disconnectedAtDate:date disconnectedReason:0];

  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  [channelEventDelegate channelManager:self didLeaveChannelWithUUID:resultCopy reason:1];

  [(PTChannelManager *)self _deliverChannelManagerInstanceToClientIfNeeded];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  pendingPushes = [(PTChannelManager *)self pendingPushes];
  v10 = [pendingPushes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(pendingPushes);
        }

        reply = [*(*(&v17 + 1) + 8 * v13) reply];
        reply[2](reply, 1, 0);

        ++v13;
      }

      while (v11 != v13);
      v11 = [pendingPushes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  pendingPushes2 = [(PTChannelManager *)self pendingPushes];
  [pendingPushes2 removeAllObjects];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider didReceiveCheckInResult:(int64_t)result channelUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v8 = PTDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    resultCopy = result;
    v12 = 2114;
    v13 = dCopy;
    _os_log_impl(&dword_23A70A000, v8, OS_LOG_TYPE_DEFAULT, "PTChannelManager checked in with result %ld uuid:%{public}@", &v10, 0x16u);
  }

  if (result <= 2)
  {
    if (result)
    {
      if (result == 2)
      {
        [(PTChannelManager *)self _handleLeaveCheckinResult:dCopy];
      }

      goto LABEL_11;
    }

LABEL_10:
    [(PTChannelManager *)self _deliverChannelManagerInstanceToClientIfNeeded];
    goto LABEL_11;
  }

  if (result == 4)
  {
    goto LABEL_10;
  }

  if (result == 3)
  {
    [(PTChannelManager *)self _performChannelRestorationAndUpdateChannelDescriptor:dCopy pushPayload:0];
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_deliverChannelManagerInstanceToClientIfNeeded
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  v3 = PTDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A70A000, v3, OS_LOG_TYPE_DEFAULT, "PTChannelManager instantiation completed", buf, 2u);
  }

  instantiationCompletionBlock = [(PTChannelManager *)self instantiationCompletionBlock];
  v5 = instantiationCompletionBlock;
  if (instantiationCompletionBlock)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__PTChannelManager__deliverChannelManagerInstanceToClientIfNeeded__block_invoke;
    v8[3] = &unk_278B55718;
    v8[4] = self;
    v9 = instantiationCompletionBlock;
    dispatch_async(callbackQueue, v8);
  }

  instantiationCompletionBlock = self->_instantiationCompletionBlock;
  self->_instantiationCompletionBlock = 0;
}

- (void)_deliverPendingPushes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PTChannelManager.m" lineNumber:501 description:@"You must return a valid object of type PTPushDecision"];
}

void __41__PTChannelManager__deliverPendingPushes__block_invoke(uint64_t a1)
{
  v2 = +[PTPushResult serviceUpdatePushResult];
  [*(a1 + 32) _handlePushResult:v2 pendingPush:*(a1 + 40)];
}

- (void)_handlePushResult:(id)result pendingPush:(id)push
{
  resultCopy = result;
  pushCopy = push;
  type = [resultCopy type];
  if (type <= 1)
  {
    if (type > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (type == 4 || type == 3)
  {
LABEL_7:
    reply = [pushCopy reply];
    reply[2]();

    goto LABEL_8;
  }

  if (type == 2)
  {
    participant = [resultCopy participant];
    uuid = [pushCopy uuid];
    [(PTChannelManager *)self _setActiveRemoteParticipant:participant forChannelUUID:uuid shouldReplaceOutgoingTransmission:self->_stopTransmitRequestedWhileWaitingForPushResult completionHandler:&__block_literal_global_0];

    reply2 = [pushCopy reply];
    participant2 = [resultCopy participant];
    underlyingParticipant = [participant2 underlyingParticipant];
    (reply2)[2](reply2, 2, underlyingParticipant);

    self->_stopTransmitRequestedWhileWaitingForPushResult = 0;
  }

LABEL_8:
  if (self->_stopTransmitRequestedWhileWaitingForPushResult)
  {
    uuid2 = [pushCopy uuid];
    [(PTChannelManager *)self stopTransmittingWithChannelUUID:uuid2];

    self->_stopTransmitRequestedWhileWaitingForPushResult = 0;
  }
}

void __50__PTChannelManager__handlePushResult_pendingPush___block_invoke()
{
  v0 = PTDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23A70A000, v0, OS_LOG_TYPE_DEFAULT, "PTChannelManager setting a remote participant in response to a push ", v1, 2u);
  }
}

- (void)provider:(id)provider didReceiveChannelPushToken:(id)token
{
  callbackQueue = self->_callbackQueue;
  tokenCopy = token;
  dispatch_assert_queue_V2(callbackQueue);
  v7 = PTDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23A70A000, v7, OS_LOG_TYPE_DEFAULT, "PTChannelManager did receive channel push token", v9, 2u);
  }

  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  [channelEventDelegate channelManager:self receivedEphemeralPushToken:tokenCopy];
}

- (void)provider:(id)provider performChannelJoinAction:(id)action
{
  callbackQueue = self->_callbackQueue;
  actionCopy = action;
  dispatch_assert_queue_V2(callbackQueue);
  v7 = PTDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23A70A000, v7, OS_LOG_TYPE_DEFAULT, "PTChannelManager did join", v10, 2u);
  }

  [actionCopy fulfill];
  v8 = PTChannelJoinReasonForCXActionOriginator([actionCopy originator]);
  channelUUID = [actionCopy channelUUID];

  [(PTChannelManager *)self _ensureDelegateIsReadyToReceiveActions:channelUUID joinReason:v8];
}

- (void)provider:(id)provider performChannelLeaveAction:(id)action
{
  actionCopy = action;
  dispatch_assert_queue_V2(self->_callbackQueue);
  [actionCopy fulfill];
  channelUUID = [actionCopy channelUUID];
  suppressRejoinForRecentlyDisconnectedChannelUUID = self->_suppressRejoinForRecentlyDisconnectedChannelUUID;
  self->_suppressRejoinForRecentlyDisconnectedChannelUUID = channelUUID;

  activeChannelUUID = self->_activeChannelUUID;
  self->_activeChannelUUID = 0;

  v9 = PTDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_23A70A000, v9, OS_LOG_TYPE_DEFAULT, "PTChannelManager did leave", v13, 2u);
  }

  v10 = PTChannelLeaveReasonForCXActionOriginator([actionCopy originator]);
  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  channelUUID2 = [actionCopy channelUUID];
  [channelEventDelegate channelManager:self didLeaveChannelWithUUID:channelUUID2 reason:v10];

  [(PTChannelManager *)self _deliverChannelManagerInstanceToClientIfNeeded];
  [(NSMutableArray *)self->_pendingPushes removeAllObjects];
}

- (void)provider:(id)provider performChannelTransmitStartAction:(id)action
{
  actionCopy = action;
  dispatch_assert_queue_V2(self->_callbackQueue);
  channelUUID = [actionCopy channelUUID];
  [(PTChannelManager *)self _ensureDelegateIsReadyToReceiveActions:channelUUID joinReason:1];

  [actionCopy fulfill];
  v7 = PTDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23A70A000, v7, OS_LOG_TYPE_DEFAULT, "PTChannelManager did start transmitting", v11, 2u);
  }

  v8 = PTChannelTransmitRequestSourceForCXActionOriginator([actionCopy originator]);
  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  channelUUID2 = [actionCopy channelUUID];
  [channelEventDelegate channelManager:self channelUUID:channelUUID2 didBeginTransmittingFromSource:v8];
}

- (void)provider:(id)provider performChannelTransmitStopAction:(id)action
{
  actionCopy = action;
  dispatch_assert_queue_V2(self->_callbackQueue);
  channelUUID = [actionCopy channelUUID];
  [(PTChannelManager *)self _ensureDelegateIsReadyToReceiveActions:channelUUID joinReason:1];

  [actionCopy fulfill];
  v7 = PTDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23A70A000, v7, OS_LOG_TYPE_DEFAULT, "PTChannelManager did stop transmitting", v11, 2u);
  }

  v8 = PTChannelTransmitRequestSourceForCXActionOriginator([actionCopy originator]);
  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  channelUUID2 = [actionCopy channelUUID];
  [channelEventDelegate channelManager:self channelUUID:channelUUID2 didEndTransmittingFromSource:v8];
}

- (void)_ensureDelegateIsReadyToReceiveActions:(id)actions joinReason:(int64_t)reason
{
  v14 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  if ([(NSUUID *)self->_suppressRejoinForRecentlyDisconnectedChannelUUID isEqual:actionsCopy])
  {
    v8 = PTDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = actionsCopy;
      _os_log_impl(&dword_23A70A000, v8, OS_LOG_TYPE_DEFAULT, "Not delivering the didJoin event because this channel recently saw a leave action %@", &v12, 0xCu);
    }
  }

  else if (!self->_activeChannelUUID)
  {
    objc_storeStrong(&self->_activeChannelUUID, actions);
    channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
    activeChannelUUID = [(PTChannelManager *)self activeChannelUUID];
    [channelEventDelegate channelManager:self didJoinChannelWithUUID:activeChannelUUID reason:reason];

    [(PTChannelManager *)self _deliverChannelManagerInstanceToClientIfNeeded];
    [(PTChannelManager *)self _deliverPendingPushes];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider didActivateAudioSession:(id)session
{
  v11 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v6 = PTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = sessionCopy;
    _os_log_impl(&dword_23A70A000, v6, OS_LOG_TYPE_DEFAULT, "PTChannelManager did activate audio session %p", &v9, 0xCu);
  }

  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  [channelEventDelegate channelManager:self didActivateAudioSession:sessionCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider didDeactivateAudioSession:(id)session
{
  v11 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v6 = PTDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = sessionCopy;
    _os_log_impl(&dword_23A70A000, v6, OS_LOG_TYPE_DEFAULT, "PTChannelManager did deactivate audio session %p", &v9, 0xCu);
  }

  channelEventDelegate = [(PTChannelManager *)self channelEventDelegate];
  [channelEventDelegate channelManager:self didDeactivateAudioSession:sessionCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (PTChannelRestorationDelegate)channelRestorationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_channelRestorationDelegate);

  return WeakRetained;
}

- (PTChannelManagerDelegate)channelEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_channelEventDelegate);

  return WeakRetained;
}

void __60__PTChannelManager_requestBeginTransmittingWithChannelUUID___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_23A70A000, a2, a3, "PTT transmission start request failed with error %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__PTChannelManager_stopTransmittingWithChannelUUID___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_23A70A000, a2, a3, "PTT transmission stop request failed with error %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __88__PTChannelManager__requestJoinChannelWithUUID_channelDescriptor_originator_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23A70A000, a2, a3, "PTT join request failed because %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __41__PTChannelManager_leaveChannelWithUUID___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23A70A000, a2, a3, "PTT leave request failed because %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__PTChannelManager__performChannelRestorationAndUpdateChannelDescriptor_pushPayload___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23A70A000, a2, a3, "PTChannelManager rejoin channel descriptor flush failed with error %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end