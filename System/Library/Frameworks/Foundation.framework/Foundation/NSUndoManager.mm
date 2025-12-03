@interface NSUndoManager
+ (void)_endTopLevelGroupings;
+ (void)initialize;
- (BOOL)_endUndoGroupRemovingIfEmpty:(BOOL)empty;
- (BOOL)_shouldCoalesceTypingForText:(id)text :(id)a4;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSArray)runLoopModes;
- (NSInteger)groupingLevel;
- (NSString)description;
- (NSString)redoActionName;
- (NSString)redoMenuItemTitle;
- (NSString)redoMenuTitleForUndoActionName:(NSString *)actionName;
- (NSString)undoActionName;
- (NSString)undoMenuItemTitle;
- (NSString)undoMenuTitleForUndoActionName:(NSString *)actionName;
- (NSUndoManager)init;
- (_NSAuxiliaryUndoManagerReference)_auxiliaryReference;
- (id)_methodSignatureForTargetSelector:(SEL)selector;
- (id)_undoActionInfo;
- (id)prepareWithInvocationTarget:(id)target;
- (id)redoActionUserInfoValueForKey:(id)key;
- (id)undoActionUserInfoValueForKey:(id)key;
- (void)__redoCommonDoSingle:(BOOL)single;
- (void)_assertNotAuxForPerformingAction;
- (void)_cancelAutomaticTopLevelGroupEnding;
- (void)_commitUndoGrouping;
- (void)_connectionTerminated:(id)terminated;
- (void)_endEventGroupingIfOpen;
- (void)_forwardTargetInvocation:(id)invocation;
- (void)_linkWithAuxiliaryManager:(id)manager;
- (void)_postCheckpointNotification;
- (void)_prepareEventGrouping;
- (void)_processEndOfEventNotification:(id)notification;
- (void)_registerUndoGroupOnMainManagerIfNecessary;
- (void)_registerUndoObject:(id)object;
- (void)_removeAllActionsForConnectionUUID:(id)d;
- (void)_rollbackUndoGrouping;
- (void)_scheduleAutomaticTopLevelGroupEnding;
- (void)_setGroupIdentifier:(id)identifier;
- (void)_teardownRemoteConnections;
- (void)beginUndoGrouping;
- (void)dealloc;
- (void)enableUndoRegistration;
- (void)endUndoGrouping;
- (void)registerUndoWithTarget:(id)target handler:(void *)undoHandler;
- (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)anObject;
- (void)removeAllActions;
- (void)removeAllActionsWithTarget:(id)target;
- (void)setActionIsDiscardable:(BOOL)discardable;
- (void)setActionName:(NSString *)actionName;
- (void)setActionUserInfoValue:(id)value forKey:(id)key;
- (void)setGroupsByEvent:(BOOL)groupsByEvent;
- (void)setRunLoopModes:(NSArray *)runLoopModes;
- (void)undo;
- (void)undoNestedGroup;
@end

@implementation NSUndoManager

+ (void)initialize
{
  if (NSUndoManager == self)
  {
    standardUserDefaults = [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
    if (standardUserDefaults)
    {
      defaultLevelsOfUndo = standardUserDefaults;
    }
  }
}

- (NSUndoManager)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSUndoManager;
  v2 = [(NSUndoManager *)&v4 init];
  v2->_undoStack = [[_NSUndoStack allocWithZone:?]];
  v2->_redoStack = [[_NSUndoStack allocWithZone:?]];
  v2->_flags = 0x4000000000;
  v2->_target = 0;
  v2->_runLoopModes = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695D918]];
  [(_NSUndoStack *)v2->_undoStack setMax:defaultLevelsOfUndo];
  return v2;
}

- (void)_postCheckpointNotification
{
  flags = self->_flags;
  if ((flags & 0x2000000000) == 0)
  {
    self->_flags = flags | 0x2000000000;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"NSUndoManagerCheckpointNotification", self];
    self->_flags &= ~0x2000000000uLL;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSUndoManager *)self _teardownRemoteConnections];
  os_unfair_lock_lock(&_MergedGlobals_5_2);
  [qword_1ED43F188 removeObject:self];
  os_unfair_lock_unlock(&_MergedGlobals_5_2);
  [self->_proxy superRelease];

  [(NSUndoManager *)self _delayAutomaticTermination:-1.0];
  v3.receiver = self;
  v3.super_class = NSUndoManager;
  [(NSUndoManager *)&v3 dealloc];
}

- (void)_teardownRemoteConnections
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_remote.isAux)
  {
    if (self->_remote.var0.aux.inProcessConnection)
    {
      listener = self->_remote.var0.aux.var0.xpc.listener;
      if (listener)
      {
        [(NSXPCListener *)listener _inProcessInvalidate:self->_remote.var0.aux.var0.xpc.endpoint];

        self->_remote.var0.aux.var0.xpc.listener = 0;
        self->_remote.var0.aux.var0.xpc.endpoint = 0;
      }

      self->_remote.var0.aux.inProcessConnection = 0;
    }

    else
    {
      connection = self->_remote.var0.aux.var0.xpc.connection;
      if (connection)
      {
        [(NSXPCConnection *)connection setInvalidationHandler:0];
        [(NSXPCConnection *)self->_remote.var0.aux.var0.xpc.connection invalidate];

        self->_remote.var0.aux.var0.xpc.connection = 0;
      }

      endpoint = self->_remote.var0.aux.var0.xpc.endpoint;
      if (endpoint)
      {

        self->_remote.var0.aux.var0.xpc.endpoint = 0;
      }

      v12 = self->_remote.var0.aux.var0.xpc.listener;
      if (v12)
      {
        [(NSXPCListener *)v12 invalidate];

        self->_remote.var0.aux.var0.xpc.listener = 0;
      }
    }

    self->_remote.isAux = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allValues = [(NSMutableDictionary *)self->_remote.var0.main.auxManagers allValues];
    v5 = [allValues countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 setInvalidationHandler:0];
            [v9 invalidate];
          }

          else
          {
            [v9 _inProcessInvalidate];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v6);
    }

    self->_remote.var0.main.auxManagers = 0;
  }
}

- (NSInteger)groupingLevel
{
  v2 = 56;
  if ((self->_flags & 0x100000000) == 0)
  {
    v2 = 48;
  }

  return [*(&self->super.isa + v2) nestingLevel];
}

- (void)removeAllActions
{
  [(_NSUndoStack *)self->_undoStack removeAllObjects];
  [(_NSUndoStack *)self->_redoStack removeAllObjects];
  flags = self->_flags;
  self->_flags = flags & 0xFCFFFFFFFFLL;
  self->_target = 0;
  if ((flags & 0x1000000000) != 0)
  {
    [(NSUndoManager *)self _cancelAutomaticTopLevelGroupEnding];
  }

  [(NSUndoManager *)self _delayAutomaticTermination:-1.0];
}

- (void)_connectionTerminated:(id)terminated
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_remote.isAux)
  {
    __assert_rtn("[NSUndoManager(NSRemoteUndo_Internal) _connectionTerminated:]", "NSUndoManager_Remote.m", 185, "!_remote.isAux");
  }

  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v5 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2114;
    terminatedCopy = terminated;
    _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (main) connection for UUID %{public}@ to auxiliary manager terminated", &v6, 0x16u);
  }

  [(NSUndoManager *)self _removeAllActionsForConnectionUUID:terminated];
  [(NSMutableDictionary *)self->_remote.var0.main.auxManagers removeObjectForKey:terminated];
  if (![(NSMutableDictionary *)self->_remote.var0.main.auxManagers count])
  {

    self->_remote.var0.main.auxManagers = 0;
  }
}

- (void)_registerUndoGroupOnMainManagerIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_remote.isAux)
  {
    if (self->_remote.var0.aux.inProcessConnection)
    {
      listener = self->_remote.var0.aux.var0.xpc.listener;
      endpoint = self->_remote.var0.aux.var0.xpc.endpoint;
      if (!listener)
      {
        return;
      }
    }

    else
    {
      listener = [(NSXPCConnection *)self->_remote.var0.aux.var0.xpc.connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_119];
      endpoint = [-[NSXPCConnection exportedObject](self->_remote.var0.aux.var0.xpc.connection "exportedObject")];
      if (!listener)
      {
        return;
      }
    }

    v5 = +[NSUUID UUID];
    [(NSUndoManager *)self setActionUserInfoValue:v5 forKey:_NSUndoManagerRemoteIDUserInfoKey];
    if (![(NSUndoManager *)self isUndoing]&& ![(NSUndoManager *)self isRedoing])
    {
      if (qword_1ED43FA20 != -1)
      {
        dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
      }

      v6 = _MergedGlobals_115;
      if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
      {
        v8 = 134218498;
        selfCopy = self;
        v10 = 2112;
        v11 = v5;
        v12 = 2112;
        v13 = endpoint;
        _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) is sending a remote undo registration with UUID %@ to its main undo manager over connection %@", &v8, 0x20u);
      }

      v7 = [[_NSUndoActionInfo alloc] initWithUUID:v5 name:[(NSUndoManager *)self _undoGroupIdentifier] discardable:[(NSUndoManager *)self undoActionIsDiscardable]];
      [(NSXPCListener *)listener _registerRemoteUndoGroupForAction:v7 auxUUID:endpoint withReply:&__block_literal_global_126];
    }
  }
}

void __82__NSUndoManager_NSRemoteUndo_Internal___registerUndoGroupOnMainManagerIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695D930];
  v3 = @"NSUnderlyingError";
  v4[0] = a2;
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v2 reason:@"NSUndoManager (aux) failed to connect to the main manager" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}]);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_remote.isAux)
  {
    __assert_rtn("[NSUndoManager(NSRemoteUndo_XPCListenerDelegate) listener:shouldAcceptNewConnection:]", "NSUndoManager_Remote.m", 493, "_remote.isAux");
  }

  if (self->_remote.var0.aux.inProcessConnection)
  {
    __assert_rtn("[NSUndoManager(NSRemoteUndo_XPCListenerDelegate) listener:shouldAcceptNewConnection:]", "NSUndoManager_Remote.m", 494, "!_remote.aux.inProcessConnection");
  }

  if (self->_remote.var0.aux.var0.xpc.listener != listener)
  {
    __assert_rtn("[NSUndoManager(NSRemoteUndo_XPCListenerDelegate) listener:shouldAcceptNewConnection:]", "NSUndoManager_Remote.m", 495, "listener == _remote.aux.xpc.listener");
  }

  connection = self->_remote.var0.aux.var0.xpc.connection;
  if (connection)
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v6 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "NSUndoManager<%p> (aux) received connection request from a main undo manager, but it is already connected to a main undo manager", &buf, 0xCu);
    }
  }

  else
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v8 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) receiving connection request from remote main undo manager", &buf, 0xCu);
    }

    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __86__NSUndoManager_NSRemoteUndo_XPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke;
    v16 = &unk_1E69F5580;
    objc_copyWeak(&v17, &location);
    [connection setInvalidationHandler:&v13];
    v9 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF7E238, v13, v14, v15, v16];
    v10 = MEMORY[0x1E695DFD8];
    *&buf = objc_opt_class();
    *(&buf + 1) = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v9, "setClasses:forSelector:argumentIndex:ofReply:", [v10 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &buf, 2)}], sel__connectForUUID_clearStacks_lastActionDate_withReply_, 0, 1);
    [connection setExportedInterface:v9];
    v11 = [[_NSUndoManagerAuxiliaryExportedObject alloc] _initWithUndoManager:self];
    [connection setExportedObject:v11];

    [connection setRemoteObjectInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &unk_1EEF7E398)}];
    [connection _setQueue:MEMORY[0x1E69E96A0]];
    [connection activate];
    self->_remote.var0.aux.var0.xpc.connection = connection;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return connection == 0;
}

id __86__NSUndoManager_NSRemoteUndo_XPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v2 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    Weak = objc_loadWeak((a1 + 32));
    _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) connection to main undo manager terminated", &v5, 0xCu);
  }

  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v4 = result;
    if ((*(result + 8) & 1) == 0)
    {
      __assert_rtn("[NSUndoManager(NSRemoteUndo_XPCListenerDelegate) listener:shouldAcceptNewConnection:]_block_invoke", "NSUndoManager_Remote.m", 507, "manager->_remote.isAux");
    }

    if (*(result + 16) == 1)
    {
      __assert_rtn("[NSUndoManager(NSRemoteUndo_XPCListenerDelegate) listener:shouldAcceptNewConnection:]_block_invoke", "NSUndoManager_Remote.m", 508, "!manager->_remote.aux.inProcessConnection");
    }

    v4[5] = 0;
    return [v4 removeAllActions];
  }

  return result;
}

- (_NSAuxiliaryUndoManagerReference)_auxiliaryReference
{
  if (!self->_remote.isAux)
  {
    if (!self->_remote.var0.main.auxManagers)
    {
      goto LABEL_8;
    }

    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = @"[NSUndoManager _auxiliaryReference] called on an UndoManager that already has connections to other auxiliary managers. Managers connected to other auxiliary managers cannot be auxiliary managers themselves.";
    goto LABEL_16;
  }

  if (!self->_remote.var0.aux.inProcessConnection)
  {
    if (!self->_remote.var0.aux.var0.xpc.connection)
    {
      goto LABEL_8;
    }

    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = @"[NSUndoManager _auxiliaryReference] called on an UndoManager that already has a cross-process connection to a main undo manager.";
LABEL_16:
    objc_exception_throw([v3 exceptionWithName:v4 reason:v5 userInfo:0]);
  }

  if (self->_remote.var0.aux.var0.xpc.endpoint)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = @"[NSUndoManager _auxiliaryReference] called on an UndoManager that already has an in-process connection to a main undo manager.";
    goto LABEL_16;
  }

LABEL_8:
  self->_remote.isAux = 1;
  self->_remote.var0.aux.inProcessConnection = 0;
  if (!self->_remote.var0.aux.var0.xpc.listener)
  {
    v6 = +[NSXPCListener anonymousListener];
    self->_remote.var0.aux.var0.xpc.listener = v6;
    [(NSXPCListener *)v6 setDelegate:self];
    [(NSXPCListener *)self->_remote.var0.aux.var0.xpc.listener _setQueue:MEMORY[0x1E69E96A0]];
    [(NSXPCListener *)self->_remote.var0.aux.var0.xpc.listener activate];
  }

  if (!self->_remote.var0.aux.var0.xpc.endpoint)
  {
    self->_remote.var0.aux.var0.xpc.endpoint = [(NSXPCListener *)self->_remote.var0.aux.var0.xpc.listener endpoint];
  }

  v7 = [[_NSAuxiliaryUndoManagerReference alloc] _initWithEndpoint:self->_remote.var0.aux.var0.xpc.endpoint manager:self];

  return v7;
}

- (void)_linkWithAuxiliaryManager:(id)manager
{
  v54 = *MEMORY[0x1E69E9840];
  if (self->_remote.isAux)
  {
    if (self->_remote.var0.aux.inProcessConnection)
    {
      if (self->_remote.var0.aux.var0.xpc.endpoint)
      {
        goto LABEL_54;
      }
    }

    else if (self->_remote.var0.aux.var0.xpc.listener)
    {
LABEL_54:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[NSUndoManager _linkWithAuxiliaryManager] called on UndoManager that is already established as an auxiliary. Auxiliary managers cannot connect to other auxiliary managers themselves." userInfo:0]);
    }

    __assert_rtn("[NSUndoManager(NSRemoteUndo) _linkWithAuxiliaryManager:]", "NSUndoManager_Remote.m", 564, "!_remote.isAux");
  }

  _inProcessManager = [manager _inProcessManager];
  auxManagers = self->_remote.var0.main.auxManagers;
  if (!auxManagers)
  {
    auxManagers = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_remote.var0.main.auxManagers = auxManagers;
  }

  if (_inProcessManager)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    allValues = [(NSMutableDictionary *)auxManagers allValues];
    v8 = [allValues countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v8)
    {
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v11 "_manager")])
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSUndoManager _linkWithAuxiliaryManager] called with an auxiliary manager that is already connected to this main undo manager. Main undo managers cannot be linked with the same auxiliary manager twice." userInfo:0]);
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    allValues2 = [(NSMutableDictionary *)auxManagers allValues];
    v13 = [allValues2 countByEnumeratingWithState:&v50 objects:v49 count:16];
    if (v13)
    {
      v14 = *v51;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(allValues2);
          }

          v16 = *(*(&v50 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v16 "endpoint")])
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSUndoManager _linkWithAuxiliaryManager] called with an auxiliary manager that is already connected to this main undo manager. Main undo managers cannot be linked with the same auxiliary manager twice." userInfo:0]);
          }
        }

        v13 = [allValues2 countByEnumeratingWithState:&v50 objects:v49 count:16];
      }

      while (v13);
    }
  }

  [(NSUndoManager *)self _endEventGroupingIfOpen];
  v17 = objc_alloc_init(NSUUID);
  if (_inProcessManager)
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v18 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_debug_impl(&dword_18075C000, v18, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (main) opening in-process connection to auxiliary undo manager with UUID %{public}@", buf, 0x16u);
    }

    v19 = [[_NSUndoManagerAuxiliaryExportedObject alloc] _initWithUndoManager:_inProcessManager];
    v20 = [[_NSUndoManagerMainExportedObject alloc] _initWithUndoManager:self];
    v21 = [v19 _inProcessConnectForUUID:v17 mainInterface:v20 clearStacks:-[NSUndoManager canRedo](self lastActionDate:{"canRedo"), -[NSUndoManager _newestUndoActionDate](self, "_newestUndoActionDate")}];
    [(NSMutableDictionary *)self->_remote.var0.main.auxManagers setObject:v19 forKey:v17];
    if (v21)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v22)
      {
        v23 = *v40;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [v20 _registerRemoteUndoGroupForAction:*(*(&v39 + 1) + 8 * k) auxUUID:v17 withReply:&__block_literal_global_271];
          }

          v22 = [v21 countByEnumeratingWithState:&v39 objects:v38 count:16];
        }

        while (v22);
      }
    }

    else
    {
      if (qword_1ED43FA20 != -1)
      {
        dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
      }

      v33 = _MergedGlobals_115;
      if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = self;
        _os_log_impl(&dword_18075C000, v33, OS_LOG_TYPE_DEFAULT, "NSUndoManager<%p> (main) undo actions cannot be merged with an auxiliary cleanly. The undo/redo stacks will be cleared.", buf, 0xCu);
      }

      [(NSUndoManager *)self removeAllActions];
    }
  }

  else
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v25 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_debug_impl(&dword_18075C000, v25, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (main) opening cross-process connection to auxiliary undo manager with UUID %{public}@", buf, 0x16u);
    }

    v26 = -[NSXPCConnection initWithListenerEndpoint:]([NSXPCConnection alloc], "initWithListenerEndpoint:", [manager _endpoint]);
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __57__NSUndoManager_NSRemoteUndo___linkWithAuxiliaryManager___block_invoke_272;
    v35[3] = &unk_1E69F55A8;
    objc_copyWeak(&v36, &location);
    v35[4] = v17;
    [(NSXPCConnection *)v26 setInvalidationHandler:v35];
    [(NSXPCConnection *)v26 setExportedInterface:[NSXPCInterface interfaceWithProtocol:&unk_1EEF7E398]];
    v27 = [[_NSUndoManagerMainExportedObject alloc] _initWithUndoManager:self];
    [(NSXPCConnection *)v26 setExportedObject:v27];

    v28 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF7E238];
    v29 = MEMORY[0x1E695DFD8];
    *buf = objc_opt_class();
    *&buf[8] = objc_opt_class();
    -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v28, "setClasses:forSelector:argumentIndex:ofReply:", [v29 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", buf, 2)}], sel__connectForUUID_clearStacks_lastActionDate_withReply_, 0, 1);
    [(NSXPCConnection *)v26 setRemoteObjectInterface:v28];
    [(NSXPCConnection *)v26 _setQueue:MEMORY[0x1E69E96A0]];
    [(NSXPCConnection *)v26 activate];
    v30 = [(NSXPCConnection *)v26 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_274];
    [(NSMutableDictionary *)self->_remote.var0.main.auxManagers setObject:v26 forKey:v17];
    canRedo = [(NSUndoManager *)self canRedo];
    _newestUndoActionDate = [(NSUndoManager *)self _newestUndoActionDate];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __57__NSUndoManager_NSRemoteUndo___linkWithAuxiliaryManager___block_invoke_3;
    v34[3] = &unk_1E69F55D0;
    v34[4] = v27;
    v34[5] = v17;
    v34[6] = self;
    [v30 _connectForUUID:v17 clearStacks:canRedo lastActionDate:_newestUndoActionDate withReply:v34];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

uint64_t __57__NSUndoManager_NSRemoteUndo___linkWithAuxiliaryManager___block_invoke_272(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = *(a1 + 32);

  return [Weak _connectionTerminated:v3];
}

void __57__NSUndoManager_NSRemoteUndo___linkWithAuxiliaryManager___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695D930];
  v3 = @"NSUnderlyingError";
  v4[0] = a2;
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v2 reason:@"NSUndoManager (main) failed to connect to an auxiliary manager" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}]);
}

uint64_t __57__NSUndoManager_NSRemoteUndo___linkWithAuxiliaryManager___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(a2);
          }

          [*(a1 + 32) _registerRemoteUndoGroupForAction:*(*(&v13 + 1) + 8 * v7++) auxUUID:*(a1 + 40) withReply:&__block_literal_global_276];
        }

        while (v5 != v7);
        result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v8 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "NSUndoManager<%p> (main) undo actions cannot be merged with an auxiliary cleanly. The undo/redo stacks will be cleared.", &v10, 0xCu);
    }

    return [*(a1 + 48) removeAllActions];
  }

  return result;
}

- (NSString)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendFormat:@"NSUndoManager<%p>", self];
  v4 = *&self->_remote.var0.aux.var0.xpc.listener;
  v8[0] = *&self->_remote.isAux;
  v8[1] = v4;
  connection = self->_remote.var0.aux.var0.xpc.connection;
  v5 = _NSRemoteUndoStateCopyDescription(v8);
  if (v5)
  {
    v6 = v5;
    [v3 appendFormat:@"{remoteState = %@}", v5];
  }

  return v3;
}

- (void)_scheduleAutomaticTopLevelGroupEnding
{
  if (NSUndoManagerEndsTopLevelGroupingsAfterRunLoopIterations == 1)
  {
    [objc_msgSend(MEMORY[0x1E695DFD0] "currentRunLoop")];
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_5_2);
    v3 = qword_1ED43F188;
    if (!qword_1ED43F188)
    {
      v3 = [[NSHashTable alloc] initWithOptions:5 capacity:0];
      qword_1ED43F188 = v3;
    }

    [(NSHashTable *)v3 addObject:self];
    os_unfair_lock_unlock(&_MergedGlobals_5_2);
  }

  self->_flags |= 0x1000000000uLL;
}

- (void)_cancelAutomaticTopLevelGroupEnding
{
  if (NSUndoManagerEndsTopLevelGroupingsAfterRunLoopIterations == 1)
  {
    [objc_msgSend(MEMORY[0x1E695DFD0] "currentRunLoop")];
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_5_2);
    [qword_1ED43F188 removeObject:self];
    os_unfair_lock_unlock(&_MergedGlobals_5_2);
  }

  self->_flags &= ~0x1000000000uLL;
}

- (void)_prepareEventGrouping
{
  flags = self->_flags;
  if ((flags & 0x5000000000) == 0x4000000000)
  {
    v4 = (flags & 0x100000000) == 0;
    v5 = 56;
    if (v4)
    {
      v5 = 48;
    }

    if (![*(&self->super.isa + v5) nestingLevel])
    {
      [(NSUndoManager *)self _scheduleAutomaticTopLevelGroupEnding];

      [(NSUndoManager *)self beginUndoGrouping];
    }
  }
}

- (void)_endEventGroupingIfOpen
{
  if ((self->_flags & 0x1000000000) != 0 && [(_NSUndoStack *)self->_undoStack nestingLevel]== 1)
  {
    [(NSUndoManager *)self _cancelAutomaticTopLevelGroupEnding];

    [(NSUndoManager *)self endUndoGrouping];
  }
}

- (void)beginUndoGrouping
{
  flags = self->_flags;
  if (!(flags >> 40))
  {
    if ((flags & 0x300000000) == 0)
    {
      [(NSUndoManager *)self _prepareEventGrouping];
      flags = self->_flags;
    }

    v4 = 56;
    if ((flags & 0x100000000) == 0)
    {
      v4 = 48;
    }

    v5 = *(&self->super.isa + v4);
    if ((flags & 0x4000000000) == 0 || [*(&self->super.isa + v4) nestingLevel])
    {
      [(NSUndoManager *)self _postCheckpointNotification];
    }

    [v5 markBegin];
    if ((self->_flags & 0x300000000) == 0)
    {
      v6 = +[NSNotificationCenter defaultCenter];

      [(NSNotificationCenter *)v6 postNotificationName:@"NSUndoManagerDidOpenUndoGroupNotification" object:self];
    }
  }
}

- (BOOL)_endUndoGroupRemovingIfEmpty:(BOOL)empty
{
  emptyCopy = empty;
  v6 = 56;
  if ((self->_flags & 0x100000000) == 0)
  {
    v6 = 48;
  }

  v7 = *(&self->super.isa + v6);
  [(NSUndoManager *)self _postCheckpointNotification];
  if (![v7 nestingLevel])
  {
    v18 = NSStringFromSelector(a2);
    v19 = objc_opt_class();
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, endUndoGrouping called with no matching begin\n", v18, NSStringFromClass(v19), self), 0}];
    objc_exception_throw(v20);
  }

  v8 = [objc_msgSend(v7 "topUndoObject")];
  if ((self->_flags & 0x300000000) == 0)
  {
    if (emptyCopy)
    {
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v8), @"NSUndoManagerGroupIsEmpty"}];
    }

    else
    {
      v9 = 0;
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSUndoManagerWillCloseUndoGroupNotification" userInfo:self, v9];
  }

  isDiscardable = [v7 isDiscardable];
  if ((v8 & emptyCopy) == 1)
  {
    [v7 popUndoObject];
  }

  else
  {
    v11 = isDiscardable;
    if (v8 && (self->_flags & 0x300000000) == 0)
    {
      [(_NSUndoStack *)self->_redoStack removeAllObjects];
    }

    if (([objc_msgSend(v7 "topUndoObject")] & 1) == 0)
    {
      if ([v7 userInfo])
      {
        userInfo = [v7 userInfo];
        v13 = [MEMORY[0x1E695DF00] now];
        [userInfo setObject:v13 forKey:_NSUndoManagerDateUserInfoKey];
      }

      else
      {
        v14 = MEMORY[0x1E695DF90];
        v15 = [MEMORY[0x1E695DF00] now];
        [v7 setUserInfo:{objc_msgSend(v14, "dictionaryWithObjectsAndKeys:", v15, _NSUndoManagerDateUserInfoKey, 0)}];
      }

      [(NSUndoManager *)self _registerUndoGroupOnMainManagerIfNecessary];
    }

    [v7 markEnd];
    if ((self->_flags & 0x300000000) == 0)
    {
      if (v11)
      {
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"NSUndoManagerGroupIsDiscardableKey"}];
      }

      else
      {
        v16 = 0;
      }

      [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSUndoManagerDidCloseUndoGroupNotification" userInfo:self, v16];
    }
  }

  return v8 ^ 1;
}

- (void)endUndoGrouping
{
  if (!(self->_flags >> 40))
  {
    [(NSUndoManager *)self _endUndoGroupRemovingIfEmpty:0];
  }
}

- (void)enableUndoRegistration
{
  flags = self->_flags;
  if (!(flags >> 40))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, enableUndoRegistration may only be invoked with matching call to disableUndoRegistration\n", v4, NSStringFromClass(v5), self), 0}];
    objc_exception_throw(v6);
  }

  self->_flags = flags - 0x10000000000;
}

- (void)setGroupsByEvent:(BOOL)groupsByEvent
{
  v3 = 0x4000000000;
  if (!groupsByEvent)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setRunLoopModes:(NSArray *)runLoopModes
{
  v3 = self->_runLoopModes;
  self->_runLoopModes = [(NSArray *)runLoopModes copyWithZone:[(NSUndoManager *)self zone]];
}

- (NSArray)runLoopModes
{
  v2 = self->_runLoopModes;

  return v2;
}

- (void)_assertNotAuxForPerformingAction
{
  if (self->_remote.isAux && !self->_remote.var0.aux.performingAuxUndo)
  {
    if (self->_remote.var0.aux.var0.xpc.listener)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSUndoManager -undo/-redo called on an auxiliary undo manager connected to a main undo manager. This is not allowed. -undo must be called on the main undo manager." userInfo:{0, v2, v3}]);
    }
  }
}

- (void)undo
{
  [(NSUndoManager *)self _postCheckpointNotification];
  if ((self->_flags & 0x1000000000) != 0 && [(_NSUndoStack *)self->_undoStack nestingLevel]== 1)
  {
    [(NSUndoManager *)self endUndoGrouping];
    [(NSUndoManager *)self _cancelAutomaticTopLevelGroupEnding];
  }

  if ([(_NSUndoStack *)self->_undoStack nestingLevel])
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, undo was called with too many nested undo groups", v4, NSStringFromClass(v5), self), 0}];
    objc_exception_throw(v6);
  }

  [(NSUndoManager *)self undoNestedGroup];
}

- (void)undoNestedGroup
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSUndoManager *)self _assertNotAuxForPerformingAction];
  [(NSUndoManager *)self _postCheckpointNotification];
  self->_flags |= 0x100000000uLL;
  topUndoObject = [(_NSUndoStack *)self->_undoStack topUndoObject];
  if (topUndoObject)
  {
    if (([topUndoObject isEndMark] & 1) == 0)
    {
      self->_flags &= ~0x100000000uLL;
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, call endUndoGrouping before calling this method\n", v7, NSStringFromClass(v8), self), 0}];
      objc_exception_throw(v9);
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"NSUndoManagerWillUndoChangeNotification", self];
    [(NSUndoManager *)self beginUndoGrouping];
    isDiscardable = [(_NSUndoStack *)self->_undoStack isDiscardable];
    if (!(self->_flags >> 40))
    {
      [(_NSUndoStack *)self->_redoStack setGroupIdentifier:[(_NSUndoStack *)self->_undoStack groupIdentifier]];
      if (!(self->_flags >> 40))
      {
        [(_NSUndoStack *)self->_redoStack setUserInfo:[(_NSUndoStack *)self->_undoStack userInfo]];
        if (!(self->_flags >> 40))
        {
          [(_NSUndoStack *)self->_redoStack setDiscardable:isDiscardable];
        }
      }
    }

    [(_NSUndoStack *)self->_undoStack popAndInvoke];
    if (!(self->_flags >> 40))
    {
      [(NSUndoManager *)self _endUndoGroupRemovingIfEmpty:1];
    }

    if (isDiscardable)
    {
      v10 = @"NSUndoManagerGroupIsDiscardableKey";
      v11[0] = MEMORY[0x1E695E118];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v6 = 0;
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSUndoManagerDidUndoChangeNotification" userInfo:self, v6];
  }

  self->_flags &= ~0x100000000uLL;
}

- (void)__redoCommonDoSingle:(BOOL)single
{
  [(NSUndoManager *)self _assertNotAuxForPerformingAction];
  if ([(NSUndoManager *)self canRedo])
  {
    self->_flags |= 0x200000000uLL;
    topUndoObject = [(_NSUndoStack *)self->_redoStack topUndoObject];
    if (topUndoObject)
    {
      if (([topUndoObject isEndMark] & 1) == 0)
      {
        self->_flags &= ~0x200000000uLL;
        v8 = NSStringFromSelector(a2);
        v9 = objc_opt_class();
        v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, do not invoke this method while undoing\n", v8, NSStringFromClass(v9), self), 0}];
        objc_exception_throw(v10);
      }

      [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"NSUndoManagerWillRedoChangeNotification", self];
      [(NSUndoManager *)self beginUndoGrouping];
      isDiscardable = [(_NSUndoStack *)self->_redoStack isDiscardable];
      if (!(self->_flags >> 40))
      {
        [(_NSUndoStack *)self->_undoStack setGroupIdentifier:[(_NSUndoStack *)self->_redoStack groupIdentifier]];
        if (!(self->_flags >> 40))
        {
          [(_NSUndoStack *)self->_undoStack setUserInfo:[(_NSUndoStack *)self->_redoStack userInfo]];
          if (!(self->_flags >> 40))
          {
            [(_NSUndoStack *)self->_undoStack setDiscardable:isDiscardable];
          }
        }
      }

      [(_NSUndoStack *)self->_redoStack popAndInvoke];
      [(NSUndoManager *)self _postCheckpointNotification];
      [(NSUndoManager *)self endUndoGrouping];
      if (isDiscardable)
      {
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"NSUndoManagerGroupIsDiscardableKey"}];
      }

      else
      {
        v7 = 0;
      }

      [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSUndoManagerDidRedoChangeNotification" userInfo:self, v7];
    }

    self->_flags &= ~0x200000000uLL;
  }
}

- (void)removeAllActionsWithTarget:(id)target
{
  [(_NSUndoStack *)self->_undoStack removeAllObjectsWithTarget:?];
  redoStack = self->_redoStack;

  [(_NSUndoStack *)redoStack removeAllObjectsWithTarget:target];
}

- (void)_removeAllActionsForConnectionUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(_NSUndoStack *)self->_undoStack popAllActionsForConnectionUUID:?];
  v6 = [(_NSUndoStack *)self->_redoStack popAllActionsForConnectionUUID:d];
  v7 = 56;
  if ((self->_flags & 0x100000000) == 0)
  {
    v7 = 48;
  }

  if (![*(&self->super.isa + v7) count] && (self->_flags & 0x1000000000) != 0)
  {
    [(NSUndoManager *)self _cancelAutomaticTopLevelGroupEnding];
  }

  if (v5 | v6)
  {
    v8 = _NSRemoteUndoLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218754;
      selfCopy = self;
      v11 = 2048;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      v15 = 2114;
      dCopy = d;
      _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (main) removed %lu undo actions and %lu redo actions due to invalidated connection with UUID %{public}@", &v9, 0x2Au);
    }
  }
}

- (id)prepareWithInvocationTarget:(id)target
{
  self->_target = target;
  proxy = self->_proxy;
  if (!proxy)
  {
    proxy = [[NSUndoManagerProxy alloc] initWithManager:self];
    self->_proxy = proxy;
  }

  [(NSUndoManagerProxy *)proxy setTargetClass:objc_opt_class()];
  return self->_proxy;
}

- (id)_methodSignatureForTargetSelector:(SEL)selector
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSUndoManager;
  result = [(NSUndoManager *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = self->_target;
    if (result)
    {
      return [result methodSignatureForSelector:selector];
    }
  }

  return result;
}

- (void)_registerUndoObject:(id)object
{
  flags = self->_flags;
  if (flags >> 40)
  {

    MEMORY[0x1EEE66BE0]();
  }

  else
  {
    if ((flags & 0x300000000) == 0)
    {
      [(_NSUndoStack *)self->_redoStack removeAllObjects];
    }

    [(NSUndoManager *)self _prepareEventGrouping];
    v6 = 56;
    if ((self->_flags & 0x100000000) == 0)
    {
      v6 = 48;
    }

    v7 = *(&self->super.isa + v6);
    if (![v7 nestingLevel])
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, must begin a group before registering undo\n", v8, NSStringFromClass(v9), self), 0}];
      objc_exception_throw(v10);
    }

    [v7 push:object];
    if ([(NSUndoManager *)self groupsByEvent])
    {

      [(NSUndoManager *)self _delayAutomaticTermination:28800.0];
    }
  }
}

- (void)_forwardTargetInvocation:(id)invocation
{
  if (!self->_target)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p received forwarded invocation while invocation target is nil. Call prepareWithInvocationTarget: before invoking %@", @"forwardInvocation:", v6, self, NSStringFromSelector(objc_msgSend(invocation, "selector"))), 0}];
    objc_exception_throw(v7);
  }

  [invocation setTarget:0];
  -[NSUndoManager _registerUndoObject:](self, "_registerUndoObject:", [objc_allocWithZone(_NSUndoInvocation) initWithTarget:self->_target invocation:invocation]);
  self->_target = 0;
}

- (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)anObject
{
  v6 = [objc_allocWithZone(_NSUndoLightInvocation) initWithTarget:target selector:selector object:anObject];

  [(NSUndoManager *)self _registerUndoObject:v6];
}

- (void)registerUndoWithTarget:(id)target handler:(void *)undoHandler
{
  if (!target)
  {
    v6 = [NSString stringWithFormat:@"*** %s: targetcannot be nil", undoHandler, "[NSUndoManager registerUndoWithTarget:handler:]"];
    goto LABEL_10;
  }

  if (!undoHandler)
  {
    v6 = [NSString stringWithFormat:@"*** %s: handlercannot be nil", 0, "[NSUndoManager registerUndoWithTarget:handler:]"];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  v5 = [[_NSUndoBlockInvocation alloc] initWithTarget:target handler:undoHandler];
  if (v5)
  {

    [(NSUndoManager *)self _registerUndoObject:v5];
  }
}

- (NSString)undoActionName
{
  groupIdentifier = [(_NSUndoStack *)self->_undoStack groupIdentifier];
  if (!groupIdentifier)
  {
    return &stru_1EEEFDF90;
  }

  v3 = groupIdentifier;
  if ((_NSIsNSString() & 1) == 0)
  {
    v4 = [(NSString *)v3 copy];
    [v4 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "currentLocale")}];
    localizeParsingMarkdown = [v4 localizeParsingMarkdown];

    return localizeParsingMarkdown;
  }

  return v3;
}

- (NSString)redoActionName
{
  groupIdentifier = [(_NSUndoStack *)self->_redoStack groupIdentifier];
  if (!groupIdentifier)
  {
    return &stru_1EEEFDF90;
  }

  v3 = groupIdentifier;
  if ((_NSIsNSString() & 1) == 0)
  {
    v4 = [(NSString *)v3 copy];
    [v4 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "currentLocale")}];
    localize = [v4 localize];

    return localize;
  }

  return v3;
}

- (void)_setGroupIdentifier:(id)identifier
{
  if (!(self->_flags >> 40))
  {
    [(NSUndoManager *)self _prepareEventGrouping];
    v6 = 56;
    if ((self->_flags & 0x100000000) == 0)
    {
      v6 = 48;
    }

    v7 = *(&self->super.isa + v6);
    if (![v7 nestingLevel])
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, must begin a group before registering undo\n", v8, NSStringFromClass(v9), self), 0}];
      objc_exception_throw(v10);
    }

    [v7 setGroupIdentifier:identifier];
  }
}

- (void)setActionName:(NSString *)actionName
{
  if (actionName)
  {
    [(NSUndoManager *)self _setGroupIdentifier:?];
  }
}

- (void)setActionIsDiscardable:(BOOL)discardable
{
  if (!(self->_flags >> 40))
  {
    v3 = discardable;
    [(NSUndoManager *)self _prepareEventGrouping];
    v6 = 56;
    if ((self->_flags & 0x100000000) == 0)
    {
      v6 = 48;
    }

    v7 = *(&self->super.isa + v6);
    if (![v7 nestingLevel])
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, must begin a group before setting undo action discardability\n", v8, NSStringFromClass(v9), self), 0}];
      objc_exception_throw(v10);
    }

    [v7 setDiscardable:v3];
  }
}

- (void)setActionUserInfoValue:(id)value forKey:(id)key
{
  if (!(self->_flags >> 40))
  {
    [(NSUndoManager *)self _prepareEventGrouping];
    v8 = 56;
    if ((self->_flags & 0x100000000) == 0)
    {
      v8 = 48;
    }

    v9 = *(&self->super.isa + v8);
    if (![v9 nestingLevel])
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, must begin a group before setting undo action user info\n", v12, NSStringFromClass(v13), self), 0}];
      objc_exception_throw(v14);
    }

    if ([v9 userInfo])
    {
      userInfo = [v9 userInfo];
      if (value)
      {

        [userInfo setObject:value forKey:key];
      }

      else
      {

        [userInfo removeObjectForKey:key];
      }
    }

    else if (value)
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{value, key, 0}];

      [v9 setUserInfo:v11];
    }
  }
}

- (id)undoActionUserInfoValueForKey:(id)key
{
  userInfo = [(_NSUndoStack *)self->_undoStack userInfo];

  return [userInfo objectForKey:key];
}

- (id)redoActionUserInfoValueForKey:(id)key
{
  userInfo = [(_NSUndoStack *)self->_redoStack userInfo];

  return [userInfo objectForKey:key];
}

- (NSString)undoMenuItemTitle
{
  if ([(NSUndoManager *)self canUndo]&& (v3 = [(NSUndoManager *)self undoActionName], ![(NSString *)v3 isEqual:&stru_1EEEFDF90]))
  {

    return [(NSUndoManager *)self undoMenuTitleForUndoActionName:v3];
  }

  else
  {
    v4 = _NSFoundationBundle();

    return [v4 localizedStringForKey:@"Undo" value:&stru_1EEEFDF90 table:@"Undo"];
  }
}

- (NSString)redoMenuItemTitle
{
  if ([(NSUndoManager *)self canRedo]&& (v3 = [(NSUndoManager *)self redoActionName], ![(NSString *)v3 isEqual:&stru_1EEEFDF90]))
  {

    return [(NSUndoManager *)self redoMenuTitleForUndoActionName:v3];
  }

  else
  {
    v4 = _NSFoundationBundle();

    return [v4 localizedStringForKey:@"Redo" value:&stru_1EEEFDF90 table:@"Undo"];
  }
}

- (NSString)undoMenuTitleForUndoActionName:(NSString *)actionName
{
  v4 = [_NSFoundationBundle() localizedStringForKey:@"Undo %@" value:&stru_1EEEFDF90 table:@"Undo"];
  v5 = CFStringCreateWithFormat(0, 0, v4, actionName);

  return v5;
}

- (NSString)redoMenuTitleForUndoActionName:(NSString *)actionName
{
  v4 = [_NSFoundationBundle() localizedStringForKey:@"Redo %@" value:&stru_1EEEFDF90 table:@"Undo"];
  v5 = CFStringCreateWithFormat(0, 0, v4, actionName);

  return v5;
}

- (id)_undoActionInfo
{
  if (!self->_remote.isAux)
  {
    __assert_rtn("[NSUndoManager _undoActionInfo]", "NSUndoManager.m", 1209, "_remote.isAux");
  }

  if ([(NSUndoManager *)self canRedo])
  {
    __assert_rtn("[NSUndoManager _undoActionInfo]", "NSUndoManager.m", 1210, "![self canRedo]");
  }

  undoStack = self->_undoStack;

  return [(_NSUndoStack *)undoStack undoActionInfo];
}

- (BOOL)_shouldCoalesceTypingForText:(id)text :(id)a4
{
  v6 = [-[NSUndoManager _undoStack](self "_undoStack")];
  if (v6)
  {
    v7 = v6;
    while ([v7 target] != a4 || object_getClass(v7) != _NSUndoLightInvocation || objc_msgSend(v7, "_argument") != text)
    {
      LODWORD(v6) = [v7 isEndMark];
      if (!v6)
      {
        return v6;
      }

      v7 = v7[1];
      if (!v7)
      {
        LOBYTE(v6) = 0;
        return v6;
      }
    }

    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)_processEndOfEventNotification:(id)notification
{
  flags = self->_flags;
  if ((~flags & 0x5000000000) == 0)
  {
    self->_flags = flags & 0xFFFFFFEFFFFFFFFFLL;
    [(NSUndoManager *)self endUndoGrouping];
  }
}

+ (void)_endTopLevelGroupings
{
  v14 = *MEMORY[0x1E69E9840];
  if (!+[NSThread isMainThread])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSUndoManager.m" description:1279, @"+[NSUndoManager(NSInternal) _endTopLevelGroupings] is only safe to invoke on the main thread."];
  }

  os_unfair_lock_lock(&_MergedGlobals_5_2);
  v4 = qword_1ED43F188;
  qword_1ED43F188 = 0;
  os_unfair_lock_unlock(&_MergedGlobals_5_2);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) _processEndOfEventNotification:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)_commitUndoGrouping
{
  if (!(self->_flags >> 40))
  {
    [(NSUndoManager *)self _endUndoGroupRemovingIfEmpty:1];
  }
}

- (void)_rollbackUndoGrouping
{
  if (!(self->_flags >> 40) && [(NSUndoManager *)self _endUndoGroupRemovingIfEmpty:1])
  {
    [(NSUndoManager *)self disableUndoRegistration];
    [(NSUndoManager *)self undoNestedGroup];

    [(NSUndoManager *)self enableUndoRegistration];
  }
}

@end