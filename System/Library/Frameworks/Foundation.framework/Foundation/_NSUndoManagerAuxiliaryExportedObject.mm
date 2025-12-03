@interface _NSUndoManagerAuxiliaryExportedObject
- (id)_inProcessConnectForUUID:(id)d mainInterface:(id)interface clearStacks:(BOOL)stacks lastActionDate:(id)date;
- (id)_initWithUndoManager:(id)manager;
- (void)_connectForUUID:(id)d clearStacks:(BOOL)stacks lastActionDate:(id)date withReply:(id)reply;
- (void)_inProcessInvalidate;
- (void)_performRemoteUndoForUUID:(id)d isRedo:(BOOL)redo withReply:(id)reply;
- (void)_removeAllActionsWithReply:(id)reply;
@end

@implementation _NSUndoManagerAuxiliaryExportedObject

- (id)_initWithUndoManager:(id)manager
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSUndoManagerAuxiliaryExportedObject;
  v4 = [(_NSUndoManagerAuxiliaryExportedObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_manager, manager);
    v5->_uuid = 0;
  }

  return v5;
}

- (void)_performRemoteUndoForUUID:(id)d isRedo:(BOOL)redo withReply:(id)reply
{
  redoCopy = redo;
  v38 = *MEMORY[0x1E69E9840];
  if (redo)
  {
    v9 = @"redo";
  }

  else
  {
    v9 = @"undo";
  }

  if (redo)
  {
    v10 = @"undo";
  }

  else
  {
    v10 = @"redo";
  }

  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v11 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134218498;
    Weak = objc_loadWeak(&self->_manager);
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    dCopy2 = d;
    _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) performing %{public}@ %{public}@ triggered from remote", &v28, 0x20u);
  }

  v12 = objc_loadWeak(&self->_manager);
  if (redoCopy)
  {
    v13 = [v12 redoActionUserInfoValueForKey:_NSUndoManagerRemoteIDUserInfoKey];
  }

  else
  {
    v13 = [v12 undoActionUserInfoValueForKey:_NSUndoManagerRemoteIDUserInfoKey];
  }

  if (([v13 isEqual:d] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSUndoManager (aux) cannot perform remote undo/redo because the requested action is not the top of the stack." userInfo:0]);
  }

  *([objc_loadWeak(&self->_manager) _remoteState] + 9) = 1;
  v14 = objc_loadWeak(&self->_manager);
  if (redoCopy)
  {
    undoCount = [v14 undoCount];
    [objc_loadWeak(&self->_manager) redo];
    undoCount2 = [objc_loadWeak(&self->_manager) undoCount];
  }

  else
  {
    undoCount = [v14 redoCount];
    [objc_loadWeak(&self->_manager) undo];
    undoCount2 = [objc_loadWeak(&self->_manager) redoCount];
  }

  v17 = undoCount2 - undoCount;
  *([objc_loadWeak(&self->_manager) _remoteState] + 9) = 0;
  if (v17 == 1)
  {
    v19 = objc_loadWeak(&self->_manager);
    if (redoCopy)
    {
      v20 = [v19 undoActionUserInfoValueForKey:_NSUndoManagerRemoteIDUserInfoKey];
      undoActionName = [objc_loadWeak(&self->_manager) undoActionName];
      undoActionIsDiscardable = [objc_loadWeak(&self->_manager) undoActionIsDiscardable];
    }

    else
    {
      v20 = [v19 redoActionUserInfoValueForKey:_NSUndoManagerRemoteIDUserInfoKey];
      undoActionName = [objc_loadWeak(&self->_manager) redoActionName];
      undoActionIsDiscardable = [objc_loadWeak(&self->_manager) redoActionIsDiscardable];
    }

    v23 = undoActionIsDiscardable;
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v24 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_loadWeak(&self->_manager);
      v28 = 134219010;
      Weak = v26;
      v30 = 2114;
      v31 = undoActionName;
      v32 = 2114;
      dCopy2 = v20;
      v34 = 2114;
      v35 = v10;
      v36 = 2114;
      v37 = v20;
      _os_log_debug_impl(&dword_18075C000, v24, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) performed %{public}@ %{public}@ triggered from remote - responding with registration of %{public}@ %{public}@", &v28, 0x34u);
    }

    v25 = [[_NSUndoActionInfo alloc] initWithUUID:v20 name:undoActionName discardable:v23];
    (*(reply + 2))(reply, v25);
  }

  else if (v17)
  {
    qword_1EA7BB378 = "During -undo/-redo multiple new opposite groups were registered";
    __break(1u);
  }

  else
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v18 = _MergedGlobals_115;
    if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_loadWeak(&self->_manager);
      v28 = 134218754;
      Weak = v27;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      dCopy2 = d;
      v34 = 2114;
      v35 = v10;
      _os_log_debug_impl(&dword_18075C000, v18, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) performed %{public}@ %{public}@ triggered from remote - no %{public}@ actions registered", &v28, 0x2Au);
    }

    (*(reply + 2))(reply, 0);
  }
}

- (void)_removeAllActionsWithReply:(id)reply
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v5 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    Weak = objc_loadWeak(&self->_manager);
    _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) removing all undo actions triggered from remote", &v6, 0xCu);
  }

  [objc_loadWeak(&self->_manager) removeAllActions];
  (*(reply + 2))(reply);
}

- (id)_inProcessConnectForUUID:(id)d mainInterface:(id)interface clearStacks:(BOOL)stacks lastActionDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  self->_uuid = d;
  if ([objc_loadWeak(&self->_manager) canRedo])
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v11 = _MergedGlobals_115;
    if (!os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v19 = 134217984;
    Weak = objc_loadWeak(&self->_manager);
    v12 = "NSUndoManager<%p> (aux) received an in-process connection request from a main undo manager but items are present on the redo stack. The undo/redo stack will be cleared.";
    goto LABEL_13;
  }

  if (stacks || date && [date compare:{objc_msgSend(objc_loadWeak(&self->_manager), "_oldestUndoActionDate")}] != -1)
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v11 = _MergedGlobals_115;
    if (!os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v19 = 134217984;
    Weak = objc_loadWeak(&self->_manager);
    v12 = "NSUndoManager<%p> (aux) received an in-process connection request from a main undo manager whose undo actions cannot merge cleanly with the auxiliary undo actions. The undo/redo stack will be cleared.";
LABEL_13:
    _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, v12, &v19, 0xCu);
LABEL_14:
    [objc_loadWeak(&self->_manager) removeAllActions];
    _undoActionInfo = 0;
    goto LABEL_15;
  }

  _undoActionInfo = [objc_loadWeak(&self->_manager) _undoActionInfo];
  if (!_undoActionInfo)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (*([objc_loadWeak(&self->_manager) _remoteState] + 8) == 1)
  {
    __assert_rtn("[_NSUndoManagerAuxiliaryExportedObject _inProcessConnectForUUID:mainInterface:clearStacks:lastActionDate:]", "NSUndoManager_Remote.m", 372, "!_manager._remoteState->aux.inProcessConnection");
  }

  *([objc_loadWeak(&self->_manager) _remoteState] + 24) = 0;
  *([objc_loadWeak(&self->_manager) _remoteState] + 16) = 0;
  *([objc_loadWeak(&self->_manager) _remoteState] + 8) = 1;
  v14 = self->_uuid;
  *([objc_loadWeak(&self->_manager) _remoteState] + 24) = v14;
  interfaceCopy = interface;
  *([objc_loadWeak(&self->_manager) _remoteState] + 16) = interfaceCopy;
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v16 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_loadWeak(&self->_manager);
    v19 = 134218242;
    Weak = v18;
    v21 = 2114;
    dCopy = d;
    _os_log_debug_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) has opened an in-process connection to a main undo manager as %{public}@", &v19, 0x16u);
  }

  return _undoActionInfo;
}

- (void)_connectForUUID:(id)d clearStacks:(BOOL)stacks lastActionDate:(id)date withReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  if (*([objc_loadWeak(&self->_manager) _remoteState] + 8) == 1)
  {
    __assert_rtn("[_NSUndoManagerAuxiliaryExportedObject _connectForUUID:clearStacks:lastActionDate:withReply:]", "NSUndoManager_Remote.m", 386, "!_manager._remoteState->aux.inProcessConnection");
  }

  self->_uuid = d;
  if ([objc_loadWeak(&self->_manager) canRedo])
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v11 = _MergedGlobals_115;
    if (!os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = 134217984;
    Weak = objc_loadWeak(&self->_manager);
    v12 = "NSUndoManager<%p> (aux) received a cross-process connection request from a main undo manager but items are present on the redo stack. The undo/redo stack will be cleared.";
    goto LABEL_14;
  }

  if (stacks || date && [date compare:{objc_msgSend(objc_loadWeak(&self->_manager), "_oldestUndoActionDate")}] != -1)
  {
    if (qword_1ED43FA20 != -1)
    {
      dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
    }

    v11 = _MergedGlobals_115;
    if (!os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = 134217984;
    Weak = objc_loadWeak(&self->_manager);
    v12 = "NSUndoManager<%p> (aux) received a cross-process connection request from a main undo manager whose undo actions cannot merge cleanly with the auxiliary undo actions. The undo/redo stack will be cleared.";
LABEL_14:
    _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, v12, &v16, 0xCu);
LABEL_15:
    [objc_loadWeak(&self->_manager) removeAllActions];
    _undoActionInfo = 0;
    goto LABEL_16;
  }

  _undoActionInfo = [objc_loadWeak(&self->_manager) _undoActionInfo];
  if (!_undoActionInfo)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  v14 = _MergedGlobals_115;
  if (os_log_type_enabled(_MergedGlobals_115, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_loadWeak(&self->_manager);
    v16 = 134218242;
    Weak = v15;
    v18 = 2114;
    dCopy = d;
    _os_log_debug_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEBUG, "NSUndoManager<%p> (aux) has opened a cross-process connection to a main undo manager as %{public}@", &v16, 0x16u);
  }

  (*(reply + 2))(reply, _undoActionInfo);
}

- (void)_inProcessInvalidate
{
  if ((*[objc_loadWeak(&self->_manager) _remoteState] & 1) == 0)
  {
    __assert_rtn("[_NSUndoManagerAuxiliaryExportedObject _inProcessInvalidate]", "NSUndoManager_Remote.m", 409, "_manager._remoteState->isAux");
  }

  if ((*([objc_loadWeak(&self->_manager) _remoteState] + 8) & 1) == 0)
  {
    __assert_rtn("[_NSUndoManagerAuxiliaryExportedObject _inProcessInvalidate]", "NSUndoManager_Remote.m", 410, "_manager._remoteState->aux.inProcessConnection");
  }

  *([objc_loadWeak(&self->_manager) _remoteState] + 16) = 0;
  *([objc_loadWeak(&self->_manager) _remoteState] + 24) = 0;
  *([objc_loadWeak(&self->_manager) _remoteState] + 8) = 0;
  *[objc_loadWeak(&self->_manager) _remoteState] = 0;
}

@end