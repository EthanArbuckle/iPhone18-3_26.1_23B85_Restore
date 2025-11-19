@interface AASetupAssistantService
+ (id)urlConfiguration;
- (AASetupAssistantService)init;
- (AASetupAssistantService)initWithAccount:(id)a3;
- (AASetupAssistantService)initWithAppleID:(id)a3 password:(id)a4;
- (id)_signingSession;
- (void)_doHSADeviceProvisioningSynchronizationWithDSID:(id)a3 data:(id)a4;
- (void)_doHSADeviceProvisioningWithDSID:(id)a3 data:(id)a4;
- (void)_doHSADeviceReprovisioningWithDSID:(id)a3;
- (void)authenticateWithHandler:(id)a3;
- (void)createAppleIDWithParameters:(id)a3 handler:(id)a4;
- (void)createAppleIDWithParameters:(id)a3 handlerWithResponse:(id)a4;
- (void)dealloc;
- (void)downloadURLConfiguration:(id)a3;
- (void)loginDelegatesWithParameters:(id)a3 completion:(id)a4;
- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)a3;
- (void)setupDelegateAccountsWithParameters:(id)a3 handler:(id)a4;
- (void)shouldPresentUpgradeFlowWithCompletion:(id)a3;
- (void)updateAppleIDWithParameters:(id)a3 handler:(id)a4;
- (void)upgradeiCloudTermsIfNecessaryWithCustomHeaders:(id)a3 handler:(id)a4;
- (void)upgradeiCloudTermsIfNecessaryWithHandler:(id)a3;
@end

@implementation AASetupAssistantService

+ (id)urlConfiguration
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_124C;
  v13 = sub_125C;
  v14 = 0;
  v2 = objc_alloc_init(AASetupAssistantConfigRequest);
  [v2 setFlushCache:byte_18E68];
  byte_18E68 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1264;
  v6[3] = &unk_14570;
  v8 = &v9;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [v2 performRequestWithHandler:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (AASetupAssistantService)init
{
  v6.receiver = self;
  v6.super_class = AASetupAssistantService;
  v2 = [(AASetupAssistantService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    requesterQueue = v2->_requesterQueue;
    v2->_requesterQueue = v3;
  }

  return v2;
}

- (AASetupAssistantService)initWithAppleID:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AASetupAssistantService *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    appleID = v8->_appleID;
    v8->_appleID = v9;

    v11 = [v7 copy];
    password = v8->_password;
    v8->_password = v11;
  }

  return v8;
}

- (AASetupAssistantService)initWithAccount:(id)a3
{
  v5 = a3;
  v6 = [(AASetupAssistantService *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [v5 username];
    v9 = [v8 copy];
    appleID = v7->_appleID;
    v7->_appleID = v9;

    v11 = [(ACAccount *)v7->_account credential];
    v12 = [v11 password];
    v13 = [v12 copy];
    password = v7->_password;
    v7->_password = v13;
  }

  return v7;
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

- (void)setCookieStorage:(OpaqueCFHTTPCookieStorage *)a3
{
  cookieStorage = self->_cookieStorage;
  if (cookieStorage != a3)
  {
    if (cookieStorage)
    {
      CFRelease(cookieStorage);
    }

    self->_cookieStorage = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)downloadURLConfiguration:(id)a3
{
  v3 = a3;
  v4 = dispatch_queue_create("urlConfigurationQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15C8;
  block[3] = &unk_14598;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)authenticateWithHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("authenticationRequestQueue", 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16E4;
  v7[3] = &unk_145C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)createAppleIDWithParameters:(id)a3 handler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19E8;
  v7[3] = &unk_14610;
  v8 = a4;
  v6 = v8;
  [(AASetupAssistantService *)self createAppleIDWithParameters:a3 handlerWithResponse:v7];
}

- (void)createAppleIDWithParameters:(id)a3 handlerWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "createAppleIDWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("createAppleIDQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B24;
  block[3] = &unk_14638;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)updateAppleIDWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "updateAppleIDWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("updateAppleIDQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20A4;
  block[3] = &unk_14638;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)setupDelegateAccountsWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "setupDelegateAccountsWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("setupDelegateAccountsQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_25DC;
  block[3] = &unk_14638;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)loginDelegatesWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "loginDelegatesWithParameters start", buf, 2u);
  }

  v9 = dispatch_queue_create("loginDelegatesQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B08;
  block[3] = &unk_14638;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)upgradeiCloudTermsIfNecessaryWithHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2F94;
  v5[3] = &unk_14660;
  v6 = a3;
  v4 = v6;
  [(AASetupAssistantService *)self upgradeiCloudTermsIfNecessaryWithCustomHeaders:0 handler:v5];
}

- (void)upgradeiCloudTermsIfNecessaryWithCustomHeaders:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_account)
  {
    v8 = dispatch_queue_create("upgradeTermsQueue", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3114;
    block[3] = &unk_14638;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Error: No AppleAccount set on AASetupAssistant Service", v10, 2u);
    }

    v8 = [NSError errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v8);
  }
}

- (void)shouldPresentUpgradeFlowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "shouldPresentUpgradeFlowWithCompletion start", buf, 2u);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [(AASetupAssistantService *)self appleID];
  [v6 setValue:v7 forKey:@"apple-id"];

  v8 = [(AASetupAssistantService *)self password];
  [v6 setValue:v8 forKey:@"password"];

  v9 = +[AADeviceInfo appleIDClientIdentifier];
  [v6 setValue:v9 forKey:@"client-id"];

  v10 = [[AASetupAssistantUpgradeStatusRequest alloc] initWithAccount:self->_account];
  if (self->_account)
  {
    v11 = [[AADeviceProvisioningSession alloc] initWithAccount:self->_account];
    [v11 addProvisioningInfoToAARequest:v10];
  }

  [v10 setCookieStorage:self->_cookieStorage];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_35AC;
  v13[3] = &unk_145E8;
  v14 = v4;
  v12 = v4;
  [v10 performRequestWithHandler:v13];
}

- (id)_signingSession
{
  if (!self->_signingSession)
  {
    goto LABEL_7;
  }

  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_signingSessionCreationDate];
  v5 = v4;

  if (v5 > 540.0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "shared signing session expired. creating a new signing session.", buf, 2u);
    }

    signingSession = self->_signingSession;
    self->_signingSession = 0;
  }

  if (!self->_signingSession)
  {
LABEL_7:
    v8 = +[NSDate date];
    signingSessionCreationDate = self->_signingSessionCreationDate;
    self->_signingSessionCreationDate = v8;

    v10 = +[AASetupAssistantService urlConfiguration];
    v11 = [v10 signingSessionCertURL];
    v12 = +[AASetupAssistantService urlConfiguration];
    v13 = [v12 signingSessionURL];
    v22 = 0;
    v14 = [AASigningSession establishedSessionWithCertURL:v11 sessionURL:v13 error:&v22];
    v15 = v22;
    v16 = self->_signingSession;
    self->_signingSession = v14;

    if (v15)
    {
      v17 = _AALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Failed to create a shared signing session: %@", buf, 0xCu);
      }
    }
  }

  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_signingSession;
    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "using shared signing session %@", buf, 0xCu);
  }

  v20 = self->_signingSession;

  return v20;
}

- (void)_doHSADeviceProvisioningWithDSID:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AADeviceProvisioningSession alloc] initWithDSID:v7];

  [v8 setCookieStorageRef:self->_cookieStorage];
  v9 = [v8 provisionDeviceWithData:v6];

  v10 = _AALogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v15 = 0;
      v12 = "Device provisioning failed";
      v13 = &v15;
LABEL_6:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }
  }

  else if (v11)
  {
    v14 = 0;
    v12 = "Device provisioning completed sucessfully";
    v13 = &v14;
    goto LABEL_6;
  }
}

- (void)_doHSADeviceProvisioningSynchronizationWithDSID:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AADeviceProvisioningSession alloc] initWithDSID:v7];

  [v8 setCookieStorageRef:self->_cookieStorage];
  v9 = [v8 synchronizeProvisioningWithData:v6];

  v10 = _AALogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v15 = 0;
      v12 = "Device provisioning sync failed";
      v13 = &v15;
LABEL_6:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }
  }

  else if (v11)
  {
    v14 = 0;
    v12 = "Device provisioning sync completed successfully";
    v13 = &v14;
    goto LABEL_6;
  }
}

- (void)_doHSADeviceReprovisioningWithDSID:(id)a3
{
  v3 = a3;
  v4 = [[AADeviceProvisioningSession alloc] initWithDSID:v3];

  v5 = [v4 eraseProvisioning];
  if (v5)
  {
    v6 = v5;
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Something went wrong when trying to erase the device provisioning: %d", v8, 8u);
    }
  }
}

@end