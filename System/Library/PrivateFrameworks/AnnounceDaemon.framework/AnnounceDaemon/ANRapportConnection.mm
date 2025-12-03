@interface ANRapportConnection
+ (id)sharedConnection;
- (ANRapportConnection)init;
- (ANRapportConnectionDelegate)delegate;
- (BOOL)_needsScan;
- (NSArray)devices;
- (RPCompanionLinkDevice)localDevice;
- (double)_remainingScanTimeInterval;
- (id)activateLinkWithOptions:(unint64_t)options;
- (id)sendMessage:(id)message device:(id)device responseHandler:(id)handler;
- (void)_cancelTimer;
- (void)_decrementMessageCountForCompanionLinkClient:(id)client;
- (void)_executeBlockForDelegates:(id)delegates;
- (void)_handleLinkInvalidation;
- (void)_handleTimerExpired;
- (void)_incrementMessageCountForCompanionLinkClient:(id)client;
- (void)_linkForDevice:(id)device handler:(id)handler;
- (void)_notifyDeviceDelegatesConnectionDidFindDevice:(id)device;
- (void)_notifyDeviceDelegatesConnectionDidLoseDevice:(id)device;
- (void)_registerHandlers;
- (void)_registerHomeLocationStatusRequestHandler;
- (void)_registerMessageRequestHandler;
- (void)_sendDailyRequest:(id)request handler:(id)handler;
- (void)_sendHomeLocationStatusRequestToDevice:(id)device handler:(id)handler;
- (void)_sendMessage:(id)message linkClient:(id)client handler:(id)handler;
- (void)_setupLink:(id)link;
- (void)_simulateDeliveryFailureForMessage:(id)message;
- (void)_startTimer;
- (void)_tearDownLink;
- (void)_updateDevices;
- (void)activateLinkWithOptions:(unint64_t)options completion:(id)completion;
- (void)addDeviceDelegate:(id)delegate queue:(id)queue;
- (void)deactivateLinkWithOptions:(unint64_t)options;
- (void)registerDailyRequest:(id)request;
- (void)sendDailyRequest:(id)request handler:(id)handler;
- (void)sendHomeLocationStatusRequestToDevice:(id)device handler:(id)handler;
@end

@implementation ANRapportConnection

- (ANRapportConnection)init
{
  v21.receiver = self;
  v21.super_class = ANRapportConnection;
  v2 = [(ANRapportConnection *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.announce.RapportMessageQueue", v3);
    rapportQueue = v2->_rapportQueue;
    v2->_rapportQueue = v4;

    v6 = dispatch_queue_create("com.apple.announce.RapportClientQueue", v3);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    v8 = objc_opt_new();
    clients = v2->_clients;
    v2->_clients = v8;

    activeDevices = v2->_activeDevices;
    v2->_activeDevices = MEMORY[0x277CBEBF8];

    v11 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
    deviceDelegatesToQueues = v2->_deviceDelegatesToQueues;
    v2->_deviceDelegatesToQueues = v11;

    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v14 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA920]];
    [v14 doubleValue];
    v16 = v15;

    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v16];
    lastScanStartTimestamp = v2->_lastScanStartTimestamp;
    v2->_lastScanStartTimestamp = v17;

    timer = v2->_timer;
    v2->_timer = 0;

    v2->_isTimerSuspended = 0;
  }

  return v2;
}

+ (id)sharedConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ANRapportConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, block);
  }

  v2 = sharedConnection_shared;

  return v2;
}

uint64_t __39__ANRapportConnection_sharedConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedConnection_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RPCompanionLinkDevice)localDevice
{
  companionLinkClient = [(ANRapportConnection *)self companionLinkClient];
  localDevice = [companionLinkClient localDevice];

  return localDevice;
}

- (NSArray)devices
{
  activeDevices = [(ANRapportConnection *)self activeDevices];
  v3 = [activeDevices copy];

  return v3;
}

- (id)activateLinkWithOptions:(unint64_t)options
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Activate Rapport link started.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__ANRapportConnection_activateLinkWithOptions___block_invoke;
  v12[3] = &unk_278C86AF8;
  p_buf = &buf;
  v7 = v6;
  v13 = v7;
  [(ANRapportConnection *)self activateLinkWithOptions:options completion:v12];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 138412290;
    v16 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Activate Rapport link finished.", v15, 0xCu);
  }

  v9 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __47__ANRapportConnection_activateLinkWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = &stru_2851BDB18;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_ERROR, "%@Activate Rapport link failed with error: %@.", &v9, 0x16u);
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)activateLinkWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  clientQueue = [(ANRapportConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke;
  block[3] = &unk_278C872D0;
  v10 = completionCopy;
  optionsCopy = options;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(clientQueue, block);
}

void __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 4) != 0)
  {
    [*(a1 + 32) setIsTimerSuspended:1];
    [*(a1 + 32) _cancelTimer];
  }

  v2 = [*(a1 + 32) companionLinkClient];

  if (!v2)
  {
    if (*(a1 + 48))
    {
      v12 = ANLogHandleRapportConnection();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@### Forcing Link Active", buf, 0xCu);
      }
    }

    else if (([*(a1 + 32) _needsScan] & 1) == 0)
    {
      v11 = ANLogHandleRapportConnection();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@### No scan needed.", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v13 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@### Will activate link", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setLastScanStartTimestamp:v14];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke_23;
    v27[3] = &unk_278C86898;
    v28 = *(a1 + 40);
    v15 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v27);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke_24;
    v23[3] = &unk_278C872A8;
    v24 = v15;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v25 = v17;
    v26 = v18;
    v19 = v15;
    [v16 _setupLink:v23];

    v10 = v28;
    goto LABEL_23;
  }

  v3 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@### Rapport Link Already Active", buf, 0xCu);
  }

  [*(a1 + 32) _startTimer];
  [*(a1 + 32) _remainingScanTimeInterval];
  if (v4 > 0.0 && (*(a1 + 48) & 2) != 0)
  {
    v5 = v4;
    v6 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = &stru_2851BDB18;
      v31 = 2048;
      v32 = v5;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@### Waiting %fl seconds for scan to complete", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke_25;
    block[3] = &unk_278C86898;
    v22 = *(a1 + 40);
    v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v8 = dispatch_time(0, (v5 * 1000000000.0));
    v9 = dispatch_get_global_queue(2, 0);
    dispatch_after(v8, v9, v7);

    v10 = v22;
LABEL_23:

    goto LABEL_24;
  }

LABEL_16:
  (*(*(a1 + 40) + 16))();
LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke_23(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@### Calling activation handler post-scan", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRapportConnection();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = &stru_2851BDB18;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@Activate Rapport link failed with error: %@.", &v17, 0x16u);
    }

    v6 = *(a1 + 32);
    if (dispatch_block_testcancel(v6))
    {
      v7 = ANLogHandleRapportConnection();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@### Activation handler already called. Skipping.", &v17, 0xCu);
      }

      goto LABEL_18;
    }

    dispatch_block_cancel(v6);
    v9 = *(*(a1 + 40) + 16);
LABEL_16:
    v9();
    goto LABEL_18;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Rapport Link Activated", &v17, 0xCu);
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    v10 = [MEMORY[0x277CEAB80] sharedInstance];
    v11 = [v10 numberForDefault:*MEMORY[0x277CEA928]];
    [v11 doubleValue];
    v13 = v12;

    v14 = dispatch_time(0, (v13 * 1000000000.0));
    v15 = dispatch_get_global_queue(2, 0);
    dispatch_after(v14, v15, *(a1 + 32));

    goto LABEL_18;
  }

  if (!dispatch_block_testcancel(*(a1 + 32)))
  {
    v8 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@### Calling activation handler immediately", &v17, 0xCu);
    }

    dispatch_block_cancel(*(a1 + 32));
    v9 = *(*(a1 + 40) + 16);
    goto LABEL_16;
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __58__ANRapportConnection_activateLinkWithOptions_completion___block_invoke_25(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@### Calling activation handler post-scan", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deactivateLinkWithOptions:(unint64_t)options
{
  clientQueue = [(ANRapportConnection *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ANRapportConnection_deactivateLinkWithOptions___block_invoke;
  v6[3] = &unk_278C872F8;
  v6[4] = self;
  v6[5] = options;
  dispatch_async(clientQueue, v6);
}

uint64_t __49__ANRapportConnection_deactivateLinkWithOptions___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if ((v2 & 2) != 0)
  {
    [*(result + 32) setIsTimerSuspended:0];
    result = [*(v1 + 32) _startTimer];
    v2 = *(v1 + 40);
  }

  if (v2)
  {
    v3 = *(v1 + 32);

    return [v3 _tearDownLink];
  }

  return result;
}

- (void)addDeviceDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  objc_initWeak(&location, self);
  clientQueue = [(ANRapportConnection *)self clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__ANRapportConnection_addDeviceDelegate_queue___block_invoke;
  v11[3] = &unk_278C86B70;
  objc_copyWeak(&v14, &location);
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(clientQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __47__ANRapportConnection_addDeviceDelegate_queue___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = dispatch_get_global_queue(21, 0);
  }

  v5 = v4;
  v6 = [WeakRetained deviceDelegatesToQueues];
  [v6 setObject:v5 forKey:*(a1 + 40)];

  v7 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [WeakRetained devices];
    v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __47__ANRapportConnection_addDeviceDelegate_queue___block_invoke_2;
          block[3] = &unk_278C86668;
          v16 = *(a1 + 40);
          v17 = WeakRetained;
          v18 = v12;
          dispatch_async(v5, block);

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)sendMessage:(id)message device:(id)device responseHandler:(id)handler
{
  messageCopy = message;
  deviceCopy = device;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke;
  v14[3] = &unk_278C87370;
  objc_copyWeak(&v18, &location);
  v11 = messageCopy;
  v15 = v11;
  selfCopy = self;
  v12 = handlerCopy;
  v17 = v12;
  [(ANRapportConnection *)self _linkForDevice:deviceCopy handler:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return 0;
}

void __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [v7 BOOLForDefault:*MEMORY[0x277CEA8D8]];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _simulateDeliveryFailureForMessage:*(a1 + 32)];
  }

  else if (v5)
  {
    v10 = objc_loadWeakRetained((a1 + 56));
    v11 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke_3;
    v17[3] = &unk_278C87348;
    v19 = *(a1 + 48);
    objc_copyWeak(&v20, (a1 + 56));
    v15 = *(a1 + 32);
    v12 = v15.i64[0];
    v18 = vextq_s8(v15, v15, 8uLL);
    [v10 _sendMessage:v11 linkClient:v5 handler:v17];

    objc_destroyWeak(&v20);
  }

  else
  {
    v13 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke_2;
    block[3] = &unk_278C87320;
    objc_copyWeak(&v24, (a1 + 56));
    v16 = *(a1 + 32);
    v14 = v16.i64[0];
    v22 = vextq_s8(v16, v16, 8uLL);
    v23 = v6;
    dispatch_async(v13, block);

    objc_destroyWeak(&v24);
  }
}

void __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  [v2 connection:*(a1 + 32) failedDeliveryForMessage:*(a1 + 40) withError:*(a1 + 48)];
}

void __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  if (v6)
  {
    v8 = dispatch_get_global_queue(25, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke_4;
    v10[3] = &unk_278C87320;
    objc_copyWeak(&v13, (a1 + 56));
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    v12 = v6;
    dispatch_async(v8, v10);

    objc_destroyWeak(&v13);
  }
}

void __58__ANRapportConnection_sendMessage_device_responseHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  [v2 connection:*(a1 + 32) failedDeliveryForMessage:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)sendDailyRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ANRapportConnection_sendDailyRequest_handler___block_invoke;
  v9[3] = &unk_278C87398;
  v8 = handlerCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(ANRapportConnection *)self _linkForDevice:requestCopy handler:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __48__ANRapportConnection_sendDailyRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _sendDailyRequest:v3 handler:*(a1 + 32)];
  }

  else
  {
    v5 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily failed to get link client to send daily request.", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerDailyRequest:(id)request
{
  requestCopy = request;
  companionLinkClient = self->_companionLinkClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ANRapportConnection_registerDailyRequest___block_invoke;
  v7[3] = &unk_278C873C0;
  v8 = requestCopy;
  v6 = requestCopy;
  [(RPCompanionLinkClient *)companionLinkClient registerRequestID:@"com.apple.announce.dailyanalytics" options:0 handler:v7];
}

void __44__ANRapportConnection_registerDailyRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D442D0];
  v7 = a4;
  v8 = [a3 objectForKey:v6];
  v9 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = &stru_2851BDB18;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Received Daily Request from %@", &v12, 0x16u);
  }

  v10 = (*(*(a1 + 32) + 16))();
  (*(v7 + 2))(v7, v10, 0, 0);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendHomeLocationStatusRequestToDevice:(id)device handler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ANRapportConnection_sendHomeLocationStatusRequestToDevice_handler___block_invoke;
  v9[3] = &unk_278C87398;
  v8 = handlerCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(ANRapportConnection *)self _linkForDevice:deviceCopy handler:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __69__ANRapportConnection_sendHomeLocationStatusRequestToDevice_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _sendHomeLocationStatusRequestToDevice:v3 handler:*(a1 + 32)];
  }

  else
  {
    v5 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@### Home Location Status Request failed to get link client", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_simulateDeliveryFailureForMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@Forcing Rapport Delivery Failure", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCA9B8] an_errorWithCode:1036 component:*MEMORY[0x277CEA9C8] description:@"Force Delivery Failure Enabled in User Defaults"];
  delegate = [(ANRapportConnection *)self delegate];
  [delegate connection:self failedDeliveryForMessage:messageCopy withError:v6];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupLink:(id)link
{
  linkCopy = link;
  [(ANRapportConnection *)self setActiveDevices:MEMORY[0x277CBEBF8]];
  [(ANRapportConnection *)self _tearDownLink];
  v5 = objc_opt_new();
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = v5;

  [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:self->_rapportQueue];
  [(RPCompanionLinkClient *)self->_companionLinkClient setControlFlags:2084];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__ANRapportConnection__setupLink___block_invoke;
  v18[3] = &unk_278C86580;
  objc_copyWeak(&v19, &location);
  [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:v18];
  [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:&__block_literal_global_24];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__ANRapportConnection__setupLink___block_invoke_36;
  v16[3] = &unk_278C873E8;
  objc_copyWeak(&v17, &location);
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceFoundHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__ANRapportConnection__setupLink___block_invoke_38;
  v14[3] = &unk_278C873E8;
  objc_copyWeak(&v15, &location);
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceLostHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__ANRapportConnection__setupLink___block_invoke_39;
  v12[3] = &unk_278C87410;
  objc_copyWeak(&v13, &location);
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceChangedHandler:v12];
  [(ANRapportConnection *)self _registerHandlers];
  v7 = self->_companionLinkClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__ANRapportConnection__setupLink___block_invoke_41;
  v9[3] = &unk_278C87078;
  objc_copyWeak(&v11, &location);
  v8 = linkCopy;
  v10 = v8;
  [(RPCompanionLinkClient *)v7 activateWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __34__ANRapportConnection__setupLink___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@### Rapport Connection Invalidated", &v4, 0xCu);
  }

  [WeakRetained _handleLinkInvalidation];
  v3 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__setupLink___block_invoke_35()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v0, OS_LOG_TYPE_DEFAULT, "%@### Rapport Connection Interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__setupLink___block_invoke_36(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 customDescription];
    v8 = 138412546;
    v9 = &stru_2851BDB18;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@### Device Found: %@", &v8, 0x16u);
  }

  [WeakRetained _updateDevices];
  [WeakRetained _notifyDeviceDelegatesConnectionDidFindDevice:v3];

  v7 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__setupLink___block_invoke_38(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 customDescription];
    v8 = 138412546;
    v9 = &stru_2851BDB18;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@### Device Lost: %@", &v8, 0x16u);
  }

  [WeakRetained _updateDevices];
  [WeakRetained _notifyDeviceDelegatesConnectionDidLoseDevice:v3];

  v7 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__setupLink___block_invoke_39(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 customDescription];
    v10 = 138412802;
    v11 = &stru_2851BDB18;
    v12 = 1024;
    v13 = a3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@### Device Changed (flags = %d): %@", &v10, 0x1Cu);
  }

  [WeakRetained _updateDevices];
  [WeakRetained _notifyDeviceDelegatesConnectionDidFindDevice:v5];

  v9 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__setupLink___block_invoke_41(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = ANLogHandleRapportConnection();
  v6 = v5;
  if (v3)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v20 = &stru_2851BDB18;
    v21 = 2112;
    v22 = v3;
    v7 = "%@### Error activating link '%@'";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v20 = &stru_2851BDB18;
    v7 = "%@### Link activated succcessfully";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
  }

  _os_log_impl(&dword_23F525000, v8, v9, v7, buf, v10);
LABEL_7:

  objc_initWeak(buf, WeakRetained);
  v11 = [WeakRetained clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ANRapportConnection__setupLink___block_invoke_42;
  block[3] = &unk_278C86580;
  objc_copyWeak(&v18, buf);
  dispatch_async(v11, block);

  if (*(a1 + 32))
  {
    v12 = [WeakRetained clientQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__ANRapportConnection__setupLink___block_invoke_2;
    v14[3] = &unk_278C86C60;
    v16 = *(a1 + 32);
    v15 = v3;
    dispatch_async(v12, v14);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__setupLink___block_invoke_42(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startTimer];
}

- (void)_linkForDevice:(id)device handler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  clientQueue = [(ANRapportConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ANRapportConnection__linkForDevice_handler___block_invoke;
  block[3] = &unk_278C87460;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v14 = handlerCopy;
  v12 = deviceCopy;
  v9 = handlerCopy;
  v10 = deviceCopy;
  dispatch_async(clientQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __46__ANRapportConnection__linkForDevice_handler___block_invoke(id *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained clients];
  v4 = [a1[4] identifier];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 objectForKey:@"Client"];
    v7 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = &stru_2851BDB18;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@### Found existing link! %@", buf, 0x16u);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__6;
    v34 = __Block_byref_object_dispose__6;
    v35 = objc_opt_new();
    [*(*&buf[8] + 40) setDestinationDevice:a1[4]];
    [*(*&buf[8] + 40) setDispatchQueue:WeakRetained[4]];
    [*(*&buf[8] + 40) setServiceType:*MEMORY[0x277CEA758]];
    v8 = MEMORY[0x277CBEB38];
    v9 = *(*&buf[8] + 40);
    v30[0] = @"Client";
    v30[1] = @"Count";
    v31[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v31[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v5 = [v8 dictionaryWithDictionary:v11];

    v12 = [a1[5] clients];
    v13 = [a1[4] identifier];
    [v12 setObject:v5 forKey:v13];

    v14 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v26 = 138412546;
      v27 = &stru_2851BDB18;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@### Creating new link %@", v26, 0x16u);
    }

    v16 = *(*&buf[8] + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__ANRapportConnection__linkForDevice_handler___block_invoke_45;
    v20[3] = &unk_278C87438;
    v17 = a1[4];
    v18 = a1[5];
    v21 = v17;
    v22 = v18;
    objc_copyWeak(&v25, a1 + 7);
    v23 = a1[6];
    v24 = buf;
    [v16 activateWithCompletion:v20];

    objc_destroyWeak(&v25);
    _Block_object_dispose(buf, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __46__ANRapportConnection__linkForDevice_handler___block_invoke_45(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRapportConnection();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      *buf = 138412802;
      v16 = &stru_2851BDB18;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@### Failed to activate device: %@ with error %@", buf, 0x20u);
    }

    v7 = [*(a1 + 40) clientQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__ANRapportConnection__linkForDevice_handler___block_invoke_46;
    v12[3] = &unk_278C868C0;
    objc_copyWeak(&v14, (a1 + 64));
    v13 = *(a1 + 32);
    dispatch_async(v7, v12);

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v3, v8);
    objc_destroyWeak(&v14);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) name];
      *buf = 138412546;
      v16 = &stru_2851BDB18;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@### Successfully activated device: %@", buf, 0x16u);
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__ANRapportConnection__linkForDevice_handler___block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained clients];
  v3 = [*(a1 + 32) identifier];
  [v2 removeObjectForKey:v3];
}

- (void)_handleLinkInvalidation
{
  [(ANRapportConnection *)self _cancelTimer];
  [(ANRapportConnection *)self _tearDownLink];
  v3 = MEMORY[0x277CBEBF8];

  [(ANRapportConnection *)self setActiveDevices:v3];
}

- (void)_tearDownLink
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    companionLinkClient = [(ANRapportConnection *)self companionLinkClient];
    v7 = 138412546;
    v8 = &stru_2851BDB18;
    v9 = 2112;
    v10 = companionLinkClient;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@Tearing Down Companion Link: %@", &v7, 0x16u);
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:0];
  [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:0];
  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerHandlers
{
  [(ANRapportConnection *)self _registerMessageRequestHandler];

  [(ANRapportConnection *)self _registerHomeLocationStatusRequestHandler];
}

- (void)_registerMessageRequestHandler
{
  objc_initWeak(&location, self);
  companionLinkClient = self->_companionLinkClient;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ANRapportConnection__registerMessageRequestHandler__block_invoke;
  v4[3] = &unk_278C874D8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [(RPCompanionLinkClient *)companionLinkClient registerRequestID:@"com.apple.announce.announcement.message" options:0 handler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__ANRapportConnection__registerMessageRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [a3 objectForKey:*MEMORY[0x277D442D0]];
  v10 = [MEMORY[0x277CEABD0] senderWithID:v9 type:2];
  v11 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = &stru_2851BDB18;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@### Rapport Received Message from %@", buf, 0x16u);
  }

  v12 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ANRapportConnection__registerMessageRequestHandler__block_invoke_48;
  block[3] = &unk_278C874B0;
  objc_copyWeak(&v21, (a1 + 40));
  block[4] = *(a1 + 32);
  v18 = v7;
  v19 = v10;
  v20 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v7;
  dispatch_async(v12, block);

  objc_destroyWeak(&v21);
  v16 = *MEMORY[0x277D85DE8];
}

void __53__ANRapportConnection__registerMessageRequestHandler__block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained delegate];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ANRapportConnection__registerMessageRequestHandler__block_invoke_2;
  v8[3] = &unk_278C87488;
  v9 = *(a1 + 56);
  [v3 connection:v4 didReceiveMessage:v5 fromSender:v6 senderContext:v7 handler:v8];
}

- (void)_registerHomeLocationStatusRequestHandler
{
  objc_initWeak(&location, self);
  companionLinkClient = self->_companionLinkClient;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__ANRapportConnection__registerHomeLocationStatusRequestHandler__block_invoke;
  v4[3] = &unk_278C874D8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [(RPCompanionLinkClient *)companionLinkClient registerRequestID:@"com.apple.announce.home-location-status-request" options:0 handler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__ANRapportConnection__registerHomeLocationStatusRequestHandler__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    *buf = 138412546;
    v19 = &stru_2851BDB18;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@### Rapport Received Home Location Status Request from %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__ANRapportConnection__registerHomeLocationStatusRequestHandler__block_invoke_52;
    block[3] = &unk_278C86A80;
    objc_copyWeak(&v17, (a1 + 40));
    block[4] = *(a1 + 32);
    v16 = v7;
    dispatch_async(v13, block);

    objc_destroyWeak(&v17);
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x277CBEC10], 0, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__ANRapportConnection__registerHomeLocationStatusRequestHandler__block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained delegate];
  v4 = [v3 connectionDidReceiveRequestForHomeLocationStatus:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)_updateDevices
{
  v13 = *MEMORY[0x277D85DE8];
  companionLinkClient = [(ANRapportConnection *)self companionLinkClient];
  activeDevices = [companionLinkClient activeDevices];
  v5 = [activeDevices copy];
  [(ANRapportConnection *)self setActiveDevices:v5];

  v6 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activeDevices2 = [(ANRapportConnection *)self activeDevices];
    v9 = 138412546;
    v10 = &stru_2851BDB18;
    v11 = 2048;
    v12 = [activeDevices2 count];
    _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@### Updated Devices (%lu)", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_incrementMessageCountForCompanionLinkClient:(id)client
{
  clientCopy = client;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ANRapportConnection__incrementMessageCountForCompanionLinkClient___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(clientQueue, v7);
}

void __68__ANRapportConnection__incrementMessageCountForCompanionLinkClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [*(a1 + 40) destinationDevice];
  v4 = [v3 identifier];
  v7 = [v2 objectForKey:v4];

  if (v7)
  {
    v5 = [v7 objectForKey:@"Count"];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
    [v7 setObject:v6 forKey:@"Count"];
  }
}

- (void)_decrementMessageCountForCompanionLinkClient:(id)client
{
  clientCopy = client;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ANRapportConnection__decrementMessageCountForCompanionLinkClient___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(clientQueue, v7);
}

void __68__ANRapportConnection__decrementMessageCountForCompanionLinkClient___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v3 = [*(a1 + 40) destinationDevice];
  v4 = [v3 identifier];
  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 objectForKey:@"Count"];
    v7 = [v6 intValue];
    if (v7 > 1)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:(v7 - 1)];
      [v5 setObject:v14 forKey:@"Count"];
    }

    else
    {
      v8 = ANLogHandleRapportConnection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) destinationDevice];
        v10 = [v9 name];
        v16 = 138412546;
        v17 = &stru_2851BDB18;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@### Invalidating and Removing Link For: %@", &v16, 0x16u);
      }

      v11 = [*(a1 + 32) clients];
      v12 = [*(a1 + 40) destinationDevice];
      v13 = [v12 identifier];
      [v11 removeObjectForKey:v13];

      [*(a1 + 40) invalidate];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)message linkClient:(id)client handler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  clientCopy = client;
  handlerCopy = handler;
  [(ANRapportConnection *)self _incrementMessageCountForCompanionLinkClient:clientCopy];
  objc_initWeak(&location, self);
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v12 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA938]];

  v22 = *MEMORY[0x277D442F0];
  v23[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__ANRapportConnection__sendMessage_linkClient_handler___block_invoke;
  v17[3] = &unk_278C87500;
  v14 = clientCopy;
  v18 = v14;
  objc_copyWeak(&v20, &location);
  v15 = handlerCopy;
  v19 = v15;
  [v14 sendRequestID:@"com.apple.announce.announcement.message" request:messageCopy options:v13 responseHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

void __55__ANRapportConnection__sendMessage_linkClient_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = ANLogHandleRapportConnection();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) destinationDevice];
      v11 = [v10 name];
      v17 = 138412802;
      v18 = &stru_2851BDB18;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_ERROR, "%@### Rapport Send Failed to: %@, Error: %@", &v17, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) destinationDevice];
      v13 = [v12 name];
      v17 = 138412546;
      v18 = &stru_2851BDB18;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Send Successful to: %@", &v17, 0x16u);
    }

    v9 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = &stru_2851BDB18;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Response from device: %@", &v17, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _decrementMessageCountForCompanionLinkClient:*(a1 + 32)];

  v15 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_sendDailyRequest:(id)request handler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  [(ANRapportConnection *)self _incrementMessageCountForCompanionLinkClient:requestCopy];
  objc_initWeak(&location, self);
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v9 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA938]];

  v19 = *MEMORY[0x277D442F0];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__ANRapportConnection__sendDailyRequest_handler___block_invoke;
  v14[3] = &unk_278C87500;
  v11 = requestCopy;
  v15 = v11;
  objc_copyWeak(&v17, &location);
  v12 = handlerCopy;
  v16 = v12;
  [v11 sendRequestID:@"com.apple.announce.dailyanalytics" request:MEMORY[0x277CBEC10] options:v10 responseHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __49__ANRapportConnection__sendDailyRequest_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = ANLogHandleRapportConnection();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) destinationDevice];
      v11 = [v10 name];
      v16 = 138412802;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_ERROR, "%@### Rapport Send Daily Request Failed to: %@, Error: %@", &v16, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) destinationDevice];
      v13 = [v12 name];
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Send Daily Request Successful to: %@", &v16, 0x16u);
    }

    v9 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Daily Request Response from device: %@", &v16, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _decrementMessageCountForCompanionLinkClient:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendHomeLocationStatusRequestToDevice:(id)device handler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  [(ANRapportConnection *)self _incrementMessageCountForCompanionLinkClient:deviceCopy];
  objc_initWeak(&location, self);
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v9 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA930]];

  v19 = *MEMORY[0x277D442F0];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__ANRapportConnection__sendHomeLocationStatusRequestToDevice_handler___block_invoke;
  v14[3] = &unk_278C87500;
  v11 = deviceCopy;
  v15 = v11;
  objc_copyWeak(&v17, &location);
  v12 = handlerCopy;
  v16 = v12;
  [v11 sendRequestID:@"com.apple.announce.home-location-status-request" request:MEMORY[0x277CBEC10] options:v10 responseHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __70__ANRapportConnection__sendHomeLocationStatusRequestToDevice_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = ANLogHandleRapportConnection();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) destinationDevice];
      v11 = [v10 name];
      v16 = 138412802;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_ERROR, "%@### Rapport Home Location Status Request Failed to: %@, Error: %@", &v16, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) destinationDevice];
      v13 = [v12 name];
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Home Location Status Request Successful to: %@", &v16, 0x16u);
    }

    v9 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Rapport Home Location Status Response from device: %@", &v16, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _decrementMessageCountForCompanionLinkClient:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_executeBlockForDelegates:(id)delegates
{
  v25 = *MEMORY[0x277D85DE8];
  delegatesCopy = delegates;
  deviceDelegatesToQueues = [(ANRapportConnection *)self deviceDelegatesToQueues];
  keyEnumerator = [deviceDelegatesToQueues keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = allObjects;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        deviceDelegatesToQueues2 = [(ANRapportConnection *)self deviceDelegatesToQueues];
        v14 = [deviceDelegatesToQueues2 objectForKey:v12];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__ANRapportConnection__executeBlockForDelegates___block_invoke;
        block[3] = &unk_278C86C60;
        v15 = delegatesCopy;
        block[4] = v12;
        v19 = v15;
        dispatch_async(v14, block);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDeviceDelegatesConnectionDidFindDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ANRapportConnection__notifyDeviceDelegatesConnectionDidFindDevice___block_invoke;
  v6[3] = &unk_278C87528;
  v6[4] = self;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [(ANRapportConnection *)self _executeBlockForDelegates:v6];
}

void __69__ANRapportConnection__notifyDeviceDelegatesConnectionDidFindDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) didFindDevice:*(a1 + 40)];
  }
}

- (void)_notifyDeviceDelegatesConnectionDidLoseDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ANRapportConnection__notifyDeviceDelegatesConnectionDidLoseDevice___block_invoke;
  v6[3] = &unk_278C87528;
  v6[4] = self;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [(ANRapportConnection *)self _executeBlockForDelegates:v6];
}

void __69__ANRapportConnection__notifyDeviceDelegatesConnectionDidLoseDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) didLoseDevice:*(a1 + 40)];
  }
}

- (double)_remainingScanTimeInterval
{
  v28 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;
  lastScanStartTimestamp = [(ANRapportConnection *)self lastScanStartTimestamp];
  [lastScanStartTimestamp timeIntervalSince1970];
  v8 = v7;

  v9 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x277CCABB0];
    activeDevices = [(ANRapportConnection *)self activeDevices];
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(activeDevices, "count")}];
    lastScanStartTimestamp2 = [(ANRapportConnection *)self lastScanStartTimestamp];
    v20 = 138413058;
    v21 = &stru_2851BDB18;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = lastScanStartTimestamp2;
    v26 = 2112;
    v27 = date;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@### Active Device Count: %@, Scan Start: %@, Now: %@", &v20, 0x2Au);
  }

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v15 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA928]];
  [v15 doubleValue];
  v17 = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v17 - (v5 - v8);
}

- (BOOL)_needsScan
{
  v34 = *MEMORY[0x277D85DE8];
  if (!self->_companionLinkClient)
  {
    goto LABEL_13;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v7 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA928]];
  [v7 doubleValue];
  v9 = v8;

  lastScanStartTimestamp = [(ANRapportConnection *)self lastScanStartTimestamp];
  [lastScanStartTimestamp timeIntervalSince1970];
  v12 = v9 + v11;

  if (v12 < v5)
  {
    v13 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      lastScanStartTimestamp2 = [(ANRapportConnection *)self lastScanStartTimestamp];
      v28 = 138412546;
      v29 = &stru_2851BDB18;
      v30 = 2112;
      v31 = lastScanStartTimestamp2;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@### Last Scan Completion: %@", &v28, 0x16u);
    }

    mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
    v16 = [mEMORY[0x277CEAB80]2 numberForDefault:*MEMORY[0x277CEA920]];
    [v16 doubleValue];
    v18 = v17;

    v19 = v5 - v12;
    if (v19 > v18)
    {
      v24 = ANLogHandleRapportConnection();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
        v26 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        v28 = 138412802;
        v29 = &stru_2851BDB18;
        v30 = 2112;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%@### Needs Scan. Elapsed time (%@) since last scan exceeds scan interval (%@)", &v28, 0x20u);
      }

      goto LABEL_12;
    }
  }

  activeDevices = [(ANRapportConnection *)self activeDevices];
  activeDevicesSupportingAnnounce = [activeDevices activeDevicesSupportingAnnounce];
  v22 = [activeDevicesSupportingAnnounce count];

  if (!v22)
  {
    v24 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%@### Needs Scan. No devices.", &v28, 0xCu);
    }

LABEL_12:

LABEL_13:
    result = 1;
    goto LABEL_14;
  }

  result = 0;
LABEL_14:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startTimer
{
  v31 = *MEMORY[0x277D85DE8];
  clientQueue = [(ANRapportConnection *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(ANRapportConnection *)self isTimerSuspended])
  {
    v4 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@### Ignoring request to start timer. Timer is suspended.", buf, 0xCu);
    }
  }

  else
  {
    timer = [(ANRapportConnection *)self timer];

    if (timer)
    {
      [(ANRapportConnection *)self _cancelTimer];
      v6 = ANLogHandleRapportConnection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@### Creating new deactivation timer", buf, 0xCu);
      }
    }

    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v8 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA918]];
    [v8 doubleValue];
    v10 = v9;

    clientQueue2 = [(ANRapportConnection *)self clientQueue];
    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, clientQueue2);
    [(ANRapportConnection *)self setTimer:v12];

    timer2 = [(ANRapportConnection *)self timer];
    v14 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_source_set_timer(timer2, v14, (v10 * 1000000000.0), 0);

    objc_initWeak(&location, self);
    timer3 = [(ANRapportConnection *)self timer];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __34__ANRapportConnection__startTimer__block_invoke;
    v24 = &unk_278C86580;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(timer3, &v21);

    v16 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:{v10, v21, v22, v23, v24}];
        *buf = 138412546;
        v28 = &stru_2851BDB18;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@### Will deactivate client link in (%@) seconds", buf, 0x16u);
      }
    }

    timer4 = [(ANRapportConnection *)self timer];
    dispatch_resume(timer4);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __34__ANRapportConnection__startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimerExpired];
}

- (void)_handleTimerExpired
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = ANLogHandleRapportConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@### Deactivation timer expired", &v5, 0xCu);
  }

  [(ANRapportConnection *)self _cancelTimer];
  [(ANRapportConnection *)self _tearDownLink];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_cancelTimer
{
  v12 = *MEMORY[0x277D85DE8];
  timer = [(ANRapportConnection *)self timer];

  if (timer)
  {
    v4 = ANLogHandleRapportConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      timer2 = [(ANRapportConnection *)self timer];
      v8 = 138412546;
      v9 = &stru_2851BDB18;
      v10 = 2112;
      v11 = timer2;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@### Removing client link deactivation timer %@", &v8, 0x16u);
    }

    timer3 = [(ANRapportConnection *)self timer];
    dispatch_source_cancel(timer3);

    [(ANRapportConnection *)self setTimer:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (ANRapportConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end