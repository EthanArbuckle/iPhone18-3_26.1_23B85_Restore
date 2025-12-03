@interface PFCKAccountMonitor
+ (BOOL)canEnableSyncWithAccountInfo:(id)info requireDeviceToDeviceEncryption:(BOOL)encryption;
- (PFCKAccountMonitor)initWithOptions:(id)options forStoreWithIdentifier:(id)identifier;
- (void)_assertContainer:(uint64_t)container;
- (void)accountOrIdentityChanged:(id)changed;
- (void)beginMonitoringNotifications;
- (void)clearEstablishedAccountInfoAndUserRecordID;
- (void)dealloc;
- (void)establishCurrentAccountInfoWithCompletionHandler:(id)handler;
- (void)establishCurrentUserRecordIDWithCompletionHandler:(id)handler;
- (void)performBlockAtPreferredQoS:(uint64_t)s;
- (void)setContainer:(id)container;
- (void)stopMonitoringNotifications;
@end

@implementation PFCKAccountMonitor

- (PFCKAccountMonitor)initWithOptions:(id)options forStoreWithIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PFCKAccountMonitor;
  v6 = [(PFCKAccountMonitor *)&v8 init];
  if (v6)
  {
    v6->_options = options;
    v6->_currentAccountInfo = 0;
    v6->_currentUserRecordID = 0;
    v6->_storeIdentifier = identifier;
  }

  return v6;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  self->_currentAccountInfo = 0;
  self->_currentAccountInfo = 0;

  self->_container = 0;
  v3.receiver = self;
  v3.super_class = PFCKAccountMonitor;
  [(PFCKAccountMonitor *)&v3 dealloc];
}

- (void)setContainer:(id)container
{
  container = self->_container;
  if (container != container)
  {
    if (self->_registeredForIdentityUpdateNotifications)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:getCloudKitCKIdentityUpdateNotification[0]() object:self->_container];
      self->_registeredForIdentityUpdateNotifications = 0;
      container = self->_container;
    }

    containerCopy = container;
    self->_container = containerCopy;
    if (self->_observingNotifications && containerCopy != 0)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_accountOrIdentityChanged_ name:getCloudKitCKIdentityUpdateNotification[0]() object:self->_container];
      self->_registeredForIdentityUpdateNotifications = 1;
    }
  }
}

- (void)_assertContainer:(uint64_t)container
{
  v12 = *MEMORY[0x1E69E9840];
  if (container && !*(container + 40))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      containerCopy2 = container;
      v10 = 2112;
      v11 = NSStringFromSelector(a2);
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: %@ can't execute '%@' without a container.\n", &v8, 0x16u);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = NSStringFromSelector(a2);
      v8 = 138412546;
      containerCopy2 = container;
      v10 = 2112;
      v11 = v7;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: %@ can't execute '%@' without a container.", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)performBlockAtPreferredQoS:(uint64_t)s
{
  if (s)
  {
    WeakRetained = objc_loadWeakRetained((s + 32));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [WeakRetained qosClassForAccountMonitor:s];

      if (v5)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __49__PFCKAccountMonitor_performBlockAtPreferredQoS___block_invoke;
        v8[3] = &unk_1E6EC1AD8;
        v8[4] = a2;
        v9 = v5;
        v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ASSIGN_CURRENT, v5, 0, v8);
        v6[2]();

        return;
      }
    }

    else
    {
    }

    v7 = *(a2 + 16);

    v7(a2, 0);
  }
}

- (void)establishCurrentAccountInfoWithCompletionHandler:(id)handler
{
  [(PFCKAccountMonitor *)self _assertContainer:a2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PFCKAccountMonitor_establishCurrentAccountInfoWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E6EC1B28;
  v5[4] = self;
  v5[5] = handler;
  [(PFCKAccountMonitor *)self performBlockAtPreferredQoS:v5];
}

void __71__PFCKAccountMonitor_establishCurrentAccountInfoWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v8 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *buf = 136316162;
    v17 = "[PFCKAccountMonitor establishCurrentAccountInfoWithCompletionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 126;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = [NSPersistentCloudKitContainerActivityVoucher stringForQoSClass:a2];
    _os_log_impl(&dword_18565F000, v6, v9, "CoreData+CloudKit: %s(%d): %@ for store %@ establishing current account info at '%@'.", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v4);
  objc_initWeak(buf, *(a1 + 32));
  v12 = *(*(a1 + 32) + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__PFCKAccountMonitor_establishCurrentAccountInfoWithCompletionHandler___block_invoke_27;
  v14[3] = &unk_1E6EC1B00;
  objc_copyWeak(&v15, buf);
  v14[4] = *(a1 + 40);
  [v12 accountInfoWithCompletionHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x1E69E9840];
}

void __71__PFCKAccountMonitor_establishCurrentAccountInfoWithCompletionHandler___block_invoke_27(uint64_t a1, void *a2)
{
  obj = objc_loadWeakRetained((a1 + 40));
  if (obj)
  {
    objc_sync_enter(obj);
    v4 = obj[6];
    if (v4 != a2)
    {

      obj[6] = a2;
    }

    objc_sync_exit(obj);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)establishCurrentUserRecordIDWithCompletionHandler:(id)handler
{
  [(PFCKAccountMonitor *)self _assertContainer:a2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PFCKAccountMonitor_establishCurrentUserRecordIDWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E6EC1B28;
  v5[4] = self;
  v5[5] = handler;
  [(PFCKAccountMonitor *)self performBlockAtPreferredQoS:v5];
}

void __72__PFCKAccountMonitor_establishCurrentUserRecordIDWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v8 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *buf = 136316162;
    v17 = "[PFCKAccountMonitor establishCurrentUserRecordIDWithCompletionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 142;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = [NSPersistentCloudKitContainerActivityVoucher stringForQoSClass:a2];
    _os_log_impl(&dword_18565F000, v6, v9, "CoreData+CloudKit: %s(%d): %@ for store %@ establishing current user recordID at '%@'.", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v4);
  objc_initWeak(buf, *(a1 + 32));
  v12 = *(*(a1 + 32) + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PFCKAccountMonitor_establishCurrentUserRecordIDWithCompletionHandler___block_invoke_30;
  v14[3] = &unk_1E6EC1B50;
  objc_copyWeak(&v15, buf);
  v14[4] = *(a1 + 40);
  [v12 fetchUserRecordIDWithCompletionHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x1E69E9840];
}

void __72__PFCKAccountMonitor_establishCurrentUserRecordIDWithCompletionHandler___block_invoke_30(uint64_t a1, void *a2)
{
  obj = objc_loadWeakRetained((a1 + 40));
  if (obj)
  {
    objc_sync_enter(obj);
    v4 = obj[7];
    if (v4 != a2)
    {

      obj[7] = a2;
    }

    objc_sync_exit(obj);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearEstablishedAccountInfoAndUserRecordID
{
  v25 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = 17;
  }

  else
  {
    v6 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v6 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v7 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    storeIdentifier = self->_storeIdentifier;
    currentAccountInfo = self->_currentAccountInfo;
    currentUserRecordID = self->_currentUserRecordID;
    v13 = 136316418;
    v14 = "[PFCKAccountMonitor clearEstablishedAccountInfoAndUserRecordID]";
    v15 = 1024;
    v16 = 175;
    v17 = 2112;
    selfCopy = self;
    v19 = 2112;
    v20 = storeIdentifier;
    v21 = 2112;
    v22 = currentAccountInfo;
    v23 = 2112;
    v24 = currentUserRecordID;
    _os_log_impl(&dword_18565F000, v5, v8, "CoreData+CloudKit: %s(%d): %@ for store %@ clearing established account info.\n\t%@\n\t%@", &v13, 0x3Au);
  }

  objc_autoreleasePoolPop(v3);

  self->_currentAccountInfo = 0;
  self->_currentUserRecordID = 0;
  objc_sync_exit(self);
  v12 = *MEMORY[0x1E69E9840];
}

void __76__PFCKAccountMonitor__fetchAccountInfoAndUserRecordIDWithCompletionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PFCKAccountMonitor__fetchAccountInfoAndUserRecordIDWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E6EC1B00;
  objc_copyWeak(&v4, &location);
  v3[4] = *(a1 + 40);
  [v2 accountInfoWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __76__PFCKAccountMonitor__fetchAccountInfoAndUserRecordIDWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v17 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = *(v7 + 16);
    v14 = v7;
    v15 = 0;
LABEL_13:
    v13(v14, v15, 0, 0);
    goto LABEL_14;
  }

  if (!a3)
  {
    if (+[PFCKAccountMonitor canEnableSyncWithAccountInfo:requireDeviceToDeviceEncryption:](PFCKAccountMonitor, "canEnableSyncWithAccountInfo:requireDeviceToDeviceEncryption:", a2, [*(WeakRetained + 2) useDeviceToDeviceEncryption]))
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__PFCKAccountMonitor_finishedAccountInfoFetchWith_error_completionHandler___block_invoke;
      v18[3] = &unk_1E6EC1BF0;
      v18[4] = v17;
      v18[5] = a2;
      v18[6] = v7;
      [(PFCKAccountMonitor *)v17 performBlockAtPreferredQoS:v18];
      goto LABEL_14;
    }

    v13 = *(v7 + 16);
    v14 = v7;
    v15 = a2;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v10 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v11 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v11))
  {
    v12 = v17[3];
    *buf = 136316418;
    v20 = "[PFCKAccountMonitor finishedAccountInfoFetchWith:error:completionHandler:]";
    v21 = 1024;
    v22 = 287;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = NSStringFromSelector(sel_accountInfoWithCompletionHandler_);
    v29 = 2112;
    v30 = a3;
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@ for store %@ '%@' failed with error: %@", buf, 0x3Au);
  }

  objc_autoreleasePoolPop(v8);
  (*(v7 + 16))(v7, a2, 0, a3);
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)beginMonitoringNotifications
{
  if (!self->_observingNotifications)
  {
    if (!self->_registeredForAccountChangeNotifications)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_accountOrIdentityChanged_ name:getCloudKitCKAccountChangedNotification() object:0];
      self->_registeredForAccountChangeNotifications = 1;
    }

    if (self->_container)
    {
      if (!self->_registeredForIdentityUpdateNotifications)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:self selector:sel_accountOrIdentityChanged_ name:getCloudKitCKIdentityUpdateNotification[0]() object:self->_container];
        self->_registeredForIdentityUpdateNotifications = 1;
      }
    }

    self->_observingNotifications = 1;
  }
}

- (void)stopMonitoringNotifications
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  *&self->_observingNotifications = 0;
  self->_registeredForIdentityUpdateNotifications = 0;
}

- (void)accountOrIdentityChanged:(id)changed
{
  v23 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v5 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v7 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v8 = 17;
  }

  else
  {
    v8 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v8 = 16;
  }

  if (__ckLoggingOverride)
  {
    v9 = v8;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v9))
  {
    storeIdentifier = self->_storeIdentifier;
    *buf = 136316162;
    v14 = "[PFCKAccountMonitor accountOrIdentityChanged:]";
    v15 = 1024;
    v16 = 239;
    v17 = 2112;
    selfCopy = self;
    v19 = 2112;
    v20 = storeIdentifier;
    v21 = 2112;
    name = [changed name];
    _os_log_impl(&dword_18565F000, v7, v9, "CoreData+CloudKit: %s(%d): %@ for store %@ observed '%@'.", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v5);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PFCKAccountMonitor_accountOrIdentityChanged___block_invoke;
  v12[3] = &unk_1E6EC1BA0;
  v12[4] = self;
  v12[5] = changed;
  [(PFCKAccountMonitor *)self performBlockAtPreferredQoS:v12];
  objc_sync_exit(self);
  v11 = *MEMORY[0x1E69E9840];
}

void __47__PFCKAccountMonitor_accountOrIdentityChanged___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__PFCKAccountMonitor_accountOrIdentityChanged___block_invoke_2;
  v3[3] = &unk_1E6EC1B78;
  objc_copyWeak(&v4, &location);
  v3[4] = *(a1 + 40);
  if (v2)
  {
    [(PFCKAccountMonitor *)v2 _assertContainer:?];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__PFCKAccountMonitor__fetchAccountInfoAndUserRecordIDWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E6EC1B28;
    v6[4] = v2;
    v6[5] = v3;
    [(PFCKAccountMonitor *)v2 performBlockAtPreferredQoS:v6];
  }

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __47__PFCKAccountMonitor_accountOrIdentityChanged___block_invoke_2(uint64_t a1, void *a2, id a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  obj = objc_loadWeakRetained((a1 + 40));
  if (obj)
  {
    v8 = [*(a1 + 32) name];
    objc_sync_enter(obj);
    if (a4)
    {
      if ([getCloudKitCKErrorDomain() isEqualToString:{objc_msgSend(a4, "domain")}] && objc_msgSend(a4, "code") == 9 && +[PFCKAccountMonitor canEnableSyncWithAccountInfo:requireDeviceToDeviceEncryption:](PFCKAccountMonitor, "canEnableSyncWithAccountInfo:requireDeviceToDeviceEncryption:", obj[6], objc_msgSend(obj[2], "useDeviceToDeviceEncryption")))
      {
LABEL_20:
        v19 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v21 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v22 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v22 = 16 * (__ckLoggingOverride == 16);
        }

        if (os_log_type_enabled(Stream, v22))
        {
          v23 = obj[3];
          v24 = obj[6];
          v25 = obj[7];
          *buf = 136317442;
          v33 = "[PFCKAccountMonitor _finishedAccountInfoFetchFromNotificationNamed:withAccountInfo:userRecordID:error:]";
          v34 = 1024;
          v35 = 337;
          v36 = 2112;
          v37 = obj;
          v38 = 2112;
          v39 = v23;
          v40 = 2112;
          v41 = @"PFCKAccountMonitorAccountChangedNotificationName";
          v42 = 2112;
          v43 = v24;
          v44 = 2112;
          v45 = v25;
          v46 = 2112;
          v47 = a2;
          v48 = 2112;
          v49 = a3;
          v50 = 2112;
          v51 = a4;
          _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): %@ for store %@ posting '%@' for the transition from:\n\t%@\n\t%@\nTo:\n\t%@\n\t%@\n\t%@", buf, 0x62u);
        }

        objc_autoreleasePoolPop(v19);
        v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v27 = obj[6];
        if (v27)
        {
          [v26 setObject:v27 forKey:@"PFCKAccountMonitorAccountChangedNotificationFromAccountInfoKey"];
        }

        v28 = obj[7];
        if (v28)
        {
          [v26 setObject:v28 forKey:@"PFCKAccountMonitorAccountChangedNotificationFromUserRecordIDKey"];
        }

        if (a2)
        {
          [v26 setObject:a2 forKey:@"PFCKAccountMonitorAccountChangedNotificationToAccountInfoKey"];
        }

        if (a3)
        {
          [v26 setObject:a3 forKey:@"PFCKAccountMonitorAccountChangedNotificationToUserRecordIDKey"];
        }

        if (a4)
        {
          [v26 setObject:a4 forKey:@"PFCKAccountMonitorAccountChangedNotificationEncounteredError"];
        }

        [v26 setObject:v8 forKey:@"PFCKAccountMonitorAccountChangedNotificationNameKey"];
        v29 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:@"PFCKAccountMonitorAccountChangedNotificationName" object:obj userInfo:v26];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

LABEL_36:
        objc_sync_exit(obj);
        goto LABEL_37;
      }
    }

    else
    {
      v9 = [obj[6] hasValidCredentials];
      if (v9 != [a2 hasValidCredentials] || (v10 = objc_msgSend(obj[6], "accountStatus"), v10 != objc_msgSend(a2, "accountStatus")) || (v11 = objc_msgSend(obj[6], "deviceToDeviceEncryptionAvailability"), v11 != objc_msgSend(a2, "deviceToDeviceEncryptionAvailability")))
      {
        if (+[PFCKAccountMonitor shouldNotifyForChangeFromAccountInfo:toAccountInfo:requireDeviceToDeviceEncryption:](PFCKAccountMonitor, "shouldNotifyForChangeFromAccountInfo:toAccountInfo:requireDeviceToDeviceEncryption:", obj[6], a2, [obj[2] useDeviceToDeviceEncryption]))
        {
          goto LABEL_20;
        }
      }

      if (a3 && obj[7] != a3 && ([a3 isEqual:?] & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v12 = objc_autoreleasePoolPush();
    v13 = __PFCloudKitLoggingGetStream();
    v14 = v13;
    if (__ckLoggingOverride == 17)
    {
      v15 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v15 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(v13, v15))
    {
      v16 = obj[3];
      v17 = obj[6];
      v18 = obj[7];
      *buf = 136317186;
      v33 = "[PFCKAccountMonitor _finishedAccountInfoFetchFromNotificationNamed:withAccountInfo:userRecordID:error:]";
      v34 = 1024;
      v35 = 386;
      v36 = 2112;
      v37 = obj;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = a2;
      v46 = 2112;
      v47 = a3;
      v48 = 2112;
      v49 = a4;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): %@ for store %@ ignoring account change for the transition from:\n\t%@\n\t%@\nTo:\n\t%@\n\t%@\n\t%@", buf, 0x58u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_36;
  }

LABEL_37:
  v30 = *MEMORY[0x1E69E9840];
}

void __75__PFCKAccountMonitor_finishedAccountInfoFetchWith_error_completionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__PFCKAccountMonitor_finishedAccountInfoFetchWith_error_completionHandler___block_invoke_2;
  v3[3] = &unk_1E6EC1BC8;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 fetchUserRecordIDWithCompletionHandler:v3];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __75__PFCKAccountMonitor_finishedAccountInfoFetchWith_error_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a3)
    {
      v6 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v8 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v9 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v9 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v9))
      {
        v10 = WeakRetained[3];
        v14 = 136316418;
        v15 = "[PFCKAccountMonitor finishedAccountInfoFetchWith:error:completionHandler:]_block_invoke_2";
        v16 = 1024;
        v17 = 268;
        v18 = 2112;
        v19 = WeakRetained;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = NSStringFromSelector(sel_fetchUserRecordIDWithCompletionHandler_);
        v24 = 2112;
        v25 = a3;
        _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@ for store %@ '%@' failed with error: %@", &v14, 0x3Au);
      }

      objc_autoreleasePoolPop(v6);
    }

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    v12 = *(*(a1 + 40) + 16);
  }

  v12();

  v13 = *MEMORY[0x1E69E9840];
}

+ (BOOL)canEnableSyncWithAccountInfo:(id)info requireDeviceToDeviceEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  hasValidCredentials = [info hasValidCredentials];
  if (hasValidCredentials)
  {
    LOBYTE(hasValidCredentials) = [info accountStatus] == 1;
    if (hasValidCredentials)
    {
      if (encryptionCopy)
      {
        if (([info deviceToDeviceEncryptionAvailability] & 2) != 0)
        {
          LOBYTE(hasValidCredentials) = [info deviceToDeviceEncryptionAvailability] & 1;
        }

        else
        {
          LOBYTE(hasValidCredentials) = 0;
        }
      }
    }
  }

  return hasValidCredentials;
}

@end