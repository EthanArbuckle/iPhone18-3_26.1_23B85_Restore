@interface _GCSystemButtonServiceInternal
- (_GCSystemButtonServiceInternal)init;
- (id)beginConsumingPressesWithReason:(id)a3 consumer:(id)a4 priority:(int64_t)a5;
- (void)_applyLatestConsumerStatus;
- (void)_buttonConsumerInvalidated:(uint64_t)a1;
- (void)_invalidate;
- (void)_resumeServerConnection;
- (void)consumeSystemButtonPressEventAtPriority:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActiveClientsRespondingToSystemButton:(id)a3;
- (void)setSystemButtonAvailable:(BOOL)a3 localizedName:(id)a4 sfSymbolName:(id)a5;
@end

@implementation _GCSystemButtonServiceInternal

- (_GCSystemButtonServiceInternal)init
{
  v24.receiver = self;
  v24.super_class = _GCSystemButtonServiceInternal;
  v2 = [(_GCSystemButtonServiceInternal *)&v24 init];
  v3 = objc_opt_new();
  consumers = v2->_consumers;
  v2->_consumers = v3;

  v5 = objc_opt_new();
  [(_GCSystemButtonServerConnection *)v5 setClient:v2];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38___GCSystemButtonServiceInternal_init__block_invoke;
  v22[3] = &unk_1E8418C28;
  v6 = v2;
  v23 = v6;
  v7 = [(GCIPCRemoteConnection *)v5 addInvalidationHandler:v22];
  serverConnectionInvalidation = v6->_serverConnectionInvalidation;
  v6->_serverConnectionInvalidation = v7;

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __38___GCSystemButtonServiceInternal_init__block_invoke_158;
  v20 = &unk_1E8418C28;
  v9 = v6;
  v21 = v9;
  v10 = [(GCIPCRemoteConnection *)v5 addInterruptionHandler:&v17];
  serverConnectionInterruption = v9->_serverConnectionInterruption;
  v9->_serverConnectionInterruption = v10;

  serverConnection = v9->_serverConnection;
  v9->_serverConnection = v5;
  v13 = v5;

  [(GCIPCRemoteConnection *)v9->_serverConnection resume:v17];
  [(_GCSystemButtonServiceInternal *)v9 _resumeServerConnection];
  v14 = v21;
  v15 = v9;

  return v15;
}

- (void)_resumeServerConnection
{
  if (a1)
  {
    v2 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonService] Resume Connection To Server", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    v3 = [*(a1 + 16) remoteProxy];
    [v3 refresh];

    [(_GCSystemButtonServiceInternal *)a1 _applyLatestConsumerStatus];
    os_activity_scope_leave(&v4);
  }
}

- (void)_invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonService] Invalidate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    [*(a1 + 16) invalidate];
    v3 = *(a1 + 8);
    objc_sync_enter(v3);
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 8);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v7++) removeObserver:a1 forKeyPath:@"invalid" context:{0, v9}];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }

    [*(a1 + 8) removeAllObjects];
    objc_sync_exit(v3);

    os_activity_scope_leave(&state);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_applyLatestConsumerStatus
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _gc_log_system_button();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a2;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "Informing server that client wants presses for %@", &v8, 0xCu);
  }

  v5 = [*(a1 + 16) remoteProxy];
  [v5 setConsumesSystemButtonPressEvents:1 reason:objc_getProperty(a2 atMaximumPriority:{v6, 24, 1), a2[4]}];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_buttonConsumerInvalidated:(uint64_t)a1
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 isInvalid])
  {
    v5 = _gc_log_system_button();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "End consuming presses for %@", &v8, 0xCu);
    }

    [v4 removeObserver:a1 forKeyPath:@"invalid" context:0];
    v6 = *(a1 + 8);
    objc_sync_enter(v6);
    [*(a1 + 8) removeObject:v4];
    objc_sync_exit(v6);

    [(_GCSystemButtonServiceInternal *)a1 _applyLatestConsumerStatus];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setSystemButtonAvailable:(BOOL)a3 localizedName:(id)a4 sfSymbolName:(id)a5
{
  v6 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = _gc_log_system_button();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    available = self->_available;
    v16[0] = 67109376;
    v16[1] = available;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_INFO, "Reported availability changed: %{BOOL}d -> %{BOOL}d", v16, 0xEu);
  }

  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"available"];
  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"sfSymbolName"];
  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"localizedName"];
  self->_available = v6;
  localizedName = self->_localizedName;
  self->_localizedName = v8;
  v13 = v8;

  sfSymbolName = self->_sfSymbolName;
  self->_sfSymbolName = v9;

  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"localizedName"];
  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"sfSymbolName"];
  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"available"];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)setActiveClientsRespondingToSystemButton:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _gc_log_system_button();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "Clients handling system button changed", v8, 2u);
  }

  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"respondingProcessBundleIdentifiers"];
  v6 = [v4 copy];

  respondingProcessBundleIdentifiers = self->_respondingProcessBundleIdentifiers;
  self->_respondingProcessBundleIdentifiers = v6;

  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"respondingProcessBundleIdentifiers"];
}

- (void)consumeSystemButtonPressEventAtPriority:(int64_t)a3
{
  v4 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonService] Consume Button Press", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v5);

  v7 = self->_consumers;
  objc_sync_enter(v7);
  v8 = [(NSMutableArray *)self->_consumers lastObject];
  objc_sync_exit(v7);

  v9 = _gc_log_system_button();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(_GCSystemButtonServiceInternal *)v8 consumeSystemButtonPressEventAtPriority:v9];
  }

  [(_GCSystemButtonConsumer *)v8 consumeSystemButtonPressEvent];
  os_activity_scope_leave(&v10);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"invalid"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(_GCSystemButtonServiceInternal *)self _buttonConsumerInvalidated:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCSystemButtonServiceInternal;
    [(_GCSystemButtonServiceInternal *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)beginConsumingPressesWithReason:(id)a3 consumer:(id)a4 priority:(int64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"GCSystemButtonService.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %s", "consumer != nil"}];

    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"GCSystemButtonService.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %s", "reason != nil"}];

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a5 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"GCSystemButtonService.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %s", "priority >= 0"}];

LABEL_4:
  v12 = [[_GCSystemButtonConsumer alloc] initWithEventConsumer:v11 reason:v9 priority:a5];
  v13 = _gc_log_system_button();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_INFO, "Begin consuming presses for %@", buf, 0xCu);
  }

  [v12 addObserver:self forKeyPath:@"invalid" options:1 context:0];
  v14 = self->_consumers;
  objc_sync_enter(v14);
  [(NSMutableArray *)self->_consumers addObject:v12];
  [(NSMutableArray *)self->_consumers sortUsingSelector:sel_compareTo_];
  objc_sync_exit(v14);

  [(_GCSystemButtonServiceInternal *)self _applyLatestConsumerStatus];
  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)consumeSystemButtonPressEventAtPriority:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "Send press to %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end