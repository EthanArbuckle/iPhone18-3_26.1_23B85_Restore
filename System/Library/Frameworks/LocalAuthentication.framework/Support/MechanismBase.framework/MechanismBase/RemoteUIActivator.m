@interface RemoteUIActivator
- (BOOL)_activateUserInterface:(id)a3 withParams:(id)a4;
- (BOOL)activateUIWithParams:(id)a3;
- (RemoteUIActivator)init;
- (RemoteUIActivatorDelegate)delegate;
- (id)_createInterface;
- (id)_prepareUIListener;
- (id)_workQueue;
- (void)_processParams:(id)a3 interface:(id)a4;
@end

@implementation RemoteUIActivator

- (RemoteUIActivator)init
{
  v9.receiver = self;
  v9.super_class = RemoteUIActivator;
  v2 = [(RemoteUIActivator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_activeObjectsLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    activeInterfaces = v3->_activeInterfaces;
    v3->_activeInterfaces = v4;

    v6 = objc_opt_new();
    activeListeners = v3->_activeListeners;
    v3->_activeListeners = v6;
  }

  return v3;
}

- (BOOL)activateUIWithParams:(id)a3
{
  v4 = a3;
  v5 = [(RemoteUIActivator *)self _createInterface];
  if (v5)
  {
    v6 = [(RemoteUIActivator *)self _activateUserInterface:v5 withParams:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createInterface
{
  v3 = objc_alloc(MEMORY[0x277D23FE8]);
  v4 = [(RemoteUIActivator *)self _workQueue];
  v5 = [v3 initWithReplyQueue:v4];

  v6 = objc_alloc(MEMORY[0x277D24108]);
  v7 = [(RemoteUIActivator *)self _workQueue];
  v8 = [v6 initWithConnectionProvider:v5 replyQueue:v7];

  return v8;
}

- (BOOL)_activateUserInterface:(id)a3 withParams:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_activeInterfaces copy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMapTable *)self->_activeInterfaces objectForKey:*(*(&v28 + 1) + 8 * v13)];
        [v14 terminateWithReason:@"Cancelled by a new connection"];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v15 = [(NSMapTable *)self->_activeListeners copy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(NSMapTable *)self->_activeListeners objectForKey:*(*(&v24 + 1) + 8 * v20), v24];
        [v21 invalidate];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  os_unfair_lock_lock(&self->_activeObjectsLock);
  [(NSMapTable *)self->_activeInterfaces removeAllObjects];
  [(NSMapTable *)self->_activeListeners removeAllObjects];
  os_unfair_lock_unlock(&self->_activeObjectsLock);
  [(RemoteUIActivator *)self _processParams:v7 interface:v6];

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_processParams:(id)a3 interface:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D24110]);
  v9 = [v6 evaluationRequest];
  v10 = [v8 initWithIdentifier:4 evaluationRequest:v9];

  v11 = [(RemoteUIActivator *)self _prepareUIListener];
  v12 = [v11 endpoint];
  [v10 setConnectionEndpoint:v12];

  activeInterfaces = self->_activeInterfaces;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "evaluationRequestIdentifier")}];
  [(NSMapTable *)activeInterfaces setObject:v7 forKey:v14];

  activeListeners = self->_activeListeners;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "evaluationRequestIdentifier")}];
  [(NSMapTable *)activeListeners setObject:v11 forKey:v16];

  v17 = LACLogUI();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v7;
    v28 = 1024;
    v29 = [v10 evaluationRequestIdentifier];
    _os_log_impl(&dword_238B95000, v17, OS_LOG_TYPE_DEFAULT, "Activator registered interface: %@ for rid: %d", buf, 0x12u);
  }

  v18 = [v6 notificationCenter];
  [v18 postNotificationUIDidAppear];

  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__RemoteUIActivator__processParams_interface___block_invoke;
  v22[3] = &unk_278A62E60;
  v19 = v10;
  v23 = v19;
  objc_copyWeak(&v25, buf);
  v20 = v6;
  v24 = v20;
  [v7 processRequest:v19 completion:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

void __46__RemoteUIActivator__processParams_interface___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogUI();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__RemoteUIActivator__processParams_interface___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1[4] evaluationRequestIdentifier];
    v19[0] = 67109120;
    v19[1] = v6;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "RemoteUI completed rid: %d", v19, 8u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = -[os_unfair_lock_s hasInvalidatedUIForRequest:](WeakRetained, "hasInvalidatedUIForRequest:", [a1[4] evaluationRequestIdentifier]);
    os_unfair_lock_lock(WeakRetained + 2);
    v9 = *&WeakRetained[4]._os_unfair_lock_opaque;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1[4], "evaluationRequestIdentifier")}];
    [v9 removeObjectForKey:v10];

    v11 = *&WeakRetained[6]._os_unfair_lock_opaque;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1[4], "evaluationRequestIdentifier")}];
    [v11 removeObjectForKey:v12];

    os_unfair_lock_unlock(WeakRetained + 2);
    if (!v3)
    {
      v16 = [(os_unfair_lock_s *)WeakRetained delegate];
      v17 = [a1[5] identifier];
      [v16 didSuccessfullyFinishForRequestIdentifier:v17];

LABEL_13:
      goto LABEL_14;
    }

    if ((v8 & 1) == 0)
    {
      v13 = [v3 domain];
      v14 = [v13 isEqualToString:*MEMORY[0x277D23EB0]];

      v15 = [(os_unfair_lock_s *)WeakRetained delegate];
      v16 = v15;
      if (v14)
      {
        [v15 didReceiveExpectedError:v3];
      }

      else
      {
        [v15 didReceiveUnexpectedError:v3];
      }

      goto LABEL_13;
    }
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_prepareUIListener
{
  v2 = [(RemoteUIActivator *)self delegate];
  v3 = [v2 anonymousListener];

  return v3;
}

- (id)_workQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v4 workQueue];
  }

  else
  {
    v5 = [MEMORY[0x277D24028] daemonQueue];
  }

  return v5;
}

- (RemoteUIActivatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __80__RemoteUIActivator_Legacy__dispatchRemoteAlertHandle_activationContext_params___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _suspendActivationQueue];
  [WeakRetained _postNotificationsAndActivateRemoteAlertHandle:*(a1 + 32) activationContext:*(a1 + 40) params:*(a1 + 48)];
}

void __51__RemoteUIActivator_Legacy__suspendActivationQueue__block_invoke(uint64_t a1)
{
  v2 = LALogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__RemoteUIActivator_Legacy__suspendActivationQueue__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeActivationQueue];
}

void __60__RemoteUIActivator_Legacy__activateFrontBoardUIWithParams___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = LALogForCategory();
  v7 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (!a2 || v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_238B95000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Application launch failed with error: %@", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained didReceiveUnexpectedError:v5];
  }

  else if (v7)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_238B95000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Application launch succeeded", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __46__RemoteUIActivator__processParams_interface___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) evaluationRequestIdentifier];
  v7[0] = 67109378;
  v7[1] = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_238B95000, a3, OS_LOG_TYPE_ERROR, "Activator completed rid: %d with error: %@", v7, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

@end