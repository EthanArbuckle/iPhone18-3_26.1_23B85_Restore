@interface AFUserNotificationAnnouncementSpeakingStateObserver
- (AFUserNotificationAnnouncementSpeakingStateObserver)initWithQueue:(id)a3 delegate:(id)a4;
- (id)_connection;
- (id)_currentConnection;
- (void)_cleanUpConnection;
- (void)_notifyObserverOfFailureForAllObservingNotifications;
- (void)_removeObserverForNotificationRequestIdentifier:(id)a3;
- (void)_speakingStateDidChange:(int64_t)a3 forIdentifiers:(id)a4;
- (void)_startObservingNotificationWithRequestIdentifier:(id)a3;
- (void)_tearDown;
- (void)cleanUpConnection;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)invalidate;
- (void)speakingStateDidChange:(int64_t)a3 forIdentifiers:(id)a4;
- (void)startObservingNotificationWithRequestIdentifier:(id)a3;
- (void)stopObservingNotificationWithRequestIdentifier:(id)a3;
@end

@implementation AFUserNotificationAnnouncementSpeakingStateObserver

- (void)_cleanUpConnection
{
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)cleanUpConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AFUserNotificationAnnouncementSpeakingStateObserver_cleanUpConnection__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connectionInterrupted
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[AFUserNotificationAnnouncementSpeakingStateObserver connectionInterrupted]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AFUserNotificationAnnouncementSpeakingStateObserver_connectionInterrupted__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __76__AFUserNotificationAnnouncementSpeakingStateObserver_connectionInterrupted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpConnection];
  v2 = *(a1 + 32);

  return [v2 _notifyObserverOfFailureForAllObservingNotifications];
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[AFUserNotificationAnnouncementSpeakingStateObserver connectionInvalidated]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AFUserNotificationAnnouncementSpeakingStateObserver_connectionInvalidated__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_tearDown
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFUserNotificationAnnouncementSpeakingStateObserver _tearDown]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(NSMutableSet *)self->_observingNotifications removeAllObjects];
  [(AFUserNotificationAnnouncementSpeakingStateObserver *)self _cleanUpConnection];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserverOfFailureForAllObservingNotifications
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_observingNotifications count])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      observingNotifications = self->_observingNotifications;
      v8 = 136315394;
      v9 = "[AFUserNotificationAnnouncementSpeakingStateObserver _notifyObserverOfFailureForAllObservingNotifications]";
      v10 = 2112;
      v11 = observingNotifications;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Notifying all identifiers as failed. %@", &v8, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [(NSMutableSet *)self->_observingNotifications allObjects];
    [WeakRetained notificationAnnouncementObserver:self announcementSpeakingStateDidUpdate:4 forNotificationRequestIdentifiers:v5];

    [(NSMutableSet *)self->_observingNotifications removeAllObjects];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_currentConnection
{
  v2 = [(AFUserNotificationAnnouncementSpeakingStateObserver *)self _connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_29171];

  return v3;
}

void __73__AFUserNotificationAnnouncementSpeakingStateObserver__currentConnection__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFUserNotificationAnnouncementSpeakingStateObserver _currentConnection]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistant.announcement_state.service" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F059AEA0];
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    v8 = self->_connection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BF020];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    objc_initWeak(&location, self);
    v10 = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__AFUserNotificationAnnouncementSpeakingStateObserver__connection__block_invoke;
    v15[3] = &unk_1E7348A80;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:v15];
    v11 = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__AFUserNotificationAnnouncementSpeakingStateObserver__connection__block_invoke_2;
    v13[3] = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v11 setInterruptionHandler:v13];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __66__AFUserNotificationAnnouncementSpeakingStateObserver__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

void __66__AFUserNotificationAnnouncementSpeakingStateObserver__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInterrupted];
}

- (void)_speakingStateDidChange:(int64_t)a3 forIdentifiers:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(NSMutableSet *)self->_observingNotifications count])
  {
    v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
    [v7 intersectSet:self->_observingNotifications];
    v8 = [v7 count];
    v9 = AFSiriLogContextConnection;
    if (v8)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        if (a3 > 5)
        {
          v11 = @"(unknown)";
        }

        else
        {
          v11 = *(&off_1E7342D40 + a3);
        }

        v13 = v11;
        v17 = 136315650;
        v18 = "[AFUserNotificationAnnouncementSpeakingStateObserver _speakingStateDidChange:forIdentifiers:]";
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v7;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = [v7 allObjects];
      [WeakRetained notificationAnnouncementObserver:self announcementSpeakingStateDidUpdate:a3 forNotificationRequestIdentifiers:v15];
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[AFUserNotificationAnnouncementSpeakingStateObserver _speakingStateDidChange:forIdentifiers:]";
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Received a notification for speaking state changes, but we're not observing any of them.", &v17, 0xCu);
    }
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[AFUserNotificationAnnouncementSpeakingStateObserver _speakingStateDidChange:forIdentifiers:]";
      _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Received a notification for speaking state changes, but no observers.", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserverForNotificationRequestIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_observingNotifications containsObject:v4];
  v6 = AFSiriLogContextConnection;
  v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v10 = 136315394;
      v11 = "[AFUserNotificationAnnouncementSpeakingStateObserver _removeObserverForNotificationRequestIdentifier:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Removing speaking state observer for notification request identifier %@", &v10, 0x16u);
    }

    [(NSMutableSet *)self->_observingNotifications removeObject:v4];
    if (![(NSMutableSet *)self->_observingNotifications count])
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "[AFUserNotificationAnnouncementSpeakingStateObserver _removeObserverForNotificationRequestIdentifier:]";
        _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s No longer observing any notifications. Closing connection.", &v10, 0xCu);
      }

      [(AFUserNotificationAnnouncementSpeakingStateObserver *)self _cleanUpConnection];
    }
  }

  else if (v7)
  {
    v10 = 136315394;
    v11 = "[AFUserNotificationAnnouncementSpeakingStateObserver _removeObserverForNotificationRequestIdentifier:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Not currently observing for notification request identifier %@, ignoring.", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingNotificationWithRequestIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableSet *)self->_observingNotifications containsObject:v4])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[AFUserNotificationAnnouncementSpeakingStateObserver _startObservingNotificationWithRequestIdentifier:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Already observing notification request identifier %@, ignoring.", &v10, 0x16u);
    }
  }

  else
  {
    v6 = [(NSMutableSet *)self->_observingNotifications count];
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[AFUserNotificationAnnouncementSpeakingStateObserver _startObservingNotificationWithRequestIdentifier:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Adding speaking state observer for notification request identifier %@", &v10, 0x16u);
    }

    [(NSMutableSet *)self->_observingNotifications addObject:v4];
    if (!v6)
    {
      v8 = [(AFUserNotificationAnnouncementSpeakingStateObserver *)self _currentConnection];
      [v8 beginObserving];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)speakingStateDidChange:(int64_t)a3 forIdentifiers:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__AFUserNotificationAnnouncementSpeakingStateObserver_speakingStateDidChange_forIdentifiers___block_invoke;
  block[3] = &unk_1E73484C0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFUserNotificationAnnouncementSpeakingStateObserver_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopObservingNotificationWithRequestIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __102__AFUserNotificationAnnouncementSpeakingStateObserver_stopObservingNotificationWithRequestIdentifier___block_invoke;
    v6[3] = &unk_1E7349860;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

- (void)startObservingNotificationWithRequestIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __103__AFUserNotificationAnnouncementSpeakingStateObserver_startObservingNotificationWithRequestIdentifier___block_invoke;
    v6[3] = &unk_1E7349860;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

- (void)dealloc
{
  [(AFUserNotificationAnnouncementSpeakingStateObserver *)self _tearDown];
  v3.receiver = self;
  v3.super_class = AFUserNotificationAnnouncementSpeakingStateObserver;
  [(AFUserNotificationAnnouncementSpeakingStateObserver *)&v3 dealloc];
}

- (AFUserNotificationAnnouncementSpeakingStateObserver)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AFUserNotificationAnnouncementSpeakingStateObserver;
  v9 = [(AFUserNotificationAnnouncementSpeakingStateObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [MEMORY[0x1E695DFA8] set];
    observingNotifications = v10->_observingNotifications;
    v10->_observingNotifications = v11;
  }

  return v10;
}

@end