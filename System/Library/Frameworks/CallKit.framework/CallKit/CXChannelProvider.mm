@interface CXChannelProvider
+ (id)allocWithZone:(_NSZone *)zone;
- (CXChannelProvider)initWithConfiguration:(id)configuration;
- (CXChannelProviderConfiguration)configuration;
- (CXChannelProviderDelegate)delegate;
- (NSArray)pendingTransactions;
- (id)channelProviderHostDelegate;
- (void)_didReceivePushPayload:(id)payload;
- (void)_didReceivePushPayload:(id)payload channelUUID:(id)d reply:(id)reply isServiceUpdateMessage:(BOOL)message isHighPriority:(BOOL)priority remainingHighPriorityBudget:(int64_t)budget;
- (void)_didReceivePushToken:(id)token;
- (void)_ensureApplicationControllerConnection;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)handleMediaServicesWereResetNotification:(id)notification;
- (void)invalidate;
- (void)performAction:(id)action;
- (void)registerCurrentConfiguration;
- (void)reportChannelWithUUID:(id)d connectedAtDate:(id)date;
- (void)reportChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason;
- (void)reportChannelWithUUID:(id)d updated:(id)updated completionHandler:(id)handler;
- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler;
- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler;
- (void)requestChannelPushToken;
- (void)setConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)unregisterChannelPushToken;
@end

@implementation CXChannelProvider

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(CXChannelProvider *)CXXPCChannelProvider allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___CXChannelProvider;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (CXChannelProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = CXChannelProvider;
  v5 = [(CXChannelProvider *)&v12 init];
  if (v5)
  {
    if (!configurationCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider initWithConfiguration:]", @"configuration"}];
    }

    v6 = objc_alloc_init(CXAbstractProvider);
    abstractProvider = v5->_abstractProvider;
    v5->_abstractProvider = v6;

    [(CXAbstractProvider *)v5->_abstractProvider setInternalActionDelegate:v5];
    [(CXAbstractProvider *)v5->_abstractProvider setConnectionInterruptionHandler:&__block_literal_global_14];
    v8 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v8;

    if ([(CXChannelProvider *)v5 requiresProxyingAVAudioSessionState])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel_handleMediaServicesWereResetNotification_ name:*MEMORY[0x1E6958128] object:0];
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
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CXChannelProvider_configuration__block_invoke;
  v7[3] = &unk_1E7C06E28;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);

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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CXChannelProvider_setConfiguration___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(queue, v8);
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
  hostProtocolDelegate = [(CXChannelProvider *)self hostProtocolDelegate];
  if ([hostProtocolDelegate conformsToProtocol:&unk_1F2CB38E0])
  {
    v3 = hostProtocolDelegate;
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
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  delegate = [abstractProvider delegate];

  if ([delegate conformsToProtocol:&unk_1F2CB9B60])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)reportChannelWithUUID:(id)d connectedAtDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:connectedAtDate:]", @"UUID"}];
  }

  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CXChannelProvider_reportChannelWithUUID_connectedAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = dCopy;
  v14 = dateCopy;
  v10 = dateCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
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

- (void)reportChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason
{
  dCopy = d;
  dateCopy = date;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:disconnectedAtDate:disconnectedReason:]", @"UUID"}];
  }

  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__CXChannelProvider_reportChannelWithUUID_disconnectedAtDate_disconnectedReason___block_invoke;
  block[3] = &unk_1E7C07488;
  block[4] = self;
  v15 = dCopy;
  v16 = dateCopy;
  reasonCopy = reason;
  v12 = dateCopy;
  v13 = dCopy;
  dispatch_async(queue, block);
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

- (void)reportChannelWithUUID:(id)d updated:(id)updated completionHandler:(id)handler
{
  dCopy = d;
  updatedCopy = updated;
  handlerCopy = handler;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:updated:completionHandler:]", @"UUID"}];
    if (updatedCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportChannelWithUUID:updated:completionHandler:]", @"update"}];
    goto LABEL_3;
  }

  if (!updatedCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CXChannelProvider_reportChannelWithUUID_updated_completionHandler___block_invoke;
  block[3] = &unk_1E7C06DE0;
  block[4] = self;
  v17 = dCopy;
  v18 = updatedCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = updatedCopy;
  v15 = dCopy;
  dispatch_async(queue, block);
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

- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionEndedForChannelWithUUID:reason:completionHandler:]", @"UUID"}];
  }

  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CXChannelProvider_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke;
  block[3] = &unk_1E7C07820;
  block[4] = self;
  v15 = dCopy;
  v16 = handlerCopy;
  reasonCopy = reason;
  v12 = handlerCopy;
  v13 = dCopy;
  dispatch_async(queue, block);
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

- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler
{
  dCopy = d;
  updateCopy = update;
  handlerCopy = handler;
  if (dCopy)
  {
    if (updateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionStartedForChannelWithUUID:update:shouldReplaceOutgoingTransmission:completionHandler:]", @"update"}];
    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionStartedForChannelWithUUID:update:shouldReplaceOutgoingTransmission:completionHandler:]", @"completionHandler"}];
    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelProvider reportIncomingTransmissionStartedForChannelWithUUID:update:shouldReplaceOutgoingTransmission:completionHandler:]", @"UUID"}];
  if (!updateCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__CXChannelProvider_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke;
  block[3] = &unk_1E7C07848;
  block[4] = self;
  v19 = dCopy;
  transmissionCopy = transmission;
  v20 = updateCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = updateCopy;
  v17 = dCopy;
  dispatch_async(queue, block);
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

- (void)handleMediaServicesWereResetNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(CXChannelProvider *)self registerCurrentConfiguration];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  delegateQueue = [abstractProvider delegateQueue];
  dispatch_assert_queue_V2(delegateQueue);

  delegate = [(CXChannelProvider *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performChannelJoinAction:v8];
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
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performChannelLeaveAction:v8];
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
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performChannelTransmitStartAction:v8];
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
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performChannelTransmitStopAction:v8];
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
    [(CXProvider *)actionCopy performAction:v8];
  }

LABEL_25:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  [abstractProvider _syncSetDelegate:delegateCopy queue:queueCopy];

  if (delegateCopy)
  {
    [(CXChannelProvider *)self _ensureApplicationControllerConnection];
    voipApplicationControllerConnection = [(CXChannelProvider *)self voipApplicationControllerConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__CXChannelProvider_setDelegate_queue___block_invoke;
    v12[3] = &unk_1E7C076B8;
    v12[4] = self;
    v10 = [voipApplicationControllerConnection remoteObjectProxyWithErrorHandler:v12];
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
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  pendingTransactions = [abstractProvider pendingTransactions];

  return pendingTransactions;
}

- (void)invalidate
{
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  [abstractProvider invalidate];
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  [abstractProvider provider:self commitTransaction:transactionCopy];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  [abstractProvider provider:self handleTimeoutForAction:timeoutCopy];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  toCopy = to;
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CXChannelProvider_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = toCopy;
  selfCopy = self;
  v6 = toCopy;
  [abstractProvider performDelegateCallback:v7];
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
  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CXChannelProvider_registerCurrentConfiguration__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
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
  voipApplicationControllerConnection = [(CXChannelProvider *)self voipApplicationControllerConnection];

  if (!voipApplicationControllerConnection)
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
  voipApplicationControllerConnection = [(CXChannelProvider *)self voipApplicationControllerConnection];
  remoteObjectProxy = [voipApplicationControllerConnection remoteObjectProxy];
  [remoteObjectProxy pttRegister];
}

- (void)unregisterChannelPushToken
{
  [(CXChannelProvider *)self _ensureApplicationControllerConnection];
  voipApplicationControllerConnection = [(CXChannelProvider *)self voipApplicationControllerConnection];
  remoteObjectProxy = [voipApplicationControllerConnection remoteObjectProxy];
  [remoteObjectProxy pttUnregister];
}

- (void)_didReceivePushToken:(id)token
{
  tokenCopy = token;
  [(CXChannelProvider *)self delegate];

  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CXChannelProvider__didReceivePushToken___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [abstractProvider performDelegateCallback:v7];
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

- (void)_didReceivePushPayload:(id)payload
{
  payloadCopy = payload;
  [(CXChannelProvider *)self delegate];

  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CXChannelProvider__didReceivePushPayload___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  [abstractProvider performDelegateCallback:v7];
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

- (void)_didReceivePushPayload:(id)payload channelUUID:(id)d reply:(id)reply isServiceUpdateMessage:(BOOL)message isHighPriority:(BOOL)priority remainingHighPriorityBudget:(int64_t)budget
{
  payloadCopy = payload;
  dCopy = d;
  replyCopy = reply;
  [(CXChannelProvider *)self delegate];

  abstractProvider = [(CXChannelProvider *)self abstractProvider];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128__CXChannelProvider__didReceivePushPayload_channelUUID_reply_isServiceUpdateMessage_isHighPriority_remainingHighPriorityBudget___block_invoke;
  v21[3] = &unk_1E7C078C0;
  v21[4] = self;
  v22 = payloadCopy;
  v23 = dCopy;
  v24 = replyCopy;
  messageCopy = message;
  priorityCopy = priority;
  budgetCopy = budget;
  v18 = replyCopy;
  v19 = dCopy;
  v20 = payloadCopy;
  [abstractProvider performDelegateCallback:v21];
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