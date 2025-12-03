@interface BCSContinuityCameraAction
- (BCSContinuityCameraAction)initWithData:(id)data codePayload:(id)payload;
- (id)actionPickerItems;
- (id)localizedDefaultActionDescription;
- (void)performDefaultActionWithCompletionHandler:(id)handler;
- (void)setConnecting:(BOOL)connecting;
@end

@implementation BCSContinuityCameraAction

- (BCSContinuityCameraAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BCSContinuityCameraAction;
  v8 = [(BCSAction *)&v11 initWithData:dataCopy codePayload:payloadCopy];
  if (!v8)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = v8;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (void)setConnecting:(BOOL)connecting
{
  if (self->_connecting != connecting)
  {
    self->_connecting = connecting;
    delegate = [(BCSAction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionDidUpdateTitle:self];
    }
  }
}

- (id)localizedDefaultActionDescription
{
  if (self->_connecting)
  {
    v3 = @"Connecting to Apple TV…";
  }

  else
  {
    v3 = @"Connect to Apple TV";
  }

  v4 = _BCSLocalizedString(v3, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);

  return v4;
}

- (id)actionPickerItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSContinuityCameraActionPickerItem alloc];
  localizedActionDescription = [(BCSAction *)self localizedActionDescription];
  v5 = [(BCSActionPickerItem *)v3 initWithLabel:localizedActionDescription action:self];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)performDefaultActionWithCompletionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(BCSContinuityCameraAction *)self setConnecting:1];
  v5 = MEMORY[0x277CCACE0];
  data = [(BCSAction *)self data];
  v7 = [data url];
  v8 = [v5 componentsWithURL:v7 resolvingAgainstBaseURL:0];

  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    queryItems = [v8 queryItems];
    v11 = [queryItems countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v11)
    {
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(queryItems);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          value = [v14 value];
          name = [v14 name];
          [dictionary setObject:value forKeyedSubscript:name];
        }

        v11 = [queryItems countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v11);
    }

    v35 = 0;
    v17 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:&v35];
    v18 = v35;
    if (v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        _bcs_privacyPreservingDescription = [v18 _bcs_privacyPreservingDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = _bcs_privacyPreservingDescription;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Failed to serialize pairing info: %@", &buf, 0xCu);
      }

      v20 = BCSActionError(3);
      handlerCopy[2](handlerCopy, v20);
    }

    else
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x2050000000;
      v21 = getRPRemoteDisplayDeviceClass_softClass;
      v43 = getRPRemoteDisplayDeviceClass_softClass;
      if (!getRPRemoteDisplayDeviceClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v46 = __getRPRemoteDisplayDeviceClass_block_invoke;
        v47 = &unk_278CFE620;
        v48 = &v40;
        __getRPRemoteDisplayDeviceClass_block_invoke(&buf);
        v21 = v41[3];
      }

      v22 = v21;
      _Block_object_dispose(&v40, 8);
      v20 = objc_alloc_init(v21);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v20 setIdentifier:uUIDString];

      v40 = 0;
      v41 = &v40;
      v42 = 0x2050000000;
      v25 = getRPRemoteDisplaySessionClass_softClass;
      v43 = getRPRemoteDisplaySessionClass_softClass;
      if (!getRPRemoteDisplaySessionClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v46 = __getRPRemoteDisplaySessionClass_block_invoke;
        v47 = &unk_278CFE620;
        v48 = &v40;
        __getRPRemoteDisplaySessionClass_block_invoke(&buf);
        v25 = v41[3];
      }

      v26 = v25;
      _Block_object_dispose(&v40, 8);
      v27 = objc_alloc_init(v25);
      remoteDisplaySession = self->_remoteDisplaySession;
      self->_remoteDisplaySession = v27;

      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setDestinationDevice:v20];
      if (remoteDisplaySessionQueue_onceToken != -1)
      {
        [BCSContinuityCameraAction performDefaultActionWithCompletionHandler:];
      }

      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setDispatchQueue:remoteDisplaySessionQueue_queue];
      v29 = self->_remoteDisplaySession;
      if (objc_opt_respondsToSelector())
      {
        [(RPRemoteDisplaySession *)self->_remoteDisplaySession setPairingInfo:v17];
      }

      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setPasswordType:10];
      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setServiceType:@"com.apple.ddui.guestpairing"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Connecting camera", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v30 = self->_remoteDisplaySession;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke;
      v32[3] = &unk_278CFF5E8;
      v33 = handlerCopy;
      objc_copyWeak(&v34, &buf);
      [(RPRemoteDisplaySession *)v30 activateWithCompletion:v32];
      objc_destroyWeak(&v34);

      objc_destroyWeak(&buf);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Failed to get URL components", &buf, 2u);
    }

    dictionary = BCSActionError(3);
    handlerCopy[2](handlerCopy, dictionary);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278CFF5C0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2(id *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2_cold_1(v2);
    }

    v3 = a1[5];
    v4 = BCSActionError(3);
    v3[2](v3, v4);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Successfully connected", buf, 2u);
    }

    v5 = dispatch_time(0, 10000000000);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_21;
    v6[3] = &unk_278CFF598;
    objc_copyWeak(&v8, a1 + 6);
    v7 = a1[5];
    dispatch_after(v5, MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_21(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Invalidating session and calling completion", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 13) invalidate];
    v4 = v3[13];
    v3[13] = 0;

    [v3 setConnecting:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2_cold_1(id *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*a1 _bcs_privacyPreservingDescription];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSContinuityCameraAction: Failed to connect: %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end