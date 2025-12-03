@interface ANAccountNotifier
- (ANAccountNotifier)initWithCallbackMachService:(id)service;
- (ANAccountNotifierDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_createDaemonConnection;
- (id)_daemonConnection;
- (void)_daemonConnectionWasInterrupted;
- (void)_daemonConnectionWasInvalidated;
- (void)_disconnectFromDaemon;
- (void)_startNotificationCallbackListenerWithMachServiceName:(id)name;
- (void)_stopNotificationCallbackListener;
- (void)addNotification:(id)notification;
- (void)dealloc;
- (void)notificationWasActivated:(id)activated;
- (void)notificationWasCleared:(id)cleared;
- (void)notificationWasDismissed:(id)dismissed;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)removeNotificationsWithEventIdentifier:(id)identifier;
@end

@implementation ANAccountNotifier

- (ANAccountNotifier)initWithCallbackMachService:(id)service
{
  serviceCopy = service;
  v10.receiver = self;
  v10.super_class = ANAccountNotifier;
  v5 = [(ANAccountNotifier *)&v10 init];
  v6 = v5;
  if (serviceCopy && v5)
  {
    v7 = [serviceCopy copy];
    callbackMachService = v6->_callbackMachService;
    v6->_callbackMachService = v7;

    [(ANAccountNotifier *)v6 _startNotificationCallbackListenerWithMachServiceName:serviceCopy];
  }

  return v6;
}

- (void)dealloc
{
  [(ANAccountNotifier *)self _stopNotificationCallbackListener];
  [(ANAccountNotifier *)self _disconnectFromDaemon];
  v3.receiver = self;
  v3.super_class = ANAccountNotifier;
  [(ANAccountNotifier *)&v3 dealloc];
}

- (void)addNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ANAccountNotifier addNotification:];
  }

  if (self->_callbackMachService)
  {
    v6 = _ANLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ANAccountNotifier addNotification:];
    }

    [notificationCopy setCallbackMachService:self->_callbackMachService];
  }

  _daemonConnection = [(ANAccountNotifier *)self _daemonConnection];
  v8 = [_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__ANAccountNotifier_addNotification___block_invoke_3;
  v10[3] = &unk_278BF92F0;
  v11 = notificationCopy;
  v9 = notificationCopy;
  [v8 addNotification:v9 withCompletion:v10];
}

void __37__ANAccountNotifier_addNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ANLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__ANAccountNotifier_addNotification___block_invoke_cold_1();
    }
  }
}

void __37__ANAccountNotifier_addNotification___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ANLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[ANAccountNotifier addNotification:]_block_invoke";
      v11 = 1024;
      v12 = 79;
      _os_log_impl(&dword_23DC5E000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification added successfully!", &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __37__ANAccountNotifier_addNotification___block_invoke_3_cold_1(a1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ANAccountNotifier removeNotificationWithIdentifier:];
  }

  _daemonConnection = [(ANAccountNotifier *)self _daemonConnection];
  v7 = [_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7;
  v9[3] = &unk_278BF92F0;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [v7 removeNotificationWithID:v8 completion:v9];
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ANLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_cold_1();
    }
  }
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ANLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[ANAccountNotifier removeNotificationWithIdentifier:]_block_invoke";
      v11 = 1024;
      v12 = 98;
      _os_log_impl(&dword_23DC5E000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification removed successfully!", &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7_cold_1(a1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationsWithEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ANAccountNotifier removeNotificationsWithEventIdentifier:];
  }

  _daemonConnection = [(ANAccountNotifier *)self _daemonConnection];
  v7 = [_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_9];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10;
  v9[3] = &unk_278BF92F0;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [v7 removeNotificationsWithEventID:v8 completion:v9];
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ANLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_cold_1();
    }
  }
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ANLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[ANAccountNotifier removeNotificationsWithEventIdentifier:]_block_invoke";
      v11 = 1024;
      v12 = 117;
      _os_log_impl(&dword_23DC5E000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Notifications removed successfully!", &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10_cold_1(a1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_daemonConnection
{
  daemonConnection = self->_daemonConnection;
  if (!daemonConnection)
  {
    _createDaemonConnection = [(ANAccountNotifier *)self _createDaemonConnection];
    v5 = self->_daemonConnection;
    self->_daemonConnection = _createDaemonConnection;

    daemonConnection = self->_daemonConnection;
  }

  return daemonConnection;
}

- (id)_createDaemonConnection
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _ANLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[ANAccountNotifier _createDaemonConnection]";
    v17 = 1024;
    v18 = 137;
    _os_log_impl(&dword_23DC5E000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) Starting new connection...", buf, 0x12u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.and.xpc" options:0];
  v5 = +[ANDaemonInterface XPCInterface];
  [v4 setRemoteObjectInterface:v5];

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__ANAccountNotifier__createDaemonConnection__block_invoke;
  v13[3] = &unk_278BF9318;
  objc_copyWeak(&v14, buf);
  [v4 setInvalidationHandler:v13];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__ANAccountNotifier__createDaemonConnection__block_invoke_2;
  v11 = &unk_278BF9318;
  objc_copyWeak(&v12, buf);
  [v4 setInterruptionHandler:&v8];
  [v4 resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

void __44__ANAccountNotifier__createDaemonConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _daemonConnectionWasInvalidated];
    WeakRetained = v2;
  }
}

void __44__ANAccountNotifier__createDaemonConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _daemonConnectionWasInterrupted];
    WeakRetained = v2;
  }
}

- (void)_disconnectFromDaemon
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_daemonConnectionWasInterrupted
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_daemonConnectionWasInvalidated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ANLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ANAccountNotifier _daemonConnectionWasInvalidated]";
    v8 = 1024;
    v9 = 179;
    _os_log_impl(&dword_23DC5E000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v6, 0x12u);
  }

  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startNotificationCallbackListenerWithMachServiceName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bulletinResponseListener = self->_bulletinResponseListener;
  v6 = _ANLogSystem();
  v7 = v6;
  if (bulletinResponseListener)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[ANAccountNotifier _startNotificationCallbackListenerWithMachServiceName:]";
      v13 = 1024;
      v14 = 190;
      _os_log_impl(&dword_23DC5E000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification response listener is already running!", &v11, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ANAccountNotifier _startNotificationCallbackListenerWithMachServiceName:];
    }

    v8 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:nameCopy];
    v9 = self->_bulletinResponseListener;
    self->_bulletinResponseListener = v8;

    [(NSXPCListener *)self->_bulletinResponseListener setDelegate:self];
    [(NSXPCListener *)self->_bulletinResponseListener resume];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopNotificationCallbackListener
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.and.manager"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _ANLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ANAccountNotifier listener:shouldAcceptNewConnection:];
    }

    goto LABEL_10;
  }

  if (([v6 BOOLValue] & 1) == 0)
  {
    v8 = _ANLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ANAccountNotifier listener:shouldAcceptNewConnection:];
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = +[ANClientCallbackInterface XPCInterface];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v8 = _ANLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ANAccountNotifier listener:shouldAcceptNewConnection:]";
    v14 = 1024;
    v15 = 227;
    _os_log_impl(&dword_23DC5E000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Accepted new connection.", &v12, 0x12u);
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)notificationWasActivated:(id)activated
{
  v14 = *MEMORY[0x277D85DE8];
  activatedCopy = activated;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ANAccountNotifier notificationWasActivated:]";
    v12 = 1024;
    v13 = 234;
    _os_log_impl(&dword_23DC5E000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountNotifier:self didActivateNotification:activatedCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationWasDismissed:(id)dismissed
{
  v14 = *MEMORY[0x277D85DE8];
  dismissedCopy = dismissed;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ANAccountNotifier notificationWasDismissed:]";
    v12 = 1024;
    v13 = 243;
    _os_log_impl(&dword_23DC5E000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountNotifier:self didDismissNotification:dismissedCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationWasCleared:(id)cleared
{
  v14 = *MEMORY[0x277D85DE8];
  clearedCopy = cleared;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ANAccountNotifier notificationWasCleared:]";
    v12 = 1024;
    v13 = 252;
    _os_log_impl(&dword_23DC5E000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountNotifier:self didClearNotification:clearedCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (ANAccountNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addNotification:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addNotification:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __37__ANAccountNotifier_addNotification___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __37__ANAccountNotifier_addNotification___block_invoke_3_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315906;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23DC5E000, v2, v3, "%s (%d) Failed to add notification %@! Error: %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315906;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23DC5E000, v2, v3, "%s (%d) Failed to remove notification %@! Error: %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationsWithEventIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136315906;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23DC5E000, v2, v3, "%s (%d) Failed to remove notifications with event ID %@! Error: %@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startNotificationCallbackListenerWithMachServiceName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end