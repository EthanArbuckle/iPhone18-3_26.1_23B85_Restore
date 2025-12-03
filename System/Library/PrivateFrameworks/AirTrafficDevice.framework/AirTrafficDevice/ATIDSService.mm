@interface ATIDSService
+ (int64_t)openSocketPriorityFromATPendingChangePriority:(int)priority;
- (ATIDSService)initWithServiceName:(id)name;
- (BOOL)hasPairedDevice;
- (BOOL)start;
- (id)_messageTypeToString:(int)string;
- (id)deviceForId:(id)id;
- (id)pairedDevice;
- (void)_cancelPendingConnectionRequests;
- (void)_connect;
- (void)_handleReconnectEvent:(id)event;
- (void)_initiateReconnectIfNeeded;
- (void)_scheduleConnectWithPriority:(int64_t)priority;
- (void)_scheduleReconnect;
- (void)_sendWakeup;
- (void)addListener:(id)listener;
- (void)removeListener:(id)listener;
- (void)requestConnectionToPairedDeviceWithPriority:(int64_t)priority;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)setPreferWifi:(BOOL)wifi;
- (void)socket:(id)socket hasDataAvailable:(const char *)available length:(int64_t)length;
- (void)socketDidClose:(id)close;
- (void)stop;
@end

@implementation ATIDSService

- (void)_cancelPendingConnectionRequests
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_connectionInfo)
  {
    v3 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      device = [(ATIDSConnectionInfo *)self->_connectionInfo device];
      uniqueID = [device uniqueID];
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = uniqueID;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling pending connection request to %{public}@", &v10, 0x16u);
    }

    socket = [(ATIDSConnectionInfo *)self->_connectionInfo socket];
    v7 = socket;
    if (socket)
    {
      [socket removeDelegate:self];
      if ([v7 isOpen])
      {
        [v7 close];
      }
    }

    connectionInfo = self->_connectionInfo;
    self->_connectionInfo = 0;

    mEMORY[0x277D7FA38] = [MEMORY[0x277D7FA38] sharedTaskScheduler];
    [mEMORY[0x277D7FA38] cancelTask:@"com.apple.atc.ATIDSService.reconnect"];
  }
}

- (void)_sendWakeup
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  connectionInfo = self->_connectionInfo;
  if (connectionInfo && ![(ATIDSConnectionInfo *)connectionInfo connectionState])
  {
    [(ATIDSConnectionInfo *)self->_connectionInfo setConnectionState:1];
    device = [(ATIDSConnectionInfo *)self->_connectionInfo device];
    v5 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [device uniqueID];
      *buf = 138543618;
      selfCopy3 = self;
      v26 = 2114;
      v27 = uniqueID;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sending wakeup to device %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277D189F0]);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:"wakeup" length:6];
    v9 = [v7 initWithProtobufData:v8 type:0 isResponse:0];

    v10 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
    v11 = *MEMORY[0x277D18678];
    v22[0] = *MEMORY[0x277D18650];
    v22[1] = v11;
    v23[0] = &unk_2836F5050;
    v23[1] = MEMORY[0x277CBEC38];
    v22[2] = *MEMORY[0x277D185D0];
    v23[2] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v13 = self->_connectionInfo;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(ATIDSConnectionInfo *)v13 setWakeupTimestamp:?];
    ATReportEventIncrementingScalarKey();
    service = self->_service;
    v20 = 0;
    v21 = 0;
    v15 = [(IDSService *)service sendProtobuf:v9 toDestinations:v10 priority:100 options:v12 identifier:&v21 error:&v20];
    v16 = v21;
    v17 = v20;
    v18 = _ATLogCategoryFramework();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ wakeup message sent. id=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to send wakeup message. err=%{public}@", buf, 0x16u);
      }

      ATReportEventIncrementingScalarKey();
      [(ATIDSConnectionInfo *)self->_connectionInfo setFailureCount:[(ATIDSConnectionInfo *)self->_connectionInfo failureCount]+ 1];
      [(ATIDSService *)self _scheduleReconnect];
    }
  }
}

- (void)_connect
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  connectionInfo = self->_connectionInfo;
  if (connectionInfo && [(ATIDSConnectionInfo *)connectionInfo connectionState]<= 1)
  {
    device = [(ATIDSConnectionInfo *)self->_connectionInfo device];
    [(ATIDSConnectionInfo *)self->_connectionInfo setConnectionState:2];
    socket = [(ATIDSConnectionInfo *)self->_connectionInfo socket];
    v6 = socket;
    if (socket)
    {
      [socket removeDelegate:self];
      if ([v6 isOpen])
      {
        [v6 close];
      }

      [(ATIDSConnectionInfo *)self->_connectionInfo setSocket:0];
    }

    v7 = [[ATIDSSocket alloc] initWithDevice:device service:self priority:[(ATIDSConnectionInfo *)self->_connectionInfo priority]];
    [(ATSocket *)v7 addDelegate:self];
    [(ATIDSConnectionInfo *)self->_connectionInfo setSocket:v7];
    v8 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [device uniqueID];
      *buf = 138543874;
      selfCopy = self;
      v16 = 2114;
      v17 = uniqueID;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to connect to %{public}@ using socket %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, v7);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __24__ATIDSService__connect__block_invoke;
    v11[3] = &unk_2784E4750;
    objc_copyWeak(&v13, buf);
    v11[4] = self;
    v10 = device;
    v12 = v10;
    [(ATIDSSocket *)v7 connectWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __24__ATIDSService__connect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__ATIDSService__connect__block_invoke_2;
    v7[3] = &unk_2784E5100;
    v7[4] = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    v10 = WeakRetained;
    dispatch_async(v6, v7);
  }
}

void __24__ATIDSService__connect__block_invoke_2(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 4) socket];
  v3 = a1[5];
  v4 = _ATLogCategoryFramework();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = [a1[6] uniqueID];
      v8 = a1[7];
      if (v2)
      {
        v9 = v2;
      }

      else
      {
        v9 = @"nil";
      }

      v10 = [a1[5] msv_description];
      *v18 = 138544386;
      *&v18[4] = v6;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "%{public}@ connection to %{public}@ completed for socket %{public}@. connectionSocket=%{public}@ error=%{public}@", v18, 0x34u);

LABEL_11:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = [a1[6] uniqueID];
    v7 = v12;
    v13 = a1[7];
    v14 = @"nil";
    *v18 = 138544130;
    if (v2)
    {
      v14 = v2;
    }

    *&v18[4] = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ connection to %{public}@ completed for socket %{public}@. connectionSocket=%{public}@", v18, 0x2Au);
    goto LABEL_11;
  }

  v15 = a1[4];
  if (!a1[5] && v15[4] && v2 == a1[7])
  {
    v16 = [[ATDeviceMessageLink alloc] initWithSocket:v2];
    v17 = [a1[4] delegate];
    [v17 listener:a1[4] didReceiveMessageLinkRequest:v16];
  }

  else
  {
    [a1[7] removeDelegate:{v15, *v18}];
    if ([a1[7] isOpen])
    {
      [a1[7] close];
    }

    if (v2 == a1[7])
    {
      [*(a1[4] + 4) setSocket:0];
      [*(a1[4] + 4) setFailureCount:{objc_msgSend(*(a1[4] + 4), "failureCount") + 1}];
      [a1[4] _scheduleReconnect];
    }
  }
}

- (void)_initiateReconnectIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  connectionInfo = self->_connectionInfo;
  if (connectionInfo && [(ATIDSConnectionInfo *)connectionInfo connectionState]<= 2)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      device = [(ATIDSConnectionInfo *)self->_connectionInfo device];
      uniqueID = [device uniqueID];
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2114;
      v13 = uniqueID;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Initiating reconnect to %{public}@", &v10, 0x16u);
    }

    [(ATIDSService *)self _sendWakeup];
  }

  else
  {
    v7 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      device2 = [(ATIDSConnectionInfo *)self->_connectionInfo device];
      uniqueID2 = [device2 uniqueID];
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2114;
      v13 = uniqueID2;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Not initiating reconnect to %{public}@ because we are already connected", &v10, 0x16u);
    }
  }
}

- (void)_scheduleReconnect
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  connectionInfo = self->_connectionInfo;
  if (connectionInfo)
  {
    [(ATIDSConnectionInfo *)connectionInfo setConnectionState:0];
    v4 = 60 * (([(ATIDSConnectionInfo *)self->_connectionInfo failureCount]+ 1) >> 1);
    if (v4 >= 0x12C)
    {
      v5 = 300;
    }

    else
    {
      v5 = v4;
    }

    mEMORY[0x277D7FA38] = [MEMORY[0x277D7FA38] sharedTaskScheduler];
    v7 = mEMORY[0x277D7FA38];
    if (v4)
    {
      v8 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        device = [(ATIDSConnectionInfo *)self->_connectionInfo device];
        uniqueID = [device uniqueID];
        failureCount = [(ATIDSConnectionInfo *)self->_connectionInfo failureCount];
        v12 = 138544130;
        selfCopy2 = self;
        v14 = 2114;
        v15 = uniqueID;
        v16 = 2048;
        v17 = v5;
        v18 = 1024;
        v19 = failureCount;
        _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling reconnect to %{public}@ in %llu seconds. failureCount=%d", &v12, 0x26u);
      }

      [v7 scheduleTask:@"com.apple.atc.ATIDSService.reconnect" afterDelay:0 withUserData:v5];
    }

    else
    {
      [mEMORY[0x277D7FA38] cancelTask:@"com.apple.atc.ATIDSService.reconnect"];
      [(ATIDSService *)self _initiateReconnectIfNeeded];
    }
  }

  else
  {
    v7 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Not attempting to reconnect as connectionInfo is nil", &v12, 0xCu);
    }
  }
}

- (void)_scheduleConnectWithPriority:(int64_t)priority
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_running)
  {
    pairedDevice = [(ATIDSService *)self pairedDevice];
    if (pairedDevice)
    {
      connectionInfo = self->_connectionInfo;
      if (!connectionInfo || [(ATIDSConnectionInfo *)connectionInfo connectionState]<= 2 && [(ATIDSConnectionInfo *)self->_connectionInfo priority]< priority)
      {
        v7 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [pairedDevice uniqueID];
          v11 = 138543874;
          selfCopy2 = self;
          v13 = 1024;
          priorityCopy2 = priority;
          v15 = 2114;
          v16 = uniqueID;
          _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting new IDS connection with priority %d to device %{public}@", &v11, 0x1Cu);
        }

        [(ATIDSService *)self _cancelPendingConnectionRequests];
        v9 = objc_alloc_init(ATIDSConnectionInfo);
        [(ATIDSConnectionInfo *)v9 setDevice:pairedDevice];
        [(ATIDSConnectionInfo *)v9 setPriority:priority];
        v10 = self->_connectionInfo;
        self->_connectionInfo = v9;

        [(ATIDSService *)self _scheduleReconnect];
      }
    }
  }

  else
  {
    pairedDevice = _ATLogCategoryFramework();
    if (os_log_type_enabled(pairedDevice, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 1024;
      priorityCopy2 = priority;
      _os_log_impl(&dword_223819000, pairedDevice, OS_LOG_TYPE_DEFAULT, "%{public}@ Not requesting connection to IDS with priority %d as the service is not started", &v11, 0x12u);
    }
  }
}

- (id)_messageTypeToString:(int)string
{
  if (string)
  {
    return @"unknown";
  }

  else
  {
    return @"wakeup";
  }
}

- (void)_handleReconnectEvent:(id)event
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ATIDSService__handleReconnectEvent___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)socket:(id)socket hasDataAvailable:(const char *)available length:(int64_t)length
{
  socketCopy = socket;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ATIDSService_socket_hasDataAvailable_length___block_invoke;
  v9[3] = &unk_2784E5960;
  v10 = socketCopy;
  selfCopy = self;
  v8 = socketCopy;
  dispatch_async(queue, v9);
}

void __47__ATIDSService_socket_hasDataAvailable_length___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);
  if (v3 && ([v3 socket], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v2))
  {
    [*(*(a1 + 40) + 32) setConnectionState:4];
    [*(*(a1 + 40) + 32) setFailureCount:0];
  }

  else
  {
    v5 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "%{public}@ ignoring socket hasDataAvailable notification for %{public}@", &v8, 0x16u);
    }
  }
}

- (void)socketDidClose:(id)close
{
  closeCopy = close;
  v5 = [closeCopy description];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ATIDSService_socketDidClose___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v10 = closeCopy;
  v11 = v5;
  v7 = v5;
  v8 = closeCopy;
  dispatch_async(queue, block);
}

void __31__ATIDSService_socketDidClose___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (v2 && (v3 = *(a1 + 40), [v2 socket], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    v8 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_ERROR, "%{public}@ socket %{public}@ was closed", &v16, 0x16u);
    }

    [*(a1 + 40) removeDelegate:*(a1 + 32)];
    if ([*(*(a1 + 32) + 32) connectionState] > 3)
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 32);
      *(v14 + 32) = 0;
    }

    else
    {
      v11 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v16 = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_ERROR, "%{public}@ socket %{public}@ was closed before any data was received - treating as connection failure", &v16, 0x16u);
      }

      [*(*(a1 + 32) + 32) setFailureCount:{objc_msgSend(*(*(a1 + 32) + 32), "failureCount") + 1}];
      [*(*(a1 + 32) + 32) setSocket:0];
      [*(a1 + 32) _scheduleReconnect];
    }

    [*(a1 + 32) setPreferWifi:0];
  }

  else
  {
    v5 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v16 = 138543618;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "%{public}@ ignoring socket closed notification for %{public}@", &v16, 0x16u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ ids message delivered. id=%{public}@", buf, 0x16u);
  }

  [(ATIDSConnectionInfo *)self->_connectionInfo wakeupTimestamp];
  if (v9 != 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(ATIDSConnectionInfo *)self->_connectionInfo wakeupTimestamp];
    ATReportEventAddDoubleToScalarKey();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ATIDSService_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

unint64_t __71__ATIDSService_service_account_identifier_hasBeenDeliveredWithContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    result = [v2[4] connectionState];
    if (result > 1)
    {
      return result;
    }

    v2 = *(a1 + 32);
  }

  return [v2 _connect];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ATIDSService_service_account_identifier_didSendWithSuccess_error___block_invoke;
  block[3] = &unk_2784E59B0;
  v15 = errorCopy;
  selfCopy = self;
  v17 = identifierCopy;
  v12 = identifierCopy;
  v13 = errorCopy;
  dispatch_async(queue, block);
}

void __68__ATIDSService_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _ATLogCategoryFramework();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 32);
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to send ids message. id=%{public}@, error=%{public}@", &v10, 0x20u);
    }

    [*(*(a1 + 40) + 32) setFailureCount:{objc_msgSend(*(*(a1 + 40) + 32), "failureCount") + 1}];
    [*(a1 + 32) code];
    ATReportEventIncrementingScalarKey();
    [*(a1 + 40) _scheduleReconnect];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ ids message sent. id=%{public}@", &v10, 0x16u);
    }
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v5 = [(ATIDSService *)self pairedDevice:service];
  if ([v5 isConnected])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ATIDSService_service_connectedDevicesChanged___block_invoke;
    block[3] = &unk_2784E5938;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void *__48__ATIDSService_service_connectedDevicesChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = [result connectionState];
    if (!result)
    {
      v3 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = 138543362;
        v6 = v4;
        _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ paired device is connected - schedule a reconnect now", &v5, 0xCu);
      }

      [*(*(a1 + 32) + 32) setFailureCount:0];
      return [*(a1 + 32) _scheduleReconnect];
    }
  }

  return result;
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v5 = [(ATIDSService *)self pairedDevice:service];
  if ([v5 isNearby])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ATIDSService_service_nearbyDevicesChanged___block_invoke;
    block[3] = &unk_2784E5938;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void *__45__ATIDSService_service_nearbyDevicesChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = [result connectionState];
    if (!result)
    {
      v3 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = 138543362;
        v6 = v4;
        _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ paired device is nearby - schedule a reconnect now", &v5, 0xCu);
      }

      [*(*(a1 + 32) + 32) setFailureCount:0];
      return [*(a1 + 32) _scheduleReconnect];
    }
  }

  return result;
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(ATIDSService *)self pairedDevice:service];
  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ids devices have changed. pairedDevice=%{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__ATIDSService_service_devicesChanged___block_invoke;
  v9[3] = &unk_2784E5960;
  v10 = v5;
  selfCopy2 = self;
  v8 = v5;
  dispatch_async(queue, v9);
}

void __39__ATIDSService_service_devicesChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    [*(a1 + 40) _cancelPendingConnectionRequests];
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 40) + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) idsServiceDevicesDidChange:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ATIDSService_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v15 = protobufCopy;
  v16 = dCopy;
  v12 = dCopy;
  v13 = protobufCopy;
  dispatch_async(queue, block);
}

void __73__ATIDSService_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) type];
    v5 = [*(a1 + 32) _messageTypeToString:{objc_msgSend(*(a1 + 40), "type")}];
    v6 = *(a1 + 48);
    v16 = 138544130;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ received ids message %d:'%{public}@' from id %{public}@", &v16, 0x26u);
  }

  if ([*(a1 + 40) type])
  {
    v7 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) type];
      v10 = [*(a1 + 32) _messageTypeToString:{objc_msgSend(*(a1 + 40), "type")}];
      v11 = *(a1 + 48);
      v16 = 138544130;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_INFO, "%{public}@ received ids message of unknown type %d:'%{public}@' from id %{public}@", &v16, 0x26u);
    }
  }

  else
  {
    v7 = [*(a1 + 32) pairedDevice];
    if (v7)
    {
      v12 = *(a1 + 32);
      if (v12[4])
      {
        if ([v12[4] connectionState] > 1)
        {
          v13 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 32);
            v15 = [*(v14 + 32) connectionState];
            v16 = 138543618;
            v17 = v14;
            v18 = 1024;
            v19 = v15;
            _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring wakeup. connectionState=%d", &v16, 0x12u);
          }
        }

        else
        {
          [*(a1 + 32) _connect];
        }
      }

      else
      {
        [v12 _scheduleConnectWithPriority:200];
      }
    }
  }
}

- (void)setPreferWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  v13 = *MEMORY[0x277D85DE8];
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v11 = 1024;
    v12 = wifiCopy;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setting IDSService setPreferInfraWiFi to %d", buf, 0x12u);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowIDSToPreferWifi", @"com.apple.atc", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat || AppBooleanValue)
  {
    [(IDSService *)self->_service setPreferInfraWiFi:wifiCopy];
  }

  else
  {
    v7 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ IDSService setPreferInfraWiFi is currently disabled!", buf, 0xCu);
    }
  }
}

- (void)requestConnectionToPairedDeviceWithPriority:(int64_t)priority
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ATIDSService_requestConnectionToPairedDeviceWithPriority___block_invoke;
  v4[3] = &unk_2784E5578;
  v4[4] = self;
  v4[5] = priority;
  dispatch_async(queue, v4);
}

- (id)deviceForId:(id)id
{
  v18 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [(IDSService *)self->_service devices];
  v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uniqueID = [v9 uniqueID];
        v11 = [uniqueID isEqualToString:idCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)pairedDevice
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self->_service devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasPairedDevice
{
  pairedDevice = [(ATIDSService *)self pairedDevice];
  v3 = pairedDevice != 0;

  return v3;
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ATIDSService_removeListener___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ATIDSService_addListener___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping ids service", buf, 0xCu);
  }

  [(IDSService *)self->_service removeDelegate:self];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ATIDSService_stop__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __20__ATIDSService_stop__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cancelPendingConnectionRequests];
  *(*(a1 + 32) + 48) = 0;
  return result;
}

- (BOOL)start
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    accounts = [(IDSService *)self->_service accounts];
    devices = [(IDSService *)self->_service devices];
    v7 = 138543874;
    selfCopy = self;
    v9 = 2114;
    v10 = accounts;
    v11 = 2114;
    v12 = devices;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting ids service. accounts=%{public}@, devices=%{public}@", &v7, 0x20u);
  }

  [(IDSService *)self->_service addDelegate:self queue:self->_queue];
  self->_running = 1;
  return 1;
}

- (ATIDSService)initWithServiceName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = ATIDSService;
  v5 = [(ATIDSService *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    Name = class_getName(v6);
    v8 = dispatch_queue_create(Name, 0);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x277D18778]) initWithService:nameCopy];
    service = v5->_service;
    v5->_service = v10;

    array = [MEMORY[0x277CBEB18] array];
    listeners = v5->_listeners;
    v5->_listeners = array;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleReconnectEvent_ name:@"com.apple.atc.ATIDSService.reconnect" object:0];
  }

  return v5;
}

+ (int64_t)openSocketPriorityFromATPendingChangePriority:(int)priority
{
  v3 = 300;
  if (priority == 1)
  {
    v3 = 200;
  }

  if (priority == 2)
  {
    return 100;
  }

  else
  {
    return v3;
  }
}

@end