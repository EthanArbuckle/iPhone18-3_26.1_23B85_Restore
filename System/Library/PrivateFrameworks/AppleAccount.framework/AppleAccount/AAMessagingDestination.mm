@interface AAMessagingDestination
- (AAMessagingDestination)initWithEmail:(id)email;
- (AAMessagingDestination)initWithHandle:(id)handle;
- (AAMessagingDestination)initWithPhoneNumber:(id)number;
- (id)copyWithZone:(_NSZone *)zone;
- (void)isRegisteredToiMessageWithCompletion:(id)completion;
@end

@implementation AAMessagingDestination

- (AAMessagingDestination)initWithEmail:(id)email
{
  emailCopy = email;
  v12.receiver = self;
  v12.super_class = AAMessagingDestination;
  v5 = [(AAMessagingDestination *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_destinationType = 1;
    v7 = [emailCopy copy];
    destination = v6->_destination;
    v6->_destination = v7;

    v9 = _SIDSCopyIDForEmailAddress(emailCopy);
    destinationURI = v6->_destinationURI;
    v6->_destinationURI = v9;
  }

  return v6;
}

- (AAMessagingDestination)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = AAMessagingDestination;
  v5 = [(AAMessagingDestination *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_destinationType = 2;
    v7 = [numberCopy copy];
    destination = v6->_destination;
    v6->_destination = v7;

    v9 = _SIDSCopyIDForPhoneNumberWithOptions(numberCopy, 0, 0);
    destinationURI = v6->_destinationURI;
    v6->_destinationURI = v9;
  }

  return v6;
}

- (AAMessagingDestination)initWithHandle:(id)handle
{
  handleCopy = handle;
  v61.receiver = self;
  v61.super_class = AAMessagingDestination;
  v5 = [(AAMessagingDestination *)&v61 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  if ([handleCopy hasPrefix:@"mailto:"])
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v6 initWithHandle:v7, v8, v9, v10, v11, v12, v13];
    }

    v5->_destinationType = 1;
    v14 = IDSCopyRawAddressForDestination();
    destination = v5->_destination;
    v5->_destination = v14;

    goto LABEL_16;
  }

  if ([handleCopy hasPrefix:@"tel:"])
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v16 initWithHandle:v17, v18, v19, v20, v21, v22, v23];
    }

    v24 = 2;
LABEL_15:
    v5->_destinationType = v24;
LABEL_16:
    v33 = [handleCopy copy];
LABEL_17:
    destinationURI = v5->_destinationURI;
    v5->_destinationURI = v33;

LABEL_18:
    v35 = dispatch_get_global_queue(33, 0);
    idsQueue = v5->_idsQueue;
    v5->_idsQueue = v35;

    v37 = v5;
    goto LABEL_19;
  }

  if (([handleCopy hasPrefix:@"token:"] & 1) != 0 || objc_msgSend(handleCopy, "hasPrefix:", @"self-token:"))
  {
    v25 = _AALogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v25 initWithHandle:v26, v27, v28, v29, v30, v31, v32];
    }

    v24 = 3;
    goto LABEL_15;
  }

  if ([handleCopy aa_appearsToBeEmail])
  {
    v39 = _AALogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v39 initWithHandle:v40, v41, v42, v43, v44, v45, v46];
    }

    v5->_destinationType = 1;
    v47 = [handleCopy copy];
    v48 = v5->_destination;
    v5->_destination = v47;

    v33 = _SIDSCopyIDForEmailAddress(handleCopy);
    goto LABEL_17;
  }

  aa_appearsToBePhoneNumber = [handleCopy aa_appearsToBePhoneNumber];
  v50 = _AALogSystem();
  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);
  if (aa_appearsToBePhoneNumber)
  {
    if (v51)
    {
      [(AAMessagingDestination *)v50 initWithHandle:v52, v53, v54, v55, v56, v57, v58];
    }

    v5->_destinationType = 2;
    v59 = [handleCopy copy];
    v60 = v5->_destination;
    v5->_destination = v59;

    v33 = _SIDSCopyIDForPhoneNumberWithOptions(handleCopy, 0, 0);
    goto LABEL_17;
  }

  if (v51)
  {
    [(AAMessagingDestination *)handleCopy initWithHandle:v50];
  }

  v37 = 0;
LABEL_19:

  return v37;
}

- (void)isRegisteredToiMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedInstance = [getIDSIDQueryControllerClass() sharedInstance];
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AAMessagingDestination *)self isRegisteredToiMessageWithCompletion:v6];
  }

  objc_initWeak(&location, self);
  destinationURI = self->_destinationURI;
  v8 = getIDSServiceNameiMessage();
  v9 = getIDSServiceNameiMessage();
  idsQueue = self->_idsQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke;
  v13[3] = &unk_1E7C9D918;
  objc_copyWeak(&v17, &location);
  v11 = sharedInstance;
  v14 = v11;
  v12 = completionCopy;
  selfCopy = self;
  v16 = v12;
  [v11 currentIDStatusForDestination:destinationURI service:v8 listenerID:v9 queue:idsQueue completionBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = _AALogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v6)
    {
      __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_cold_1(WeakRetained);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), a2 == 1);
  }

  else
  {
    if (v6)
    {
      __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_cold_2(v5);
    }

    v7 = *(a1 + 32);
    v8 = WeakRetained[4];
    v9 = getIDSServiceNameiMessage();
    v10 = getIDSServiceNameiMessage();
    v11 = WeakRetained[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43;
    v13[3] = &unk_1E7C9D8F0;
    v14 = WeakRetained;
    v12 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = v12;
    [v7 refreshIDStatusForDestination:v8 service:v9 listenerID:v10 queue:v11 completionBlock:v13];
  }
}

uint64_t __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43(uint64_t a1, uint64_t a2)
{
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43_cold_1(a1);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a2 == 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_destination copy];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)initWithHandle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[AAMessagingDestination initWithHandle:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "%s unable to initialize with handle %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithHandle:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with phone number", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithHandle:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with email", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithHandle:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with token handle", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithHandle:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with phone number uri", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithHandle:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with email uri", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)isRegisteredToiMessageWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 destinationURI];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Checking if %@ is reachable via iMessage.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v2, v3, "Known IDS status for %@ is %ld");
  v4 = *MEMORY[0x1E69E9840];
}

void __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 32);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v2, v3, "IDS status for %@ is %ld");
  v4 = *MEMORY[0x1E69E9840];
}

@end