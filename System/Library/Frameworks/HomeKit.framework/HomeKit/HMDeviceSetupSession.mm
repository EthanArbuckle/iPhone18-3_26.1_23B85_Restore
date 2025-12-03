@interface HMDeviceSetupSession
+ (id)logCategory;
+ (id)messageDestinationToHomeManager;
- (BOOL)_moveToState:(int64_t)state;
- (BOOL)_needsClosing;
- (HMDeviceSetupSession)init;
- (HMDeviceSetupSession)initWithRole:(int64_t)role context:(id)context identifier:(id)identifier delegate:(id)delegate;
- (HMDeviceSetupSession)initWithRole:(int64_t)role identifier:(id)identifier delegate:(id)delegate;
- (HMDeviceSetupSessionDelegate)delegate;
- (NSDictionary)userInfo;
- (id)closeSetupSessionHMDHomeManagerMessage;
- (id)logIdentifier;
- (id)messageDestinationForOpenedSessions;
- (id)responseHandlerForOpenMessage;
- (id)responseHandlerForReceiveDataMessageWithCompletionHandler:(id)handler;
- (void)_closeWithError:(id)error;
- (void)_handleDeviceSetupSessionReceiveDataMessage:(id)message;
- (void)_handleOpenedSession;
- (void)cleanUpSessionWithError:(id)error;
- (void)close;
- (void)configure;
- (void)dealloc;
- (void)handleDeviceSetupSessionCloseMessage:(id)message;
- (void)handleDeviceSetupSessionReceiveDataMessage:(id)message;
- (void)handleHomeKitDaemonInterruptedNotification:(id)notification;
- (void)open;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)sendExchangeData:(id)data qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)setUserInfo:(id)info;
@end

@implementation HMDeviceSetupSession

- (HMDeviceSetupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDeviceSetupSession", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  context = [(HMDeviceSetupSession *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  v11.receiver = selfCopy;
  v11.super_class = HMDeviceSetupSession;
  [(HMDeviceSetupSession *)&v11 dealloc];
  v10 = *MEMORY[0x1E69E9840];
}

- (id)logIdentifier
{
  identifier = [(HMDeviceSetupSession *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  v4 = [infoCopy copy];
  userInfo = self->_userInfo;
  self->_userInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)userInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_moveToState:(int64_t)state
{
  v34 = *MEMORY[0x1E69E9840];
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  state = self->_state;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state == 3)
      {
        if (state < 2)
        {
          goto LABEL_18;
        }

        if ((state - 2) >= 2)
        {
          goto LABEL_21;
        }

LABEL_24:
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v25 = HMDeviceSetupSessionStateAsString(state);
          v26 = HMDeviceSetupSessionStateAsString(state);
          v28 = 138543874;
          v29 = v24;
          v30 = 2112;
          v31 = v25;
          v32 = 2112;
          v33 = v26;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to move to state: %@ from state: %@", &v28, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        result = 0;
        goto LABEL_27;
      }

LABEL_21:
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = HMDeviceSetupSessionStateAsString(state);
        v20 = HMDeviceSetupSessionStateAsString(state);
        v28 = 138543874;
        v29 = v18;
        v30 = 2112;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@[HMDeviceSetupSession] Failed to understand move to state: %@ from state: %@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_24;
    }

    v8 = state == 3;
    if (state < 3)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (!state)
  {
    if ((state - 2) < 2 || !state)
    {
      goto LABEL_24;
    }

    v8 = state == 1;
    goto LABEL_16;
  }

  if (state != 1)
  {
    goto LABEL_21;
  }

  if (state < 2)
  {
    goto LABEL_24;
  }

  if ((state - 2) >= 2)
  {
    goto LABEL_21;
  }

LABEL_18:
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMDeviceSetupSessionStateAsString(state);
    v14 = HMDeviceSetupSessionStateAsString(state);
    v28 = 138543874;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Moving to state: %@ from state: %@", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  self->_state = state;
  result = 1;
LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_needsClosing
{
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  state = self->_state;
  if (state)
  {
    v6 = state == 3;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (id)responseHandlerForReceiveDataMessageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__HMDeviceSetupSession_responseHandlerForReceiveDataMessageWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E754DE00;
  v8[4] = self;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(v8);

  return v6;
}

void __82__HMDeviceSetupSession_responseHandlerForReceiveDataMessageWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v10;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Receive data response with payload: %@ error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = MEMORY[0x1E696AD98];
  v12 = *(*(a1 + 32) + 24);
  v13 = [v11 numberWithInteger:{objc_msgSend(v5, "code", @"code"}];
  v22[1] = @"domain";
  v23[0] = v13;
  v14 = [v5 domain];
  v15 = v14;
  v16 = &stru_1F0E92498;
  if (v14)
  {
    v16 = v14;
  }

  v23[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  [*(*(a1 + 32) + 24) markWithReason:@"reallySendExchangeData"];
  v18 = [v6 objectForKeyedSubscript:@"da"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  (*(*(a1 + 40) + 16))();
  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendExchangeData:(id)data qualityOfService:(int64_t)service completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__HMDeviceSetupSession_sendExchangeData_qualityOfService_completionHandler___block_invoke;
  v15[3] = &unk_1E754E0D0;
  v16 = dataCopy;
  selfCopy = self;
  v18 = handlerCopy;
  serviceCopy = service;
  v12 = handlerCopy;
  v13 = dataCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
  dispatch_async(queue, v14);
}

void __76__HMDeviceSetupSession_sendExchangeData_qualityOfService_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to send missing exchange data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 48);
    v16 = MEMORY[0x1E696ABC0];
    v17 = 9013;
    goto LABEL_16;
  }

  v2 = *(*(a1 + 40) + 16);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v8 = *(a1 + 32);
        *buf = 138543618;
        v35 = v7;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Queuing exchange data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
      v9 = [[HMDeviceSetupSessionExchangeDataRequest alloc] initWithExchangeData:*(a1 + 32) qualityOfService:*(a1 + 56) completionHandler:*(a1 + 48)];
      v10 = [*(a1 + 40) pendingExchangeDataRequests];
      [v10 addObject:v9];

      goto LABEL_17;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = *(a1 + 32);
      v30 = HMDeviceSetupSessionStateAsString(*(*(a1 + 40) + 16));
      *buf = 138543874;
      v35 = v28;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Not Sending exchange data: %@ as the setup session is not in a state to send it %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v15 = *(a1 + 48);
    v16 = MEMORY[0x1E696ABC0];
    v17 = 9011;
LABEL_16:
    v9 = [v16 hmPrivateErrorWithCode:v17];
    (*(v15 + 16))(v15, 0, v9);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = *(a1 + 32);
    *buf = 138543618;
    v35 = v18;
    v36 = 2112;
    v37 = v19;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Sending exchange data: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v20 = *(a1 + 32);
  v32 = @"da";
  v33 = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v21 = MEMORY[0x1E69A2A10];
  v22 = *(a1 + 56);
  v23 = [*(a1 + 40) messageDestinationForOpenedSessions];
  v24 = [v21 messageWithName:@"HMDSS.rc" qualityOfService:v22 destination:v23 payload:v9];

  v25 = [*(a1 + 40) responseHandlerForReceiveDataMessageWithCompletionHandler:*(a1 + 48)];
  [v24 setResponseHandler:v25];

  v26 = [*(a1 + 40) context];
  v27 = [v26 messageDispatcher];
  [v27 sendMessage:v24];

LABEL_17:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)_closeWithError:(id)error
{
  v61 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDeviceSetupSession *)self _moveToState:3])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = @" due to error: ";
      *buf = 138543874;
      v56 = v10;
      if (!errorCopy)
      {
        v11 = &stru_1F0E92498;
      }

      v57 = 2112;
      if (errorCopy)
      {
        v12 = errorCopy;
      }

      else
      {
        v12 = &stru_1F0E92498;
      }

      v58 = v11;
      v59 = 2112;
      v60 = v12;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Closing session%@%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = MEMORY[0x1E69A2A10];
    messageDestinationForOpenedSessions = [(HMDeviceSetupSession *)selfCopy messageDestinationForOpenedSessions];
    v15 = [v13 messageWithName:@"HMDSS.cl" qualityOfService:9 destination:messageDestinationForOpenedSessions payload:0];

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __40__HMDeviceSetupSession__closeWithError___block_invoke;
    v51[3] = &unk_1E754CD98;
    v51[4] = selfCopy;
    [v15 setResponseHandler:v51];
    context2 = [(HMDeviceSetupSession *)selfCopy context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v15];

    [(HMFActivity *)selfCopy->_activity markWithReason:@"HMDeviceSetupSession.closeWithError"];
    activity = selfCopy->_activity;
    v53[0] = @"code";
    v19 = MEMORY[0x1E696AD98];
    v20 = activity;
    v21 = [v19 numberWithInteger:{-[__CFString code](errorCopy, "code")}];
    v53[1] = @"domain";
    v54[0] = v21;
    domain = [(__CFString *)errorCopy domain];
    v23 = domain;
    if (domain)
    {
      v24 = domain;
    }

    else
    {
      v24 = &stru_1F0E92498;
    }

    v54[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];

    if ([(HMDeviceSetupSession *)selfCopy _moveToState:0])
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v29;
        v57 = 2112;
        v58 = errorCopy;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did close with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      delegate = [(HMDeviceSetupSession *)v27 delegate];
      [delegate setupSession:v27 didCloseWithError:errorCopy];

      pendingExchangeDataRequests = [(HMDeviceSetupSession *)v27 pendingExchangeDataRequests];
      v32 = [pendingExchangeDataRequests copy];

      pendingExchangeDataRequests2 = [(HMDeviceSetupSession *)v27 pendingExchangeDataRequests];
      [pendingExchangeDataRequests2 removeAllObjects];

      v34 = objc_autoreleasePoolPush();
      v35 = v27;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v32 count];
        *buf = 138543618;
        v56 = v37;
        v57 = 2048;
        v58 = v38;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_INFO, "%{public}@Removing %ld remaining pending requests", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v39 = v32;
      v40 = [v39 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v48;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v48 != v42)
            {
              objc_enumerationMutation(v39);
            }

            completionHandler = [*(*(&v47 + 1) + 8 * i) completionHandler];
            v45 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:9012];
            (completionHandler)[2](completionHandler, 0, v45);
          }

          v41 = [v39 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v41);
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

void __40__HMDeviceSetupSession__closeWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for close session message with error %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [v5 domain];
  if (![v11 isEqual:*MEMORY[0x1E69A2978]])
  {
    goto LABEL_10;
  }

  if ([v5 code] == 14)
  {

LABEL_7:
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) identifier];
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@close session thru HMDHomeManager. session %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v11 = [*(a1 + 32) context];
    v18 = [v11 messageDispatcher];
    v19 = [*(a1 + 32) closeSetupSessionHMDHomeManagerMessage];
    [v18 sendMessage:v19];

LABEL_10:
    goto LABEL_11;
  }

  v12 = [v5 code];

  if (v12 == 2)
  {
    goto LABEL_7;
  }

LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
}

- (id)closeSetupSessionHMDHomeManagerMessage
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69A2A10];
  messageDestinationToHomeManager = [objc_opt_class() messageDestinationToHomeManager];
  v11 = @"id";
  identifier = [(HMDeviceSetupSession *)self identifier];
  v12[0] = identifier;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v3 messageWithName:@"HMDSS.cl.homeManager" qualityOfService:9 destination:messageDestinationToHomeManager payload:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__HMDeviceSetupSession_closeSetupSessionHMDHomeManagerMessage__block_invoke;
  v10[3] = &unk_1E754CD98;
  v10[4] = self;
  [v7 setResponseHandler:v10];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __62__HMDeviceSetupSession_closeSetupSessionHMDHomeManagerMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) identifier];
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v5;
      v13 = "%{public}@Failed to close session thru HMDHomeManager. session %@, error %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v14, v15, v13, &v18, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) identifier];
    v18 = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = @"HMDSS.cl.homeManager";
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = 0;
    v13 = "%{public}@Received response for %@ for session %@ with error %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 42;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__HMDeviceSetupSession_close__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(queue, v5);
}

uint64_t __29__HMDeviceSetupSession_close__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) markWithReason:@"HMDeviceSetupSession.close"];
  v2 = *(a1 + 32);

  return [v2 _closeWithError:0];
}

- (void)cleanUpSessionWithError:(id)error
{
  errorCopy = error;
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__HMDeviceSetupSession_cleanUpSessionWithError___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v9);
  dispatch_async(queue, v8);
}

uint64_t __48__HMDeviceSetupSession_cleanUpSessionWithError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 24) markWithReason:@"HMDeviceSetupSession.cleanUpSession"];
  result = [*(a1 + 32) _needsClosing];
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v8 = @" with error: ";
      v10 = 138543874;
      v11 = v6;
      if (!v7)
      {
        v8 = &stru_1F0E92498;
        v7 = &stru_1F0E92498;
      }

      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Closing session due to clean up%@%@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _closeWithError:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)messageDestinationForOpenedSessions
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  identifier = [(HMDeviceSetupSession *)self identifier];
  v5 = [v3 initWithTarget:identifier];

  return v5;
}

- (void)_handleOpenedSession
{
  v37 = *MEMORY[0x1E69E9840];
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDeviceSetupSession *)self _moveToState:2])
  {
    delegate = [(HMDeviceSetupSession *)self delegate];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v9;
      v35 = 2112;
      v36 = delegate;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did open session with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (objc_opt_respondsToSelector())
    {
      [delegate setupSessionDidOpen:selfCopy];
    }

    pendingExchangeDataRequests = [(HMDeviceSetupSession *)selfCopy pendingExchangeDataRequests];
    v11 = [pendingExchangeDataRequests copy];

    pendingExchangeDataRequests2 = [(HMDeviceSetupSession *)selfCopy pendingExchangeDataRequests];
    [pendingExchangeDataRequests2 removeAllObjects];

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v11 count];
      *buf = 138543618;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Processing %ld pending requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          exchangeData = [v23 exchangeData];
          v25 = [v23 qos];
          completionHandler = [v23 completionHandler];
          [(HMDeviceSetupSession *)v14 sendExchangeData:exchangeData qualityOfService:v25 completionHandler:completionHandler];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)responseHandlerForOpenMessage
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__HMDeviceSetupSession_responseHandlerForOpenMessage__block_invoke;
  v4[3] = &unk_1E754CD70;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __53__HMDeviceSetupSession_responseHandlerForOpenMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v11;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for open message with payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = v9[3];
    v28[0] = @"errorCode";
    v13 = MEMORY[0x1E696AD98];
    v14 = v12;
    v15 = [v13 numberWithInteger:{objc_msgSend(v5, "code")}];
    v29[0] = v15;
    v28[1] = @"domain";
    v16 = [v5 domain];
    v17 = v16;
    v18 = &stru_1F0E92498;
    if (v16)
    {
      v18 = v16;
    }

    v29[1] = v18;
    v28[2] = @"role";
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "role")}];
    v29[2] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

    [v9[3] markWithReason:@"HMDeviceSetupSession.open.responseHandler"];
    v21 = [v9 context];
    v22 = [v21 queue];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__HMDeviceSetupSession_responseHandlerForOpenMessage__block_invoke_115;
    v25[3] = &unk_1E754E5C0;
    v26 = v5;
    v27 = v9;
    v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v25);
    dispatch_async(v22, v23);
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __53__HMDeviceSetupSession_responseHandlerForOpenMessage__block_invoke_115(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _closeWithError:?];
  }

  else
  {
    return [v1 _handleOpenedSession];
  }
}

- (void)open
{
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__HMDeviceSetupSession_open__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(queue, v5);
}

void __28__HMDeviceSetupSession_open__block_invoke(uint64_t a1)
{
  v35[2] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _moveToState:1])
  {
    v2 = *(a1 + 32);
    v3 = v2[3];
    v34[0] = @"identifier";
    v4 = v3;
    v5 = [v2 identifier];
    v6 = HMDailyRotatedUUID(v5);
    v7 = [v6 UUIDString];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = @"no identifier";
    }

    v34[1] = @"role";
    v35[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "role")}];
    v35[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    v32[0] = @"id";
    v12 = [*(a1 + 32) identifier];
    v13 = [v12 UUIDString];
    v32[1] = @"ro";
    v33[0] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "role")}];
    v33[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Sending device setup session open message", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x1E69A2A10];
    v21 = [MEMORY[0x1E696AF00] currentThread];
    v22 = [v21 qualityOfService];
    v23 = *(a1 + 32);
    v24 = [objc_opt_class() messageDestinationToHomeManager];
    v25 = [v20 messageWithName:@"HMDSS.op" qualityOfService:v22 destination:v24 payload:v15];

    v26 = [*(a1 + 32) responseHandlerForOpenMessage];
    [v25 setResponseHandler:v26];

    [v25 setActivity:*(*(a1 + 32) + 24)];
    v27 = [*(a1 + 32) context];
    v28 = [v27 messageDispatcher];
    [v28 sendMessage:v25];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)handleHomeKitDaemonInterruptedNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling homed interrupted notification: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  [(HMDeviceSetupSession *)selfCopy cleanUpSessionWithError:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerForNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleHomeKitDaemonInterruptedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (void)_handleDeviceSetupSessionReceiveDataMessage:(id)message
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  context = [(HMDeviceSetupSession *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  v7 = [messageCopy dataForKey:@"da"];
  if (v7)
  {
    delegate = [(HMDeviceSetupSession *)self delegate];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v12;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = delegate;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did receive exchange data: %@ delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, selfCopy);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__HMDeviceSetupSession__handleDeviceSetupSessionReceiveDataMessage___block_invoke;
    v18[3] = &unk_1E754CD40;
    objc_copyWeak(&v20, buf);
    v19 = messageCopy;
    [delegate setupSession:selfCopy didReceiveExchangeData:v7 completionHandler:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = messageCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get exchange data for message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    delegate = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    [messageCopy respondWithError:delegate];
    [(HMDeviceSetupSession *)selfCopy2 cleanUpSessionWithError:delegate];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __68__HMDeviceSetupSession__handleDeviceSetupSessionReceiveDataMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Notifying client of did receive exchange data resulted in error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [*(a1 + 32) qualityOfService];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__HMDeviceSetupSession__handleDeviceSetupSessionReceiveDataMessage___block_invoke_82;
  v14[3] = &unk_1E754CD18;
  v14[4] = WeakRetained;
  [WeakRetained sendExchangeData:v5 qualityOfService:v12 completionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __68__HMDeviceSetupSession__handleDeviceSetupSessionReceiveDataMessage___block_invoke_82(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Sending exchange data resulted in error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    [*(a1 + 32) cleanUpSessionWithError:v6];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceSetupSessionReceiveDataMessage:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = shortDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Handling device setup session receive data message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMDeviceSetupSession *)selfCopy context];
  queue = [context queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__HMDeviceSetupSession_handleDeviceSetupSessionReceiveDataMessage___block_invoke;
  v15[3] = &unk_1E754E5C0;
  v15[4] = selfCopy;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v15);
  dispatch_async(queue, v13);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceSetupSessionCloseMessage:(id)message
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = shortDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Handling device setup session close message: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [messageCopy dictionaryForKey:@"ui"];
  if (v10)
  {
    [(HMDeviceSetupSession *)selfCopy setUserInfo:v10];
  }

  v11 = [messageCopy errorForKey:@"er"];
  [(HMDeviceSetupSession *)selfCopy cleanUpSessionWithError:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)registerForMessages
{
  context = [(HMDeviceSetupSession *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMDSS.rc" receiver:self selector:sel_handleDeviceSetupSessionReceiveDataMessage_];

  context2 = [(HMDeviceSetupSession *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HMDSS.cl" receiver:self selector:sel_handleDeviceSetupSessionCloseMessage_];
}

- (void)configure
{
  [(HMDeviceSetupSession *)self registerForMessages];

  [(HMDeviceSetupSession *)self registerForNotifications];
}

- (HMDeviceSetupSession)initWithRole:(int64_t)role context:(id)context identifier:(id)identifier delegate:(id)delegate
{
  v46 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifierCopy = identifier;
  delegateCopy = delegate;
  if (role >= 2)
  {
    _HMFPreconditionFailure();
  }

  v15 = delegateCopy;
  if (contextCopy && delegateCopy)
  {
    v37.receiver = self;
    v37.super_class = HMDeviceSetupSession;
    v16 = [(HMDeviceSetupSession *)&v37 init];
    v17 = v16;
    if (v16)
    {
      v16->_lock._os_unfair_lock_opaque = 0;
      v16->_state = 0;
      v16->_role = role;
      objc_storeWeak(&v16->_delegate, v15);
      v18 = [identifierCopy copy];
      identifier = v17->_identifier;
      v17->_identifier = v18;

      objc_storeStrong(&v17->_context, context);
      v20 = objc_alloc(MEMORY[0x1E69A29C0]);
      v21 = MEMORY[0x1E696AEC0];
      v22 = MEMORY[0x19EAEB2A0](v17, a2);
      v23 = [v21 stringWithFormat:@"%@, %s:%ld", v22, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/DeviceSetup/HMDeviceSetupSession.m", 213];
      v24 = [v20 initWithName:v23];
      activity = v17->_activity;
      v17->_activity = v24;

      dictionary = [MEMORY[0x1E695DF20] dictionary];
      userInfo = v17->_userInfo;
      v17->_userInfo = dictionary;

      array = [MEMORY[0x1E695DF70] array];
      pendingExchangeDataRequests = v17->_pendingExchangeDataRequests;
      v17->_pendingExchangeDataRequests = array;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:role];
      *buf = 138544130;
      v39 = v33;
      v40 = 2112;
      v41 = v34;
      v42 = 2112;
      v43 = contextCopy;
      v44 = 2112;
      v45 = v15;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@[HMDeviceSetupSession] Invalid init parameters role: %@ context: %@ delegate: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    selfCopy = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (HMDeviceSetupSession)initWithRole:(int64_t)role identifier:(id)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v10 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.DeviceSetupSession"];
  v11 = [(HMDeviceSetupSession *)self initWithRole:role context:v10 identifier:identifierCopy delegate:delegateCopy];

  return v11;
}

- (HMDeviceSetupSession)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_54751 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_54751, &__block_literal_global_54752);
  }

  v3 = logCategory__hmf_once_v32_54753;

  return v3;
}

uint64_t __35__HMDeviceSetupSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_54753;
  logCategory__hmf_once_v32_54753 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)messageDestinationToHomeManager
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v3 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:v2];

  return v3;
}

@end