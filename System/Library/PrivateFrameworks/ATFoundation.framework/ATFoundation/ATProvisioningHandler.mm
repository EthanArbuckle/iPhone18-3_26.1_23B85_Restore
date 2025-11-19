@interface ATProvisioningHandler
- (id)initAsEndpointType:(int)a3;
- (void)_processProvisioningResponse:(id)a3 toCommand:(id)a4 onMessageLink:(id)a5;
- (void)_sendProvisioningRequest:(id)a3 OnMessageLink:(id)a4;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)messageLinkWasOpened:(id)a3;
@end

@implementation ATProvisioningHandler

- (void)_processProvisioningResponse:(id)a3 toCommand:(id)a4 onMessageLink:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 parameters];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATProvisioningHandler__processProvisioningResponse_toCommand_onMessageLink___block_invoke;
  v13[3] = &unk_2784E8DF8;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [(ATProvisioningHandler *)self _processProvisioningResponse:v12 withParams:v10 onMessageLink:v11 withCompletion:v13];
}

void __78__ATProvisioningHandler__processProvisioningResponse_toCommand_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v11 = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "failed to process provisioning response to command %{public}@ on %{public}@ - closing. err=%{public}@", &v11, 0x20u);
    }

    [*(a1 + 48) close];
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:@"ProvisioningRegisterEndpoint"])
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = @"ProvisioningCreateSession";
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:@"ProvisioningCreateSession"])
      {
        [*(a1 + 48) setInitialized:1];
        goto LABEL_11;
      }

      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = @"ProvisioningBeginSession";
    }

    [v7 _sendProvisioningRequest:v9 OnMessageLink:v8];
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendProvisioningRequest:(id)a3 OnMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CEA458]);
  v9 = [(ATProvisioningHandler *)self _paramsForRequest:v6];
  v10 = [v8 initWithCommand:v6 dataClass:@"Provisioning" parameters:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ATProvisioningHandler__sendProvisioningRequest_OnMessageLink___block_invoke;
  v13[3] = &unk_2784E8DD0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [v11 sendRequest:v10 withCompletion:v13];
}

void __64__ATProvisioningHandler__sendProvisioningRequest_OnMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isPartial] & 1) == 0)
  {
    if (v6)
    {
      v7 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 48);
        v10 = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_ERROR, "failed to send provisioning request on %{public}@ - closing. err=%{public}@", &v10, 0x16u);
      }

      [*(a1 + 48) close];
    }

    else
    {
      [*(a1 + 32) _processProvisioningResponse:v5 toCommand:*(a1 + 40) onMessageLink:*(a1 + 48)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 isInitialized] & 1) != 0 || (objc_msgSend(v7, "command"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", self->_expectedRequestCommand), v8, (v9 & 1) == 0))
  {
    v10 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 command];
      expectedRequestCommand = self->_expectedRequestCommand;
      *buf = 138543874;
      v23 = v11;
      v24 = 2114;
      v25 = expectedRequestCommand;
      v26 = 1024;
      v27 = [v6 isInitialized];
      _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_DEFAULT, "received unexpected provisioning request %{public}@. expected %{public}@, isInitialized=%d", buf, 0x1Cu);
    }

    [v6 close];
  }

  v13 = [v7 command];
  v14 = [v7 parameters];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke;
  v18[3] = &unk_2784E8DA8;
  v19 = v6;
  v20 = v7;
  v21 = self;
  v15 = v7;
  v16 = v6;
  [(ATProvisioningHandler *)self _processProvisioningRequest:v13 withParams:v14 onMessageLink:v16 withCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "messageLink -> %{public}@", buf, 0xCu);
  }

  if (!v5)
  {
    v10 = [*(a1 + 40) command];
    v11 = [v10 isEqualToString:@"ProvisioningRegisterEndpoint"];

    if (v11)
    {
      v12 = @"ProvisioningCreateSession";
    }

    else
    {
      v13 = [*(a1 + 40) command];
      v14 = [v13 isEqualToString:@"ProvisioningCreateSession"];

      if (!v14)
      {
LABEL_12:
        v17 = *(a1 + 32);
        v18 = [*(a1 + 40) responseWithError:0 parameters:v6];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke_7;
        v22[3] = &unk_2784E8D80;
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        [v17 sendResponse:v18 withCompletion:v22];

        goto LABEL_13;
      }

      v12 = @"ProvisioningBeginSession";
    }

    v15 = *(a1 + 48);
    v16 = *(v15 + 16);
    *(v15 + 16) = v12;

    goto LABEL_12;
  }

  v9 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_ERROR, "failed to provision link - closing. err=%{public}@", buf, 0xCu);
  }

  [*(a1 + 32) close];
LABEL_13:
  v19 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 138543362;
    v26 = v20;
    _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "messageLink -> %{public}@", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke_7(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "error sending response to provision message link. err=%{public}@", &v10, 0xCu);
    }

    [*(a1 + 32) close];
  }

  else
  {
    v5 = [*(a1 + 40) command];
    v6 = [v5 isEqualToString:@"ProvisioningRegisterEndpoint"];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 40) command];
      v8 = [v7 isEqualToString:@"ProvisioningBeginSession"];

      if (v8)
      {
        [*(a1 + 32) setInitialized:1];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasOpened:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  endpointType = self->_endpointType;
  v6 = _ATLogCategoryFramework();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (endpointType == 1)
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opened - starting provisioning", &v9, 0xCu);
    }

    [(ATProvisioningHandler *)self _sendProvisioningRequest:@"ProvisioningRegisterEndpoint" OnMessageLink:v4];
  }

  else
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opened - waiting for provisioning message from server", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)initAsEndpointType:(int)a3
{
  v8.receiver = self;
  v8.super_class = ATProvisioningHandler;
  v4 = [(ATProvisioningHandler *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_endpointType = a3;
    expectedRequestCommand = v4->_expectedRequestCommand;
    v4->_expectedRequestCommand = @"ProvisioningRegisterEndpoint";
  }

  return v5;
}

@end