@interface CLSEndpointConnection
+ (BOOL)isAllowedToMakeXPCCalls;
+ (BOOL)isClassKitEnabled;
+ (BOOL)isInDevelopmentEnvironment;
+ (CLSEndpointConnection)sharedInstance;
+ (NSString)classKitEnvironment;
+ (id)instanceForEndpoint:(id)a3;
- (BOOL)isBorked;
- (CLSEndpointConnection)init;
- (CLSEndpointConnection)initWithEndpoint:(id)a3;
- (id)server:(id)a3;
- (id)serverConnection;
- (id)syncServer:(id)a3;
- (void)_registerForDarwinNotifications;
- (void)_updateBundleIdentifier:(id)a3 forConnection:(id)a4 completion:(id)a5;
- (void)accountChanged;
- (void)addBarrierBlock:(id)a3;
- (void)connect;
- (void)connectionBorked:(id)a3;
- (void)connectionInterrupted:(id)a3;
- (void)dealloc;
- (void)deleteAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)devModeChanged;
- (void)invalidate;
- (void)listAppsWithCompletion:(id)a3;
- (void)setOverrideBundleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CLSEndpointConnection

+ (CLSEndpointConnection)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FDC094;
  block[3] = &unk_278A17960;
  block[4] = a1;
  if (qword_280B2A590 != -1)
  {
    dispatch_once(&qword_280B2A590, block);
  }

  v2 = qword_280B2A588;

  return v2;
}

+ (id)instanceForEndpoint:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = [a1 alloc];
    v9 = objc_msgSend_initWithEndpoint_(v7, v8, v6);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(a1, v4, v5);
  }

  v10 = v9;

  return v10;
}

- (CLSEndpointConnection)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSEndpointConnection)initWithEndpoint:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CLSEndpointConnection;
  v6 = [(CLSEndpointConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock = 0;
    objc_storeStrong(&v6->_endpoint, a3);
    objc_msgSend__registerForDarwinNotifications(v7, v8, v9);
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v6 = objc_msgSend_defaultCenter(CLSDarwinNotificationCenter, v4, v5);
  objc_msgSend_removeObserver_notificationName_(v6, v7, self, @"com.apple.progressd.available");
  objc_msgSend_removeObserver_notificationName_(v6, v8, self, @"com.apple.progressd.devModeChanged");
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10);
  objc_msgSend_removeObserver_(v11, v12, self);

  v13.receiver = self;
  v13.super_class = CLSEndpointConnection;
  [(CLSEndpointConnection *)&v13 dealloc];
}

- (void)_registerForDarwinNotifications
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_defaultCenter(CLSDarwinNotificationCenter, v3, v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236FDC48C;
  v10[3] = &unk_278A18500;
  objc_copyWeak(&v11, &location);
  objc_msgSend_addObserver_notificationName_block_(v5, v6, self, @"com.apple.progressd.available", v10);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_236FDC610;
  v8[3] = &unk_278A18500;
  objc_copyWeak(&v9, &location);
  objc_msgSend_addObserver_notificationName_block_(v5, v7, self, @"com.apple.progressd.devModeChanged", v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (BOOL)isBorked
{
  objc_msgSend_lock(self, a2, v2);
  v6 = !self->_serverConnection || self->_connectionBorked || self->_interrupted;
  objc_msgSend_unlock(self, v4, v5);
  return v6;
}

- (id)serverConnection
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  if (objc_msgSend_isClassKitEnabled(v3, v4, v5))
  {
    objc_msgSend_lock(self, v6, v7);
    if (!objc_msgSend_isBorked(self, v8, v9))
    {
LABEL_14:
      v38 = self->_serverConnection;
      objc_msgSend_unlock(self, v39, v40);
      goto LABEL_23;
    }

    endpoint = self->_endpoint;
    v11 = objc_alloc(MEMORY[0x277CCAE80]);
    if (endpoint)
    {
      v13 = objc_msgSend_initWithListenerEndpoint_(v11, v12, self->_endpoint);
    }

    else
    {
      v13 = objc_msgSend_initWithMachServiceName_options_(v11, v12, @"com.apple.progressd", 4096);
    }

    v14 = v13;
    if (v13)
    {
      objc_initWeak(location, v13);
      objc_initWeak(&from, self);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_236FDCBB8;
      v50[3] = &unk_278A191B0;
      objc_copyWeak(&v51, &from);
      objc_copyWeak(&v52, location);
      objc_msgSend_setInterruptionHandler_(v14, v15, v50);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_236FDCC1C;
      v47[3] = &unk_278A191B0;
      objc_copyWeak(&v48, &from);
      objc_copyWeak(&v49, location);
      objc_msgSend_setInvalidationHandler_(v14, v16, v47);
      v17 = CLSEndpointServerInterface();
      objc_msgSend_setRemoteObjectInterface_(v14, v18, v17);

      v19 = CLSClientInterface();
      objc_msgSend_setExportedInterface_(v14, v20, v19);

      v21 = objc_opt_new();
      objc_msgSend_setDelagate_(v21, v22, self);
      objc_msgSend_setExportedObject_(v14, v23, v21);
      serverConnection = self->_serverConnection;
      *&self->_connectionBorked = 0;
      v25 = serverConnection;
      v28 = v25;
      if (v25)
      {
        objc_msgSend_invalidate(v25, v26, v27);
      }

      objc_storeStrong(&self->_serverConnection, v14);
      objc_msgSend_resume(v14, v29, v30);
      v33 = objc_msgSend_overrideBundleIdentifier(self, v31, v32);
      if (objc_msgSend_length(v33, v34, v35))
      {
        objc_msgSend__updateBundleIdentifier_forConnection_completion_(self, v36, v33, self->_serverConnection, &unk_284A07A28);
      }

      onConnect = self->_onConnect;
      if (onConnect)
      {
        onConnect[2]();
      }

      objc_destroyWeak(&v49);
      objc_destroyWeak(&v48);
      objc_destroyWeak(&v52);
      objc_destroyWeak(&v51);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);

      goto LABEL_14;
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v41 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v44 = self->_endpoint;
      if (!v44)
      {
        v44 = @"com.apple.progressd";
      }

      LODWORD(location[0]) = 138412290;
      *(location + 4) = v44;
      _os_log_impl(&dword_236F71000, v41, OS_LOG_TYPE_INFO, "Could not establish connection with %@", location, 0xCu);
    }

    objc_msgSend_unlock(self, v42, v43);
  }

  v38 = 0;
LABEL_23:
  v45 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)connectionInterrupted:(id)a3
{
  if (a3)
  {
    v4 = a3;
    objc_msgSend_lock(self, v5, v6);
    serverConnection = self->_serverConnection;

    if (serverConnection == v4)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v10 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_236F71000, v10, OS_LOG_TYPE_INFO, "ClassKit daemon connection interrupted.", v12, 2u);
      }

      self->_interrupted = 1;
      onInterupt = self->_onInterupt;
      if (onInterupt)
      {
        onInterupt[2]();
      }
    }

    objc_msgSend_unlock(self, v8, v9);
  }
}

- (void)connectionBorked:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    objc_msgSend_lock(self, v5, v6);
    if (self->_serverConnection == v9)
    {
      self->_connectionBorked = 1;
      objc_msgSend_connectionInterrupted_(self, v7, v9);
    }

    objc_msgSend_unlock(self, v7, v8);
    v4 = v9;
  }
}

- (void)invalidate
{
  objc_msgSend_setInvalidationHandler_(self->_serverConnection, a2, 0);
  objc_msgSend_invalidate(self->_serverConnection, v3, v4);
  serverConnection = self->_serverConnection;
  self->_serverConnection = 0;
}

+ (NSString)classKitEnvironment
{
  if (qword_280B2A5A0 != -1)
  {
    dispatch_once(&qword_280B2A5A0, &unk_284A07628);
  }

  v3 = qword_280B2A598;

  return v3;
}

+ (BOOL)isInDevelopmentEnvironment
{
  v6 = objc_msgSend_classKitEnvironment(a1, a2, v2);
  if (v6 | @"development")
  {
    v9 = objc_msgSend_classKitEnvironment(a1, v4, v5);
    isEqualToString = 0;
    if (v9 && @"development")
    {
      v11 = objc_msgSend_classKitEnvironment(a1, v7, v8);
      isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"development");
    }
  }

  else
  {
    isEqualToString = 1;
  }

  return isEqualToString;
}

+ (BOOL)isClassKitEnabled
{
  if (objc_msgSend_isInDevelopmentEnvironment(a1, a2, v2))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](a1, sel_isAllowedToMakeXPCCalls, v4);
}

+ (BOOL)isAllowedToMakeXPCCalls
{
  v3 = objc_msgSend_cls_configURL(MEMORY[0x277CBEBC0], a2, v2);
  v6 = objc_msgSend_cls_fileExists(v3, v4, v5);

  return v6 ^ 1;
}

- (id)syncServer:(id)a3
{
  v4 = a3;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_236FDD35C;
  v23[3] = &unk_278A17BC0;
  v5 = v4;
  v24 = v5;
  v6 = MEMORY[0x2383C3E80](v23);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_236FDD458;
  v21 = sub_236FDD468;
  v22 = 0;
  v9 = objc_msgSend_serverConnection(self, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FDD470;
  v14[3] = &unk_278A191D8;
  v16 = &v17;
  v10 = v6;
  v15 = v10;
  v12 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v9, v11, v14);

  if (!v12)
  {
    (*(v10 + 2))(v10, v18[5]);
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)server:(id)a3
{
  v4 = a3;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_236FDD6A4;
  v23[3] = &unk_278A17BC0;
  v5 = v4;
  v24 = v5;
  v6 = MEMORY[0x2383C3E80](v23);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_236FDD458;
  v21 = sub_236FDD468;
  v22 = 0;
  v9 = objc_msgSend_serverConnection(self, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FDD7A0;
  v14[3] = &unk_278A191D8;
  v16 = &v17;
  v10 = v6;
  v15 = v10;
  v12 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v9, v11, v14);

  if (!v12)
  {
    (*(v10 + 2))(v10, v18[5]);
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)listAppsWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FDD8B8;
  v9[3] = &unk_278A17BC0;
  v10 = v4;
  v5 = v4;
  v7 = objc_msgSend_server_(self, v6, v9);
  objc_msgSend_remote_listAppsWithCompletion_(v7, v8, v5);
}

- (void)setOverrideBundleIdentifier:(id)a3 completion:(id)a4
{
  v19 = a3;
  v6 = a4;
  v8 = v19;
  v9 = v6;
  overrideBundleIdentifier = self->_overrideBundleIdentifier;
  if (!(v19 | overrideBundleIdentifier) || v19 && overrideBundleIdentifier && (isEqualToString = objc_msgSend_isEqualToString_(overrideBundleIdentifier, v19, v19), v8 = v19, isEqualToString))
  {
    v9[2](v9, 1, 0);
  }

  else
  {
    v12 = objc_msgSend_copy(v8, v8, v7);
    v13 = self->_overrideBundleIdentifier;
    self->_overrideBundleIdentifier = v12;

    v14 = self->_overrideBundleIdentifier;
    v17 = objc_msgSend_serverConnection(self, v15, v16);
    objc_msgSend__updateBundleIdentifier_forConnection_completion_(self, v18, v14, v17, v9);
  }
}

- (void)_updateBundleIdentifier:(id)a3 forConnection:(id)a4 completion:(id)a5
{
  v7 = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FDDAD4;
  v16[3] = &unk_278A17BC0;
  v8 = v7;
  v17 = v8;
  v9 = a3;
  v11 = objc_msgSend_remoteObjectProxyWithErrorHandler_(a4, v10, v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FDDAEC;
  v14[3] = &unk_278A18AB8;
  v15 = v8;
  v12 = v8;
  objc_msgSend_remote_setOverrideBundleIdentifier_completion_(v11, v13, v9, v14);
}

- (void)deleteAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FDDC8C;
  v12[3] = &unk_278A17BC0;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v10 = objc_msgSend_server_(self, v9, v12);
  objc_msgSend_remote_deleteAppWithBundleIdentifier_completion_(v10, v11, v8, v7);
}

- (void)connect
{
  v3 = objc_msgSend_serverConnection(self, a2, v2);
}

- (void)addBarrierBlock:(id)a3
{
  v4 = a3;
  objc_msgSend_lock(self, v5, v6);
  if (objc_msgSend_isBorked(self, v7, v8))
  {
    v4[2](v4);
  }

  else
  {
    objc_msgSend_addBarrierBlock_(self->_serverConnection, v9, v4);
  }

  objc_msgSend_unlock(self, v10, v11);
}

- (void)accountChanged
{
  v4 = objc_msgSend_server_(self, a2, &unk_284A076E8);
  objc_msgSend_remote_accountChanged(v4, v2, v3);
}

- (void)devModeChanged
{
  objc_msgSend_lock(self, a2, v2);
  objc_msgSend_invalidate(self->_serverConnection, v4, v5);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7);
  objc_msgSend_postNotificationName_object_userInfo_(v8, v9, @"CLSDeveloperModeDidChangeNotification", 0, 0);

  objc_msgSend_unlock(self, v10, v11);
}

@end