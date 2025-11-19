@interface CXChannelProvider
+ (id)allocWithZone:(_NSZone *)a3;
- (CXChannelProvider)initWithConfiguration:(id)a3;
- (CXChannelProviderConfiguration)configuration;
- (CXChannelProviderDelegate)delegate;
- (NSArray)pendingTransactions;
- (id)channelProviderHostDelegate;
- (void)_didReceivePushPayload:(id)a3;
- (void)_didReceivePushPayload:(id)a3 channelUUID:(id)a4 reply:(id)a5 isServiceUpdateMessage:(BOOL)a6 isHighPriority:(BOOL)a7 remainingHighPriorityBudget:(int64_t)a8;
- (void)_didReceivePushToken:(id)a3;
- (void)_ensureApplicationControllerConnection;
- (void)commitTransaction:(id)a3;
- (void)handleActionTimeout:(id)a3;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)handleMediaServicesWereResetNotification:(id)a3;
- (void)invalidate;
- (void)performAction:(id)a3;
- (void)registerCurrentConfiguration;
- (void)reportChannelWithUUID:(id)a3 connectedAtDate:(id)a4;
- (void)reportChannelWithUUID:(id)a3 disconnectedAtDate:(id)a4 disconnectedReason:(int64_t)a5;
- (void)reportChannelWithUUID:(id)a3 updated:(id)a4 completionHandler:(id)a5;
- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5;
- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)a3 update:(id)a4 shouldReplaceOutgoingTransmission:(BOOL)a5 completionHandler:(id)a6;
- (void)requestChannelPushToken;
- (void)setConfiguration:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)unregisterChannelPushToken;
@end

@implementation CXChannelProvider

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(CXChannelProvider *)CXXPCChannelProvider allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___CXChannelProvider;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (CXChannelProvider)initWithConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CXChannelProvider;
  v5 = [(CXChannelProvider *)&v12 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider initWithConfiguration:]", @"configuration"}];
    }

    v6 = objc_alloc_init(CXAbstractProvider);
    abstractProvider = v5->_abstractProvider;
    v5->_abstractProvider = v6;

    [(CXAbstractProvider *)v5->_abstractProvider setInternalActionDelegate:v5];
    [(CXAbstractProvider *)v5->_abstractProvider setConnectionInterruptionHandler:&__block_literal_global_14];
    v8 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v8;

    if ([(CXChannelProvider *)v5 requiresProxyingAVAudioSessionState])
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:v5 selector:sel_handleMediaServicesWereResetNotification_ name:*MEMORY[0x1E6958128] object:0];
    }
  }

  return v5;
}

void __43__CXChannelProvider_initWithConfiguration___block_invoke()
{
  v0 = [MEMORY[0x1E6958460] sharedInstance];
  v6 = 0;
  v1 = [v0 setInterruptionPriority:0 error:&v6];
  v2 = v6;

  v3 = CXDefaultLog();
  v4 = v3;
  if (v1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Successfully reset audio session interruption priority to Normal", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__CXProvider_initWithConfiguration___block_invoke_cold_1(v2, v4);
  }
}

- (CXChannelProviderConfiguration)configuration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v3 = [(CXChannelProvider *)self abstractProvider];
  v4 = [v3 queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CXChannelProvider_configuration__block_invoke;
  v7[3] = &unk_1E7C06E28;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __34__CXChannelProvider_configuration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelProvider *)self abstractProvider];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CXChannelProvider_setConfiguration___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __38__CXChannelProvider_setConfiguration___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that configuration was set to %@", &v10, 0x16u);
  }

  v5 = [*(a1 + 40) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  result = [*(a1 + 32) registerCurrentConfiguration];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)channelProviderHostDelegate
{
  v2 = [(CXChannelProvider *)self hostProtocolDelegate];
  if ([v2 conformsToProtocol:&unk_1F2CB38E0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CXChannelProviderDelegate)delegate
{
  v2 = [(CXChannelProvider *)self abstractProvider];
  v3 = [v2 delegate];

  if ([v3 conformsToProtocol:&unk_1F2CB9B60])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)reportChannelWithUUID:(id)a3 connectedAtDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:connectedAtDate:]", @"UUID"}];
  }

  v8 = [(CXChannelProvider *)self abstractProvider];
  v9 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CXChannelProvider_reportChannelWithUUID_connectedAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __59__CXChannelProvider_reportChannelWithUUID_connectedAtDate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that channel with UUID %@ connected at date %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) channelProviderHostDelegate];
  [v6 reportChannelWithUUID:*(a1 + 40) connectedAtDate:*(a1 + 48) completionHandler:&__block_literal_global_120];

  v7 = *MEMORY[0x1E69E9840];
}

void __59__CXChannelProvider_reportChannelWithUUID_connectedAtDate___block_invoke_117(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = CXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Remote host responded with error %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)reportChannelWithUUID:(id)a3 disconnectedAtDate:(id)a4 disconnectedReason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:disconnectedAtDate:disconnectedReason:]", @"UUID"}];
  }

  v10 = [(CXChannelProvider *)self abstractProvider];
  v11 = [v10 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__CXChannelProvider_reportChannelWithUUID_disconnectedAtDate_disconnectedReason___block_invoke;
  block[3] = &unk_1E7C07488;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a5;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, block);
}

void __81__CXChannelProvider_reportChannelWithUUID_disconnectedAtDate_disconnectedReason___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v12 = 138413058;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that channel with UUID %@ disconnected at date %@ disconnectedReason: %ld", &v12, 0x2Au);
  }

  v7 = [*(a1 + 32) channelProviderHostDelegate];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  [v7 reportChannelWithUUID:v8 disconnectedAtDate:v9 disconnectedReason:v10 completionHandler:&__block_literal_global_124];

  v11 = *MEMORY[0x1E69E9840];
}

void __81__CXChannelProvider_reportChannelWithUUID_disconnectedAtDate_disconnectedReason___block_invoke_122(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = CXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Remote host responded with error %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)reportChannelWithUUID:(id)a3 updated:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:updated:completionHandler:]", @"UUID"}];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:updated:completionHandler:]", @"update"}];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(CXChannelProvider *)self abstractProvider];
  v12 = [v11 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CXChannelProvider_reportChannelWithUUID_updated_completionHandler___block_invoke;
  block[3] = &unk_1E7C06DE0;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, block);
}

void __69__CXChannelProvider_reportChannelWithUUID_updated_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    *buf = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that channel with UUID %@ updated with: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) channelProviderHostDelegate];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CXChannelProvider_reportChannelWithUUID_updated_completionHandler___block_invoke_128;
  v11[3] = &unk_1E7C077F8;
  v9 = *(a1 + 56);
  v11[4] = *(a1 + 32);
  v12 = v9;
  [v6 reportChannelWithUUID:v7 updated:v8 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __69__CXChannelProvider_reportChannelWithUUID_updated_completionHandler___block_invoke_128(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Remote host responded with error %@", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) abstractProvider];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__CXChannelProvider_reportChannelWithUUID_updated_completionHandler___block_invoke_129;
    v7[3] = &unk_1E7C073B0;
    v9 = *(a1 + 40);
    v8 = v3;
    [v5 performDelegateCallback:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionEndedForChannelWithUUID:reason:completionHandler:]", @"UUID"}];
  }

  v10 = [(CXChannelProvider *)self abstractProvider];
  v11 = [v10 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CXChannelProvider_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke;
  block[3] = &unk_1E7C07820;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, block);
}

void __96__CXChannelProvider_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 56);
    *buf = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ reports channel with UUID %@ ended an incoming transmission with reason %ld", buf, 0x20u);
  }

  v6 = [*(a1 + 32) channelProviderHostDelegate];
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__CXChannelProvider_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_130;
  v11[3] = &unk_1E7C077F8;
  v9 = *(a1 + 48);
  v11[4] = *(a1 + 32);
  v12 = v9;
  [v6 reportIncomingTransmissionEndedForChannelWithUUID:v7 reason:v8 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __96__CXChannelProvider_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_130(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Remote host responded with error %@", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) abstractProvider];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __96__CXChannelProvider_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_131;
    v7[3] = &unk_1E7C073B0;
    v9 = *(a1 + 40);
    v8 = v3;
    [v5 performDelegateCallback:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)a3 update:(id)a4 shouldReplaceOutgoingTransmission:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionStartedForChannelWithUUID:update:shouldReplaceOutgoingTransmission:completionHandler:]", @"update"}];
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionStartedForChannelWithUUID:update:shouldReplaceOutgoingTransmission:completionHandler:]", @"completionHandler"}];
    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionStartedForChannelWithUUID:update:shouldReplaceOutgoingTransmission:completionHandler:]", @"UUID"}];
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = [(CXChannelProvider *)self abstractProvider];
  v14 = [v13 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__CXChannelProvider_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke;
  block[3] = &unk_1E7C07848;
  block[4] = self;
  v19 = v10;
  v22 = a5;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, block);
}

void __132__CXChannelProvider_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    *buf = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ reports channel with UUID %@ started an incoming transmission with update %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) channelProviderHostDelegate];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __132__CXChannelProvider_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_135;
  v12[3] = &unk_1E7C077F8;
  v10 = *(a1 + 56);
  v12[4] = *(a1 + 32);
  v13 = v10;
  [v6 reportIncomingTransmissionStartedForChannelWithUUID:v7 update:v8 shouldReplaceOutgoingTransmission:v9 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __132__CXChannelProvider_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_135(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Remote host responded with error %@", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) abstractProvider];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __132__CXChannelProvider_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_136;
    v7[3] = &unk_1E7C073B0;
    v9 = *(a1 + 40);
    v8 = v3;
    [v5 performDelegateCallback:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleMediaServicesWereResetNotification:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(CXChannelProvider *)self registerCurrentConfiguration];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performAction:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CXChannelProvider *)self abstractProvider];
  v6 = [v5 delegateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CXChannelProvider *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performChannelJoinAction:v8];
      goto LABEL_25;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performChannelJoinAction_);
      v12 = 138412290;
      v13 = v10;
LABEL_23:
      _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate does not respond to %@. Action will not be performed", &v12, 0xCu);

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performChannelLeaveAction:v8];
      goto LABEL_25;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performChannelLeaveAction_);
      v12 = 138412290;
      v13 = v10;
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performChannelTransmitStartAction:v8];
      goto LABEL_25;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performChannelTransmitStartAction_);
      v12 = 138412290;
      v13 = v10;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performChannelTransmitStopAction:v8];
      goto LABEL_25;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performChannelTransmitStopAction_);
      v12 = 138412290;
      v13 = v10;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CXProvider *)v4 performAction:v8];
  }

LABEL_25:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXChannelProvider *)self abstractProvider];
  [v8 _syncSetDelegate:v7 queue:v6];

  if (v7)
  {
    [(CXChannelProvider *)self _ensureApplicationControllerConnection];
    v9 = [(CXChannelProvider *)self voipApplicationControllerConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__CXChannelProvider_setDelegate_queue___block_invoke;
    v12[3] = &unk_1E7C076B8;
    v12[4] = self;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__CXChannelProvider_setDelegate_queue___block_invoke_3;
    v11[3] = &unk_1E7C07898;
    v11[4] = self;
    [v10 pttCheckInWithReply:v11];
  }
}

void __39__CXChannelProvider_setDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractProvider];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CXChannelProvider_setDelegate_queue___block_invoke_2;
  v3[3] = &unk_1E7C06CA8;
  v3[4] = *(a1 + 32);
  [v2 performDelegateCallback:v3];
}

void __39__CXChannelProvider_setDelegate_queue___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 provider:*(a1 + 32) didReceiveCheckInResult:4 channelUUID:0];
  }
}

void __39__CXChannelProvider_setDelegate_queue___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) abstractProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__CXChannelProvider_setDelegate_queue___block_invoke_4;
  v9[3] = &unk_1E7C07870;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = a2;
  v9[4] = v7;
  v8 = v5;
  [v6 performDelegateCallback:v9];
}

void __39__CXChannelProvider_setDelegate_queue___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 provider:*(a1 + 32) didReceiveCheckInResult:*(a1 + 48) channelUUID:*(a1 + 40)];
  }
}

- (NSArray)pendingTransactions
{
  v2 = [(CXChannelProvider *)self abstractProvider];
  v3 = [v2 pendingTransactions];

  return v3;
}

- (void)invalidate
{
  v2 = [(CXChannelProvider *)self abstractProvider];
  [v2 invalidate];
}

- (void)commitTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelProvider *)self abstractProvider];
  [v5 provider:self commitTransaction:v4];
}

- (void)handleActionTimeout:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelProvider *)self abstractProvider];
  [v5 provider:self handleTimeoutForAction:v4];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CXChannelProvider_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performDelegateCallback:v7];
}

void __64__CXChannelProvider_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) BOOLValue];
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109120;
    v13 = v2;
    _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Notified that audio session activation state changed to: %d", &v12, 8u);
  }

  v4 = [MEMORY[0x1E6958460] sharedInstance];
  v5 = [*(a1 + 40) delegate];
  if (v2)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = CXDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = 1;
        _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "Notifying delegate that audio session activation state changed to: %d", &v12, 8u);
      }

      v8 = [*(a1 + 40) delegate];
      [v8 provider:*(a1 + 40) didActivateAudioSession:v4];
LABEL_12:
    }
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = CXDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = 0;
        _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate that audio session activation state changed to: %d", &v12, 8u);
      }

      v8 = [*(a1 + 40) delegate];
      [v8 provider:*(a1 + 40) didDeactivateAudioSession:v4];
      goto LABEL_12;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)registerCurrentConfiguration
{
  v3 = [(CXChannelProvider *)self abstractProvider];
  v4 = [v3 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CXChannelProvider_registerCurrentConfiguration__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __49__CXChannelProvider_registerCurrentConfiguration__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if ([*(a1 + 32) requiresProxyingAVAudioSessionState])
  {
    v3 = [MEMORY[0x1E6958460] sharedInstance];
    [v2 setAudioSessionID:{objc_msgSend(v3, "opaqueSessionID")}];
  }

  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Registering configuration %@", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) channelProviderHostDelegate];
  v6 = [v2 copy];
  [v5 registerWithConfiguration:v6 completionHandler:&__block_literal_global_151];

  v7 = *MEMORY[0x1E69E9840];
}

void __49__CXChannelProvider_registerCurrentConfiguration__block_invoke_149(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = CXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 userInfo];
      v6 = 138412546;
      v7 = v2;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Remote host responded with error %@, %@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_ensureApplicationControllerConnection
{
  v3 = [(CXChannelProvider *)self voipApplicationControllerConnection];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.ptt" options:4096];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__CXChannelProvider__ensureApplicationControllerConnection__block_invoke;
    v9[3] = &unk_1E7C06E50;
    objc_copyWeak(&v10, &location);
    [v4 setInterruptionHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__CXChannelProvider__ensureApplicationControllerConnection__block_invoke_2;
    v7[3] = &unk_1E7C06E50;
    objc_copyWeak(&v8, &location);
    [v4 setInvalidationHandler:v7];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB9BC0];
    [v4 setRemoteObjectInterface:v5];

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB1020];
    [v4 setExportedInterface:v6];

    [v4 setExportedObject:self];
    [(CXChannelProvider *)self setVoipApplicationControllerConnection:v4];
    [v4 resume];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __59__CXChannelProvider__ensureApplicationControllerConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setVoipApplicationControllerConnection:0];
    WeakRetained = v2;
  }
}

void __59__CXChannelProvider__ensureApplicationControllerConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setVoipApplicationControllerConnection:0];
    WeakRetained = v2;
  }
}

- (void)requestChannelPushToken
{
  [(CXChannelProvider *)self delegate];

  [(CXChannelProvider *)self _ensureApplicationControllerConnection];
  v4 = [(CXChannelProvider *)self voipApplicationControllerConnection];
  v3 = [v4 remoteObjectProxy];
  [v3 pttRegister];
}

- (void)unregisterChannelPushToken
{
  [(CXChannelProvider *)self _ensureApplicationControllerConnection];
  v4 = [(CXChannelProvider *)self voipApplicationControllerConnection];
  v3 = [v4 remoteObjectProxy];
  [v3 pttUnregister];
}

- (void)_didReceivePushToken:(id)a3
{
  v4 = a3;
  [(CXChannelProvider *)self delegate];

  v5 = [(CXChannelProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CXChannelProvider__didReceivePushToken___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performDelegateCallback:v7];
}

void __42__CXChannelProvider__didReceivePushToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 provider:*(a1 + 32) didReceiveChannelPushToken:*(a1 + 40)];
  }
}

- (void)_didReceivePushPayload:(id)a3
{
  v4 = a3;
  [(CXChannelProvider *)self delegate];

  v5 = [(CXChannelProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CXChannelProvider__didReceivePushPayload___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performDelegateCallback:v7];
}

void __44__CXChannelProvider__didReceivePushPayload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 provider:*(a1 + 32) didReceivePushPayload:*(a1 + 40)];
  }
}

- (void)_didReceivePushPayload:(id)a3 channelUUID:(id)a4 reply:(id)a5 isServiceUpdateMessage:(BOOL)a6 isHighPriority:(BOOL)a7 remainingHighPriorityBudget:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  [(CXChannelProvider *)self delegate];

  v17 = [(CXChannelProvider *)self abstractProvider];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128__CXChannelProvider__didReceivePushPayload_channelUUID_reply_isServiceUpdateMessage_isHighPriority_remainingHighPriorityBudget___block_invoke;
  v21[3] = &unk_1E7C078C0;
  v21[4] = self;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v26 = a6;
  v27 = a7;
  v25 = a8;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 performDelegateCallback:v21];
}

void __128__CXChannelProvider__didReceivePushPayload_channelUUID_reply_isServiceUpdateMessage_isHighPriority_remainingHighPriorityBudget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 provider:*(a1 + 32) didReceivePushPayload:*(a1 + 40) channelUUID:*(a1 + 48) reply:*(a1 + 56) isServiceUpdateMessage:*(a1 + 72) isHighPriority:*(a1 + 73) remainingHighPriorityBudget:*(a1 + 64)];
  }
}

@end