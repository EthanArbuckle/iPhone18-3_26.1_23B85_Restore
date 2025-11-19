@interface ACDServer
- (ACDAccessPluginManager)accessPluginManager;
- (ACDAccountNotifier)accountNotifier;
- (ACDAuthenticationDialogManager)authenticationDialogManager;
- (ACDAuthenticationPluginLoader)authPluginLoader;
- (ACDAuthenticationPluginManager)authenticationPluginManager;
- (ACDDataclassOwnersManager)dataclassOwnersManager;
- (ACDServer)init;
- (ACDServer)initWithAccountStoreListener:(id)a3 oauthSignerListener:(id)a4 authenticationDialogListener:(id)a5;
- (BOOL)_isHomePod;
- (BOOL)_shouldSendDidSaveNotificationForAccount:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager)asyncAuthenticationPluginManager;
- (id)_newDaemonAccountStoreFilterForClient:(id)a3;
- (id)_newOAuthSignerForClient:(id)a3;
- (id)clientForConnection:(id)a3;
- (id)createClientForConnection:(id)a3;
- (id)createDatabaseConnection;
- (void)_beginObservingIDSProxyNotifications;
- (void)_beginObservingLanguageChangeNotfication;
- (void)_endObservingLanguageChangeNotification;
- (void)_handleLanguageChangedDarwinNotification;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)createDatabaseConnection;
- (void)credentialsDidChangeForAccount:(id)a3;
- (void)dealloc;
- (void)shutdown;
- (void)start;
@end

@implementation ACDServer

- (id)createDatabaseConnection
{
  v3 = [(ACDServer *)self database];

  if (!v3)
  {
    [ACDServer createDatabaseConnection];
  }

  v4 = [(ACDServer *)self database];
  v5 = [v4 createConnection];

  return v5;
}

- (ACDAccessPluginManager)accessPluginManager
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__ACDServer_accessPluginManager__block_invoke;
  v4[3] = &unk_27848CB48;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

id __32__ACDServer_accessPluginManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (!v2)
  {
    v3 = objc_alloc_init(ACDAccessPluginManager);
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;

    v2 = *(*(a1 + 32) + 112);
  }

  return v2;
}

- (ACDAuthenticationDialogManager)authenticationDialogManager
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ACDServer_authenticationDialogManager__block_invoke;
  v4[3] = &unk_27848CB98;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

id __40__ACDServer_authenticationDialogManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (!v2)
  {
    v3 = objc_alloc_init(ACDAuthenticationDialogManager);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v2 = *(*(a1 + 32) + 128);
  }

  return v2;
}

- (ACDAccountNotifier)accountNotifier
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__ACDServer_accountNotifier__block_invoke;
  v4[3] = &unk_27848CB70;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

id __28__ACDServer_accountNotifier__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (!v2)
  {
    v3 = objc_alloc_init(ACDAccountNotifier);
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    *(v4 + 136) = v3;

    v2 = *(*(a1 + 32) + 136);
  }

  return v2;
}

- (_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager)asyncAuthenticationPluginManager
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ACDServer_asyncAuthenticationPluginManager__block_invoke;
  v4[3] = &unk_27848CBE8;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

id __45__ACDServer_asyncAuthenticationPluginManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (!v2)
  {
    v3 = [[_TtC14AccountsDaemon35ACDAsyncAuthenticationPluginManager alloc] initWith:*(*(a1 + 32) + 88)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    *(v4 + 104) = v3;

    v2 = *(*(a1 + 32) + 104);
  }

  return v2;
}

- (ACDAuthenticationPluginManager)authenticationPluginManager
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ACDServer_authenticationPluginManager__block_invoke;
  v4[3] = &unk_27848CC10;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

id __40__ACDServer_authenticationPluginManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = [[ACDAuthenticationPluginManager alloc] initWithAuthenticationPluginLoader:*(*(a1 + 32) + 88)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  return v2;
}

- (ACDDataclassOwnersManager)dataclassOwnersManager
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ACDServer_dataclassOwnersManager__block_invoke;
  v4[3] = &unk_27848CC38;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

id __35__ACDServer_dataclassOwnersManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    v3 = objc_alloc_init(ACDDataclassOwnersManager);
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    v2 = *(*(a1 + 32) + 120);
  }

  return v2;
}

- (ACDServer)init
{
  v3 = [MEMORY[0x277CCAE98] anonymousListener];
  v4 = [MEMORY[0x277CCAE98] anonymousListener];
  v5 = [MEMORY[0x277CCAE98] anonymousListener];
  v6 = [(ACDServer *)self initWithAccountStoreListener:v3 oauthSignerListener:v4 authenticationDialogListener:v5];

  return v6;
}

- (ACDServer)initWithAccountStoreListener:(id)a3 oauthSignerListener:(id)a4 authenticationDialogListener:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:
    [ACDServer initWithAccountStoreListener:oauthSignerListener:authenticationDialogListener:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  [ACDServer initWithAccountStoreListener:oauthSignerListener:authenticationDialogListener:];
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_15:
  [ACDServer initWithAccountStoreListener:oauthSignerListener:authenticationDialogListener:];
LABEL_4:
  v37.receiver = self;
  v37.super_class = ACDServer;
  v12 = [(ACDServer *)&v37 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStoreListener, a3);
    objc_storeStrong(&v13->_oauthSignerListener, a4);
    objc_storeStrong(&v13->_authenticationDialogListener, a5);
    v14 = objc_alloc_init(ACDClientProvider);
    clientProvider = v13->_clientProvider;
    v13->_clientProvider = v14;

    v16 = objc_alloc_init(ACDAuthenticationPluginLoader);
    authPluginLoader = v13->_authPluginLoader;
    v13->_authPluginLoader = v16;

    v13->_propertyLock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    accountStoreClients = v13->_accountStoreClients;
    v13->_accountStoreClients = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    oauthSignerClients = v13->_oauthSignerClients;
    v13->_oauthSignerClients = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    authenticationDialogManagerClients = v13->_authenticationDialogManagerClients;
    v13->_authenticationDialogManagerClients = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientsByConnection = v13->_clientsByConnection;
    v13->_clientsByConnection = v24;

    v13->_clientCountMaximum = 50;
    performMigrationQueue = v13->_performMigrationQueue;
    v13->_performMigrationQueue = 0;

    v27 = [MEMORY[0x277CB8F40] isMigrationFinished];
    v28 = _ACLogSystem();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_221D2F000, v28, OS_LOG_TYPE_DEFAULT, "Account migration has already occurred. No need to block non-migration connections.", buf, 2u);
      }
    }

    else
    {
      if (v29)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_221D2F000, v28, OS_LOG_TYPE_DEFAULT, "Account migration has not occurred.", buf, 2u);
      }

      v30 = dispatch_workloop_create("com.apple.accounts.performMigrationQueue");
      v31 = v13->_performMigrationQueue;
      v13->_performMigrationQueue = v30;

      objc_initWeak(buf, v13);
      v32 = v13->_performMigrationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__ACDServer_initWithAccountStoreListener_oauthSignerListener_authenticationDialogListener___block_invoke;
      block[3] = &unk_27848BFC8;
      objc_copyWeak(&v35, buf);
      dispatch_async(v32, block);
      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }
  }

  return v13;
}

void __91__ACDServer_initWithAccountStoreListener_oauthSignerListener_authenticationDialogListener___block_invoke(uint64_t a1)
{
  v2 = _ACLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEFAULT, "calling DMPerformMigrationReturningAfterPlugin", buf, 2u);
  }

  DMPerformMigrationReturningAfterPlugin();
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "DMPerformMigrationReturningAfterPlugin completed", v8, 2u);
  }

  [MEMORY[0x277CB8F40] writeMigrationVersionPref];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = v6[7];
    v6[7] = 0;

    objc_sync_exit(v6);
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_accountStoreListener invalidate];
  [(NSXPCListener *)self->_authenticationDialogListener invalidate];
  [(NSXPCListener *)self->_oauthSignerListener invalidate];
  v3.receiver = self;
  v3.super_class = ACDServer;
  [(ACDServer *)&v3 dealloc];
}

- (void)start
{
  [(ACDServer *)self _beginObservingIDSProxyNotifications];
  [(ACDServer *)self _beginObservingLanguageChangeNotfication];
  +[_TtC14AccountsDaemon27ACDXPCEventPublisherWrapper registerSubscriberListener];
  [MEMORY[0x277CCAE98] enableTransactions];
  [(NSXPCListener *)self->_accountStoreListener setDelegate:self];
  [(NSXPCListener *)self->_accountStoreListener resume];
  [(NSXPCListener *)self->_authenticationDialogListener setDelegate:self];
  [(NSXPCListener *)self->_authenticationDialogListener resume];
  [(NSXPCListener *)self->_oauthSignerListener setDelegate:self];
  [(NSXPCListener *)self->_oauthSignerListener resume];
  [ACDKeychainManager setServer:self];
  v3 = +[ACDKeychainCleanupActivity sharedActivity];
  [v3 checkInIfNecessary];
}

- (void)shutdown
{
  v38 = *MEMORY[0x277D85DE8];
  [(ACDServer *)self _endObservingLanguageChangeNotification];
  [(NSXPCListener *)self->_accountStoreListener setDelegate:0];
  [(NSXPCListener *)self->_accountStoreListener suspend];
  [(NSXPCListener *)self->_authenticationDialogListener setDelegate:0];
  [(NSXPCListener *)self->_authenticationDialogListener suspend];
  [(NSXPCListener *)self->_oauthSignerListener setDelegate:0];
  [(NSXPCListener *)self->_oauthSignerListener suspend];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)v3->_accountStoreClients copy];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = *v32;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v31 + 1) + 8 * v8) connection];
        [v9 invalidate];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  v10 = [(NSMutableArray *)v3->_oauthSignerClients copy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v27 + 1) + 8 * v14) connection];
        [v15 invalidate];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v12);
  }

  v16 = [(NSMutableArray *)v3->_authenticationDialogManagerClients copy];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v23 + 1) + 8 * v20) connection];
        [v21 invalidate];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v18);
  }

  [(NSMutableArray *)v3->_accountStoreClients removeAllObjects];
  [(NSMutableArray *)v3->_oauthSignerClients removeAllObjects];
  [(NSMutableArray *)v3->_authenticationDialogManagerClients removeAllObjects];
  [(NSMutableDictionary *)v3->_clientsByConnection removeAllObjects];

  objc_sync_exit(v3);
  v22 = *MEMORY[0x277D85DE8];
}

- (ACDAuthenticationPluginLoader)authPluginLoader
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ACDServer_authPluginLoader__block_invoke;
  v4[3] = &unk_27848CBC0;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_0(&self->_propertyLock, v4);

  return v2;
}

- (id)createClientForConnection:(id)a3
{
  v4 = a3;
  v5 = [(ACDServer *)self clientProvider];

  if (!v5)
  {
    [ACDServer createClientForConnection:];
  }

  v6 = [(ACDServer *)self clientProvider];
  v7 = [v6 createClientForConnection:v4];

  return v7;
}

- (id)clientForConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  clientsByConnection = v5->_clientsByConnection;
  v7 = [(ACDServer *)v5 _keyForConnection:v4];
  v8 = [(NSMutableDictionary *)clientsByConnection objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (id)_newDaemonAccountStoreFilterForClient:(id)a3
{
  v4 = a3;
  v5 = [(ACDServer *)self createDatabaseConnection];
  v6 = [[ACDAccountStore alloc] initWithClient:v4 databaseConnection:v5];

  v7 = [(ACDServer *)self accessPluginManager];
  [(ACDAccountStore *)v6 setAccessPluginManager:v7];

  v8 = [(ACDServer *)self accountNotifier];
  [(ACDAccountStore *)v6 setAccountNotifier:v8];

  v9 = [(ACDServer *)self authenticationDialogManager];
  [(ACDAccountStore *)v6 setAuthenticationDialogManager:v9];

  v10 = [(ACDServer *)self asyncAuthenticationPluginManager];
  [(ACDAccountStore *)v6 setAsyncAuthenticationPluginManager:v10];

  v11 = [(ACDServer *)self authenticationPluginManager];
  [(ACDAccountStore *)v6 setAuthenticationPluginManager:v11];

  v12 = [(ACDServer *)self databaseBackupActivity];
  [(ACDAccountStore *)v6 setDatabaseBackupActivity:v12];

  v13 = [(ACDServer *)self dataclassOwnersManager];
  [(ACDAccountStore *)v6 setDataclassOwnersManager:v13];

  [(ACDAccountStore *)v6 setDelegate:self];
  v14 = [(ACDServer *)self remoteDeviceProxy];
  [(ACDAccountStore *)v6 setRemoteDeviceProxy:v14];

  v15 = [[ACDAccountStoreFilter alloc] initWithBackingAccountStore:v6];
  return v15;
}

- (id)_newOAuthSignerForClient:(id)a3
{
  v4 = a3;
  v5 = [(ACDServer *)self createDatabaseConnection];
  v6 = [[ACDOAuthSigner alloc] initWithClient:v4 databaseConnection:v5];

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v47 = a3;
  val = a4;
  v50 = [(ACDServer *)self createClientForConnection:?];
  v6 = _ACDConnectionLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ACDServer listener:shouldAcceptNewConnection:];
  }

  v48 = [(ACDServer *)self _keyForConnection:val];
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7->_clientsByConnection setObject:v50 forKey:v48];
  objc_sync_exit(v7);
  v49 = v7;

  objc_initWeak(&location, val);
  objc_initWeak(&from, v50);
  v8 = v7;
  v9 = v47;
  v46 = v7->_accountStoreListener == v47;
  if (v7->_accountStoreListener == v47)
  {
    if (listener_shouldAcceptNewConnection__onceToken != -1)
    {
      [ACDServer listener:shouldAcceptNewConnection:];
    }

    v10 = _ACLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v87 = val;
      v88 = 2112;
      v89 = v50;
      _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "%@ (%@) received", buf, 0x16u);
    }

    v45 = [(ACDServer *)v7 _newDaemonAccountStoreFilterForClient:v50];
    [v50 setFilter:v45];
    [val setRemoteObjectInterface:listener_shouldAcceptNewConnection__remoteObjectInterface];
    v11 = [MEMORY[0x277CB8FA8] XPCInterface];
    [val setExportedInterface:v11];

    [val setExportedObject:v45];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_98;
    v79[3] = &unk_27848CC60;
    objc_copyWeak(&v81, &from);
    objc_copyWeak(&v82, &location);
    v79[4] = v7;
    v12 = v48;
    v80 = v12;
    [val setInvalidationHandler:v79];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_99;
    v75[3] = &unk_27848CC60;
    objc_copyWeak(&v77, &from);
    objc_copyWeak(&v78, &location);
    v75[4] = v7;
    v76 = v12;
    [val setInterruptionHandler:v75];
    v13 = v7;
    objc_sync_enter(v13);
    [(NSMutableArray *)v13->_accountStoreClients addObject:v50];
    if ([(NSMutableArray *)v13->_accountStoreClients count]> v13->_clientCountMaximum)
    {
      p_clientCountMaximum = &v13->_clientCountMaximum;
      v44 = v13;
      v14 = objc_opt_new();
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v15 = v13->_accountStoreClients;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v16)
      {
        v17 = *v72;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v72 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v71 + 1) + 8 * i);
            v20 = [v19 name];
            v21 = [v14 objectForKeyedSubscript:v20];
            v22 = [v21 unsignedIntValue];

            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22 + 1];
            v24 = [v19 name];
            [v14 setObject:v23 forKeyedSubscript:v24];
          }

          v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v71 objects:v85 count:16];
        }

        while (v16);
      }

      if (_os_feature_enabled_impl())
      {
        v25 = _ACLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [ACDServer listener:? shouldAcceptNewConnection:?];
        }
      }

      else
      {
        v25 = _ACLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [ACDServer listener:? shouldAcceptNewConnection:?];
        }
      }

      LODWORD(v26) = *p_clientCountMaximum;
      *p_clientCountMaximum = (v26 * 1.2);

      v13 = v44;
    }

    v27 = v13->_performMigrationQueue;
    objc_sync_exit(v13);

    if (v27)
    {
      if ([v50 hasEntitlement:*MEMORY[0x277CB9018]])
      {
        v28 = _ACLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v87 = v50;
          _os_log_impl(&dword_221D2F000, v28, OS_LOG_TYPE_DEFAULT, "Setting migrationInProgress to YES for the ACDAccountStore of %@", buf, 0xCu);
        }

        v29 = [v45 backingAccountStore];
        [v29 setMigrationInProgress:1];

        v30 = _ACLogSystem();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v87 = v50;
          _os_log_impl(&dword_221D2F000, v30, OS_LOG_TYPE_DEFAULT, "Queuing setMigrationInProgress to NO for the ACDAccountStore of %@", buf, 0xCu);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_103;
        block[3] = &unk_27848CC88;
        objc_copyWeak(&v69, &location);
        objc_copyWeak(&v70, &from);
        dispatch_async(v27, block);
        objc_destroyWeak(&v70);
        objc_destroyWeak(&v69);
      }

      else
      {
        [val setDelegate:v13];
      }
    }

    [val resume];

    objc_destroyWeak(&v78);
    objc_destroyWeak(&v77);

    objc_destroyWeak(&v82);
    objc_destroyWeak(&v81);

    v9 = v47;
    v8 = v49;
  }

  if (v8->_oauthSignerListener == v9)
  {
    v31 = _ACLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [ACDServer listener:shouldAcceptNewConnection:];
    }

    v32 = [(ACDServer *)v49 _newOAuthSignerForClient:v50];
    v33 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283548650];
    [val setExportedInterface:v33];

    [val setExportedObject:v32];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_115;
    v64[3] = &unk_27848CC60;
    objc_copyWeak(&v66, &from);
    objc_copyWeak(&v67, &location);
    v64[4] = v49;
    v34 = v48;
    v65 = v34;
    [val setInvalidationHandler:v64];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_116;
    v60[3] = &unk_27848CC60;
    objc_copyWeak(&v62, &from);
    objc_copyWeak(&v63, &location);
    v60[4] = v49;
    v61 = v34;
    [val setInterruptionHandler:v60];
    v35 = v49;
    objc_sync_enter(v35);
    [v35[3] addObject:v50];
    objc_sync_exit(v35);

    [val resume];
    objc_destroyWeak(&v63);
    objc_destroyWeak(&v62);

    objc_destroyWeak(&v67);
    objc_destroyWeak(&v66);

    v46 = 1;
    v9 = v47;
    v8 = v49;
  }

  if (v8->_authenticationDialogListener == v9 && [v50 hasEntitlement:*MEMORY[0x277CB9008]])
  {
    v36 = _ACLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [ACDServer listener:shouldAcceptNewConnection:];
    }

    v37 = [(ACDServer *)v49 authenticationDialogManager];
    [val setExportedObject:v37];

    v38 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28354AAB0];
    [val setExportedInterface:v38];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_124;
    v56[3] = &unk_27848CC60;
    objc_copyWeak(&v58, &from);
    objc_copyWeak(&v59, &location);
    v56[4] = v49;
    v39 = v48;
    v57 = v39;
    [val setInvalidationHandler:v56];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_125;
    v52[3] = &unk_27848CC60;
    objc_copyWeak(&v54, &from);
    objc_copyWeak(&v55, &location);
    v52[4] = v49;
    v53 = v39;
    [val setInterruptionHandler:v52];
    v40 = v49;
    objc_sync_enter(v40);
    [v40[4] addObject:v50];
    objc_sync_exit(v40);

    [val resume];
    objc_destroyWeak(&v55);
    objc_destroyWeak(&v54);

    objc_destroyWeak(&v59);
    objc_destroyWeak(&v58);
    v46 = 1;
  }

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v41 = *MEMORY[0x277D85DE8];
  return v46;
}

uint64_t __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke()
{
  listener_shouldAcceptNewConnection__remoteObjectInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28354FE88];

  return MEMORY[0x2821F96F8]();
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_98_cold_1();
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 16) removeObject:WeakRetained];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v4);
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_99(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_99_cold_1();
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 16) removeObject:WeakRetained];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v4);
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_103(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = _ACLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "Setting migrationInProgress to NO for the ACDAccountStore of %@", &v9, 0xCu);
    }

    v6 = [WeakRetained exportedObject];
    v7 = [v6 backingAccountStore];
    [v7 setMigrationInProgress:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_115(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_115_cold_1();
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 24) removeObject:WeakRetained];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v4);
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_116(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_116_cold_1();
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 24) removeObject:WeakRetained];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v4);
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_124(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_124_cold_1();
  }

  v4 = [*(a1 + 32) authenticationDialogManager];
  [v4 authenticationDialogCrashed];

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  [*(*(a1 + 32) + 32) removeObject:WeakRetained];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v5);
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_125(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_125_cold_1();
  }

  v4 = [*(a1 + 32) authenticationDialogManager];
  [v4 authenticationDialogCrashed];

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  [*(*(a1 + 32) + 32) removeObject:WeakRetained];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v5);
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    [v9 invoke];
  }

  else
  {
    v11 = self;
    objc_sync_enter(v11);
    v12 = v11->_performMigrationQueue;
    objc_sync_exit(v11);

    if (v12)
    {
      v13 = [(ACDServer *)v11 clientForConnection:v8];
      v14 = _ACLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Blocking invocations for %@", buf, 0xCu);
      }

      v15 = MEMORY[0x277CCAE80];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __49__ACDServer_connection_handleInvocation_isReply___block_invoke;
      v18[3] = &unk_27848BFF0;
      v19 = v13;
      v20 = v10;
      v16 = v13;
      [v15 _handoffCurrentReplyToQueue:v12 block:v18];
    }

    else
    {
      [v8 setDelegate:0];
      [v10 invoke];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __49__ACDServer_connection_handleInvocation_isReply___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ACLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEFAULT, "Resuming invocations for %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) invoke];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_beginObservingLanguageChangeNotfication
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __HandleLanguageChangeNotification, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_endObservingLanguageChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.language.changed", 0);
}

- (BOOL)_isHomePod
{
  if (_isHomePod_onceToken != -1)
  {
    [ACDServer _isHomePod];
  }

  return _isHomePod_result;
}

uint64_t __23__ACDServer__isHomePod__block_invoke()
{
  result = MGGetSInt32Answer();
  _isHomePod_result = result == 7;
  return result;
}

- (void)_handleLanguageChangedDarwinNotification
{
  v2 = [(ACDServer *)self _isHomePod];
  v3 = _ACLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      [ACDServer _handleLanguageChangedDarwinNotification];
    }
  }

  else
  {
    if (v4)
    {
      [ACDServer _handleLanguageChangedDarwinNotification];
    }

    xpc_transaction_exit_clean();
  }
}

- (BOOL)_shouldSendDidSaveNotificationForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:*MEMORY[0x277CB8D58]])
  {
  }

  else
  {
    v6 = [v3 accountType];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277CB8D60]];

    if (!v8)
    {
LABEL_14:
      v15 = 1;
      goto LABEL_15;
    }
  }

  v9 = [v3 dirtyProperties];
  if ([v9 count] != 1)
  {
LABEL_13:

    goto LABEL_14;
  }

  v10 = [v3 dirtyDataclassProperties];
  if ([v10 count])
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = [v3 dirtyAccountProperties];
  if ([v11 count] != 1)
  {

    goto LABEL_12;
  }

  v12 = [v3 dirtyAccountProperties];
  v13 = [v12 containsObject:@"cookies"];

  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = _ACLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "@Will skip notifications for iTunes account: change only modified cookies", v17, 2u);
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)credentialsDidChangeForAccount:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v4 = [v25 identifier];
  v5 = [v25 accountType];
  v6 = [v5 identifier];

  v7 = self;
  objc_sync_enter(v7);
  obj = v7;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7->_accountStoreClients;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 pid];
        v15 = [v8 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [v13 pid];

          if (v16)
          {
            v17 = [v13 pid];
            [v8 addObject:v17];
          }

          v18 = [v13 filter];
          v19 = [v18 isClientEntitledToAccessAccountTypeWithIdentifier:v6];

          v20 = [v13 connection];
          v21 = [v20 remoteObjectProxy];

          if (v19)
          {
            [v21 accountCredentialsDidChangeForAccountWithIdentifier:v4];
          }
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
  v22 = _ACLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [ACDServer credentialsDidChangeForAccount:];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingIDSProxyNotifications
{
  if (getenv("__ACSYNCBUBBLE"))
  {
    v3 = _ACLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "accountsd is running in the sync bubble, not initalizing ACRemoteDeviceProxy", v6, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(ACRemoteDeviceProxy);
    remoteDeviceProxy = self->_remoteDeviceProxy;
    self->_remoteDeviceProxy = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)initWithAccountStoreListener:oauthSignerListener:authenticationDialogListener:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"accountStoreListener" object:? file:? lineNumber:? description:?];
}

- (void)initWithAccountStoreListener:oauthSignerListener:authenticationDialogListener:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"oauthSignerListener" object:? file:? lineNumber:? description:?];
}

- (void)initWithAccountStoreListener:oauthSignerListener:authenticationDialogListener:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"authenticationDialogListener" object:? file:? lineNumber:? description:?];
}

- (void)createClientForConnection:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)createDatabaseConnection
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:(unsigned int *)a1 shouldAcceptNewConnection:.cold.3(unsigned int *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6_3();
  _os_log_error_impl(&dword_221D2F000, v2, OS_LOG_TYPE_ERROR, "Total client count exceeded %d: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:(unsigned int *)a1 shouldAcceptNewConnection:.cold.4(unsigned int *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6_3();
  _os_log_fault_impl(&dword_221D2F000, v2, OS_LOG_TYPE_FAULT, "Total client count exceeded %d: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_98_cold_1()
{
  OUTLINED_FUNCTION_22();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_1(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Connection %@ for %@ was closed.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_99_cold_1()
{
  OUTLINED_FUNCTION_22();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_1(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v3, v4, "Connection %@ for %@ was interrupted.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_115_cold_1()
{
  OUTLINED_FUNCTION_22();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_1(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Connection %@ for %@ was closed.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_116_cold_1()
{
  OUTLINED_FUNCTION_22();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_1(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v3, v4, "Connection %@ for %@ was interrupted.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_124_cold_1()
{
  OUTLINED_FUNCTION_22();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_1(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Connection %@ for %@ was closed.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__ACDServer_listener_shouldAcceptNewConnection___block_invoke_125_cold_1()
{
  OUTLINED_FUNCTION_22();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_1(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v3, v4, "Connection %@ for %@ was interrupted.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)credentialsDidChangeForAccount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end