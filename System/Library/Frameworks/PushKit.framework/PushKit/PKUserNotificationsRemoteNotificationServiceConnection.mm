@interface PKUserNotificationsRemoteNotificationServiceConnection
+ (id)sharedInstance;
- (BOOL)allowsRemoteNotifications;
- (PKUserNotificationsRemoteNotificationServiceConnection)init;
- (PKUserNotificationsRemoteNotificationServiceConnection)initWithBundleIdentifier:(id)a3;
- (id)_queue_ensureConnection;
- (void)_invalidate;
- (void)_queue_invalidatedConnection;
- (void)_queue_remoteUserNotificationPayloadReceived:(id)a3 completionHandler:(id)a4;
- (void)_queue_remoteUserNotificationsRegistrationSucceededWithDeviceToken:(id)a3;
- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)registerPushRegistry:(id)a3 completionHandler:(id)a4;
- (void)remoteUserNotificationPayloadReceived:(id)a3 completionHandler:(id)a4;
- (void)unregisterPushRegistry:(id)a3;
@end

@implementation PKUserNotificationsRemoteNotificationServiceConnection

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PKUserNotificationsRemoteNotificationServiceConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __72__PKUserNotificationsRemoteNotificationServiceConnection_sharedInstance__block_invoke()
{
  v0 = [PKUserNotificationsRemoteNotificationServiceConnection alloc];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v4 bundleIdentifier];
  v2 = [(PKUserNotificationsRemoteNotificationServiceConnection *)v0 initWithBundleIdentifier:v1];
  v3 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v2;
}

- (id)_queue_ensureConnection
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  if (!connection)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.usernotifications.remotenotificationservice" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D5AB08];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D59668];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    v10 = self->_connection;
    v11 = objc_loadWeakRetained(&location);
    [(NSXPCConnection *)v10 setExportedObject:v11];

    objc_initWeak(&from, self->_queue);
    v12 = self->_connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke;
    v21[3] = &unk_278B54E80;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v21];
    v13 = self->_connection;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke_3;
    v18 = &unk_278B54E80;
    objc_copyWeak(&v19, &from);
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v15];
    [(NSXPCConnection *)self->_connection resume:v15];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (PKUserNotificationsRemoteNotificationServiceConnection)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PKUserNotificationsRemoteNotificationServiceConnection.m" lineNumber:36 description:@"use +sharedInstance"];

  return 0;
}

- (PKUserNotificationsRemoteNotificationServiceConnection)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PKUserNotificationsRemoteNotificationServiceConnection *)a2 initWithBundleIdentifier:?];
  }

  v21.receiver = self;
  v21.super_class = PKUserNotificationsRemoteNotificationServiceConnection;
  v6 = [(PKUserNotificationsRemoteNotificationServiceConnection *)&v21 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    registries = v6->_registries;
    v6->_registries = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.usernotifications.PKUserNotificationsRemoteNotificationServiceConnection", v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.usernotifications.PKUserNotificationsRemoteNotificationServiceConnection.call-out", v12);
    callOutQueue = v6->_callOutQueue;
    v6->_callOutQueue = v13;

    v15 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v15;

    v17 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__PKUserNotificationsRemoteNotificationServiceConnection_initWithBundleIdentifier___block_invoke;
    block[3] = &unk_278B54CD0;
    v20 = v6;
    dispatch_async(v17, block);
  }

  return v6;
}

- (void)registerPushRegistry:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PKUserNotificationsRemoteNotificationServiceConnection registerPushRegistry:a2 completionHandler:self];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke;
  block[3] = &unk_278B54D98;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(queue, block);
}

void __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = [*(a1 + 32) _queue_ensureConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_2;
    v8[3] = &unk_278B54D20;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_4;
    v6[3] = &unk_278B54D70;
    v6[4] = v4;
    v7 = *(a1 + 48);
    [v3 requestTokenForRemoteNotificationsForBundleIdentifier:v5 withCompletionHandler:v6];
  }
}

void __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_3;
  v7[3] = &unk_278B54CF8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_5;
  block[3] = &unk_278B54D48;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __97__PKUserNotificationsRemoteNotificationServiceConnection_registerPushRegistry_completionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)unregisterPushRegistry:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PKUserNotificationsRemoteNotificationServiceConnection *)a2 unregisterPushRegistry:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__PKUserNotificationsRemoteNotificationServiceConnection_unregisterPushRegistry___block_invoke;
  v8[3] = &unk_278B54DC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __81__PKUserNotificationsRemoteNotificationServiceConnection_unregisterPushRegistry___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 8) count])
  {
    v3 = [*(a1 + 32) _queue_ensureConnection];
    v2 = [v3 remoteObjectProxy];
    [v2 invalidateTokenForRemoteNotificationsForBundleIdentifier:*(*(a1 + 32) + 40)];
  }
}

- (BOOL)allowsRemoteNotifications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__PKUserNotificationsRemoteNotificationServiceConnection_allowsRemoteNotifications__block_invoke;
  v5[3] = &unk_278B54E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __83__PKUserNotificationsRemoteNotificationServiceConnection_allowsRemoteNotifications__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
  v4 = *(*(a1 + 32) + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__PKUserNotificationsRemoteNotificationServiceConnection_allowsRemoteNotifications__block_invoke_3;
  v5[3] = &unk_278B54E08;
  v5[4] = *(a1 + 40);
  [v3 getAllowsRemoteNotificationsForBundleIdentifier:v4 withCompletionHandler:v5];
}

- (void)remoteUserNotificationPayloadReceived:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__PKUserNotificationsRemoteNotificationServiceConnection_remoteUserNotificationPayloadReceived_completionHandler___block_invoke;
  block[3] = &unk_278B54D98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__PKUserNotificationsRemoteNotificationServiceConnection_didReceiveDeviceToken_forBundleIdentifier___block_invoke;
  v8[3] = &unk_278B54DC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)_invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setExportedObject:0];

  [(PKUserNotificationsRemoteNotificationServiceConnection *)self setConnection:0];
}

void __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke_2;
    block[3] = &unk_278B54E58;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_interruptedConnection];
}

void __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke_4;
    block[3] = &unk_278B54E58;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __81__PKUserNotificationsRemoteNotificationServiceConnection__queue_ensureConnection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_invalidatedConnection];
}

- (void)_queue_invalidatedConnection
{
  dispatch_assert_queue_V2(self->_queue);

  [(PKUserNotificationsRemoteNotificationServiceConnection *)self _invalidate];
}

- (void)_queue_remoteUserNotificationsRegistrationSucceededWithDeviceToken:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_registries;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) remoteUserNotificationRegistrationSucceededWithDeviceToken:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_remoteUserNotificationPayloadReceived:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_registries;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __121__PKUserNotificationsRemoteNotificationServiceConnection__queue_remoteUserNotificationPayloadReceived_completionHandler___block_invoke;
        v20[3] = &unk_278B54CD0;
        v21 = v7;
        [v13 remoteUserNotificationPayloadReceived:v6 completionHandler:v20];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__PKUserNotificationsRemoteNotificationServiceConnection__queue_remoteUserNotificationPayloadReceived_completionHandler___block_invoke_2;
  block[3] = &unk_278B54EA8;
  v19 = v17;
  v15 = v17;
  dispatch_group_notify(v7, v14, block);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __121__PKUserNotificationsRemoteNotificationServiceConnection__queue_remoteUserNotificationPayloadReceived_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)initWithBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PKUserNotificationsRemoteNotificationServiceConnection.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
}

- (void)registerPushRegistry:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PKUserNotificationsRemoteNotificationServiceConnection.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"registry != nil"}];
}

- (void)unregisterPushRegistry:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PKUserNotificationsRemoteNotificationServiceConnection.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"registry != nil"}];
}

@end