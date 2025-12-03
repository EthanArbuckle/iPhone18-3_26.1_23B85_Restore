@interface _GCSystemButtonClientProxy
- (BOOL)handleButtonPress;
- (_GCSystemButtonClientProxy)init;
- (id)_initWithConnection:(void *)connection server:;
- (id)connection;
- (int64_t)compareTo:(id)to;
- (void)_invalidate;
- (void)_systemButtonAvailabilityChanged:(void *)changed;
- (void)_systemButtonRespondersChanged:(void *)changed;
- (void)handleButtonPress;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refresh;
- (void)setConsumesSystemButtonPressEvents:(BOOL)events reason:(id)reason atMaximumPriority:(int64_t)priority;
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
  activeButton = [WeakRetained activeButton];

  [(_GCSystemButtonClientProxy *)self _systemButtonAvailabilityChanged:activeButton];
  v6 = objc_loadWeakRetained(&self->_server);
  responders = [v6 responders];

  [(_GCSystemButtonClientProxy *)self _systemButtonRespondersChanged:responders];
  os_activity_scope_leave(&v8);
}

- (void)setConsumesSystemButtonPressEvents:(BOOL)events reason:(id)reason atMaximumPriority:(int64_t)priority
{
  eventsCopy = events;
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v9 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonServer/Connection] Set Consumes Press Events", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v9, &v18);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v11 = [currentConnection valueForEntitlement:@"com.apple.springboard.hardware-button-service.event-consumption"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    [(_GCSystemButtonClientProxy *)self willChangeValueForKey:@"wantsPressEvents"];
    if (reasonCopy && eventsCopy && (priority & 0x8000000000000000) == 0)
    {
      v13 = _gc_log_system_button();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v21 = 2112;
        v22 = reasonCopy;
        v23 = 2048;
        priorityCopy = priority;
        _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "%@ wants presses for reason '%@' [%zi].", buf, 0x20u);
      }

      v14 = reasonCopy;
      wantsPressEventsReason = self->_wantsPressEventsReason;
      self->_wantsPressEventsReason = v14;
    }

    else
    {
      wantsPressEventsReason = self->_wantsPressEventsReason;
      self->_wantsPressEventsReason = 0;
      priority = -1;
    }

    self->_wantsPressEventsAtPriority = priority;
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

- (int64_t)compareTo:(id)to
{
  wantsPressEventsAtPriority = self->_wantsPressEventsAtPriority;
  v4 = *(to + 7);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"activeButton"])
  {
    [_GCSystemButtonClientProxy observeValueForKeyPath:changeCopy ofObject:self change:? context:?];
  }

  else if ([pathCopy isEqualToString:@"responders"])
  {
    [_GCSystemButtonClientProxy observeValueForKeyPath:changeCopy ofObject:self change:? context:?];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCSystemButtonClientProxy;
    [(_GCSystemButtonClientProxy *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)_initWithConnection:(void *)connection server:
{
  v6 = a2;
  connectionCopy = connection;
  if (self)
  {
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithConnection_server_ object:self file:@"GCSystemButtonServer.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %s", "connection != nil"}];
    }

    v24.receiver = self;
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
    objc_storeWeak(v9 + 1, connectionCopy);
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
  if (self)
  {
    self = objc_getProperty(self, sel_connection, 24, 1);
    v1 = vars8;
  }

  return self;
}

- (void)_systemButtonAvailabilityChanged:(void *)changed
{
  self = a2;
  if (changed)
  {
    connection = [(_GCSystemButtonClientProxy *)changed connection];
    remoteProxy = [connection remoteProxy];
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

    [remoteProxy setSystemButtonAvailable:self != 0 localizedName:v6 sfSymbolName:Property];
  }
}

- (void)_systemButtonRespondersChanged:(void *)changed
{
  v8 = a2;
  if (changed)
  {
    connection = [(_GCSystemButtonClientProxy *)changed connection];
    v4 = [connection peerValueForEntitlement:@"com.apple.springboard.hardware-button-service.event-consumption"];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      connection2 = [(_GCSystemButtonClientProxy *)changed connection];
      remoteProxy = [connection2 remoteProxy];
      [remoteProxy setActiveClientsRespondingToSystemButton:v8];
    }
  }
}

- (void)handleButtonPress
{
  connection = [(_GCSystemButtonClientProxy *)self connection];
  remoteProxy = [connection remoteProxy];
  [remoteProxy consumeSystemButtonPressEventAtPriority:*a2];
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