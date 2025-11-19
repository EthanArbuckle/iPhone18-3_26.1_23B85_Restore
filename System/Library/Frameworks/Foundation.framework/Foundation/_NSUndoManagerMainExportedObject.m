@interface _NSUndoManagerMainExportedObject
- (id)_initWithUndoManager:(id)a3;
- (void)_inProcessInvalidate:(id)a3;
- (void)_registerRemoteUndoGroupForAction:(id)a3 auxUUID:(id)a4 withReply:(id)a5;
@end

@implementation _NSUndoManagerMainExportedObject

- (id)_initWithUndoManager:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSUndoManagerMainExportedObject;
  v4 = [(_NSUndoManagerMainExportedObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_manager, a3);
  }

  return v5;
}

- (void)_registerRemoteUndoGroupForAction:(id)a3 auxUUID:(id)a4 withReply:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (*[objc_loadWeak(&self->_manager) _remoteState] == 1)
  {
    __assert_rtn("[_NSUndoManagerMainExportedObject _registerRemoteUndoGroupForAction:auxUUID:withReply:]", "NSUndoManager_Remote.m", 435, "!_manager._remoteState->isAux");
  }

  v9 = [objc_loadWeak(&self->_manager) isUndoing];
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v10 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    Weak = objc_loadWeak(&self->_manager);
    v19 = *(a3 + 1);
    v20 = @"undo";
    *buf = 134219010;
    v27 = Weak;
    if (v9)
    {
      v20 = @"redo";
    }

    v28 = 2114;
    v29 = v20;
    v30 = 2114;
    v31 = v19;
    v32 = 2114;
    v33 = v20;
    v34 = 2114;
    v35 = a4;
    _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (main) registering local %{public}@ %{public}@ linked to remote %{public}@ action from connection %{public}@", buf, 0x34u);
  }

  v11 = [*(objc_msgSend(objc_loadWeak(&self->_manager) "_remoteState") + 8)];
  if (!v11)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"NSUndoManager attempted to register a local undo marker for an unknown connection";
    goto LABEL_16;
  }

  v12 = v11;
  v13 = +[NSXPCConnection currentConnection];
  if (v13)
  {
    v14 = v13;
    if ([v12 isEqual:v13])
    {
      v12 = [(NSXPCConnection *)v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_179_0];
      goto LABEL_9;
    }

    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"NSUndoManager attempted to register a local undo marker for an auxiliary manager UUID that does not match this XPC connection";
LABEL_16:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v23 userInfo:0]);
  }

LABEL_9:
  [objc_loadWeak(&self->_manager) beginUndoGrouping];
  v15 = [objc_loadWeak(&self->_manager) isUndoing];
  v16 = objc_loadWeak(&self->_manager);
  v17 = [MEMORY[0x1E695DFB0] null];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88___NSUndoManagerMainExportedObject__registerRemoteUndoGroupForAction_auxUUID_withReply___block_invoke_2;
  v24[3] = &unk_1E69F5558;
  v25 = v15;
  v24[4] = self;
  v24[5] = a3;
  v24[6] = a4;
  v24[7] = v12;
  [v16 registerUndoWithTarget:v17 handler:v24];
  [objc_loadWeak(&self->_manager) _setGroupIdentifier:*(a3 + 2)];
  [objc_loadWeak(&self->_manager) setActionIsDiscardable:*(a3 + 24)];
  [objc_loadWeak(&self->_manager) setActionUserInfoValue:a4 forKey:_NSUndoManagerRemoteConnectionIDUserInfoKey];
  [objc_loadWeak(&self->_manager) endUndoGrouping];
  (*(a5 + 2))(a5);
}

- (void)_inProcessInvalidate:(id)a3
{
  Weak = objc_loadWeak(&self->_manager);

  [Weak _connectionTerminated:a3];
}

@end