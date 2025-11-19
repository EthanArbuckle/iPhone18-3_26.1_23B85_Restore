@interface AudioAppleSiriRemoteInputPlugin
- (AVAudioRemoteInputPluginDelegate)delegate;
- (AudioAppleSiriRemoteInputPlugin)initWithPluginDelegate:(id)a3;
- (NSArray)devices;
- (id)_inputDeviceForArgs:(id)a3;
- (id)sendSyncMsg:(id)a3 args:(id)a4;
- (void)_RequestSiriAudioConnection;
- (void)_checkIn;
- (void)_handleAudioFrameMsg:(id)a3;
- (void)_handleError:(id)a3;
- (void)_handleEvent:(id)a3;
- (void)_handleMsg:(id)a3;
- (void)_handlePublishMsg:(id)a3;
- (void)_handleStreamDidCancelMsg:(id)a3;
- (void)_handleTransportDidStartMsg:(id)a3;
- (void)_handleTransportDidStopMsg:(id)a3;
- (void)_handleUnpublishMsg:(id)a3;
- (void)invalidate;
- (void)sendMsg:(id)a3 args:(id)a4;
@end

@implementation AudioAppleSiriRemoteInputPlugin

- (AudioAppleSiriRemoteInputPlugin)initWithPluginDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AudioAppleSiriRemoteInputPlugin;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)&v11 init];
  if (v5)
  {
    sub_D48("AudioAppleSiriRemoteInputPlugin");
    v6 = qword_D118;
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Initializing siri remote plugin", v10, 2u);
    }

    [(AudioAppleSiriRemoteInputPlugin *)v5 setDelegate:v4];
    v7 = objc_alloc_init(NSMutableSet);
    inputDevices = v5->_inputDevices;
    v5->_inputDevices = v7;
  }

  return v5;
}

- (NSArray)devices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AudioAppleSiriRemoteInputPlugin *)v2 xpcConnection];

  if (!v3)
  {
    [(AudioAppleSiriRemoteInputPlugin *)v2 _RequestSiriAudioConnection];
  }

  objc_sync_exit(v2);

  v4 = [(AudioAppleSiriRemoteInputPlugin *)v2 inputDevices];
  objc_sync_enter(v4);
  v5 = qword_D118;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AudioAppleSiriRemoteInputPlugin *)v2 inputDevices];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AudioAppleSiriRemoteInputPlugin Get devices %@", &v10, 0xCu);
  }

  v7 = [(AudioAppleSiriRemoteInputPlugin *)v2 inputDevices];
  v8 = [v7 allObjects];

  objc_sync_exit(v4);

  return v8;
}

- (void)invalidate
{
  os_unfair_lock_lock(&stru_D120);
  v3 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    xpcConnection = self->_xpcConnection;
    v7 = 134217984;
    v8 = xpcConnection;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AudioAppleSiriRemoteInputPlugin invalidate xpc connection %p", &v7, 0xCu);
  }

  v5 = self->_xpcConnection;
  if (v5)
  {
    xpc_connection_cancel(v5);
    v6 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  os_unfair_lock_unlock(&stru_D120);
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = a4;
  *keys = *off_82B8;
  v12 = xpc_string_create([v6 UTF8String]);
  v13 = _CFXPCCreateXPCObjectFromCFObject();
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = xpc_dictionary_create(keys, &v12, v8);
  os_unfair_lock_lock(&stru_D120);
  if (self->_xpcConnection)
  {
    v10 = [(AudioAppleSiriRemoteInputPlugin *)self xpcConnection:v12];
    xpc_connection_send_message(v10, v9);
  }

  else if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
  {
    sub_3DCC();
  }

  os_unfair_lock_unlock(&stru_D120);

  for (i = 8; i != -8; i -= 8)
  {
  }
}

- (id)sendSyncMsg:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = a4;
  *keys = *off_82B8;
  v15 = xpc_string_create([v6 UTF8String]);
  v16 = _CFXPCCreateXPCObjectFromCFObject();
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = xpc_dictionary_create(keys, &v15, v8);
  os_unfair_lock_lock(&stru_D120);
  if (self->_xpcConnection)
  {
    v10 = [(AudioAppleSiriRemoteInputPlugin *)self xpcConnection:v15];
    v11 = xpc_connection_send_message_with_reply_sync(v10, v9);

    os_unfair_lock_unlock(&stru_D120);
  }

  else
  {
    os_unfair_lock_unlock(&stru_D120);
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
    {
      sub_3E0C();
    }

    v11 = &_xpc_error_connection_invalid;
    v12 = &_xpc_error_connection_invalid;
  }

  for (i = 8; i != -8; i -= 8)
  {
  }

  return v11;
}

- (void)_checkIn
{
  v3 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    xpcConnection = self->_xpcConnection;
    *buf = 134217984;
    v24 = xpcConnection;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Send CheckIn to xpc connection %p", buf, 0xCu);
  }

  v5 = [(AudioAppleSiriRemoteInputPlugin *)self sendSyncMsg:@"CheckIn" args:0];
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v10 = xpc_dictionary_get_value(v5, "kMsgArgs");
    v11 = _CFXPCCreateCFObjectFromXPCObject();
    v12 = v11;
    if (v11)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(AudioAppleSiriRemoteInputPlugin *)self _handlePublishMsg:*(*(&v18 + 1) + 8 * v17), v18];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }

  else
  {
    os_unfair_lock_lock(&stru_D120);
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
    {
      sub_3E4C(v5, self);
    }

    v6 = self->_xpcConnection;
    if (v6)
    {
      xpc_connection_cancel(v6);
      v7 = qword_D118;
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_xpcConnection;
        *buf = 134217984;
        v24 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Canceling xpc connection: %p", buf, 0xCu);
      }

      v9 = self->_xpcConnection;
      self->_xpcConnection = 0;
    }

    os_unfair_lock_unlock(&stru_D120);
  }
}

- (void)_handlePublishMsg:(id)a3
{
  v4 = a3;
  v5 = [[AudioAppleSiriRemoteInputDevice alloc] initWithInfo:v4];
  if (v5)
  {
    v6 = qword_D118;
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(AudioAppleSiriRemoteInputDevice *)v5 identifier];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Publishing remote %@", &v12, 0xCu);
    }

    [(AudioAppleSiriRemoteInputDevice *)v5 setPlugin:self];
    v9 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
    objc_sync_enter(v9);
    v10 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
    [v10 addObject:v5];

    objc_sync_exit(v9);
    v11 = [(AudioAppleSiriRemoteInputPlugin *)self delegate];
    [v11 inputPlugin:self didPublishDevice:v5];
  }
}

- (void)_handleUnpublishMsg:(id)a3
{
  v4 = a3;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)self _inputDeviceForArgs:v4];
  v6 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 identifier];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Unpublishing remote %@", &v12, 0xCu);
  }

  [v5 invalidate];
  v9 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  objc_sync_enter(v9);
  v10 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  [v10 removeObject:v5];

  objc_sync_exit(v9);
  v11 = [(AudioAppleSiriRemoteInputPlugin *)self delegate];
  [v11 inputPlugin:self didUnpublishDevice:v5];
}

- (void)_handleTransportDidStartMsg:(id)a3
{
  v4 = a3;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)self _inputDeviceForArgs:v4];
  v6 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Transport did start to remote %@", &v9, 0xCu);
  }

  [v5 handleTransportDidStartMsg:v4];
}

- (void)_handleTransportDidStopMsg:(id)a3
{
  v4 = a3;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)self _inputDeviceForArgs:v4];
  v6 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Transport did stop to remote %@", &v9, 0xCu);
  }

  [v5 handleTransportDidStopMsg:v4];
}

- (void)_handleAudioFrameMsg:(id)a3
{
  v4 = a3;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)self _inputDeviceForArgs:v4];
  [v5 handleAudioFrameMsg:v4];
}

- (void)_handleStreamDidCancelMsg:(id)a3
{
  v4 = a3;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)self _inputDeviceForArgs:v4];
  v6 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Stream did cancel to remote %@", &v9, 0xCu);
  }

  [v5 handleStreamDidCancelMsg:v4];
}

- (void)_RequestSiriAudioConnection
{
  os_unfair_lock_lock(&stru_D120);
  mach_service = xpc_connection_create_mach_service("com.apple.BTLEAudioController.xpc", 0, 0);
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = mach_service;

  v5 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_xpcConnection;
    *buf = 134217984;
    v10 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AudioAppleSiriRemoteInputPlugin xpc connection created at %p", buf, 0xCu);
  }

  v7 = self->_xpcConnection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1DAC;
  handler[3] = &unk_82D0;
  handler[4] = self;
  xpc_connection_set_event_handler(v7, handler);
  xpc_connection_resume(self->_xpcConnection);
  os_unfair_lock_unlock(&stru_D120);
  [(AudioAppleSiriRemoteInputPlugin *)self _checkIn];
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    [(AudioAppleSiriRemoteInputPlugin *)self _handleMsg:v4];
  }

  else if (type == &_xpc_type_error)
  {
    [(AudioAppleSiriRemoteInputPlugin *)self _handleError:v4];
  }

  else if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
  {
    sub_3EB8();
  }
}

- (void)_handleMsg:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "kMsgId");
  v9 = xpc_dictionary_get_value(v4, "kMsgArgs");

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  v7 = [NSString stringWithFormat:@"_handle%sMsg:", string];
  v8 = NSSelectorFromString(v7);

  [self v8];
}

- (void)_handleError:(id)a3
{
  v4 = a3;
  v5 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [v10 invalidate];
        v11 = [(AudioAppleSiriRemoteInputPlugin *)self delegate];
        [v11 inputPlugin:self didUnpublishDevice:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v12 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  [v12 removeAllObjects];

  objc_sync_exit(v5);
  os_unfair_lock_lock(&stru_D120);
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
  {
    sub_3F2C(v4, self);
  }

  if (v4 == &_xpc_error_connection_interrupted || v4 == &_xpc_error_connection_invalid)
  {
    if (self->_xpcConnection)
    {
      v13 = qword_D118;
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
      {
        xpcConnection = self->_xpcConnection;
        *buf = 134217984;
        v23 = xpcConnection;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Canceling xpc connection: %p", buf, 0xCu);
      }

      v16 = self->_xpcConnection;
      p_xpcConnection = &self->_xpcConnection;
      xpc_connection_cancel(v16);
      v17 = *p_xpcConnection;
      *p_xpcConnection = 0;
    }
  }

  else if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
  {
    sub_3F98();
  }

  os_unfair_lock_unlock(&stru_D120);
}

- (id)_inputDeviceForArgs:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMsgArgIdentifier"];
  v6 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(AudioAppleSiriRemoteInputPlugin *)self inputDevices];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v5];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v6);

  return v8;
}

- (AVAudioRemoteInputPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end