@interface _GCSystemButtonClientProxy
- (BOOL)handleButtonPress;
- (_GCSystemButtonClientProxy)init;
- (id)_initWithConnection:(void *)a3 server:;
- (id)connection;
- (int64_t)compareTo:(id)a3;
- (void)_invalidate;
- (void)_systemButtonAvailabilityChanged:(void *)a1;
- (void)_systemButtonRespondersChanged:(void *)a1;
- (void)handleButtonPress;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refresh;
- (void)setConsumesSystemButtonPressEvents:(BOOL)a3 reason:(id)a4 atMaximumPriority:(int64_t)a5;
@end

@implementation _GCSystemButtonClientProxy

- (_GCSystemButtonClientProxy)init
{
  [(_GCSystemButtonClientProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)_invalidate
{
  v2 = atomic_load(&self->_invalid);
  if ((v2 & 1) == 0)
  {
    v5 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonServer/Connection] Invalidate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    os_activity_scope_enter(v5, &v10);
    [(_GCSystemButtonClientProxy *)self willChangeValueForKey:@"invalid"];
    atomic_store(1u, &self->_invalid);
    [(_GCSystemButtonClientProxy *)self didChangeValueForKey:@"invalid"];
    WeakRetained = objc_loadWeakRetained(&self->_server);
    [WeakRetained removeObserver:self forKeyPath:@"activeButton" context:0];

    v7 = objc_loadWeakRetained(&self->_server);
    [v7 removeObserver:self forKeyPath:@"responders" context:0];

    connectionInterruptedRegistration = self->_connectionInterruptedRegistration;
    self->_connectionInterruptedRegistration = 0;

    connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
    self->_connectionInvalidationRegistration = 0;

    [(GCIPCRemoteConnection *)self->_connection invalidate];
    objc_setProperty_atomic(self, a2, 0, 24);
    os_activity_scope_leave(&v10);
  }
}

- (BOOL)handleButtonPress
{
  wantsPressEventsAtPriority = self->_wantsPressEventsAtPriority;
  if ((wantsPressEventsAtPriority & 0x8000000000000000) == 0)
  {
    [(_GCSystemButtonClientProxy *)self handleButtonPress];
  }

  return wantsPressEventsAtPriority >= 0;
}

- (void)refresh
{
  v3 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonServer/Connection] Refresh", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v5 = [WeakRetained activeButton];

  [(_GCSystemButtonClientProxy *)self _systemButtonAvailabilityChanged:v5];
  v6 = objc_loadWeakRetained(&self->_server);
  v7 = [v6 responders];

  [(_GCSystemButtonClientProxy *)self _systemButtonRespondersChanged:v7];
  os_activity_scope_leave(&v8);
}

- (void)setConsumesSystemButtonPressEvents:(BOOL)a3 reason:(id)a4 atMaximumPriority:(int64_t)a5
{
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonServer/Connection] Set Consumes Press Events", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v9, &v18);
  v10 = [MEMORY[0x1E696B0B8] currentConnection];
  v11 = [v10 valueForEntitlement:@"com.apple.springboard.hardware-button-service.event-consumption"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    [(_GCSystemButtonClientProxy *)self willChangeValueForKey:@"wantsPressEvents"];
    if (v8 && v6 && (a5 & 0x8000000000000000) == 0)
    {
      v13 = _gc_log_system_button();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v20 = self;
        v21 = 2112;
        v22 = v8;
        v23 = 2048;
        v24 = a5;
        _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "%@ wants presses for reason '%@' [%zi].", buf, 0x20u);
      }

      v14 = v8;
      wantsPressEventsReason = self->_wantsPressEventsReason;
      self->_wantsPressEventsReason = v14;
    }

    else
    {
      wantsPressEventsReason = self->_wantsPressEventsReason;
      self->_wantsPressEventsReason = 0;
      a5 = -1;
    }

    self->_wantsPressEventsAtPriority = a5;
    [(_GCSystemButtonClientProxy *)self didChangeValueForKey:@"wantsPressEvents"];
  }

  else
  {
    v16 = _gc_log_system_button();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_GCSystemButtonClientProxy setConsumesSystemButtonPressEvents:v16 reason:? atMaximumPriority:?];
    }
  }

  os_activity_scope_leave(&v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (int64_t)compareTo:(id)a3
{
  wantsPressEventsAtPriority = self->_wantsPressEventsAtPriority;
  v4 = *(a3 + 7);
  v5 = wantsPressEventsAtPriority < v4;
  v6 = wantsPressEventsAtPriority > v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"activeButton"])
  {
    [_GCSystemButtonClientProxy observeValueForKeyPath:v12 ofObject:self change:? context:?];
  }

  else if ([v10 isEqualToString:@"responders"])
  {
    [_GCSystemButtonClientProxy observeValueForKeyPath:v12 ofObject:self change:? context:?];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCSystemButtonClientProxy;
    [(_GCSystemButtonClientProxy *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)_initWithConnection:(void *)a3 server:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (!v6)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel__initWithConnection_server_ object:a1 file:@"GCSystemButtonServer.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %s", "connection != nil"}];
    }

    v24.receiver = a1;
    v24.super_class = _GCSystemButtonClientProxy;
    v8 = objc_msgSendSuper2(&v24, sel_init);
    [v6 setExportedObject:v8];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57___GCSystemButtonClientProxy__initWithConnection_server___block_invoke;
    aBlock[3] = &unk_1E8418C28;
    v9 = v8;
    v23 = v9;
    v10 = _Block_copy(aBlock);
    objc_storeWeak(v9 + 1, v7);
    objc_storeStrong(v9 + 3, a2);
    v11 = [v6 addInvalidationHandler:v10];
    v12 = v9[4];
    v9[4] = v11;

    v13 = [v6 addInterruptionHandler:v10];
    v14 = v9[5];
    v9[5] = v13;

    v9[7] = -1;
    WeakRetained = objc_loadWeakRetained(v9 + 1);
    OUTLINED_FUNCTION_3_5(WeakRetained, v16, v9, @"activeButton");

    v17 = objc_loadWeakRetained(v9 + 1);
    OUTLINED_FUNCTION_3_5(v17, v18, v9, @"responders");

    [v6 resume];
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)connection
{
  if (a1)
  {
    a1 = objc_getProperty(a1, sel_connection, 24, 1);
    v1 = vars8;
  }

  return a1;
}

- (void)_systemButtonAvailabilityChanged:(void *)a1
{
  self = a2;
  if (a1)
  {
    v3 = [(_GCSystemButtonClientProxy *)a1 connection];
    v5 = [v3 remoteProxy];
    if (self)
    {
      v6 = objc_getProperty(self, v4, 16, 1);
      Property = objc_getProperty(self, v7, 24, 1);
    }

    else
    {
      v6 = 0;
      Property = 0;
    }

    [v5 setSystemButtonAvailable:self != 0 localizedName:v6 sfSymbolName:Property];
  }
}

- (void)_systemButtonRespondersChanged:(void *)a1
{
  v8 = a2;
  if (a1)
  {
    v3 = [(_GCSystemButtonClientProxy *)a1 connection];
    v4 = [v3 peerValueForEntitlement:@"com.apple.springboard.hardware-button-service.event-consumption"];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      v6 = [(_GCSystemButtonClientProxy *)a1 connection];
      v7 = [v6 remoteProxy];
      [v7 setActiveClientsRespondingToSystemButton:v8];
    }
  }
}

- (void)handleButtonPress
{
  v4 = [(_GCSystemButtonClientProxy *)a1 connection];
  v3 = [v4 remoteProxy];
  [v3 consumeSystemButtonPressEventAtPriority:*a2];
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(void *)a2 change:context:.cold.1(void *a1, void *a2)
{
  v4 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  v5 = v3;
  [(_GCSystemButtonClientProxy *)a2 _systemButtonRespondersChanged:v3];
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(void *)a2 change:context:.cold.2(void *a1, void *a2)
{
  v4 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  v5 = v3;
  [(_GCSystemButtonClientProxy *)a2 _systemButtonAvailabilityChanged:v3];
}

@end