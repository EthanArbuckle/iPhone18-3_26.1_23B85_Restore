@interface AXUIMessageSendHandler
- (AXUIMessageSendHandler)initWithMessageSender:(id)sender delegate:(id)delegate;
- (AXUIMessageSender)messageSender;
- (AXUIMessageSenderDelegate)delegate;
- (void)_sendMessage:(id)message context:(void *)context previousError:(id)error;
- (void)sendXPCMessage:(id)message context:(void *)context completion:(id)completion;
- (void)stopSendingXPCMessage;
@end

@implementation AXUIMessageSendHandler

- (AXUIMessageSendHandler)initWithMessageSender:(id)sender delegate:(id)delegate
{
  senderCopy = sender;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = AXUIMessageSendHandler;
  v8 = [(AXUIMessageSendHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_messageSender, senderCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

- (void)sendXPCMessage:(id)message context:(void *)context completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  [(AXUIMessageSendHandler *)self setRemainingAttempts:10];
  [(AXUIMessageSendHandler *)self setCompletion:completionCopy];

  [(AXUIMessageSendHandler *)self _sendMessage:messageCopy context:context previousError:0];
}

- (void)stopSendingXPCMessage
{
  [(AXUIMessageSendHandler *)self setRemainingAttempts:0];
  [(AXUIMessageSendHandler *)self setCompletion:0];
  [(AXUIMessageSendHandler *)self setMessageSender:0];

  [(AXUIMessageSendHandler *)self setDelegate:0];
}

- (void)_sendMessage:(id)message context:(void *)context previousError:(id)error
{
  messageCopy = message;
  errorCopy = error;
  if ([(AXUIMessageSendHandler *)self remainingAttempts])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke;
    v27[3] = &unk_278BF53E8;
    v27[4] = self;
    v10 = messageCopy;
    v28 = v10;
    contextCopy = context;
    v11 = MEMORY[0x23EEF9640](v27);
    delegate = [(AXUIMessageSendHandler *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      messageSender = [(AXUIMessageSendHandler *)self messageSender];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_6;
      v21[3] = &unk_278BF5438;
      v26 = v11;
      v22 = v10;
      v23 = delegate;
      selfCopy = self;
      v25 = errorCopy;
      [v23 messageSender:messageSender accessLaunchAngelConnectionForMessageWithContext:context usingBlock:v21];

      v14 = v26;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:{@"Failed to establish connection to the %@.", @"Accessibility UI Server"}];
      (v11)[2](v11, v14);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:messageCopy error:0];
    v16 = MEMORY[0x277CCA9B8];
    ax_nonRedundantDescription = [errorCopy ax_nonRedundantDescription];
    v18 = [v16 ax_errorWithDomain:@"AXUIErrorDomainCommunication" description:{@"Failed to send message %@ to the %@. Last encountered error: %@.", v15, @"Accessibility UI Server", ax_nonRedundantDescription}];

    completion = [(AXUIMessageSendHandler *)self completion];

    if (completion)
    {
      completion2 = [(AXUIMessageSendHandler *)self completion];
      (completion2)[2](completion2, 0, 0, v18);
    }
  }
}

void __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = AXLogIPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_cold_1(v4);
  }

  v5 = [MEMORY[0x277CE6948] backgroundAccessQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_1;
  v10[3] = &unk_278BF53C0;
  v6 = a1[5];
  v10[4] = a1[4];
  v7 = v6;
  v8 = a1[6];
  v12 = v3;
  v13 = v8;
  v11 = v7;
  v9 = v3;
  [v5 afterDelay:v10 processReadingBlock:0.05];
}

uint64_t __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_1(uint64_t a1)
{
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_1_cold_1(a1, v2);
  }

  if ([*(a1 + 32) remainingAttempts])
  {
    [*(a1 + 32) setRemainingAttempts:{objc_msgSend(*(a1 + 32), "remainingAttempts") - 1}];
  }

  return [*(a1 + 32) _sendMessage:*(a1 + 40) context:*(a1 + 56) previousError:*(a1 + 48)];
}

void __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_6(uint64_t a1, void *a2)
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

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_9;
  v12[3] = &unk_278BF5410;
  v6 = *(a1 + 32);
  *&v7 = *(a1 + 40);
  *(&v7 + 1) = *(a1 + 48);
  v11 = v7;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v3 sendBoardServiceMessage:v6 callback:v12];
}

void __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_9(uint64_t a1, void *a2, void *a3)
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
    v14 = 0;
    goto LABEL_22;
  }

  v10 = count;
  v11 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v26 = 0;
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) messageSender];
    v14 = [v12 messageSender:v13 extractCustomDataFromXPCReply:v5 numberOfKeyValuePairsForCustomData:&v26];

    v10 -= v26;
  }

  else
  {
    v14 = 0;
  }

  if (v10 == 2)
  {
    string = xpc_dictionary_get_string(v5, _AXUIMessageReplyKeyErrorDomain[0]);
    v17 = xpc_dictionary_get_string(v5, _AXUIMessageReplyKeyErrorDescription[0]);
    if (string)
    {
      v18 = v17;
      if (v17)
      {
        v19 = [*(a1 + 40) completion];

        if (!v19)
        {
          goto LABEL_7;
        }

        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v18];
        v20 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:v7 description:{@"%@", v8}];
        v21 = [*(a1 + 40) completion];
        (v21)[2](v21, v14, 0, v20);

        goto LABEL_5;
      }
    }

LABEL_22:
    v25 = 0;
    v8 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v5 error:&v25];
    v22 = v25;
    v7 = v22;
    if (v8)
    {
      v23 = [*(a1 + 40) completion];

      if (v23)
      {
        v24 = [*(a1 + 40) completion];
        (v24)[2](v24, v14, v8, 0);
      }

      goto LABEL_5;
    }

    if (v22)
    {
LABEL_4:
      (*(*(a1 + 56) + 16))();
      v8 = 0;
LABEL_5:

      goto LABEL_6;
    }

LABEL_3:
    v7 = *(a1 + 48);
    goto LABEL_4;
  }

  if (v10 != 1 || !xpc_dictionary_get_BOOL(v5, _AXUIMessageReplyKeyDidSucceed[0]))
  {
    goto LABEL_22;
  }

  v15 = [*(a1 + 40) completion];

  if (!v15)
  {
    goto LABEL_7;
  }

  v7 = [*(a1 + 40) completion];
  (*(v7 + 2))(v7, v14, 0, 0);
LABEL_6:

LABEL_7:
}

- (AXUIMessageSenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AXUIMessageSender)messageSender
{
  WeakRetained = objc_loadWeakRetained(&self->_messageSender);

  return WeakRetained;
}

void __61__AXUIMessageSendHandler__sendMessage_context_previousError___block_invoke_1_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "remainingAttempts")}];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_23DC04000, a2, OS_LOG_TYPE_DEBUG, "AXUIMessageSendHandler remainingAttempts: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end