@interface APEnablementController
+ (void)oneshotBeginFlowToSetEnablement:(unint64_t)a3 ofFeature:(unint64_t)a4 forSubject:(id)a5 completion:(id)a6;
- (APEnablementController)initWithSubject:(id)a3 forEnablement:(unint64_t)a4 ofFeature:(unint64_t)a5;
- (BOOL)_setNoLongerWaitingForService;
- (NSString)description;
- (void)_didCompleteWithError:(id)a3;
- (void)_handleServiceConnectionEvent:(id)a3;
- (void)beginFlow;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation APEnablementController

- (APEnablementController)initWithSubject:(id)a3 forEnablement:(unint64_t)a4 ofFeature:(unint64_t)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = APEnablementController;
  v10 = [(APEnablementController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_subject, a3);
    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v11->_observers;
    v11->_observers = v12;

    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_feature = a5;
    v11->_action = a4;
    alertHandle = v11->_alertHandle;
    v11->_alertHandle = 0;
  }

  return v11;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_1AEA18000, v3, OS_LOG_TYPE_DEFAULT, "destroying controller %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = APEnablementController;
  [(APEnablementController *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  subject = self->_subject;
  feature = self->_feature;
  if (feature >= 4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownFeature%lld", self->_feature];
  }

  else
  {
    v7 = off_1E7A41F28[feature];
  }

  v8 = [v3 stringWithFormat:@"<%@: %@, %@>", v4, subject, v7];

  return v8;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_didCompleteWithError:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    subject = self->_subject;
    feature = self->_feature;
    action = self->_action;
    *buf = 138413058;
    v22 = subject;
    v23 = 2048;
    v24 = feature;
    v25 = 2048;
    v26 = action;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "enablement controller for %@ feature %lld enablement %lld complete with error %@", buf, 0x2Au);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) enablementController:self didCompleteWithError:{v4, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setNoLongerWaitingForService
{
  os_unfair_lock_lock(&self->_lock);
  waitingForService = self->_waitingForService;
  self->_waitingForService = 0;
  os_unfair_lock_unlock(&self->_lock);
  return waitingForService;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "handle %@ activated for %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "handle %@ deactivated for %@", &v7, 0x16u);
  }

  [v4 invalidate];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v6;
    v19 = 2112;
    v20 = self;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1AEA18000, v8, OS_LOG_TYPE_DEFAULT, "handle %@ invalidated for %@: %@", buf, 0x20u);
  }

  if ([(APEnablementController *)self _setNoLongerWaitingForService])
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A278];
    v16 = @"remote alert for enablement flow invalidated before completion";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [v9 errorWithDomain:v10 code:4 userInfo:v11];

    [(APEnablementController *)self _didCompleteWithError:v12];
  }

  xpc_connection_cancel(self->_listenerConnection);
  xpc_connection_set_event_handler(self->_listenerConnection, &__block_literal_global);
  serviceConnection = self->_serviceConnection;
  if (serviceConnection)
  {
    xpc_connection_cancel(serviceConnection);
    xpc_connection_set_event_handler(self->_serviceConnection, &__block_literal_global_11);
  }

  [(SBSRemoteAlertHandle *)self->_alertHandle unregisterObserver:self];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleServiceConnectionEvent:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "handle service connection event: %@", &v10, 0xCu);
  }

  if ([(APEnablementController *)self _setNoLongerWaitingForService])
  {
    serviceConnection = self->_serviceConnection;
    reply = xpc_dictionary_create_reply(v4);
    xpc_connection_send_message(serviceConnection, reply);

    [(APEnablementController *)self _didCompleteWithError:0];
    v8 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AEA18000, v8, OS_LOG_TYPE_DEFAULT, "waiting for service and service is done; invalidating handle", &v10, 2u);
    }

    [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginFlow
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_1AEA18000, v1, v2, "bogus enablement action %lld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __35__APEnablementController_beginFlow__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = MEMORY[0x1B270BFC0]();
  if (v5 != MEMORY[0x1E69E9E68])
  {
    v6 = v5;
    if (v5 == MEMORY[0x1E69E9E98])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
      v7 = APUIDefaultFrameworkLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        name = string;
        v8 = "got error on listener error: %s";
        goto LABEL_10;
      }
    }

    else
    {
      v7 = APUIDefaultFrameworkLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        name = xpc_type_get_name(v6);
        v8 = "got unknown object of type %s";
LABEL_10:
        _os_log_impl(&dword_1AEA18000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  v9 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AEA18000, v9, OS_LOG_TYPE_DEFAULT, "got connection from service", buf, 2u);
  }

  objc_storeStrong((*(a1 + 32) + 72), a2);
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __35__APEnablementController_beginFlow__block_invoke_14;
  handler[3] = &unk_1E7A41E48;
  handler[4] = v10;
  xpc_connection_set_event_handler(v11, handler);
  xpc_connection_resume(*(*(a1 + 32) + 72));
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

void __35__APEnablementController_beginFlow__block_invoke_35(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = APUIDefaultFrameworkLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v7)
    {
      __35__APEnablementController_beginFlow__block_invoke_35_cold_2(a1);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__APEnablementController_beginFlow__block_invoke_36;
    aBlock[3] = &unk_1E7A41E70;
    aBlock[4] = *(a1 + 32);
    v8 = _Block_copy(aBlock);
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy_;
    v17[4] = __Block_byref_object_dispose_;
    v18 = 0;
    v9 = *(*(a1 + 32) + 32);
    if (v9 == 3)
    {
      v10 = [MEMORY[0x1E698B0E8] sharedManager];
      v11 = *(a1 + 32);
      v12 = *(v11 + 8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __35__APEnablementController_beginFlow__block_invoke_38;
      v14[3] = &unk_1E7A41EC0;
      v16 = v17;
      v14[4] = v11;
      v15 = v8;
      [v10 setSubject:v12 isLocked:0 completion:v14];

      v9 = *(*(a1 + 32) + 32);
    }

    if (v9 == 1)
    {
      v13 = [MEMORY[0x1E698B0E8] sharedManager];
      [v13 setSubject:*(*(a1 + 32) + 8) isLocked:0 completion:v8];
    }

    else
    {
      v13 = [MEMORY[0x1E698B0E8] sharedManager];
      [v13 setSubject:*(*(a1 + 32) + 8) isHidden:0 completion:v8];
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    if (v7)
    {
      __35__APEnablementController_beginFlow__block_invoke_35_cold_1(a1);
    }

    [*(a1 + 32) _didCompleteWithError:v5];
  }
}

void __35__APEnablementController_beginFlow__block_invoke_36(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __35__APEnablementController_beginFlow__block_invoke_36_cold_1(a1);
    }
  }

  [*(a1 + 32) _didCompleteWithError:v5];
}

void __35__APEnablementController_beginFlow__block_invoke_38(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  v7 = [MEMORY[0x1E698B0E8] sharedManager];
  v8 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__APEnablementController_beginFlow__block_invoke_2;
  v11[3] = &unk_1E7A41E98;
  v14 = a2;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  [v7 setSubject:v8 isHidden:0 completion:v11];
}

void __35__APEnablementController_beginFlow__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  if (a2 & 1) != 0 || (*(a1 + 48))
  {
    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

+ (void)oneshotBeginFlowToSetEnablement:(unint64_t)a3 ofFeature:(unint64_t)a4 forSubject:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v12 = [[APEnablementController alloc] initWithSubject:v10 forEnablement:a3 ofFeature:a4];

  v11 = [[APOneshotObserverAdapter alloc] initWithController:v12 completionHandler:v9];
  [(APOneshotObserverAdapter *)v11 kickoff];
}

void __35__APEnablementController_beginFlow__block_invoke_35_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __35__APEnablementController_beginFlow__block_invoke_35_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1AEA18000, v1, OS_LOG_TYPE_ERROR, "authenticated, now disabling feature %lld for %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __35__APEnablementController_beginFlow__block_invoke_36_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

@end