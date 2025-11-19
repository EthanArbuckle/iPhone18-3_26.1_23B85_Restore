@interface GCSystemButtonServer
- (BOOL)acceptConnection:(id)a3 fromProcess:(id)a4;
- (BOOL)hasButtonThief;
- (BOOL)tryHandleButtonPress;
- (GCSystemButtonServer)init;
- (NSSet)responders;
- (_GCSystemButton)activeButton;
- (id)activeProcessRespondingToSystemButton:(id)a3;
- (id)systemButtonAvailableWithLocalizedName:(id)a3 sfSymbolName:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation GCSystemButtonServer

- (GCSystemButtonServer)init
{
  v10.receiver = self;
  v10.super_class = GCSystemButtonServer;
  v2 = [(GCSystemButtonServer *)&v10 init];
  v3 = objc_opt_new();
  buttons = v2->_buttons;
  v2->_buttons = v3;

  v5 = objc_opt_new();
  responders = v2->_responders;
  v2->_responders = v5;

  v7 = objc_opt_new();
  clients = v2->_clients;
  v2->_clients = v7;

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_buttons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"invalid" context:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_buttons removeAllObjects];
  v9.receiver = self;
  v9.super_class = GCSystemButtonServer;
  [(GCSystemButtonServer *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)tryHandleButtonPress
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonServer] Handle Button Press", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = self->_clients;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)self->_clients copy];
  objc_sync_exit(v4);

  v6 = [v5 sortedArrayUsingSelector:sel_compareTo_];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) handleButtonPress])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)hasButtonThief
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_clients copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) wantsPressEvents])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (_GCSystemButton)activeButton
{
  v3 = self->_buttons;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_buttons lastObject];
  objc_sync_exit(v3);

  return v4;
}

- (NSSet)responders
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = self->_responders;
  objc_sync_enter(v4);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_responders;
  v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        Property = *(*(&v15 + 1) + 8 * i);
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 16, 1);
        }

        v11 = Property;
        [v3 addObject:{v11, v15}];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v4);
  v12 = [v3 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)activeProcessRespondingToSystemButton:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (gc_isInternalBuild())
    {
      [GCSystemButtonServer activeProcessRespondingToSystemButton:v4];
    }

    v5 = [[_GCSystemButtonResponder alloc] _initWithBundleIdentifier:v4];
    [v5 addObserver:self forKeyPath:@"invalid" options:1 context:0];
    [(GCSystemButtonServer *)self willChangeValueForKey:@"responders"];
    v7 = self->_responders;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_responders addObject:v5];
    [(GCSystemButtonServer *)v7 activeProcessRespondingToSystemButton:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:@"invalid"])
  {
    [v11 removeObserver:self forKeyPath:@"invalid" context:0];
    [(GCSystemButtonServer *)self willChangeValueForKey:@"activeButton"];
    v13 = self->_buttons;
    objc_sync_enter(v13);
    [(NSMutableArray *)self->_buttons removeObject:v11];
    objc_sync_exit(v13);

    v14 = @"activeButton";
LABEL_14:
    [(GCSystemButtonServer *)self didChangeValueForKey:v14];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:@"invalid"])
  {
    [v11 removeObserver:self forKeyPath:@"invalid" context:0];
    [(GCSystemButtonServer *)self willChangeValueForKey:@"responders"];
    v15 = self->_responders;
    objc_sync_enter(v15);
    [(NSMutableArray *)self->_responders removeObject:v11];
    objc_sync_exit(v15);

    v14 = @"responders";
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:@"invalid"])
  {
    [v11 removeObserver:self forKeyPath:@"invalid" context:0];
    [v11 removeObserver:self forKeyPath:@"wantsPressEvents" context:0];
    v16 = self->_clients;
    objc_sync_enter(v16);
    [(NSMutableArray *)self->_clients removeObject:v11];
    objc_sync_exit(v16);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 isEqualToString:@"wantsPressEvents"])
    {
      v19.receiver = self;
      v19.super_class = GCSystemButtonServer;
      [(GCSystemButtonServer *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_16;
    }

    v17 = [v12 objectForKey:*MEMORY[0x1E696A4F8]];
    v18 = [v17 BOOLValue];

    v14 = @"hasButtonThief";
    if (!v18)
    {
      goto LABEL_14;
    }

    [(GCSystemButtonServer *)self willChangeValueForKey:@"hasButtonThief"];
  }

LABEL_16:
}

- (BOOL)acceptConnection:(id)a3 fromProcess:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _gc_log_system_button();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 serviceName];
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_2_7(&dword_1D2CD5000, v10, v11, "Accepting connection '%@' on mach service '%@'.", v12, v13, v14, v15, v22);
  }

  v16 = [[_GCSystemButtonClientConnection alloc] initWithConnection:v6];
  v17 = [[_GCSystemButtonClientProxy alloc] _initWithConnection:v16 server:self];
  OUTLINED_FUNCTION_3_5(v17, v18, self, @"invalid");
  [v17 addObserver:self forKeyPath:@"wantsPressEvents" options:11 context:0];
  v19 = self->_clients;
  objc_sync_enter(v19);
  [(NSMutableArray *)self->_clients addObject:v17];
  objc_sync_exit(v19);

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)systemButtonAvailableWithLocalizedName:(id)a3 sfSymbolName:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    v13 = getGCLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_2_7(&dword_1D2CD5000, v14, v15, "System button available: %@ %@", v16, v17, v18, v19, v20);
    }
  }

  v8 = [[_GCSystemButton alloc] _initWithLocalizedName:v6 sfSymbolName:v7];
  OUTLINED_FUNCTION_3_5(v8, v9, self, @"invalid");
  [(GCSystemButtonServer *)self willChangeValueForKey:@"activeButton"];
  v10 = self->_buttons;
  objc_sync_enter(v10);
  [(NSMutableArray *)self->_buttons addObject:v8];
  objc_sync_exit(v10);

  [(GCSystemButtonServer *)self didChangeValueForKey:@"activeButton"];
  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)activeProcessRespondingToSystemButton:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "System button responder: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (uint64_t)activeProcessRespondingToSystemButton:(void *)a1 .cold.2(void *a1, void *a2)
{
  objc_sync_exit(a1);

  return [a2 didChangeValueForKey:@"responders"];
}

@end