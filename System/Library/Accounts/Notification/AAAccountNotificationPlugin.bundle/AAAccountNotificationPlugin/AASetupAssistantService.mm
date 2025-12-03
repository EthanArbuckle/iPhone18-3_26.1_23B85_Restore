@interface AASetupAssistantService
+ (id)urlConfiguration;
- (AASetupAssistantService)init;
- (AASetupAssistantService)initWithAccount:(id)account;
- (AASetupAssistantService)initWithAppleID:(id)d password:(id)password;
- (id)_signingSession;
- (void)_doHSADeviceProvisioningSynchronizationWithDSID:(id)d data:(id)data;
- (void)_doHSADeviceProvisioningWithDSID:(id)d data:(id)data;
- (void)_doHSADeviceReprovisioningWithDSID:(id)d;
- (void)authenticateWithHandler:(id)handler;
- (void)createAppleIDWithParameters:(id)parameters handler:(id)handler;
- (void)createAppleIDWithParameters:(id)parameters handlerWithResponse:(id)response;
- (void)dealloc;
- (void)downloadURLConfiguration:(id)configuration;
- (void)loginDelegatesWithParameters:(id)parameters completion:(id)completion;
- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)storage;
- (void)setupDelegateAccountsWithParameters:(id)parameters handler:(id)handler;
- (void)shouldPresentUpgradeFlowWithCompletion:(id)completion;
- (void)updateAppleIDWithParameters:(id)parameters handler:(id)handler;
- (void)upgradeiCloudTermsIfNecessaryWithCustomHeaders:(id)headers handler:(id)handler;
- (void)upgradeiCloudTermsIfNecessaryWithHandler:(id)handler;
@end

@implementation AASetupAssistantService

+ (id)urlConfiguration
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_29C84527C;
  v20 = sub_29C84528C;
  v21 = 0;
  v2 = objc_alloc_init(MEMORY[0x29EDBE398]);
  objc_msgSend_setFlushCache_(v2, v3, byte_2A1795010, v4, v5);
  byte_2A1795010 = 0;
  v6 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C845294;
  v13[3] = &unk_29F329510;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  objc_msgSend_performRequestWithHandler_(v2, v8, v13, v9, v10);
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (AASetupAssistantService)init
{
  v6.receiver = self;
  v6.super_class = AASetupAssistantService;
  v2 = [(AASetupAssistantService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDBA088]);
    requesterQueue = v2->_requesterQueue;
    v2->_requesterQueue = v3;
  }

  return v2;
}

- (AASetupAssistantService)initWithAppleID:(id)d password:(id)password
{
  dCopy = d;
  passwordCopy = password;
  v16 = objc_msgSend_init(self, v8, v9, v10, v11);
  if (v16)
  {
    v17 = objc_msgSend_copy(dCopy, v12, v13, v14, v15);
    appleID = v16->_appleID;
    v16->_appleID = v17;

    v23 = objc_msgSend_copy(passwordCopy, v19, v20, v21, v22);
    password = v16->_password;
    v16->_password = v23;
  }

  return v16;
}

- (AASetupAssistantService)initWithAccount:(id)account
{
  accountCopy = account;
  v10 = objc_msgSend_init(self, v6, v7, v8, v9);
  v11 = v10;
  if (v10)
  {
    objc_storeStrong((v10 + 40), account);
    v16 = objc_msgSend_username(accountCopy, v12, v13, v14, v15);
    v21 = objc_msgSend_copy(v16, v17, v18, v19, v20);
    appleID = v11->_appleID;
    v11->_appleID = v21;

    v27 = objc_msgSend_credential(v11->_account, v23, v24, v25, v26);
    v32 = objc_msgSend_password(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_copy(v32, v33, v34, v35, v36);
    password = v11->_password;
    v11->_password = v37;
  }

  return v11;
}

- (void)dealloc
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage)
  {
    CFRelease(cookieStorage);
  }

  v4.receiver = self;
  v4.super_class = AASetupAssistantService;
  [(AASetupAssistantService *)&v4 dealloc];
}

- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)storage
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage != storage)
  {
    if (cookieStorage)
    {
      CFRelease(cookieStorage);
    }

    self->_cookieStorage = storage;
    if (storage)
    {

      CFRetain(storage);
    }
  }
}

- (void)downloadURLConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = dispatch_queue_create("urlConfigurationQueue", 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8455F8;
  block[3] = &unk_29F329538;
  v7 = configurationCopy;
  v5 = configurationCopy;
  dispatch_async(v4, block);
}

- (void)authenticateWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_queue_create("authenticationRequestQueue", 0);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C845714;
  v7[3] = &unk_29F329560;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)createAppleIDWithParameters:(id)parameters handler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C845A18;
  v10[3] = &unk_29F3295B0;
  v11 = handlerCopy;
  v7 = handlerCopy;
  objc_msgSend_createAppleIDWithParameters_handlerWithResponse_(self, v8, parameters, v10, v9);
}

- (void)createAppleIDWithParameters:(id)parameters handlerWithResponse:(id)response
{
  parametersCopy = parameters;
  responseCopy = response;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C844000, v8, OS_LOG_TYPE_DEFAULT, "createAppleIDWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("createAppleIDQueue", 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C845B54;
  block[3] = &unk_29F3295D8;
  v13 = parametersCopy;
  selfCopy = self;
  v15 = responseCopy;
  v10 = responseCopy;
  v11 = parametersCopy;
  dispatch_async(v9, block);
}

- (void)updateAppleIDWithParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C844000, v8, OS_LOG_TYPE_DEFAULT, "updateAppleIDWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("updateAppleIDQueue", 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8460D4;
  block[3] = &unk_29F3295D8;
  v13 = parametersCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = parametersCopy;
  dispatch_async(v9, block);
}

- (void)setupDelegateAccountsWithParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C844000, v8, OS_LOG_TYPE_DEFAULT, "setupDelegateAccountsWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("setupDelegateAccountsQueue", 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C84660C;
  block[3] = &unk_29F3295D8;
  v13 = parametersCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = parametersCopy;
  dispatch_async(v9, block);
}

- (void)loginDelegatesWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C844000, v8, OS_LOG_TYPE_DEFAULT, "loginDelegatesWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("loginDelegatesQueue", 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C846B38;
  block[3] = &unk_29F3295D8;
  v13 = parametersCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = parametersCopy;
  dispatch_async(v9, block);
}

- (void)upgradeiCloudTermsIfNecessaryWithHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C846FC4;
  v8[3] = &unk_29F329600;
  v9 = handlerCopy;
  v5 = handlerCopy;
  objc_msgSend_upgradeiCloudTermsIfNecessaryWithCustomHeaders_handler_(self, v6, 0, v8, v7);
}

- (void)upgradeiCloudTermsIfNecessaryWithCustomHeaders:(id)headers handler:(id)handler
{
  headersCopy = headers;
  handlerCopy = handler;
  if (self->_account)
  {
    v8 = dispatch_queue_create("upgradeTermsQueue", 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C847144;
    block[3] = &unk_29F3295D8;
    block[4] = self;
    v13 = headersCopy;
    v14 = handlerCopy;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_29C844000, v9, OS_LOG_TYPE_DEFAULT, "Error: No AppleAccount set on AASetupAssistant Service", v11, 2u);
    }

    v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v10, @"com.apple.appleaccount", 0, 0);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  }
}

- (void)shouldPresentUpgradeFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C844000, v5, OS_LOG_TYPE_DEFAULT, "shouldPresentUpgradeFlowWithCompletion start", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v11 = objc_msgSend_appleID(self, v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"apple-id", v13);

  v18 = objc_msgSend_password(self, v14, v15, v16, v17);
  objc_msgSend_setValue_forKey_(v6, v19, v18, @"password", v20);

  v25 = objc_msgSend_appleIDClientIdentifier(MEMORY[0x29EDBE330], v21, v22, v23, v24);
  objc_msgSend_setValue_forKey_(v6, v26, v25, @"client-id", v27);

  v28 = objc_alloc(MEMORY[0x29EDBE3C0]);
  v35 = objc_msgSend_initWithAccount_(v28, v29, self->_account, v30, v31);
  if (self->_account)
  {
    v36 = objc_alloc(MEMORY[0x29EDBE338]);
    v40 = objc_msgSend_initWithAccount_(v36, v37, self->_account, v38, v39);
    objc_msgSend_addProvisioningInfoToAARequest_(v40, v41, v35, v42, v43);
  }

  objc_msgSend_setCookieStorage_(v35, v32, self->_cookieStorage, v33, v34);
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = sub_29C8475DC;
  v48[3] = &unk_29F329588;
  v49 = completionCopy;
  v44 = completionCopy;
  objc_msgSend_performRequestWithHandler_(v35, v45, v48, v46, v47);
}

- (id)_signingSession
{
  v50 = *MEMORY[0x29EDCA608];
  if (!self->_signingSession)
  {
    goto LABEL_7;
  }

  v6 = objc_msgSend_date(MEMORY[0x29EDB8DB0], a2, v2, v3, v4);
  objc_msgSend_timeIntervalSinceDate_(v6, v7, self->_signingSessionCreationDate, v8, v9);
  v11 = v10;

  if (v11 > 540.0)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v12, OS_LOG_TYPE_DEFAULT, "shared signing session expired. creating a new signing session.", buf, 2u);
    }

    signingSession = self->_signingSession;
    self->_signingSession = 0;
  }

  if (!self->_signingSession)
  {
LABEL_7:
    v14 = objc_msgSend_date(MEMORY[0x29EDB8DB0], a2, v2, v3, v4);
    signingSessionCreationDate = self->_signingSessionCreationDate;
    self->_signingSessionCreationDate = v14;

    v16 = MEMORY[0x29EDBE3C8];
    v21 = objc_msgSend_urlConfiguration(AASetupAssistantService, v17, v18, v19, v20);
    v26 = objc_msgSend_signingSessionCertURL(v21, v22, v23, v24, v25);
    v31 = objc_msgSend_urlConfiguration(AASetupAssistantService, v27, v28, v29, v30);
    v36 = objc_msgSend_signingSessionURL(v31, v32, v33, v34, v35);
    v47 = 0;
    v38 = objc_msgSend_establishedSessionWithCertURL_sessionURL_error_(v16, v37, v26, v36, &v47);
    v39 = v47;
    v40 = self->_signingSession;
    self->_signingSession = v38;

    if (v39)
    {
      v41 = _AALogSystem();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v39;
        _os_log_impl(&dword_29C844000, v41, OS_LOG_TYPE_DEFAULT, "Failed to create a shared signing session: %@", buf, 0xCu);
      }
    }
  }

  v42 = _AALogSystem();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->_signingSession;
    *buf = 138412290;
    v49 = v43;
    _os_log_impl(&dword_29C844000, v42, OS_LOG_TYPE_DEFAULT, "using shared signing session %@", buf, 0xCu);
  }

  v44 = self->_signingSession;
  v45 = *MEMORY[0x29EDCA608];

  return v44;
}

- (void)_doHSADeviceProvisioningWithDSID:(id)d data:(id)data
{
  dCopy = d;
  dataCopy = data;
  v8 = dataCopy;
  if (dCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29C84E268();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_29C84E2D4();
LABEL_3:
  v9 = objc_alloc(MEMORY[0x29EDBE338]);
  v13 = objc_msgSend_initWithDSID_(v9, v10, dCopy, v11, v12);
  objc_msgSend_setCookieStorageRef_(v13, v14, self->_cookieStorage, v15, v16);
  v20 = objc_msgSend_provisionDeviceWithData_(v13, v17, v8, v18, v19);
  v21 = _AALogSystem();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v26 = 0;
      v23 = "Device provisioning failed";
      v24 = &v26;
LABEL_8:
      _os_log_impl(&dword_29C844000, v21, OS_LOG_TYPE_DEFAULT, v23, v24, 2u);
    }
  }

  else if (v22)
  {
    v25 = 0;
    v23 = "Device provisioning completed sucessfully";
    v24 = &v25;
    goto LABEL_8;
  }
}

- (void)_doHSADeviceProvisioningSynchronizationWithDSID:(id)d data:(id)data
{
  dCopy = d;
  dataCopy = data;
  v8 = dataCopy;
  if (dCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29C84E340();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_29C84E3AC();
LABEL_3:
  v9 = objc_alloc(MEMORY[0x29EDBE338]);
  v13 = objc_msgSend_initWithDSID_(v9, v10, dCopy, v11, v12);
  objc_msgSend_setCookieStorageRef_(v13, v14, self->_cookieStorage, v15, v16);
  v20 = objc_msgSend_synchronizeProvisioningWithData_(v13, v17, v8, v18, v19);
  v21 = _AALogSystem();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v26 = 0;
      v23 = "Device provisioning sync failed";
      v24 = &v26;
LABEL_8:
      _os_log_impl(&dword_29C844000, v21, OS_LOG_TYPE_DEFAULT, v23, v24, 2u);
    }
  }

  else if (v22)
  {
    v25 = 0;
    v23 = "Device provisioning sync completed successfully";
    v24 = &v25;
    goto LABEL_8;
  }
}

- (void)_doHSADeviceReprovisioningWithDSID:(id)d
{
  v18 = *MEMORY[0x29EDCA608];
  dCopy = d;
  if (!dCopy)
  {
    sub_29C84E418();
  }

  v4 = objc_alloc(MEMORY[0x29EDBE338]);
  v8 = objc_msgSend_initWithDSID_(v4, v5, dCopy, v6, v7);
  v13 = objc_msgSend_eraseProvisioning(v8, v9, v10, v11, v12);
  if (v13)
  {
    v14 = v13;
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109120;
      v17[1] = v14;
      _os_log_impl(&dword_29C844000, v15, OS_LOG_TYPE_DEFAULT, "Something went wrong when trying to erase the device provisioning: %d", v17, 8u);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end