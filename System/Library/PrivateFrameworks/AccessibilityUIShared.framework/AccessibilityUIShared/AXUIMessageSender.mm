@interface AXUIMessageSender
- (AXUIMessageSender)init;
- (AXUIMessageSenderDelegate)delegate;
- (id)sendSynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 context:(void *)a5 error:(id *)a6;
- (void)_didFinishSendingXPCMessage:(id)a3 replyCustomData:(void *)a4;
- (void)_performBlock:(id)a3 inAccessQueue:(id)a4 treatAsWritingBlock:(BOOL)a5;
- (void)_sendLaunchAngelMessage:(id)a3 context:(void *)a4 remainingAttempts:(unint64_t)a5 previousError:(id)a6 completion:(id)a7;
- (void)_sendXPCMessage:(id)a3 context:(void *)a4 completionBlock:(id)a5 completionRequiresWritingBlock:(BOOL)a6 targetAccessQueue:(id)a7 timeout:(double)a8;
- (void)sendAsynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 context:(void *)a5 targetAccessQueue:(id)a6 completionRequiresWritingBlock:(BOOL)a7 completion:(id)a8 timeout:(double)a9;
- (void)setDelegate:(id)a3;
@end

@implementation AXUIMessageSender

- (AXUIMessageSenderDelegate)delegate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __29__AXUIMessageSender_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (AXUIMessageSender)init
{
  v6.receiver = self;
  v6.super_class = AXUIMessageSender;
  v2 = [(AXUIMessageSender *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(AXUIMessageSender *)v2 setDelegateAccessLock:0];
    v4 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:objc_opt_class() description:@"MessageSchedulingSerializationQueue" appendUUIDToLabel:1];
    if (v4)
    {
      [(AXUIMessageSender *)v3 setMessageSchedulingSerializationQueue:v4];
    }

    else
    {

      v3 = 0;
    }
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v3 = v4;
  AX_PERFORM_WITH_LOCK();
}

- (void)_sendLaunchAngelMessage:(id)a3 context:(void *)a4 remainingAttempts:(unint64_t)a5 previousError:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (a5)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke;
    v31[3] = &unk_278BF5208;
    v31[4] = self;
    v15 = v12;
    v32 = v15;
    v34 = a4;
    v35 = a5;
    v16 = v14;
    v33 = v16;
    v17 = MEMORY[0x23EEF9640](v31);
    v18 = [(AXUIMessageSender *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke_3;
      v24[3] = &unk_278BF5258;
      v29 = v17;
      v25 = v15;
      v26 = v18;
      v27 = self;
      v30 = v16;
      v28 = v13;
      [v26 messageSender:self accessLaunchAngelConnectionForMessageWithContext:a4 usingBlock:v24];

      v19 = v29;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:{@"Failed to establish connection to the %@.", @"Accessibility UI Server"}];
      (v17)[2](v17, v19);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v12 error:0];
    v21 = MEMORY[0x277CCA9B8];
    v22 = [v13 ax_nonRedundantDescription];
    v23 = [v21 ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:{@"Failed to send message %@ to the %@. Last encountered error: %@.", v20, @"Accessibility UI Server", v22}];

    (*(v14 + 2))(v14, 0, 0, v23);
  }
}

void __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CE6948] backgroundAccessQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke_2;
  v10[3] = &unk_278BF51E0;
  v5 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v6 = v5;
  v14 = *(a1 + 64);
  v11 = v6;
  v12 = v3;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v8 = v3;
  [v4 afterDelay:v10 processReadingBlock:0.05];
}

void __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = AXLogIPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke_3_cold_1(v4);
    }

    v5 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:@"Received nil connection when trying to send board services message."];
    (*(*(a1 + 64) + 16))();
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke_9;
  v9[3] = &unk_278BF5230;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  v13 = *(a1 + 72);
  v12 = *(a1 + 56);
  v14 = *(a1 + 64);
  [v3 sendBoardServiceMessage:v6 callback:v9];
}

void __96__AXUIMessageSender__sendLaunchAngelMessage_context_remainingAttempts_previousError_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || MEMORY[0x23EEF9860](v5) != MEMORY[0x277D86468])
  {
    goto LABEL_3;
  }

  count = xpc_dictionary_get_count(v5);
  if (!count)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v10 = count;
  v11 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v23 = 0;
    v12 = [*(a1 + 32) messageSender:*(a1 + 40) extractCustomDataFromXPCReply:v5 numberOfKeyValuePairsForCustomData:&v23];
    v10 -= v23;
  }

  else
  {
    v12 = 0;
  }

  if (v10 != 2)
  {
    if (v10 == 1 && xpc_dictionary_get_BOOL(v5, _AXUIMessageReplyKeyDidSucceed[0]))
    {
      v13 = *(a1 + 56);
      if (v13)
      {
        (*(v13 + 16))(v13, v12, 0, 0);
      }

      goto LABEL_6;
    }

LABEL_21:
    v22 = 0;
    v8 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v5 error:&v22];
    v20 = v22;
    v7 = v20;
    if (v8)
    {
      v21 = *(a1 + 56);
      if (v21)
      {
        (*(v21 + 16))(v21, v12, v8, 0);
      }

      goto LABEL_5;
    }

    if (v20)
    {
LABEL_4:
      (*(*(a1 + 64) + 16))();
      v8 = 0;
LABEL_5:

      goto LABEL_6;
    }

LABEL_3:
    v7 = *(a1 + 48);
    goto LABEL_4;
  }

  string = xpc_dictionary_get_string(v5, _AXUIMessageReplyKeyErrorDomain[0]);
  v15 = xpc_dictionary_get_string(v5, _AXUIMessageReplyKeyErrorDescription[0]);
  if (!string)
  {
    goto LABEL_21;
  }

  v16 = v15;
  if (!v15)
  {
    goto LABEL_21;
  }

  if (*(a1 + 56))
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
    v19 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:v17 description:{@"%@", v18}];
    (*(*(a1 + 56) + 16))();
  }

LABEL_6:
}

- (void)_didFinishSendingXPCMessage:(id)a3 replyCustomData:(void *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = [(AXUIMessageSender *)self messageSchedulingSerializationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__AXUIMessageSender__didFinishSendingXPCMessage_replyCustomData___block_invoke;
  v14[3] = &unk_278BF5280;
  v14[5] = &v15;
  v14[6] = a4;
  v14[4] = self;
  [v7 performSynchronousWritingBlock:v14];

  v8 = v16[5];
  if (v8)
  {
    v9 = [v8 xpcMessage];
    v10 = [v16[5] context];
    v11 = [v16[5] completion];
    v12 = [v16[5] completionRequiresWritingBlock];
    v13 = [v16[5] targetAccessQueue];
    [v16[5] timeout];
    [(AXUIMessageSender *)self _sendXPCMessage:v9 context:v10 completionBlock:v11 completionRequiresWritingBlock:v12 targetAccessQueue:v13 timeout:?];
  }

  _Block_object_dispose(&v15, 8);
}

void __65__AXUIMessageSender__didFinishSendingXPCMessage_replyCustomData___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 messageSender:*(a1 + 32) processCustomDataFromXPCReply:*(a1 + 48)];
  }

  v2 = [*(a1 + 32) messageQueue];
  v3 = [v2 count];
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = [v2 ax_dequeueObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (objc_opt_respondsToSelector())
    {
      v9 = *(a1 + 32);
      v10 = [*(*(*(a1 + 40) + 8) + 40) xpcMessage];
      [v11 messageSender:v9 willSendXPCMessage:v10 context:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "context")}];
    }

    objc_autoreleasePoolPop(v5);
    if (v4 == 1)
    {
      [*(a1 + 32) setMessageQueue:0];
    }
  }

  else
  {
    [*(a1 + 32) setSendingMessage:0];
  }
}

- (void)_sendXPCMessage:(id)a3 context:(void *)a4 completionBlock:(id)a5 completionRequiresWritingBlock:(BOOL)a6 targetAccessQueue:(id)a7 timeout:(double)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke;
  v44[3] = &unk_278BF52D0;
  v44[4] = self;
  v17 = v14;
  v45 = v17;
  v18 = v15;
  v47 = v18;
  v19 = v16;
  v46 = v19;
  v48 = a6;
  v20 = MEMORY[0x23EEF9640](v44);
  sendingTimer = self->_sendingTimer;
  if (a8 <= 0.0)
  {
    if (sendingTimer)
    {
      v34 = AXLogIPC();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23DC04000, v34, OS_LOG_TYPE_DEFAULT, "Error: sendingTimer should be nil", buf, 2u);
      }

      [(AXDispatchTimer *)self->_sendingTimer cancel];
      v35 = self->_sendingTimer;
      self->_sendingTimer = 0;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_43;
    v36[3] = &unk_278BF5348;
    v37 = v20;
    v33 = v20;
    [(AXUIMessageSender *)self _sendXPCMessage:v17 context:a4 remainingAttempts:10 previousError:0 completion:v36];
    v32 = v37;
  }

  else
  {
    if (sendingTimer)
    {
      v22 = AXLogIPC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23DC04000, v22, OS_LOG_TYPE_DEFAULT, "Error: sendingTimer should be nil", buf, 2u);
      }

      [(AXDispatchTimer *)self->_sendingTimer cancel];
      v23 = self->_sendingTimer;
      self->_sendingTimer = 0;
    }

    v24 = objc_alloc(MEMORY[0x277CE6950]);
    v25 = [v24 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [(AXUIMessageSender *)self setSendingTimer:v25];

    v26 = AXLogIPC();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [AXUIMessageSender _sendXPCMessage:v26 context:? completionBlock:? completionRequiresWritingBlock:? targetAccessQueue:? timeout:?];
    }

    v27 = [AXUIMessageSendHandler alloc];
    v28 = [(AXUIMessageSender *)self delegate];
    v29 = [(AXUIMessageSendHandler *)v27 initWithMessageSender:self delegate:v28];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_34;
    v41[3] = &unk_278BF52F8;
    v41[4] = self;
    v30 = v20;
    v42 = v30;
    [(AXUIMessageSendHandler *)v29 sendXPCMessage:v17 context:a4 completion:v41];
    v31 = [(AXUIMessageSender *)self sendingTimer];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_35;
    v38[3] = &unk_278BF5320;
    v38[4] = self;
    v39 = v29;
    v40 = v30;
    v32 = v30;
    v33 = v29;
    [v31 afterDelay:v38 processBlock:a8];
  }
}

void __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = AXLogIPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _didFinishSendingXPCMessage:*(a1 + 40) replyCustomData:a2];
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_29;
    v12[3] = &unk_278BF52A8;
    v15 = v10;
    v13 = v7;
    v14 = v8;
    [v11 _performBlock:v12 inAccessQueue:*(a1 + 48) treatAsWritingBlock:*(a1 + 64)];
  }
}

void __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_34(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = AXLogIPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_34_cold_1();
  }

  v9 = [*(a1 + 32) sendingTimer];
  [v9 cancel];

  [*(a1 + 32) setSendingTimer:0];
  (*(*(a1 + 40) + 16))();
}

void __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_35(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23DC04000, v2, OS_LOG_TYPE_DEFAULT, "Error: Sending message timeout, timer fired", v7, 2u);
  }

  [*(a1 + 32) setSendingTimer:0];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Sending message timeout";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"AXUIMessageSenderXPC" code:0 userInfo:v4];

  [*(a1 + 40) stopSendingXPCMessage];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performBlock:(id)a3 inAccessQueue:(id)a4 treatAsWritingBlock:(BOOL)a5
{
  if (a5)
  {
    [a4 performAsynchronousWritingBlock:a3];
  }

  else
  {
    [a4 performAsynchronousReadingBlock:a3];
  }
}

- (void)sendAsynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 context:(void *)a5 targetAccessQueue:(id)a6 completionRequiresWritingBlock:(BOOL)a7 completion:(id)a8 timeout:(double)a9
{
  v27 = a7;
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = v16;
  if (!v15 && v16)
  {
    v18 = AXLogUI();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [AXUIMessageSender sendAsynchronousMessage:v18 withIdentifier:? context:? targetAccessQueue:? completionRequiresWritingBlock:? completion:? timeout:?];
    }
  }

  if (v14)
  {
    v40[0] = 0;
    v19 = [MEMORY[0x277CE69B8] copyXPCMessageFromDictionary:v14 inReplyToXPCMessage:0 error:v40];
    v20 = v40[0];
    if (v20)
    {
      v21 = AXLogUI();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [AXUIMessageSender sendAsynchronousMessage:withIdentifier:context:targetAccessQueue:completionRequiresWritingBlock:completion:timeout:];
      }
    }

    if (v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v19, _AXUIServiceMessageKeyMessageWasEmpty[0], 1);
    v20 = 0;
    if (v19)
    {
LABEL_12:
      xpc_dictionary_set_uint64(v19, _AXUIServiceMessageKeyMessageIdentifier[0], a4);
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v22 = [(AXUIMessageSender *)self messageSchedulingSerializationQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __136__AXUIMessageSender_sendAsynchronousMessage_withIdentifier_context_targetAccessQueue_completionRequiresWritingBlock_completion_timeout___block_invoke;
      v28[3] = &unk_278BF5370;
      v32 = &v36;
      v28[4] = self;
      v23 = v19;
      v29 = v23;
      v33 = a5;
      v24 = v15;
      v30 = v24;
      v35 = v27;
      v25 = v17;
      v31 = v25;
      v34 = a9;
      [v22 performSynchronousWritingBlock:v28];

      if (*(v37 + 24) == 1)
      {
        [(AXUIMessageSender *)self _sendXPCMessage:v23 context:a5 completionBlock:v25 completionRequiresWritingBlock:v27 targetAccessQueue:v24 timeout:a9];
      }

      _Block_object_dispose(&v36, 8);
      goto LABEL_20;
    }
  }

  if (v17)
  {
    if (!v20)
    {
      v20 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:{@"Failed to convert message %@ to its XPC representation.", v14}];
    }

    (v17)[2](v17, 0, v20);
  }

LABEL_20:
}

void __136__AXUIMessageSender_sendAsynchronousMessage_withIdentifier_context_targetAccessQueue_completionRequiresWritingBlock_completion_timeout___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) isSendingMessage] ^ 1;
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v4 = [v2 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 messageSender:*(a1 + 32) willSendXPCMessage:*(a1 + 40) context:*(a1 + 72)];
    }

    [*(a1 + 32) setSendingMessage:1];
  }

  else
  {
    v4 = [v2 messageQueue];
    if (!v4)
    {
      v4 = objc_opt_new();
      [*(a1 + 32) setMessageQueue:?];
    }

    v3 = objc_opt_new();
    [v3 setXpcMessage:*(a1 + 40)];
    [v3 setContext:*(a1 + 72)];
    [v3 setTargetAccessQueue:*(a1 + 48)];
    [v3 setCompletionRequiresWritingBlock:*(a1 + 88)];
    [v3 setCompletion:*(a1 + 56)];
    [v3 setTimeout:*(a1 + 80)];
    [v4 ax_enqueueObject:v3];
  }
}

- (id)sendSynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 context:(void *)a5 error:(id *)a6
{
  v10 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v11 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:objc_opt_class() description:@"SynchronousMessageSendTargetAccessQueue" appendUUIDToLabel:1];
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:@"Failed to initialize structures necessary for synchronous message send."];
    }
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__AXUIMessageSender_sendSynchronousMessage_withIdentifier_context_error___block_invoke;
    v18[3] = &unk_278BF5398;
    v20 = &v22;
    v21 = a6;
    v15 = v12;
    v19 = v15;
    [(AXUIMessageSender *)self sendAsynchronousMessage:v10 withIdentifier:a4 context:a5 targetAccessQueue:v11 completionRequiresWritingBlock:1 completion:v18];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

void __73__AXUIMessageSender_sendSynchronousMessage_withIdentifier_context_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a3;
  v7 = v6;
  if (*(a1 + 48))
  {
    v8 = v6;
    **(a1 + 48) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_sendXPCMessage:(NSObject *)a1 context:completionBlock:completionRequiresWritingBlock:targetAccessQueue:timeout:.cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_23DC04000, a1, OS_LOG_TYPE_DEBUG, "AXUIMessageSender created timeout timer in thread: %@", v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

void __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_23DC04000, v0, OS_LOG_TYPE_ERROR, "Error sending XPC message: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __118__AXUIMessageSender__sendXPCMessage_context_completionBlock_completionRequiresWritingBlock_targetAccessQueue_timeout___block_invoke_34_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_23DC04000, v0, OS_LOG_TYPE_DEBUG, "Completed: Sending message, error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)sendAsynchronousMessage:withIdentifier:context:targetAccessQueue:completionRequiresWritingBlock:completion:timeout:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_23DC04000, v0, OS_LOG_TYPE_FAULT, "Problem making xpcMessage to send: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end