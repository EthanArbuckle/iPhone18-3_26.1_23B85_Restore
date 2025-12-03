@interface PKPushRegistry
+ (id)_pushTypeToMachServiceName;
+ (void)_assertIfCallKitNotLinked;
- (BOOL)_selfTaskHasEntitlement:(__CFString *)entitlement;
- (NSData)pushTokenForType:(PKPushType)type;
- (NSMutableDictionary)pushTypeToConnection;
- (NSMutableDictionary)pushTypeToToken;
- (NSSet)desiredPushTypes;
- (PKPushRegistry)initWithQueue:(dispatch_queue_t)queue;
- (id)_createConnectionForPushType:(id)type;
- (id)delegate;
- (void)_noteIncomingCallReported;
- (void)_registerForPushType:(id)type;
- (void)_renewConnectionForPushTypeIfRegistered:(id)registered;
- (void)_terminateAppIfThereAreUnhandledVoIPPushes;
- (void)_unregisterForPushType:(id)type;
- (void)complicationPayloadReceived:(id)received;
- (void)complicationRegistrationFailed;
- (void)complicationRegistrationSucceededWithDeviceToken:(id)token;
- (void)dealloc;
- (void)fileProviderPayloadReceived:(id)received;
- (void)fileProviderRegistrationFailed;
- (void)fileProviderRegistrationSucceededWithDeviceToken:(id)token;
- (void)remoteUserNotificationPayloadReceived:(id)received completionHandler:(id)handler;
- (void)remoteUserNotificationRegistrationSucceededWithDeviceToken:(id)token;
- (void)setDesiredPushTypes:(NSSet *)desiredPushTypes;
- (void)voipPayloadReceived:(id)received mustPostCall:(BOOL)call withCompletionHandler:(id)handler;
- (void)voipRegistrationFailed;
- (void)voipRegistrationSucceededWithDeviceToken:(id)token;
@end

@implementation PKPushRegistry

- (NSMutableDictionary)pushTypeToToken
{
  dispatch_assert_queue_V2(self->_ivarQueue);
  pushTypeToToken = self->_pushTypeToToken;
  if (!pushTypeToToken)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_pushTypeToToken;
    self->_pushTypeToToken = dictionary;

    pushTypeToToken = self->_pushTypeToToken;
  }

  return pushTypeToToken;
}

- (NSMutableDictionary)pushTypeToConnection
{
  dispatch_assert_queue_V2(self->_ivarQueue);
  pushTypeToConnection = self->_pushTypeToConnection;
  if (!pushTypeToConnection)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_pushTypeToConnection;
    self->_pushTypeToConnection = dictionary;

    pushTypeToConnection = self->_pushTypeToConnection;
  }

  return pushTypeToConnection;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  notify_cancel(self->_voipToken);
  notify_cancel(self->_complicationToken);
  notify_cancel(self->_fileProviderToken);
  v3.receiver = self;
  v3.super_class = PKPushRegistry;
  [(PKPushRegistry *)&v3 dealloc];
}

+ (id)_pushTypeToMachServiceName
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"PKPushTypeVoIP";
  v5[1] = @"PKPushTypeComplication";
  v6[0] = @"com.apple.telephonyutilities.callservicesdaemon.voip";
  v6[1] = @"com.apple.watchconnectivity.complication";
  v5[2] = @"PKPushTypeFileProvider";
  v6[2] = @"com.apple.fileprovider.pushkit";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (PKPushRegistry)initWithQueue:(dispatch_queue_t)queue
{
  v4 = queue;
  v27.receiver = self;
  v27.super_class = PKPushRegistry;
  v5 = [(PKPushRegistry *)&v27 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
      delegateQueue = v5->_delegateQueue;
      v5->_delegateQueue = v6;
    }

    else
    {
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      delegateQueue = v5->_delegateQueue;
      v5->_delegateQueue = v8;
    }

    v10 = dispatch_queue_create("com.apple.pushkit.ivarqueue", 0);
    ivarQueue = v5->_ivarQueue;
    v5->_ivarQueue = v10;

    objc_initWeak(&location, v5);
    v12 = v5->_ivarQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__PKPushRegistry_initWithQueue___block_invoke;
    handler[3] = &unk_278B54EF8;
    objc_copyWeak(&v25, &location);
    notify_register_dispatch("com.apple.pushkit.launch.voip", &v5->_voipToken, v12, handler);
    v13 = v5->_ivarQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __32__PKPushRegistry_initWithQueue___block_invoke_2;
    v22[3] = &unk_278B54EF8;
    objc_copyWeak(&v23, &location);
    notify_register_dispatch("com.apple.pushkit.launch.complication", &v5->_complicationToken, v13, v22);
    v14 = v5->_ivarQueue;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __32__PKPushRegistry_initWithQueue___block_invoke_3;
    v20 = &unk_278B54EF8;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch("com.apple.pushkit.launch.fileprovider", &v5->_fileProviderToken, v14, &v17);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__noteIncomingCallReported name:@"PKPushIncomingCallReportedNotification" object:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __32__PKPushRegistry_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renewConnectionForPushTypeIfRegistered:@"PKPushTypeVoIP"];
}

void __32__PKPushRegistry_initWithQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renewConnectionForPushTypeIfRegistered:@"PKPushTypeComplication"];
}

void __32__PKPushRegistry_initWithQueue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renewConnectionForPushTypeIfRegistered:@"PKPushTypeFileProvider"];
}

- (void)voipRegistrationSucceededWithDeviceToken:(id)token
{
  tokenCopy = token;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__PKPushRegistry_voipRegistrationSucceededWithDeviceToken___block_invoke;
  v7[3] = &unk_278B54DC0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(ivarQueue, v7);
}

void __59__PKPushRegistry_voipRegistrationSucceededWithDeviceToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = [*(a1 + 32) pushTypeToToken];
  [v3 setObject:v2 forKeyedSubscript:@"PKPushTypeVoIP"];

  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__PKPushRegistry_voipRegistrationSucceededWithDeviceToken___block_invoke_2;
  v7[3] = &unk_278B54DC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void __59__PKPushRegistry_voipRegistrationSucceededWithDeviceToken___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(PKPushCredentials);
  [(PKPushCredentials *)v3 setType:@"PKPushTypeVoIP"];
  [(PKPushCredentials *)v3 setToken:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  [v2 pushRegistry:*(a1 + 40) didUpdatePushCredentials:v3 forType:@"PKPushTypeVoIP"];
}

- (void)voipPayloadReceived:(id)received mustPostCall:(BOOL)call withCompletionHandler:(id)handler
{
  receivedCopy = received;
  handlerCopy = handler;
  delegateQueue = self->_delegateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__PKPushRegistry_voipPayloadReceived_mustPostCall_withCompletionHandler___block_invoke;
  v13[3] = &unk_278B54F20;
  callCopy = call;
  v13[4] = self;
  v14 = receivedCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = receivedCopy;
  dispatch_async(delegateQueue, v13);
}

void __73__PKPushRegistry_voipPayloadReceived_mustPostCall_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  [*(a1 + 32) lastReportedCallTime];
  if (v4 - v5 >= 7.0 && (v2 & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PKPushRegistry_voipPayloadReceived_mustPostCall_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278B54CD0;
    block[4] = v6;
    dispatch_sync(v7, block);
  }

  v8 = objc_alloc_init(PKPushPayload);
  [(PKPushPayload *)v8 setType:@"PKPushTypeVoIP"];
  [(PKPushPayload *)v8 setDictionaryPayload:*(a1 + 40)];
  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [*(a1 + 32) delegate];
  v12 = v11;
  if (v10)
  {
    [v11 pushRegistry:*(a1 + 32) didReceiveIncomingPushWithPayload:v8 forType:@"PKPushTypeVoIP" withCompletionHandler:*(a1 + 48)];
LABEL_8:

    goto LABEL_9;
  }

  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v12 = [*(a1 + 32) delegate];
    [v12 pushRegistry:*(a1 + 32) didReceiveIncomingPushWithPayload:v8 forType:@"PKPushTypeVoIP"];
    goto LABEL_8;
  }

LABEL_9:
  v14 = *(a1 + 32);
  v15 = *(v14 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__PKPushRegistry_voipPayloadReceived_mustPostCall_withCompletionHandler___block_invoke_3;
  v16[3] = &unk_278B54CD0;
  v16[4] = v14;
  dispatch_sync(v15, v16);
}

- (void)voipRegistrationFailed
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PKPushRegistry_voipRegistrationFailed__block_invoke;
  block[3] = &unk_278B54CD0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __40__PKPushRegistry_voipRegistrationFailed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 pushRegistry:*(a1 + 32) didInvalidatePushTokenForType:@"PKPushTypeVoIP"];
  }
}

- (void)complicationRegistrationSucceededWithDeviceToken:(id)token
{
  tokenCopy = token;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PKPushRegistry_complicationRegistrationSucceededWithDeviceToken___block_invoke;
  v7[3] = &unk_278B54DC0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(ivarQueue, v7);
}

void __67__PKPushRegistry_complicationRegistrationSucceededWithDeviceToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = [*(a1 + 32) pushTypeToToken];
  [v3 setObject:v2 forKeyedSubscript:@"PKPushTypeComplication"];

  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PKPushRegistry_complicationRegistrationSucceededWithDeviceToken___block_invoke_2;
  v7[3] = &unk_278B54DC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void __67__PKPushRegistry_complicationRegistrationSucceededWithDeviceToken___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(PKPushCredentials);
  [(PKPushCredentials *)v3 setType:@"PKPushTypeComplication"];
  [(PKPushCredentials *)v3 setToken:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  [v2 pushRegistry:*(a1 + 40) didUpdatePushCredentials:v3 forType:@"PKPushTypeComplication"];
}

- (void)complicationPayloadReceived:(id)received
{
  receivedCopy = received;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PKPushRegistry_complicationPayloadReceived___block_invoke;
  v7[3] = &unk_278B54DC0;
  v8 = receivedCopy;
  selfCopy = self;
  v6 = receivedCopy;
  dispatch_async(delegateQueue, v7);
}

void __46__PKPushRegistry_complicationPayloadReceived___block_invoke(uint64_t a1)
{
  v7 = objc_alloc_init(PKPushPayload);
  [(PKPushPayload *)v7 setType:@"PKPushTypeComplication"];
  [(PKPushPayload *)v7 setDictionaryPayload:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 40) delegate];
  v5 = v4;
  if (v3)
  {
    [v4 pushRegistry:*(a1 + 40) didReceiveIncomingPushWithPayload:v7 forType:@"PKPushTypeComplication" withCompletionHandler:&__block_literal_global_0];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 40) delegate];
    [v5 pushRegistry:*(a1 + 40) didReceiveIncomingPushWithPayload:v7 forType:@"PKPushTypeComplication"];
  }

LABEL_6:
}

- (void)complicationRegistrationFailed
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PKPushRegistry_complicationRegistrationFailed__block_invoke;
  block[3] = &unk_278B54CD0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __48__PKPushRegistry_complicationRegistrationFailed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 pushRegistry:*(a1 + 32) didInvalidatePushTokenForType:@"PKPushTypeComplication"];
  }
}

- (void)fileProviderRegistrationSucceededWithDeviceToken:(id)token
{
  tokenCopy = token;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PKPushRegistry_fileProviderRegistrationSucceededWithDeviceToken___block_invoke;
  v7[3] = &unk_278B54DC0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(ivarQueue, v7);
}

void __67__PKPushRegistry_fileProviderRegistrationSucceededWithDeviceToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = [*(a1 + 32) pushTypeToToken];
  [v3 setObject:v2 forKeyedSubscript:@"PKPushTypeFileProvider"];

  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PKPushRegistry_fileProviderRegistrationSucceededWithDeviceToken___block_invoke_2;
  v7[3] = &unk_278B54DC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void __67__PKPushRegistry_fileProviderRegistrationSucceededWithDeviceToken___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(PKPushCredentials);
  [(PKPushCredentials *)v3 setType:@"PKPushTypeFileProvider"];
  [(PKPushCredentials *)v3 setToken:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  [v2 pushRegistry:*(a1 + 40) didUpdatePushCredentials:v3 forType:@"PKPushTypeFileProvider"];
}

- (void)fileProviderPayloadReceived:(id)received
{
  receivedCopy = received;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PKPushRegistry_fileProviderPayloadReceived___block_invoke;
  v7[3] = &unk_278B54DC0;
  v8 = receivedCopy;
  selfCopy = self;
  v6 = receivedCopy;
  dispatch_async(delegateQueue, v7);
}

void __46__PKPushRegistry_fileProviderPayloadReceived___block_invoke(uint64_t a1)
{
  v7 = objc_alloc_init(PKPushPayload);
  [(PKPushPayload *)v7 setType:@"PKPushTypeFileProvider"];
  [(PKPushPayload *)v7 setDictionaryPayload:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 40) delegate];
  v5 = v4;
  if (v3)
  {
    [v4 pushRegistry:*(a1 + 40) didReceiveIncomingPushWithPayload:v7 forType:@"PKPushTypeFileProvider" withCompletionHandler:&__block_literal_global_44];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 40) delegate];
    [v5 pushRegistry:*(a1 + 40) didReceiveIncomingPushWithPayload:v7 forType:@"PKPushTypeFileProvider"];
  }

LABEL_6:
}

- (void)fileProviderRegistrationFailed
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PKPushRegistry_fileProviderRegistrationFailed__block_invoke;
  block[3] = &unk_278B54CD0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __48__PKPushRegistry_fileProviderRegistrationFailed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 pushRegistry:*(a1 + 32) didInvalidatePushTokenForType:@"PKPushTypeFileProvider"];
  }
}

- (void)remoteUserNotificationRegistrationSucceededWithDeviceToken:(id)token
{
  tokenCopy = token;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__PKPushRegistry_remoteUserNotificationRegistrationSucceededWithDeviceToken___block_invoke;
  v7[3] = &unk_278B54DC0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(ivarQueue, v7);
}

void __77__PKPushRegistry_remoteUserNotificationRegistrationSucceededWithDeviceToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = [*(a1 + 32) pushTypeToToken];
  [v3 setObject:v2 forKeyedSubscript:@"PKPushTypeUserNotifications"];

  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__PKPushRegistry_remoteUserNotificationRegistrationSucceededWithDeviceToken___block_invoke_2;
  v7[3] = &unk_278B54DC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void __77__PKPushRegistry_remoteUserNotificationRegistrationSucceededWithDeviceToken___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(PKPushCredentials);
  [(PKPushCredentials *)v3 setType:@"PKPushTypeUserNotifications"];
  [(PKPushCredentials *)v3 setToken:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  [v2 pushRegistry:*(a1 + 40) didUpdatePushCredentials:v3 forType:@"PKPushTypeUserNotifications"];
}

- (void)remoteUserNotificationPayloadReceived:(id)received completionHandler:(id)handler
{
  receivedCopy = received;
  handlerCopy = handler;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PKPushRegistry_remoteUserNotificationPayloadReceived_completionHandler___block_invoke;
  block[3] = &unk_278B54D98;
  block[4] = self;
  v12 = receivedCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = receivedCopy;
  dispatch_async(delegateQueue, block);
}

void __74__PKPushRegistry_remoteUserNotificationPayloadReceived_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = objc_alloc_init(PKPushPayload);
  [(PKPushPayload *)v2 setType:@"PKPushTypeUserNotifications"];
  [(PKPushPayload *)v2 setDictionaryPayload:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
    [v3 pushRegistry:*(a1 + 32) didReceiveIncomingPushWithPayload:v2 forType:@"PKPushTypeUserNotifications" withCompletionHandler:*(a1 + 48)];
  }
}

+ (void)_assertIfCallKitNotLinked
{
  v4 = dlopen("/System/Library/Frameworks/CallKit.framework/CallKit", 16);
  if (dyld_program_sdk_at_least() && !v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PKPushRegistry.m" lineNumber:304 description:@"PushKit apps that use VoIP push must link the CallKit framework."];
  }
}

- (BOOL)_selfTaskHasEntitlement:(__CFString *)entitlement
{
  v4 = SecTaskCreateFromSelf(0);
  v5 = v4;
  if (v4)
  {
    v6 = SecTaskCopyValueForEntitlement(v4, entitlement, 0);
    CFRelease(v5);
    if (v6)
    {
      v7 = CFGetTypeID(v6);
      LOBYTE(v5) = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
      CFRelease(v6);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_terminateAppIfThereAreUnhandledVoIPPushes
{
  dispatch_assert_queue_V2(self->_ivarQueue);
  if (self->_outstandingVoIPPushes >= 1)
  {
    v4 = dyld_program_sdk_at_least();
    v5 = [(PKPushRegistry *)self _selfTaskHasEntitlement:@"com.apple.developer.pushkit.unrestricted-voip"];
    if (v4 && v5)
    {
      NSLog(&cfstr_TheComAppleDev.isa);
    }

    NSLog(&cfstr_AppsRecevingVo.isa);
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PKPushRegistry.m" lineNumber:349 description:@"Killing app because it never posted an incoming call to the system after receiving a PushKit VoIP push."];
  }
}

- (void)_noteIncomingCallReported
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PKPushRegistry__noteIncomingCallReported__block_invoke;
  block[3] = &unk_278B54CD0;
  block[4] = self;
  dispatch_sync(ivarQueue, block);
}

uint64_t __43__PKPushRegistry__noteIncomingCallReported__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 20) = 0;
  result = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 72) = v3;
  return result;
}

- (void)_registerForPushType:(id)type
{
  typeCopy = type;
  dispatch_assert_queue_V2(self->_ivarQueue);
  pushTypeToConnection = [(PKPushRegistry *)self pushTypeToConnection];
  v6 = [pushTypeToConnection objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    if ([typeCopy isEqualToString:@"PKPushTypeUserNotifications"])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(PKPushRegistry *)self _createConnectionForPushType:typeCopy];
      pushTypeToConnection2 = [(PKPushRegistry *)self pushTypeToConnection];
      [pushTypeToConnection2 setObject:v6 forKeyedSubscript:typeCopy];
    }
  }

  if ([typeCopy isEqualToString:@"PKPushTypeVoIP"])
  {
    +[PKPushRegistry _assertIfCallKitNotLinked];
    remoteObjectProxy = [v6 remoteObjectProxy];
    [remoteObjectProxy voipRegister];
LABEL_11:

    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:@"PKPushTypeComplication"])
  {
    remoteObjectProxy = [v6 remoteObjectProxy];
    [remoteObjectProxy complicationRegister];
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"PKPushTypeFileProvider"])
  {
    remoteObjectProxy = [v6 remoteObjectProxy];
    [remoteObjectProxy fileProviderRegister];
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"PKPushTypeUserNotifications"])
  {
    v9 = +[PKUserNotificationsRemoteNotificationServiceConnection sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__PKPushRegistry__registerForPushType___block_invoke;
    v10[3] = &unk_278B54F48;
    v10[4] = self;
    [v9 registerPushRegistry:self completionHandler:v10];
  }

LABEL_12:
}

void __39__PKPushRegistry__registerForPushType___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__PKPushRegistry__registerForPushType___block_invoke_2;
    v9[3] = &unk_278B54DC0;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

void __39__PKPushRegistry__registerForPushType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 pushRegistry:*(a1 + 32) didInvalidatePushTokenForType:@"PKPushTypeUserNotifications" error:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 pushRegistry:*(a1 + 32) didInvalidatePushTokenForType:@"PKPushTypeUserNotifications"];
  }
}

- (void)_unregisterForPushType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v13 = typeCopy;
    dispatch_assert_queue_V2(self->_ivarQueue);
    pushTypeToConnection = [(PKPushRegistry *)self pushTypeToConnection];
    v6 = [pushTypeToConnection objectForKeyedSubscript:v13];

    v7 = v13;
    if (!v6)
    {
      if ([v13 isEqualToString:@"PKPushTypeUserNotifications"])
      {
        v6 = 0;
      }

      else
      {
        v6 = [(PKPushRegistry *)self _createConnectionForPushType:v13];
        pushTypeToConnection2 = [(PKPushRegistry *)self pushTypeToConnection];
        [pushTypeToConnection2 setObject:v6 forKeyedSubscript:v13];
      }

      v7 = v13;
    }

    if ([v7 isEqualToString:@"PKPushTypeVoIP"])
    {
      remoteObjectProxy = [v6 remoteObjectProxy];
      [remoteObjectProxy voipUnregister];
    }

    else if ([v13 isEqualToString:@"PKPushTypeComplication"])
    {
      remoteObjectProxy = [v6 remoteObjectProxy];
      [remoteObjectProxy complicationUnregister];
    }

    else if ([v13 isEqualToString:@"PKPushTypeFileProvider"])
    {
      remoteObjectProxy = [v6 remoteObjectProxy];
      [remoteObjectProxy fileProviderUnregister];
    }

    else
    {
      if (![v13 isEqualToString:@"PKPushTypeUserNotifications"])
      {
LABEL_16:
        pushTypeToConnection3 = [(PKPushRegistry *)self pushTypeToConnection];
        v11 = [pushTypeToConnection3 objectForKeyedSubscript:v13];
        [v11 invalidate];

        pushTypeToConnection4 = [(PKPushRegistry *)self pushTypeToConnection];
        [pushTypeToConnection4 removeObjectForKey:v13];

        typeCopy = v13;
        goto LABEL_17;
      }

      remoteObjectProxy = +[PKUserNotificationsRemoteNotificationServiceConnection sharedInstance];
      [remoteObjectProxy unregisterPushRegistry:self];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (id)_createConnectionForPushType:(id)type
{
  typeCopy = type;
  _pushTypeToMachServiceName = [objc_opt_class() _pushTypeToMachServiceName];
  v6 = _pushTypeToMachServiceName;
  if (!_pushTypeToMachServiceName)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = [_pushTypeToMachServiceName objectForKeyedSubscript:typeCopy];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v7 options:4096];
    if ([typeCopy isEqualToString:@"PKPushTypeVoIP"])
    {
      v9 = &protocolRef_PKVoIPXPCClient;
      v10 = &protocolRef_PKVoIPXPCServer;
    }

    else if ([typeCopy isEqualToString:@"PKPushTypeComplication"])
    {
      v9 = &protocolRef_PKComplicationXPCClient;
      v10 = &protocolRef_PKComplicationXPCServer;
    }

    else
    {
      if (![typeCopy isEqualToString:@"PKPushTypeFileProvider"])
      {
LABEL_12:
        [v8 setExportedObject:self];
        [v8 resume];
        goto LABEL_13;
      }

      v9 = &protocolRef_PKFileProviderXPCClient;
      v10 = &protocolRef_PKFileProviderXPCServer;
    }

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:*v10];
    [v8 setRemoteObjectInterface:v11];

    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:*v9];
    [v8 setExportedInterface:v12];

    goto LABEL_12;
  }

  v8 = 0;
LABEL_13:

LABEL_14:

  return v8;
}

- (void)_renewConnectionForPushTypeIfRegistered:(id)registered
{
  registeredCopy = registered;
  dispatch_assert_queue_V2(self->_ivarQueue);
  pushTypeToConnection = [(PKPushRegistry *)self pushTypeToConnection];
  v5 = [pushTypeToConnection objectForKeyedSubscript:registeredCopy];

  if (v5)
  {
    pushTypeToConnection2 = [(PKPushRegistry *)self pushTypeToConnection];
    v7 = [pushTypeToConnection2 objectForKeyedSubscript:registeredCopy];
    [v7 invalidate];

    pushTypeToConnection3 = [(PKPushRegistry *)self pushTypeToConnection];
    [pushTypeToConnection3 removeObjectForKey:registeredCopy];

    [(PKPushRegistry *)self _registerForPushType:registeredCopy];
  }
}

- (void)setDesiredPushTypes:(NSSet *)desiredPushTypes
{
  v4 = desiredPushTypes;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PKPushRegistry_setDesiredPushTypes___block_invoke;
  v7[3] = &unk_278B54DC0;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

void __38__PKPushRegistry_setDesiredPushTypes___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mutableCopy];
  [v2 minusSet:*(*(a1 + 40) + 24)];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) _registerForPushType:*(*(&v22 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v8 = [*(*(a1 + 40) + 24) mutableCopy];
  [v8 minusSet:*(a1 + 32)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 40) _unregisterForPushType:{*(*(&v18 + 1) + 8 * v13++), v18}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v14 = [*(a1 + 32) copy];
  v15 = *(a1 + 40);
  v16 = *(v15 + 24);
  *(v15 + 24) = v14;

  v17 = *MEMORY[0x277D85DE8];
}

- (NSSet)desiredPushTypes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PKPushRegistry_desiredPushTypes__block_invoke;
  v5[3] = &unk_278B54F70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__PKPushRegistry_desiredPushTypes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSData)pushTokenForType:(PKPushType)type
{
  v4 = type;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    ivarQueue = self->_ivarQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PKPushRegistry_pushTokenForType___block_invoke;
    block[3] = &unk_278B54F98;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(ivarQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __35__PKPushRegistry_pushTokenForType___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) pushTypeToToken];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end