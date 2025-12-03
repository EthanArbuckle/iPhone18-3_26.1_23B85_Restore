@interface AAMessagingService
+ (id)sharedService;
- (AAMessagingService)initWithServiceName:(id)name;
- (AAMessagingServiceDelegate)custodianDelegate;
- (AAMessagingServiceDelegate)inheritanceDelegate;
- (id)_optionsDictionaryWithResponseIdentifier:(id)identifier fireAndForget:(BOOL)forget requiredCapabilities:(id)capabilities lackingCapabilities:(id)lackingCapabilities sendFromHandleUri:(id)uri;
- (void)_addMessageToPendingCustodianMessages:(id)messages;
- (void)_addMessageToPendingInheritanceMessages:(id)messages;
- (void)_getCurrentRemoteDevices:(id)devices completion:(id)completion;
- (void)_processMessage:(id)message;
- (void)_processPendingIDSMessagesOfType:(int64_t)type;
- (void)doDestinations:(id)destinations haveIneligibleDeviceForCapability:(id)capability completion:(id)completion;
- (void)fetchCapability:(id)capability destinations:(id)destinations completion:(id)completion;
- (void)partitionByCapability:(id)capability completion:(id)completion;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setCustodianDelegate:(id)delegate;
- (void)setInheritanceDelegate:(id)delegate;
@end

@implementation AAMessagingService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[AAMessagingService sharedService];
  }

  v3 = sharedService_sharedService;

  return v3;
}

uint64_t __35__AAMessagingService_sharedService__block_invoke()
{
  sharedService_sharedService = [[AAMessagingService alloc] initWithServiceName:@"com.apple.private.alloy.accounts.representative"];

  return MEMORY[0x1EEE66BB8]();
}

- (AAMessagingService)initWithServiceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = AAMessagingService;
  v5 = [(AAMessagingService *)&v20 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [objc_alloc(getIDSServiceClass()) initWithService:v5->_serviceName];
    service = v5->_service;
    v5->_service = v8;

    v10 = dispatch_queue_create("com.apple.AAMessaging", 0);
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = objc_alloc_init(getIDSServiceDelegatePropertiesClass());
    [v12 setWantsCrossAccountMessaging:1];
    [(IDSService *)v5->_service addDelegate:v5 withDelegateProperties:v12 queue:v5->_queue];
    sharedInstance = [getIDSIDQueryControllerClass() sharedInstance];
    queryController = v5->_queryController;
    v5->_queryController = sharedInstance;

    v15 = dispatch_queue_create("com.apple.appleaccount.incomingMessageProcessing", 0);
    incomingMessageQueue = v5->_incomingMessageQueue;
    v5->_incomingMessageQueue = v15;

    v5->_lock._os_unfair_lock_opaque = 0;
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = nameCopy;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Created AAMessagingService: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)partitionByCapability:(id)capability completion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MEMORY[0x1E695DF90];
  capabilityCopy = capability;
  v9 = objc_alloc_init(v7);
  v17[0] = capabilityCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__AAMessagingService_partitionByCapability_completion___block_invoke;
  v14[3] = &unk_1E7C9D9A0;
  v15 = v9;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = v9;
  [(AAMessagingService *)self _getCurrentRemoteDevices:v10 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __55__AAMessagingService_partitionByCapability_completion___block_invoke_cold_1(v7, v8, v9);
  }

  if (a2)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __55__AAMessagingService_partitionByCapability_completion___block_invoke_40;
    v18 = &unk_1E7C9D978;
    v19 = v10;
    v20 = *(a1 + 32);
    v11 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:&v15];
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) copy];
    (*(v12 + 16))(v12, 1, v13, 0);
  }

  else
  {
    v14 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v14 + 16))(v14, 0, 0, v11);
  }
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AAMessagingService_partitionByCapability_completion___block_invoke_2;
  v5[3] = &unk_1E7C9D950;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 enumerateObjectsUsingBlock:v5];
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 capabilities];
  v4 = [v3 valueForCapability:@"IDSRegistrationPropertySupportsCustodian"] == 1;

  v5 = [[AAMessagingCapability alloc] initWithCapabilityType:v4];
  [*(a1 + 32) addObject:v5];

  v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
    v11 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue") + 1}];

    [*(a1 + 40) setObject:v11 forKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    [v9 setObject:&unk_1F2F24BE0 forKeyedSubscript:v10];
  }
}

- (void)fetchCapability:(id)capability destinations:(id)destinations completion:(id)completion
{
  capabilityCopy = capability;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke;
  v12[3] = &unk_1E7C9D9A0;
  v13 = capabilityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = capabilityCopy;
  [(AAMessagingService *)self _getCurrentRemoteDevices:destinations completion:v12];
}

void __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (a2)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_2;
    v15 = &unk_1E7C9D978;
    v16 = *(a1 + 32);
    v7 = v6;
    v17 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v12];
    v8 = *(a1 + 40);
    v9 = [v7 copy];
    (*(v8 + 16))(v8, 1, v9, 0);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

void __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_3;
  v11 = &unk_1E7C9D9C8;
  v12 = *(a1 + 32);
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{*(v15 + 24), v8, v9, v10, v11}];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];

  _Block_object_dispose(&v14, 8);
}

void __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 capabilities];
  v7 = [*(a1 + 32) capabilityString];
  v8 = [v6 valueForCapability:v7];

  if (v8 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)doDestinations:(id)destinations haveIneligibleDeviceForCapability:(id)capability completion:(id)completion
{
  capabilityCopy = capability;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke;
  v12[3] = &unk_1E7C9D9A0;
  v13 = capabilityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = capabilityCopy;
  [(AAMessagingService *)self _getCurrentRemoteDevices:destinations completion:v12];
}

void __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (a2)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_2;
    v15 = &unk_1E7C9D978;
    v16 = *(a1 + 32);
    v7 = v6;
    v17 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v12];
    v8 = *(a1 + 40);
    v9 = [v7 copy];
    (*(v8 + 16))(v8, 1, v9, 0);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

void __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_3;
  v11 = &unk_1E7C9D9C8;
  v12 = *(a1 + 32);
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{*(v15 + 24), v8, v9, v10, v11}];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];

  _Block_object_dispose(&v14, 8);
}

void __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 capabilities];
  v7 = [*(a1 + 32) capabilityString];
  v8 = [v6 valueForCapability:v7];

  if (v8 != 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_getCurrentRemoteDevices:(id)devices completion:(id)completion
{
  completionCopy = completion;
  v7 = [devices aaf_map:&__block_literal_global_50];
  queryController = self->_queryController;
  serviceName = self->_serviceName;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_2;
  v12[3] = &unk_1E7C9DA38;
  v13 = completionCopy;
  v11 = completionCopy;
  [(IDSIDQueryController *)queryController currentRemoteDevicesForDestinations:v7 service:serviceName listenerID:serviceName queue:queue completionBlock:v12];
}

void __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_3;
    v9[3] = &unk_1E7C9DA10;
    v10 = v4;
    v5 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v6 = *(a1 + 32);
    v7 = [v5 copy];
    (*(v6 + 16))(v6, 1, v7, 0);
  }

  else
  {
    v8 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v8 + 16))(v8, 0, 0, v5);
  }
}

void __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AAMessagingDestination alloc] initWithHandle:v6];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
}

- (id)_optionsDictionaryWithResponseIdentifier:(id)identifier fireAndForget:(BOOL)forget requiredCapabilities:(id)capabilities lackingCapabilities:(id)lackingCapabilities sendFromHandleUri:(id)uri
{
  forgetCopy = forget;
  capabilitiesCopy = capabilities;
  lackingCapabilitiesCopy = lackingCapabilities;
  uriCopy = uri;
  v15 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v17 = objc_alloc_init(v15);
  if (!identifierCopy)
  {
    v18 = getIDSSendMessageOptionExpectsPeerResponseKey();
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v18];
  }

  v19 = getIDSSendMessageOptionPeerResponseIdentifierKey();
  [v17 setObject:identifierCopy forKeyedSubscript:v19];

  if (uriCopy)
  {
    v20 = getIDSSendMessageOptionFromIDKey();
    [v17 setObject:uriCopy forKeyedSubscript:v20];
  }

  if (forgetCopy)
  {
    v21 = getIDSSendMessageOptionFireAndForgetKey();
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v21];
  }

  if ([capabilitiesCopy count])
  {
    v22 = [(AAMessagingService *)self _createNewCapabilitySetFrom:capabilitiesCopy];
    v23 = getIDSSendMessageOptionRequireAllRegistrationPropertiesKey();
    [v17 setObject:v22 forKeyedSubscript:v23];
  }

  if ([lackingCapabilitiesCopy count])
  {
    v24 = [(AAMessagingService *)self _createNewCapabilitySetFrom:lackingCapabilitiesCopy];
    v25 = getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKey();
    [v17 setObject:v24 forKeyedSubscript:v25];
  }

  v26 = [v17 copy];

  return v26;
}

void __145__AAMessagingService_sendMessage_destinations_sendFromHandleUri_responseIdentifier_fireAndForget_requiredCapabilities_lackingCapabilities_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 destinationURI];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 destinationURI];
    [v4 addObject:v5];
  }
}

- (void)setCustodianDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_custodianDelegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AAMessagingService.m" lineNumber:247 description:@"Custodian delegate already set!"];
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = delegateCopy;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Setting custodian delegate %@", &v11, 0xCu);
  }

  if (delegateCopy)
  {
    objc_storeWeak(&self->_custodianDelegate, delegateCopy);
    [(AAMessagingService *)self _processPendingIDSMessagesOfType:0];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AAMessagingService setCustodianDelegate:];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setInheritanceDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_inheritanceDelegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AAMessagingService.m" lineNumber:263 description:@"Inheritance delegate already set!"];
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = delegateCopy;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Setting inheritance delegate %@", &v11, 0xCu);
  }

  if (delegateCopy)
  {
    objc_storeWeak(&self->_inheritanceDelegate, delegateCopy);
    [(AAMessagingService *)self _processPendingIDSMessagesOfType:1];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AAMessagingService setInheritanceDelegate:];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_addMessageToPendingInheritanceMessages:(id)messages
{
  pendingInheritanceMessages = self->_pendingInheritanceMessages;
  if (pendingInheritanceMessages)
  {
    messagesCopy = messages;
    v5 = pendingInheritanceMessages;
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    messagesCopy2 = messages;
    v9 = objc_alloc_init(v7);
    v10 = self->_pendingInheritanceMessages;
    self->_pendingInheritanceMessages = v9;

    v5 = self->_pendingInheritanceMessages;
    messagesCopy = messagesCopy2;
  }

  [(NSMutableArray *)v5 addObject:messagesCopy];
}

- (void)_addMessageToPendingCustodianMessages:(id)messages
{
  pendingCustodianMessages = self->_pendingCustodianMessages;
  if (pendingCustodianMessages)
  {
    messagesCopy = messages;
    v5 = pendingCustodianMessages;
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    messagesCopy2 = messages;
    v9 = objc_alloc_init(v7);
    v10 = self->_pendingCustodianMessages;
    self->_pendingCustodianMessages = v9;

    v5 = self->_pendingCustodianMessages;
    messagesCopy = messagesCopy2;
  }

  [(NSMutableArray *)v5 addObject:messagesCopy];
}

- (void)_processPendingIDSMessagesOfType:(int64_t)type
{
  v33 = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v5 = 80;
  }

  else
  {
    v5 = 72;
  }

  v6 = *(&self->super.isa + v5);
  v7 = [*(&self->super.isa + v5) copy];
  v8 = [v7 count];
  v9 = _AALogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Processing pending messages of type %ld", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(AAMessagingService *)self _processMessage:*(*(&v25 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v11;
    v16 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v9);
          }

          [v6 removeObject:{*(*(&v21 + 1) + 8 * j), v21}];
        }

        v17 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else if (v10)
  {
    *buf = 134217984;
    typeCopy2 = type;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "No messages of type %ld for the delegate to process.", buf, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_processMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  incomingMessageQueue = self->_incomingMessageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AAMessagingService__processMessage___block_invoke;
  block[3] = &unk_1E7C9DA88;
  objc_copyWeak(&v9, &location);
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(incomingMessageQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__AAMessagingService__processMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) type])
    {
      v3 = WeakRetained + 7;
    }

    else
    {
      v3 = WeakRetained + 8;
    }

    v5 = objc_loadWeakRetained(v3);
    v6 = [*(a1 + 32) data];
    v7 = [*(a1 + 32) senderHandle];
    v8 = [*(a1 + 32) sentToHandleUri];
    [v5 messageService:WeakRetained didReceiveMessage:v6 fromID:v7 sentToHandleUri:v8];
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__AAMessagingService__processMessage___block_invoke_cold_1();
    }
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v13 = [AAMessagingDestination alloc];
  toID = [contextCopy toID];
  v15 = [(AAMessagingDestination *)v13 initWithHandle:toID];
  destinationURI = [(AAMessagingDestination *)v15 destinationURI];

  v17 = _AALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    fromID = [contextCopy fromID];
    v28 = 138413058;
    v29 = dataCopy;
    v30 = 2112;
    v31 = dCopy;
    v32 = 2112;
    v33 = destinationURI;
    v34 = 2112;
    v35 = fromID;
    _os_log_debug_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEBUG, "🎒AAMessagingService: received data %@ from %@, sentToHandleUri: %@ and context %@. Calling delegates", &v28, 0x2Au);
  }

  v18 = [[AAPendingIDSMessage alloc] initInheritanceMessageFrom:dCopy data:dataCopy sentToHandleUri:destinationURI];
  v19 = [[AAPendingIDSMessage alloc] initCustodianMessageFrom:dCopy data:dataCopy sentToHandleUri:destinationURI];
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_inheritanceDelegate);

  v21 = _AALogSystem();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (WeakRetained)
  {
    if (v22)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _processMessage:v18];
  }

  else
  {
    if (v22)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _addMessageToPendingInheritanceMessages:v18];
  }

  v23 = objc_loadWeakRetained(&self->_custodianDelegate);

  v24 = _AALogSystem();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (v23)
  {
    if (v25)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _processMessage:v19];
  }

  else
  {
    if (v25)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _addMessageToPendingCustodianMessages:v19];
  }

  os_unfair_lock_unlock(&self->_lock);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changedCopy;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "activeAccountsChanged: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changedCopy;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "devicesChanged: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (AAMessagingServiceDelegate)inheritanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inheritanceDelegate);

  return WeakRetained;
}

- (AAMessagingServiceDelegate)custodianDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_custodianDelegate);

  return WeakRetained;
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, a2, a3, "Results of _getCurrentRemoteDevices: %@, error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(uint64_t)a1 destinations:(uint64_t *)a2 sendFromHandleUri:responseIdentifier:fireAndForget:requiredCapabilities:lackingCapabilities:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v3, v4, "Failed to send with uuid %@ error %@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(uint64_t)a1 destinations:(uint64_t *)a2 sendFromHandleUri:responseIdentifier:fireAndForget:requiredCapabilities:lackingCapabilities:error:.cold.2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v3, v4, "Request to send message with uuid %@ error %@");
  v5 = *MEMORY[0x1E69E9840];
}

@end