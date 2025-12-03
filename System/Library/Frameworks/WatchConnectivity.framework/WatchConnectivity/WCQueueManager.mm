@interface WCQueueManager
- (WCQueueManager)init;
- (id)onqueue_peekMessage;
- (void)allowMessageSending;
- (void)cancelQueuedMessages;
- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error;
- (void)onqueue_allowMessageSending;
- (void)onqueue_attemptToSend;
- (void)onqueue_cancelDaemonMessages;
- (void)onqueue_cancelQueuedMessages;
- (void)onqueue_clearQueuedMessages;
- (void)onqueue_dequeueMessage;
- (void)onqueue_enqueueMessage:(id)message;
- (void)onqueue_handleAcceptanceWithCurrentAccepted:(BOOL)accepted nextAvailable:(BOOL)available;
- (void)onqueue_handleFailedDaemonConnectionForQueuedMessage:(id)message;
- (void)onqueue_handleSentMessageWithIdentifier:(id)identifier error:(id)error;
- (void)onqueue_sendMessage:(id)message completionHandler:(id)handler;
- (void)sendMessage:(id)message completionHandler:(id)handler;
@end

@implementation WCQueueManager

- (WCQueueManager)init
{
  v11.receiver = self;
  v11.super_class = WCQueueManager;
  v2 = [(WCQueueManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_canSend = 1;
    v4 = objc_opt_new();
    messageQueue = v3->_messageQueue;
    v3->_messageQueue = v4;

    v6 = objc_opt_new();
    inFlightMessages = v3->_inFlightMessages;
    v3->_inFlightMessages = v6;

    v8 = dispatch_queue_create("com.apple.private.watchconnectivity.send-queue.work-queue", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v8;
  }

  return v3;
}

- (void)allowMessageSending
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WCQueueManager_allowMessageSending__block_invoke;
  block[3] = &unk_278B7BF78;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)onqueue_allowMessageSending
{
  [(WCQueueManager *)self setCanSend:1];

  [(WCQueueManager *)self onqueue_attemptToSend];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WCQueueManager_sendMessage_completionHandler___block_invoke;
  block[3] = &unk_278B7C590;
  block[4] = self;
  v12 = messageCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(workQueue, block);
}

- (void)onqueue_sendMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v8 = [[WCQueuedMessage alloc] initWithMessage:messageCopy completionHandler:handlerCopy];

  [(WCQueueManager *)self onqueue_enqueueMessage:v8];
}

- (void)onqueue_attemptToSend
{
  if ([(WCQueueManager *)self canSend]&& ![(WCQueueManager *)self messageOutstanding])
  {
    onqueue_peekMessage = [(WCQueueManager *)self onqueue_peekMessage];
    if (onqueue_peekMessage)
    {
      inFlightMessages = [(WCQueueManager *)self inFlightMessages];
      message = [onqueue_peekMessage message];
      identifier = [message identifier];
      [inFlightMessages setObject:onqueue_peekMessage forKeyedSubscript:identifier];

      v7 = +[WCXPCManager sharedManager];
      message2 = [onqueue_peekMessage message];
      message3 = [onqueue_peekMessage message];
      pairingID = [message3 pairingID];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __39__WCQueueManager_onqueue_attemptToSend__block_invoke;
      v13[3] = &unk_278B7C5E0;
      v13[4] = self;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __39__WCQueueManager_onqueue_attemptToSend__block_invoke_3;
      v11[3] = &unk_278B7BF50;
      v11[4] = self;
      v12 = onqueue_peekMessage;
      [v7 sendMessage:message2 clientPairingID:pairingID acceptanceHandler:v13 errorHandler:v11];

      [(WCQueueManager *)self setMessageOutstanding:1];
    }
  }
}

void __39__WCQueueManager_onqueue_attemptToSend__block_invoke(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__WCQueueManager_onqueue_attemptToSend__block_invoke_2;
  v5[3] = &unk_278B7C5B8;
  v5[4] = v3;
  v6 = a2;
  v7 = a3;
  dispatch_async(v4, v5);
}

uint64_t __39__WCQueueManager_onqueue_attemptToSend__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMessageOutstanding:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return [v2 onqueue_handleAcceptanceWithCurrentAccepted:v3 nextAvailable:v4];
}

void __39__WCQueueManager_onqueue_attemptToSend__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WCQueueManager_onqueue_attemptToSend__block_invoke_4;
  block[3] = &unk_278B7C068;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __39__WCQueueManager_onqueue_attemptToSend__block_invoke_4(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __39__WCQueueManager_onqueue_attemptToSend__block_invoke_4_cold_1(a1, v2);
  }

  return [*(a1 + 40) onqueue_handleFailedDaemonConnectionForQueuedMessage:*(a1 + 48)];
}

- (void)onqueue_handleFailedDaemonConnectionForQueuedMessage:(id)message
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  [(WCQueueManager *)self setMessageOutstanding:0];
  if ([messageCopy retryCount] > 1)
  {
    [(WCQueueManager *)self onqueue_dequeueMessage];
    message = [messageCopy message];
    identifier = [message identifier];
    v8 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7001];
    [(WCQueueManager *)self onqueue_handleSentMessageWithIdentifier:identifier error:v8];
  }

  else
  {
    [(WCQueueManager *)self onqueue_attemptToSend];
    [messageCopy setRetryCount:{objc_msgSend(messageCopy, "retryCount") + 1}];
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[WCQueueManager onqueue_handleFailedDaemonConnectionForQueuedMessage:]";
      v12 = 2048;
      retryCount = [messageCopy retryCount];
      _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s retrying %ld", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)onqueue_handleAcceptanceWithCurrentAccepted:(BOOL)accepted nextAvailable:(BOOL)available
{
  availableCopy = available;
  acceptedCopy = accepted;
  v13 = *MEMORY[0x277D85DE8];
  v7 = wc_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    *&v11[4] = "[WCQueueManager onqueue_handleAcceptanceWithCurrentAccepted:nextAvailable:]";
    if (acceptedCopy)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    *v11 = 136446722;
    *&v11[14] = v9;
    *&v11[12] = 2080;
    if (availableCopy)
    {
      v8 = "YES";
    }

    *&v11[22] = 2080;
    v12 = v8;
    _os_log_impl(&dword_23B2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s current %s, next %s", v11, 0x20u);
  }

  if (acceptedCopy && ([(WCQueueManager *)self onqueue_dequeueMessage], availableCopy))
  {
    [(WCQueueManager *)self onqueue_attemptToSend];
  }

  else
  {
    [(WCQueueManager *)self setCanSend:0, *v11, *&v11[16]];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WCQueueManager_handleSentMessageWithIdentifier_error___block_invoke;
  block[3] = &unk_278B7C068;
  block[4] = self;
  v12 = identifierCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)onqueue_handleSentMessageWithIdentifier:(id)identifier error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSPrintF();
    *buf = 136446722;
    v17 = "[WCQueueManager onqueue_handleSentMessageWithIdentifier:error:]";
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s id: %{public}@ with %{public}@", buf, 0x20u);
  }

  inFlightMessages = [(WCQueueManager *)self inFlightMessages];
  v11 = [inFlightMessages objectForKeyedSubscript:identifierCopy];

  completionHandler = [v11 completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [v11 completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);

    inFlightMessages2 = [(WCQueueManager *)self inFlightMessages];
    [inFlightMessages2 removeObjectForKey:identifierCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelQueuedMessages
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WCQueueManager_cancelQueuedMessages__block_invoke;
  block[3] = &unk_278B7BF78;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)onqueue_cancelQueuedMessages
{
  v45 = *MEMORY[0x277D85DE8];
  inFlightMessages = [(WCQueueManager *)self inFlightMessages];
  allValues = [inFlightMessages allValues];
  v4 = [allValues sortedArrayUsingSelector:sel_compare_];

  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = WCCompactStringFromCollection(v4);
    messageQueue = [(WCQueueManager *)self messageQueue];
    v8 = WCCompactStringFromCollection(messageQueue);
    *buf = 136446722;
    v40 = "[WCQueueManager onqueue_cancelQueuedMessages]";
    v41 = 2114;
    v42 = v6;
    v43 = 2114;
    v44 = v8;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s inflight messages %{public}@ queued messages %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7007];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = wc_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v40 = "[WCQueueManager onqueue_cancelQueuedMessages]";
          v41 = 2114;
          v42 = v14;
          _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
        }

        completionHandler = [v14 completionHandler];
        (completionHandler)[2](completionHandler, v9);
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  messageQueue2 = [(WCQueueManager *)self messageQueue];
  v18 = [messageQueue2 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(messageQueue2);
        }

        v22 = *(*(&v29 + 1) + 8 * j);
        v23 = wc_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v40 = "[WCQueueManager onqueue_cancelQueuedMessages]";
          v41 = 2114;
          v42 = v22;
          _os_log_impl(&dword_23B2FA000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
        }

        completionHandler2 = [v22 completionHandler];
        (completionHandler2)[2](completionHandler2, v9);
      }

      v19 = [messageQueue2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  inFlightMessages2 = [(WCQueueManager *)self inFlightMessages];
  [inFlightMessages2 removeAllObjects];

  [(WCQueueManager *)self onqueue_clearQueuedMessages];
  [(WCQueueManager *)self onqueue_cancelDaemonMessages];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)onqueue_cancelDaemonMessages
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[WCQueueManager onqueue_cancelDaemonMessages]";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", &v5, 0xCu);
  }

  v3 = +[WCXPCManager sharedManager];
  [v3 cancelAllOutstandingMessages];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)onqueue_enqueueMessage:(id)message
{
  messageCopy = message;
  messageQueue = [(WCQueueManager *)self messageQueue];
  [messageQueue addObject:messageCopy];

  [(WCQueueManager *)self onqueue_attemptToSend];
}

- (id)onqueue_peekMessage
{
  messageQueue = [(WCQueueManager *)self messageQueue];
  v4 = [messageQueue count];

  if (v4)
  {
    messageQueue2 = [(WCQueueManager *)self messageQueue];
    v6 = [messageQueue2 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)onqueue_dequeueMessage
{
  messageQueue = [(WCQueueManager *)self messageQueue];
  v4 = [messageQueue count];

  if (v4)
  {
    messageQueue2 = [(WCQueueManager *)self messageQueue];
    [messageQueue2 removeObjectAtIndex:0];
  }
}

- (void)onqueue_clearQueuedMessages
{
  messageQueue = [(WCQueueManager *)self messageQueue];
  [messageQueue removeAllObjects];
}

void __39__WCQueueManager_onqueue_attemptToSend__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v3 = NSPrintF();
  *buf = 136446466;
  v7 = "[WCQueueManager onqueue_attemptToSend]_block_invoke_4";
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_23B2FA000, a2, OS_LOG_TYPE_ERROR, "%{public}s xpc failure due to %{public}@", buf, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end