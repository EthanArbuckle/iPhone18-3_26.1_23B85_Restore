@interface SWCollaborationCoordinator
+ (SWCollaborationCoordinator)sharedCoordinator;
- (SWCollaborationCoordinator)init;
- (id)actionHandler;
- (void)_cacheAction:(id)action;
- (void)_sendActionToApp:(id)app;
- (void)_sendStartCollaborationAction:(id)action;
- (void)_sendUndeliveredActionsIfNecessary;
- (void)_sendUpdateCollaborationParticipantsAction:(id)action;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)processIncomingAction:(id)action;
- (void)processIncomingActions:(id)actions;
- (void)setActionHandler:(id)actionHandler;
- (void)setApplicationIsReadyForActions:(BOOL)actions;
@end

@implementation SWCollaborationCoordinator

+ (SWCollaborationCoordinator)sharedCoordinator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SWCollaborationCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCoordinator_onceToken != -1)
  {
    dispatch_once(&sharedCoordinator_onceToken, block);
  }

  v2 = sharedCoordinator_shared;

  return v2;
}

uint64_t __47__SWCollaborationCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  sharedCoordinator_shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (SWCollaborationCoordinator)init
{
  v8.receiver = self;
  v8.super_class = SWCollaborationCoordinator;
  v2 = [(SWCollaborationCoordinator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    actionCache = v2->_actionCache;
    v2->_actionCache = v3;

    [(NSCache *)v2->_actionCache setCountLimit:10];
    [(NSCache *)v2->_actionCache setDelegate:v2];
    array = [MEMORY[0x1E695DF70] array];
    cachedUUIDs = v2->_cachedUUIDs;
    v2->_cachedUUIDs = array;

    v2->_applicationIsReadyForActions = 0;
  }

  return v2;
}

- (void)_sendUndeliveredActionsIfNecessary
{
  v30 = *MEMORY[0x1E69E9840];
  actionHandler = [(SWCollaborationCoordinator *)self actionHandler];
  if (actionHandler)
  {
    v4 = actionHandler;
    cachedUUIDs = [(SWCollaborationCoordinator *)self cachedUUIDs];
    v6 = [cachedUUIDs count];

    if (v6)
    {
      applicationIsReadyForActions = [(SWCollaborationCoordinator *)self applicationIsReadyForActions];
      array = SWFrameworkLogHandle();
      v9 = os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT);
      if (applicationIsReadyForActions)
      {
        if (v9)
        {
          cachedUUIDs2 = [(SWCollaborationCoordinator *)self cachedUUIDs];
          *buf = 136315394;
          v27 = "[SWCollaborationCoordinator _sendUndeliveredActionsIfNecessary]";
          v28 = 2048;
          v29 = [cachedUUIDs2 count];
          _os_log_impl(&dword_1D2C1D000, array, OS_LOG_TYPE_DEFAULT, "%s: We have %lu undelivered actions, and an action handler. Sending them now.", buf, 0x16u);
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        cachedUUIDs3 = [(SWCollaborationCoordinator *)self cachedUUIDs];
        v12 = [cachedUUIDs3 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            v15 = 0;
            do
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(cachedUUIDs3);
              }

              v16 = *(*(&v21 + 1) + 8 * v15);
              actionCache = [(SWCollaborationCoordinator *)self actionCache];
              v18 = [actionCache objectForKey:v16];

              actionCache2 = [(SWCollaborationCoordinator *)self actionCache];
              [actionCache2 removeObjectForKey:v16];

              if (v18)
              {
                [(SWCollaborationCoordinator *)self _sendActionToApp:v18];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [cachedUUIDs3 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }

        array = [MEMORY[0x1E695DF70] array];
        [(SWCollaborationCoordinator *)self setCachedUUIDs:array];
      }

      else if (v9)
      {
        *buf = 136315138;
        v27 = "[SWCollaborationCoordinator _sendUndeliveredActionsIfNecessary]";
        _os_log_impl(&dword_1D2C1D000, array, OS_LOG_TYPE_DEFAULT, "%s: We have undelivered actions, and an action handler, but applicationIsReadyForActions=NO so the app must not have yet finished launching.", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

- (void)setActionHandler:(id)actionHandler
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = actionHandler;
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  if (WeakRetained != v4)
  {
    v6 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[SWCollaborationCoordinator setActionHandler:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1D2C1D000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
    }

    objc_storeWeak(&self->_actionHandler, v4);
    [(SWCollaborationCoordinator *)self _sendUndeliveredActionsIfNecessary];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)processIncomingActions:(id)actions
{
  v15 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        [(SWCollaborationCoordinator *)self processIncomingAction:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)processIncomingAction:(id)action
{
  actionCopy = action;
  actionHandler = [(SWCollaborationCoordinator *)self actionHandler];

  if (actionHandler)
  {
    [(SWCollaborationCoordinator *)self _sendActionToApp:actionCopy];
  }

  else
  {
    [(SWCollaborationCoordinator *)self _cacheAction:actionCopy];
  }
}

- (void)setApplicationIsReadyForActions:(BOOL)actions
{
  if (self->_applicationIsReadyForActions != actions)
  {
    self->_applicationIsReadyForActions = actions;
    [(SWCollaborationCoordinator *)self _sendUndeliveredActionsIfNecessary];
  }
}

- (void)_sendActionToApp:(id)app
{
  appCopy = app;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SWCollaborationCoordinator *)self _sendStartCollaborationAction:appCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SWCollaborationCoordinator *)self _sendUpdateCollaborationParticipantsAction:appCopy];
    }
  }
}

- (void)_sendStartCollaborationAction:(id)action
{
  actionCopy = action;
  actionHandler = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D2C1D000, v7, OS_LOG_TYPE_DEFAULT, "_sendStartCollaborationAction: invoking the action handler", v10, 2u);
    }

    actionHandler2 = [(SWCollaborationCoordinator *)self actionHandler];
    [actionHandler2 collaborationCoordinator:self handleStartCollaborationAction:actionCopy];
LABEL_8:

    goto LABEL_9;
  }

  actionHandler3 = [(SWCollaborationCoordinator *)self actionHandler];

  if (actionHandler3)
  {
    actionHandler2 = SWFrameworkLogHandle();
    if (os_log_type_enabled(actionHandler2, OS_LOG_TYPE_ERROR))
    {
      [SWCollaborationCoordinator _sendStartCollaborationAction:actionCopy];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_sendUpdateCollaborationParticipantsAction:(id)action
{
  actionCopy = action;
  actionHandler = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__SWCollaborationCoordinator__sendUpdateCollaborationParticipantsAction___block_invoke;
    v9[3] = &unk_1E84126A0;
    v9[4] = self;
    v10 = actionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    actionHandler2 = [(SWCollaborationCoordinator *)self actionHandler];

    if (actionHandler2)
    {
      v8 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SWCollaborationCoordinator _sendUpdateCollaborationParticipantsAction:actionCopy];
      }
    }
  }
}

void __73__SWCollaborationCoordinator__sendUpdateCollaborationParticipantsAction___block_invoke(uint64_t a1)
{
  v2 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D2C1D000, v2, OS_LOG_TYPE_DEFAULT, "_sendUpdateCollaborationParticipantsAction: invoking the action handler", v4, 2u);
  }

  v3 = [*(a1 + 32) actionHandler];
  [v3 collaborationCoordinator:*(a1 + 32) handleUpdateCollaborationParticipantsAction:*(a1 + 40)];
}

- (void)_cacheAction:(id)action
{
  v18 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [actionCopy uuid];
    v12 = 136315650;
    v13 = "[SWCollaborationCoordinator _cacheAction:]";
    v14 = 2112;
    v15 = actionCopy;
    v16 = 2112;
    v17 = uuid;
    _os_log_impl(&dword_1D2C1D000, v5, OS_LOG_TYPE_DEFAULT, "[%s] action: %@ uuid: %@", &v12, 0x20u);
  }

  actionCache = [(SWCollaborationCoordinator *)self actionCache];
  uuid2 = [actionCopy uuid];
  [actionCache setObject:actionCopy forKey:uuid2];

  cachedUUIDs = [(SWCollaborationCoordinator *)self cachedUUIDs];
  uuid3 = [actionCopy uuid];
  [cachedUUIDs addObject:uuid3];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  cacheCopy = cache;
  actionCache = [(SWCollaborationCoordinator *)self actionCache];

  if (actionCache != cacheCopy)
  {
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    actionCache = objectCopy;
    cachedUUIDs = [(SWCollaborationCoordinator *)self cachedUUIDs];
    uuid = [actionCache uuid];
    [cachedUUIDs removeObject:uuid];

    v12 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [actionCache uuid];
      v15 = 138412546;
      v16 = actionCache;
      v17 = 2112;
      v18 = uuid2;
      _os_log_impl(&dword_1D2C1D000, v12, OS_LOG_TYPE_DEFAULT, "We're evicting a cached action not yet sent to app, which means this action will be dropped. action: %@ uuid: %@", &v15, 0x16u);
    }

    goto LABEL_6;
  }

LABEL_7:

  v14 = *MEMORY[0x1E69E9840];
}

void __74___SWCollaborationCoordinator__sendUpdateCollaborationParticipantsAction___block_invoke(uint64_t a1)
{
  v2 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D2C1D000, v2, OS_LOG_TYPE_DEFAULT, "_sendUpdateCollaborationParticipantsAction: invoking the action handler", v4, 2u);
  }

  v3 = [*(a1 + 32) actionHandler];
  [v3 handleUpdateCollaborationParticipantsAction:*(a1 + 40)];
}

- (void)_sendStartCollaborationAction:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 uuid];
  OUTLINED_FUNCTION_0_0(&dword_1D2C1D000, v2, v3, "SWCollaborationCoordinator's actionHandler doesn't implement handleStartCollaborationAction. Dropping action: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_sendUpdateCollaborationParticipantsAction:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 uuid];
  OUTLINED_FUNCTION_0_0(&dword_1D2C1D000, v2, v3, "SWCollaborationCoordinator's actionHandler doesn't implement handleUpdateCollaborationParticipantsAction. Dropping action: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end