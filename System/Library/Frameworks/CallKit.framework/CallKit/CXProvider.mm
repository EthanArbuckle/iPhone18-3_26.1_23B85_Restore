@interface CXProvider
+ (CXProvider)allocWithZone:(_NSZone *)zone;
+ (void)reportNewIncomingVoIPPushPayload:(NSDictionary *)dictionaryPayload completion:(void *)completion;
- (CXAbstractProviderDelegate)delegate;
- (CXFeatures)featureFlags;
- (CXProvider)initWithConfiguration:(CXProviderConfiguration *)configuration;
- (CXProviderConfiguration)configuration;
- (CXProviderDelegatePrivate)privateDelegate;
- (NSArray)pendingCallActionsOfClass:(Class)callActionClass withCallUUID:(NSUUID *)callUUID;
- (NSArray)pendingTransactions;
- (OS_dispatch_queue)queue;
- (id)callProviderHostDelegate;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)handleMediaServicesWereResetNotification:(id)notification;
- (void)handleMuteStatusChangedNotification:(id)notification;
- (void)invalidate;
- (void)performAction:(id)action;
- (void)performCompletionBlock:(id)block;
- (void)registerCurrentConfiguration;
- (void)reportAudioFinishedForCallWithUUID:(id)d;
- (void)reportCallWithUUID:(NSUUID *)UUID endedAtDate:(NSDate *)dateEnded reason:(CXCallEndedReason)endedReason;
- (void)reportCallWithUUID:(NSUUID *)UUID updated:(CXCallUpdate *)update;
- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)reportCallWithUUID:(id)d failedAtDate:(id)date withContext:(id)context;
- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)reportNewIncomingCallWithUUID:(NSUUID *)UUID update:(CXCallUpdate *)update completion:(void *)completion;
- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID connectedAtDate:(NSDate *)dateConnected;
- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID startedConnectingAtDate:(NSDate *)dateStartedConnecting;
- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)requestTransaction:(id)transaction completion:(id)completion;
- (void)setConfiguration:(CXProviderConfiguration *)configuration;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue;
@end

@implementation CXProvider

- (CXAbstractProviderDelegate)delegate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  delegate = [abstractProvider delegate];

  if ([delegate conformsToProtocol:&unk_1F2CB7240])
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

- (CXProviderDelegatePrivate)privateDelegate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  delegate = [abstractProvider delegate];

  if ([delegate conformsToProtocol:&unk_1F2CB9A40])
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

+ (CXProvider)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(CXProvider *)CXXPCProvider allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___CXProvider;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (CXProvider)initWithConfiguration:(CXProviderConfiguration *)configuration
{
  v4 = configuration;
  v15.receiver = self;
  v15.super_class = CXProvider;
  v5 = [(CXProvider *)&v15 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider initWithConfiguration:]", @"configuration"}];
    }

    v6 = objc_alloc_init(CXAbstractProvider);
    abstractProvider = v5->_abstractProvider;
    v5->_abstractProvider = v6;

    [(CXAbstractProvider *)v5->_abstractProvider setInternalActionDelegate:v5];
    [(CXAbstractProvider *)v5->_abstractProvider setConnectionInterruptionHandler:&__block_literal_global_9];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.callkit.callprovider.completion", v8);
    completionQueue = v5->_completionQueue;
    v5->_completionQueue = v9;

    v11 = [(CXProviderConfiguration *)v4 copy];
    v12 = v5->_configuration;
    v5->_configuration = v11;

    if ([(CXProvider *)v5 requiresProxyingAVAudioSessionState])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel_handleMediaServicesWereResetNotification_ name:*MEMORY[0x1E6958128] object:0];
    }
  }

  return v5;
}

void __36__CXProvider_initWithConfiguration___block_invoke()
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

- (id)callProviderHostDelegate
{
  hostProtocolDelegate = [(CXProvider *)self hostProtocolDelegate];
  if ([hostProtocolDelegate conformsToProtocol:&unk_1F2CA7158])
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

- (CXProviderConfiguration)configuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  queue = [(CXProvider *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CXProvider_configuration__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __27__CXProvider_configuration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setConfiguration:(CXProviderConfiguration *)configuration
{
  v4 = configuration;
  v5 = dyld_program_sdk_at_least();
  if (!v4 && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider setConfiguration:]", @"configuration"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CXProvider_setConfiguration___block_invoke;
  block[3] = &unk_1E7C06BE0;
  block[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, block);
}

uint64_t __31__CXProvider_setConfiguration___block_invoke(uint64_t a1)
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

- (NSArray)pendingCallActionsOfClass:(Class)callActionClass withCallUUID:(NSUUID *)callUUID
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = callUUID;
  array = [MEMORY[0x1E695DF70] array];
  if ([(objc_class *)callActionClass isSubclassOfClass:objc_opt_class()])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(CXProvider *)self pendingTransactions];
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      do
      {
        v8 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v8;
          v9 = *(*(&v29 + 1) + 8 * v8);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          actions = [v9 actions];
          v11 = [actions countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(actions);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                if (objc_opt_isKindOfClass())
                {
                  callUUID = [v15 callUUID];
                  v17 = [callUUID isEqual:v6];

                  if (v17)
                  {
                    [array addObject:v15];
                  }
                }
              }

              v12 = [actions countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v12);
          }

          v8 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }
  }

  v18 = [array copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)reportNewIncomingCallWithUUID:(NSUUID *)UUID update:(CXCallUpdate *)update completion:(void *)completion
{
  v8 = UUID;
  v9 = update;
  v10 = completion;
  if (dyld_program_sdk_at_least())
  {
    if (v8)
    {
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportNewIncomingCallWithUUID:update:completion:]", @"UUID"}];
      if (v9)
      {
LABEL_4:
        if (v10)
        {
          goto LABEL_5;
        }

LABEL_8:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportNewIncomingCallWithUUID:update:completion:]", @"completion"}];
        goto LABEL_5;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportNewIncomingCallWithUUID:update:completion:]", @"update"}];
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E6979268] object:0];

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke;
  block[3] = &unk_1E7C06DE0;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, block);
}

void __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    *buf = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was asked to report a new incoming call with UUID: %@ update: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke_162;
  v10[3] = &unk_1E7C073D8;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  [v6 reportNewIncomingCallWithUUID:v7 update:v8 reply:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke_162(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CXProvider_reportNewIncomingCallWithUUID_update_completion___block_invoke_2;
  v7[3] = &unk_1E7C073B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performCompletionBlock:v7];
}

- (void)reportCallWithUUID:(NSUUID *)UUID updated:(CXCallUpdate *)update
{
  v6 = UUID;
  v7 = update;
  if (dyld_program_sdk_at_least())
  {
    if (v6)
    {
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:updated:]", @"UUID"}];
      if (v7)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:updated:]", @"update"}];
  }

LABEL_4:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CXProvider_reportCallWithUUID_updated___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __41__CXProvider_reportCallWithUUID_updated___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was asked to report that call with UUID %@ updated with update %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportCallWithUUID:*(a1 + 40) updated:*(a1 + 48)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(NSUUID *)UUID endedAtDate:(NSDate *)dateEnded reason:(CXCallEndedReason)endedReason
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = UUID;
  v9 = dateEnded;
  v10 = dyld_program_sdk_at_least();
  if (!v8 && v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:endedAtDate:reason:]", @"UUID"}];
  }

  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [(NSUUID *)v8 UUIDString];
    *buf = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = uUIDString;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = endedReason;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Provider %@ was asked to report that call with UUID %@ ended at date %@ with reason %ld", buf, 0x2Au);
  }

  if ((endedReason - 1) >= 5)
  {
    v13 = -1;
  }

  else
  {
    v13 = endedReason;
  }

  [(CXProvider *)self reportCallWithUUID:v8 endedAtDate:v9 privateReason:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v10 = dyld_program_sdk_at_least();
  if (!dCopy && v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:endedAtDate:privateReason:]", @"UUID"}];
  }

  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = uUIDString;
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ ended at date %@ with private reason %ld", buf, 0x2Au);
  }

  [(CXProvider *)self reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason failureContext:0];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d failedAtDate:(id)date withContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  if (dyld_program_sdk_at_least())
  {
    if (dCopy)
    {
      if (contextCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:failedAtDate:withContext:]", @"UUID"}];
      if (contextCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:failedAtDate:withContext:]", @"failureContext"}];
  }

LABEL_4:
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = uUIDString;
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ failed at date %@ with context %@", buf, 0x2Au);
  }

  [(CXProvider *)self reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:1 failureContext:contextCopy];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v13 = dyld_program_sdk_at_least();
  if (!dCopy && v13)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:endedAtDate:privateReason:failureContext:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CXProvider_reportCallWithUUID_endedAtDate_privateReason_failureContext___block_invoke;
  block[3] = &unk_1E7C06FE8;
  block[4] = self;
  v19 = dCopy;
  v21 = contextCopy;
  reasonCopy = reason;
  v20 = dateCopy;
  v15 = contextCopy;
  v16 = dateCopy;
  v17 = dCopy;
  dispatch_async(queue, block);
}

void __74__CXProvider_reportCallWithUUID_endedAtDate_privateReason_failureContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a1 + 48);
    v10 = 138413314;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ ended at date %@ with private reason %ld and failure context %@", &v10, 0x34u);
  }

  v8 = [*(a1 + 32) callProviderHostDelegate];
  [v8 reportCallWithUUID:*(a1 + 40) endedAtDate:*(a1 + 48) privateReason:*(a1 + 64) failureContext:*(a1 + 56)];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)reportAudioFinishedForCallWithUUID:(id)d
{
  dCopy = d;
  v5 = dyld_program_sdk_at_least();
  if (!dCopy && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportAudioFinishedForCallWithUUID:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CXProvider_reportAudioFinishedForCallWithUUID___block_invoke;
  block[3] = &unk_1E7C06BE0;
  block[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, block);
}

void __49__CXProvider_reportAudioFinishedForCallWithUUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ finished audio", &v7, 0x16u);
  }

  v5 = [*(a1 + 32) callProviderHostDelegate];
  [v5 reportAudioFinishedForCallWithUUID:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  v8 = dyld_program_sdk_at_least();
  if (!dCopy && v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportOutgoingCallWithUUID:sentInvitationAtDate:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CXProvider_reportOutgoingCallWithUUID_sentInvitationAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = dCopy;
  v14 = dateCopy;
  v10 = dateCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __62__CXProvider_reportOutgoingCallWithUUID_sentInvitationAtDate___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@ sent invitation at date %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportOutgoingCallWithUUID:*(a1 + 40) sentInvitationAtDate:*(a1 + 48)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dCopy = d;
  dataCopy = data;
  v10 = dyld_program_sdk_at_least();
  if (!dCopy && v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:changedFrequencyData:forDirection:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CXProvider_reportCallWithUUID_changedFrequencyData_forDirection___block_invoke;
  block[3] = &unk_1E7C07488;
  block[4] = self;
  v15 = dCopy;
  v16 = dataCopy;
  directionCopy = direction;
  v12 = dataCopy;
  v13 = dCopy;
  dispatch_async(queue, block);
}

void __67__CXProvider_reportCallWithUUID_changedFrequencyData_forDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderHostDelegate];
  [v2 reportCallWithUUID:*(a1 + 40) changedFrequencyData:*(a1 + 48) forDirection:*(a1 + 56)];
}

- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  dCopy = d;
  v9 = dyld_program_sdk_at_least();
  if (!dCopy && v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:changedMeterLevel:forDirection:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CXProvider_reportCallWithUUID_changedMeterLevel_forDirection___block_invoke;
  block[3] = &unk_1E7C074B0;
  block[4] = self;
  v13 = dCopy;
  levelCopy = level;
  directionCopy = direction;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __64__CXProvider_reportCallWithUUID_changedMeterLevel_forDirection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) callProviderHostDelegate];
  LODWORD(v2) = *(a1 + 56);
  [v3 reportCallWithUUID:*(a1 + 40) changedMeterLevel:*(a1 + 48) forDirection:v2];
}

- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  dCopy = d;
  identifierCopy = identifier;
  if (dyld_program_sdk_at_least())
  {
    if (dCopy)
    {
      if (identifierCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]", @"UUID"}];
      if (identifierCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]", @"crossDeviceIdentifier"}];
  }

LABEL_4:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CXProvider_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed___block_invoke;
  block[3] = &unk_1E7C07488;
  block[4] = self;
  v14 = dCopy;
  v15 = identifierCopy;
  usedCopy = used;
  v11 = identifierCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

void __78__CXProvider_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v9 = 138413058;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that call with UUID %@ and cross device identifier %@ changed bytes of data used %ld", &v9, 0x2Au);
  }

  v7 = [*(a1 + 32) callProviderHostDelegate];
  [v7 reportCallWithUUID:*(a1 + 40) crossDeviceIdentifier:*(a1 + 48) changedBytesOfDataUsed:*(a1 + 56)];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID startedConnectingAtDate:(NSDate *)dateStartedConnecting
{
  v6 = UUID;
  v7 = dateStartedConnecting;
  v8 = dyld_program_sdk_at_least();
  if (!v6 && v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportOutgoingCallWithUUID:startedConnectingAtDate:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CXProvider_reportOutgoingCallWithUUID_startedConnectingAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

void __65__CXProvider_reportOutgoingCallWithUUID_startedConnectingAtDate___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@ started connecting at date %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportOutgoingCallWithUUID:*(a1 + 40) startedConnectingAtDate:*(a1 + 48)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(NSUUID *)UUID connectedAtDate:(NSDate *)dateConnected
{
  v6 = UUID;
  v7 = dateConnected;
  v8 = dyld_program_sdk_at_least();
  if (!v6 && v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportOutgoingCallWithUUID:connectedAtDate:]", @"UUID"}];
  }

  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CXProvider_reportOutgoingCallWithUUID_connectedAtDate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

void __57__CXProvider_reportOutgoingCallWithUUID_connectedAtDate___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@ connected at date %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportOutgoingCallWithUUID:*(a1 + 40) connectedAtDate:*(a1 + 48)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update
{
  dCopy = d;
  updateCopy = update;
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CXProvider_reportNewOutgoingCallWithUUID_update___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = dCopy;
  v13 = updateCopy;
  v9 = updateCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __51__CXProvider_reportNewOutgoingCallWithUUID_update___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that outgoing call with UUID %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 32) callProviderHostDelegate];
  [v5 reportNewOutgoingCallWithUUID:*(a1 + 40) update:*(a1 + 48)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestTransaction:(id)transaction completion:(id)completion
{
  transactionCopy = transaction;
  completionCopy = completion;
  if (dyld_program_sdk_at_least())
  {
    if (transactionCopy)
    {
      if (completionCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider requestTransaction:completion:]", @"transaction"}];
      if (completionCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider requestTransaction:completion:]", @"completion"}];
  }

LABEL_4:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CXProvider_requestTransaction_completion___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = transactionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = transactionCopy;
  dispatch_async(queue, block);
}

void __44__CXProvider_requestTransaction_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ requested transaction %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 32) callProviderHostDelegate];
  [v5 requestTransaction:*(a1 + 40) completionHandler:*(a1 + 48)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  dCopy = d;
  updateCopy = update;
  v8 = updateCopy;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:receivedDTMFUpdate:]", @"UUID"}];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProvider reportCallWithUUID:receivedDTMFUpdate:]", @"dtmfUpdate"}];
    goto LABEL_3;
  }

  if (!updateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CXProvider_reportCallWithUUID_receivedDTMFUpdate___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v13 = v8;
  v14 = dCopy;
  v10 = dCopy;
  v11 = v8;
  dispatch_async(queue, block);
}

void __52__CXProvider_reportCallWithUUID_receivedDTMFUpdate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) UUIDString];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified receivedDTMFUpdate %@ from call with UUID %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) callProviderHostDelegate];
  [v6 reportCallWithUUID:*(a1 + 48) receivedDTMFUpdate:*(a1 + 40)];

  v7 = *MEMORY[0x1E69E9840];
}

- (CXFeatures)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(CXFeatures);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

- (OS_dispatch_queue)queue
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  queue = [abstractProvider queue];

  return queue;
}

- (void)registerCurrentConfiguration
{
  queue = [(CXProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CXProvider_registerCurrentConfiguration__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__CXProvider_registerCurrentConfiguration__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if ([*(a1 + 32) requiresProxyingAVAudioSessionState])
  {
    v3 = [MEMORY[0x1E6958460] sharedInstance];
    [v2 setAudioSessionID:{objc_msgSend(v3, "opaqueSessionID")}];

    v4 = [*(a1 + 32) featureFlags];
    v5 = [v4 callManagementMuteControl];

    if (v5)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = *(a1 + 32);
      v8 = *MEMORY[0x1E6958000];
      v9 = [MEMORY[0x1E69583C0] sharedInstance];
      [v6 addObserver:v7 selector:sel_handleMuteStatusChangedNotification_ name:v8 object:v9];
    }
  }

  v10 = CXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v2;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "Registering configuration %@", &v14, 0xCu);
  }

  v11 = [*(a1 + 32) callProviderHostDelegate];
  v12 = [v2 copy];
  [v11 registerWithConfiguration:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleMuteStatusChangedNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Handling notification %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)performCompletionBlock:(id)block
{
  blockCopy = block;
  queue = [(CXProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CXProvider_performCompletionBlock___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __37__CXProvider_performCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractProvider];
  v3 = [v2 delegateQueue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) completionQueue];
  }

  queue = v5;

  dispatch_async(queue, *(a1 + 40));
}

- (void)performAction:(id)action
{
  v26 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  abstractProvider = [(CXProvider *)self abstractProvider];
  delegateQueue = [abstractProvider delegateQueue];
  dispatch_assert_queue_V2(delegateQueue);

  delegate = [(CXProvider *)self delegate];
  privateDelegate = [(CXProvider *)self privateDelegate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = actionCopy;
      if (objc_opt_respondsToSelector())
      {
        [delegate provider:self performAnswerCallAction:v10];
        goto LABEL_39;
      }

      v11 = CXDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(sel_provider_performAnswerCallAction_);
        v24 = 138412290;
        v25 = v12;
        goto LABEL_37;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = actionCopy;
        if (objc_opt_respondsToSelector())
        {
          [delegate provider:self performEndCallAction:v13];
          goto LABEL_39;
        }

        v11 = CXDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromSelector(sel_provider_performEndCallAction_);
          v24 = 138412290;
          v25 = v12;
          goto LABEL_37;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = actionCopy;
          if (objc_opt_respondsToSelector())
          {
            [delegate provider:self performSetHeldCallAction:v14];
            goto LABEL_39;
          }

          v11 = CXDefaultLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = NSStringFromSelector(sel_provider_performSetHeldCallAction_);
            v24 = 138412290;
            v25 = v12;
            goto LABEL_37;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = actionCopy;
            if (objc_opt_respondsToSelector())
            {
              [delegate provider:self performSetMutedCallAction:v15];
              goto LABEL_39;
            }

            v11 = CXDefaultLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = NSStringFromSelector(sel_provider_performSetMutedCallAction_);
              v24 = 138412290;
              v25 = v12;
              goto LABEL_37;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = actionCopy;
              if (objc_opt_respondsToSelector())
              {
                [delegate provider:self performSetGroupCallAction:v16];
                goto LABEL_39;
              }

              v11 = CXDefaultLog();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = NSStringFromSelector(sel_provider_performSetGroupCallAction_);
                v24 = 138412290;
                v25 = v12;
                goto LABEL_37;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v18 = 0;
                goto LABEL_40;
              }

              v17 = actionCopy;
              if (objc_opt_respondsToSelector())
              {
                [delegate provider:self performPlayDTMFCallAction:v17];
                goto LABEL_39;
              }

              v11 = CXDefaultLog();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = NSStringFromSelector(sel_provider_performPlayDTMFCallAction_);
                v24 = 138412290;
                v25 = v12;
                goto LABEL_37;
              }
            }
          }
        }
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v9 = actionCopy;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = CXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(sel_provider_performStartCallAction_);
      v24 = 138412290;
      v25 = v12;
LABEL_37:
      _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate does not respond to %@. Action will not be performed", &v24, 0xCu);

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  [delegate provider:self performStartCallAction:v9];
LABEL_39:

  v18 = 1;
LABEL_40:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (isInternalInstall())
  {
    v19 = CXDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1B47F3000, v19, OS_LOG_TYPE_DEFAULT, "fulfill CXSetTranslatingCallAction", &v24, 2u);
    }

    [actionCopy fulfill];
LABEL_45:
    if ((v18 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_127;
  }

  if ((v18 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = actionCopy;
      if (objc_opt_respondsToSelector())
      {
        [delegate provider:self performSetTranslatingCallAction:v20];
        goto LABEL_126;
      }

      v21 = CXDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromSelector(sel_provider_performSetTranslatingCallAction_);
        v24 = 138412290;
        v25 = v22;
        goto LABEL_124;
      }

      goto LABEL_125;
    }

LABEL_46:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = actionCopy;
      if (objc_opt_respondsToSelector())
      {
        [privateDelegate provider:self performSendMMIOrUSSDCodeAction:v20];
LABEL_126:

        goto LABEL_127;
      }

      v21 = CXDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromSelector(sel_provider_performSendMMIOrUSSDCodeAction_);
        v24 = 138412290;
        v25 = v22;
LABEL_124:
        _os_log_impl(&dword_1B47F3000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate does not respond to %@. Action will not be performed", &v24, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = actionCopy;
        if (objc_opt_respondsToSelector())
        {
          [privateDelegate provider:self performJoinCallAction:v20];
          goto LABEL_126;
        }

        v21 = CXDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = NSStringFromSelector(sel_provider_performJoinCallAction_);
          v24 = 138412290;
          v25 = v22;
          goto LABEL_124;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = actionCopy;
          if (objc_opt_respondsToSelector())
          {
            [privateDelegate provider:self performSetTTYTypeCallAction:v20];
            goto LABEL_126;
          }

          v21 = CXDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = NSStringFromSelector(sel_provider_performSetTTYTypeCallAction_);
            v24 = 138412290;
            v25 = v22;
            goto LABEL_124;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = actionCopy;
            if (objc_opt_respondsToSelector())
            {
              [privateDelegate provider:self performSetSendingVideoCallAction:v20];
              goto LABEL_126;
            }

            v21 = CXDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = NSStringFromSelector(sel_provider_performSetSendingVideoCallAction_);
              v24 = 138412290;
              v25 = v22;
              goto LABEL_124;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = actionCopy;
              if (objc_opt_respondsToSelector())
              {
                [privateDelegate provider:self performSetRelayingCallAction:v20];
                goto LABEL_126;
              }

              v21 = CXDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = NSStringFromSelector(sel_provider_performSetRelayingCallAction_);
                v24 = 138412290;
                v25 = v22;
                goto LABEL_124;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = actionCopy;
                if (objc_opt_respondsToSelector())
                {
                  [privateDelegate provider:self performSetScreeningCallAction:v20];
                  goto LABEL_126;
                }

                v21 = CXDefaultLog();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = NSStringFromSelector(sel_provider_performSetScreeningCallAction_);
                  v24 = 138412290;
                  v25 = v22;
                  goto LABEL_124;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = actionCopy;
                  if (objc_opt_respondsToSelector())
                  {
                    [privateDelegate provider:self performSetAllowUplinkAudioInjectionAction:v20];
                    goto LABEL_126;
                  }

                  v21 = CXDefaultLog();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = NSStringFromSelector(sel_provider_performSetAllowUplinkAudioInjectionAction_);
                    v24 = 138412290;
                    v25 = v22;
                    goto LABEL_124;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v20 = actionCopy;
                    if (objc_opt_respondsToSelector())
                    {
                      [privateDelegate provider:self performPullCallAction:v20];
                      goto LABEL_126;
                    }

                    v21 = CXDefaultLog();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      v22 = NSStringFromSelector(sel_provider_performPullCallAction_);
                      v24 = 138412290;
                      v25 = v22;
                      goto LABEL_124;
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = actionCopy;
                      if (objc_opt_respondsToSelector())
                      {
                        [privateDelegate provider:self performSetVideoPresentationSizeCallAction:v20];
                        goto LABEL_126;
                      }

                      v21 = CXDefaultLog();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                      {
                        v22 = NSStringFromSelector(sel_provider_performSetVideoPresentationSizeCallAction_);
                        v24 = 138412290;
                        v25 = v22;
                        goto LABEL_124;
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v20 = actionCopy;
                        if (objc_opt_respondsToSelector())
                        {
                          [privateDelegate provider:self performSetVideoPresentationStateCallAction:v20];
                          goto LABEL_126;
                        }

                        v21 = CXDefaultLog();
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                        {
                          v22 = NSStringFromSelector(sel_provider_performSetVideoPresentationStateCallAction_);
                          v24 = 138412290;
                          v25 = v22;
                          goto LABEL_124;
                        }
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v20 = actionCopy;
                          if (objc_opt_respondsToSelector())
                          {
                            [privateDelegate provider:self performSetSharingScreenCallAction:v20];
                            goto LABEL_126;
                          }

                          v21 = CXDefaultLog();
                          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                          {
                            v22 = NSStringFromSelector(sel_provider_performSetSharingScreenCallAction_);
                            v24 = 138412290;
                            v25 = v22;
                            goto LABEL_124;
                          }
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v20 = actionCopy;
                            if (objc_opt_respondsToSelector())
                            {
                              [privateDelegate provider:self performSetScreenShareAttributesCallAction:v20];
                              goto LABEL_126;
                            }

                            v21 = CXDefaultLog();
                            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                            {
                              v22 = NSStringFromSelector(sel_provider_performSetScreenShareAttributesCallAction_);
                              v24 = 138412290;
                              v25 = v22;
                              goto LABEL_124;
                            }
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v20 = actionCopy;
                              if (objc_opt_respondsToSelector())
                              {
                                [privateDelegate provider:self performEnableVideoCallAction:v20];
                                goto LABEL_126;
                              }

                              v21 = CXDefaultLog();
                              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                              {
                                v22 = NSStringFromSelector(sel_provider_performEnableVideoCallAction_);
                                v24 = 138412290;
                                v25 = v22;
                                goto LABEL_124;
                              }
                            }

                            else
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                v20 = CXDefaultLog();
                                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                                {
                                  [(CXProvider *)actionCopy performAction:v20];
                                }

                                goto LABEL_126;
                              }

                              v20 = actionCopy;
                              if (objc_opt_respondsToSelector())
                              {
                                [privateDelegate provider:self performShareIdentityCallAction:v20];
                                goto LABEL_126;
                              }

                              v21 = CXDefaultLog();
                              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                              {
                                v22 = NSStringFromSelector(sel_provider_performShareIdentityCallAction_);
                                v24 = 138412290;
                                v25 = v22;
                                goto LABEL_124;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_125:

    goto LABEL_126;
  }

LABEL_127:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v6 = queue;
  v7 = delegate;
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider setDelegate:v7 queue:v6];
}

- (NSArray)pendingTransactions
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  pendingTransactions = [abstractProvider pendingTransactions];

  return pendingTransactions;
}

- (void)invalidate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider invalidate];
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider provider:self commitTransaction:transactionCopy];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider provider:self handleTimeoutForAction:timeoutCopy];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  toCopy = to;
  abstractProvider = [(CXProvider *)self abstractProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CXProvider_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = toCopy;
  selfCopy = self;
  v6 = toCopy;
  [abstractProvider performDelegateCallback:v7];
}

void __57__CXProvider_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
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

  [(CXProvider *)self registerCurrentConfiguration];
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)reportNewIncomingVoIPPushPayload:(NSDictionary *)dictionaryPayload completion:(void *)completion
{
  v5 = completion;
  v6 = dictionaryPayload;
  v7 = objc_alloc_init(CXNotificationServiceExtensionVoIPXPCClient);
  [(CXNotificationServiceExtensionVoIPXPCClient *)v7 requestApplicationLaunchForIncomingCall:v6 completion:v5];
}

void __36__CXProvider_initWithConfiguration___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error resetting audio session interruption priority to Normal: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)performAction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Unknown action class in transaction: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end