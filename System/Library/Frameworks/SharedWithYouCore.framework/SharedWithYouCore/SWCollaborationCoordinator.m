@interface SWCollaborationCoordinator
+ (SWCollaborationCoordinator)sharedCoordinator;
- (SWCollaborationCoordinator)init;
- (id)actionHandler;
- (void)_cacheAction:(id)a3;
- (void)_sendActionToApp:(id)a3;
- (void)_sendStartCollaborationAction:(id)a3;
- (void)_sendUndeliveredActionsIfNecessary;
- (void)_sendUpdateCollaborationParticipantsAction:(id)a3;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)processIncomingAction:(id)a3;
- (void)processIncomingActions:(id)a3;
- (void)setActionHandler:(id)actionHandler;
- (void)setApplicationIsReadyForActions:(BOOL)a3;
@end

@implementation SWCollaborationCoordinator

+ (SWCollaborationCoordinator)sharedCoordinator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SWCollaborationCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v5 = [MEMORY[0x1E695DF70] array];
    cachedUUIDs = v2->_cachedUUIDs;
    v2->_cachedUUIDs = v5;

    v2->_applicationIsReadyForActions = 0;
  }

  return v2;
}

- (void)_sendUndeliveredActionsIfNecessary
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(SWCollaborationCoordinator *)self actionHandler];
  if (v3)
  {
    v4 = v3;
    v5 = [(SWCollaborationCoordinator *)self cachedUUIDs];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(SWCollaborationCoordinator *)self applicationIsReadyForActions];
      v8 = SWFrameworkLogHandle();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          v10 = [(SWCollaborationCoordinator *)self cachedUUIDs];
          *buf = 136315394;
          v27 = "[SWCollaborationCoordinator _sendUndeliveredActionsIfNecessary]";
          v28 = 2048;
          v29 = [v10 count];
          _os_log_impl(&dword_1D2C1D000, v8, OS_LOG_TYPE_DEFAULT, "%s: We have %lu undelivered actions, and an action handler. Sending them now.", buf, 0x16u);
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [(SWCollaborationCoordinator *)self cachedUUIDs];
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v21 + 1) + 8 * v15);
              v17 = [(SWCollaborationCoordinator *)self actionCache];
              v18 = [v17 objectForKey:v16];

              v19 = [(SWCollaborationCoordinator *)self actionCache];
              [v19 removeObjectForKey:v16];

              if (v18)
              {
                [(SWCollaborationCoordinator *)self _sendActionToApp:v18];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }

        v8 = [MEMORY[0x1E695DF70] array];
        [(SWCollaborationCoordinator *)self setCachedUUIDs:v8];
      }

      else if (v9)
      {
        *buf = 136315138;
        v27 = "[SWCollaborationCoordinator _sendUndeliveredActionsIfNecessary]";
        _os_log_impl(&dword_1D2C1D000, v8, OS_LOG_TYPE_DEFAULT, "%s: We have undelivered actions, and an action handler, but applicationIsReadyForActions=NO so the app must not have yet finished launching.", buf, 0xCu);
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

- (void)processIncomingActions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [(SWCollaborationCoordinator *)self processIncomingAction:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)processIncomingAction:(id)a3
{
  v5 = a3;
  v4 = [(SWCollaborationCoordinator *)self actionHandler];

  if (v4)
  {
    [(SWCollaborationCoordinator *)self _sendActionToApp:v5];
  }

  else
  {
    [(SWCollaborationCoordinator *)self _cacheAction:v5];
  }
}

- (void)setApplicationIsReadyForActions:(BOOL)a3
{
  if (self->_applicationIsReadyForActions != a3)
  {
    self->_applicationIsReadyForActions = a3;
    [(SWCollaborationCoordinator *)self _sendUndeliveredActionsIfNecessary];
  }
}

- (void)_sendActionToApp:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SWCollaborationCoordinator *)self _sendStartCollaborationAction:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SWCollaborationCoordinator *)self _sendUpdateCollaborationParticipantsAction:v4];
    }
  }
}

- (void)_sendStartCollaborationAction:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D2C1D000, v7, OS_LOG_TYPE_DEFAULT, "_sendStartCollaborationAction: invoking the action handler", v10, 2u);
    }

    v8 = [(SWCollaborationCoordinator *)self actionHandler];
    [v8 collaborationCoordinator:self handleStartCollaborationAction:v4];
LABEL_8:

    goto LABEL_9;
  }

  v9 = [(SWCollaborationCoordinator *)self actionHandler];

  if (v9)
  {
    v8 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SWCollaborationCoordinator _sendStartCollaborationAction:v4];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_sendUpdateCollaborationParticipantsAction:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationCoordinator *)self actionHandler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__SWCollaborationCoordinator__sendUpdateCollaborationParticipantsAction___block_invoke;
    v9[3] = &unk_1E84126A0;
    v9[4] = self;
    v10 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    v7 = [(SWCollaborationCoordinator *)self actionHandler];

    if (v7)
    {
      v8 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SWCollaborationCoordinator _sendUpdateCollaborationParticipantsAction:v4];
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

- (void)_cacheAction:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v12 = 136315650;
    v13 = "[SWCollaborationCoordinator _cacheAction:]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1D2C1D000, v5, OS_LOG_TYPE_DEFAULT, "[%s] action: %@ uuid: %@", &v12, 0x20u);
  }

  v7 = [(SWCollaborationCoordinator *)self actionCache];
  v8 = [v4 uuid];
  [v7 setObject:v4 forKey:v8];

  v9 = [(SWCollaborationCoordinator *)self cachedUUIDs];
  v10 = [v4 uuid];
  [v9 addObject:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(SWCollaborationCoordinator *)self actionCache];

  if (v8 != v7)
  {
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v6;
    v10 = [(SWCollaborationCoordinator *)self cachedUUIDs];
    v11 = [v8 uuid];
    [v10 removeObject:v11];

    v12 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 uuid];
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v13;
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