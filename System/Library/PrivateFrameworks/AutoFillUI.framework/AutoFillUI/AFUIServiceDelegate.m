@interface AFUIServiceDelegate
- (AFUIServiceDelegate)init;
- (BOOL)_checkAndSendQueuedTextOperationsIfNecessary:(id)a3;
- (BOOL)_shouldAutomaticallyDisplayPanelForDocumentTraits:(id)a3;
- (BOOL)_shouldDisplayPanelForSession:(id)a3 documentTraits:(id)a4;
- (id)_inputIdentifierForSession:(id)a3;
- (id)_sessionForUUID:(id)a3;
- (void)_displayPanelForSession:(id)a3 traits:(id)a4;
- (void)_performBlockOnInternalQueueForUUID:(id)a3 block:(id)a4;
- (void)_scheduleExpirationOfQueuedOperations:(id)a3;
- (void)_sendOrQueueTextOperations:(id)a3 session:(id)a4 withInputIdentifier:(id)a5;
- (void)_sendTextOperations:(id)a3 toSession:(id)a4 completionHandler:(id)a5;
- (void)_tearDownPanelForSessionUUID:(id)a3;
- (void)_tearDownPanelsExceptForSessionUUID:(id)a3;
- (void)authenticationDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)authenticationWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)contactsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)contactsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)creditCardsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)creditCardsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)inputSystemService:(id)a3 inputSession:(id)a4 documentStateDidChange:(id)a5;
- (void)inputSystemService:(id)a3 inputSession:(id)a4 performInputOperation:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDidBegin:(id)a4 options:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDidDie:(id)a4;
- (void)inputSystemService:(id)a3 inputSessionDidEnd:(id)a4 options:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDidPause:(id)a4 withReason:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDidUnpause:(id)a4 withReason:(id)a5;
- (void)passwordsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)passwordsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)setIsMenuPresented:(BOOL)a3 forSessionUUID:(id)a4;
@end

@implementation AFUIServiceDelegate

- (AFUIServiceDelegate)init
{
  v10.receiver = self;
  v10.super_class = AFUIServiceDelegate;
  v2 = [(AFUIServiceDelegate *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    sessionPanels = v2->_sessionPanels;
    v2->_sessionPanels = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentSessions = v2->_currentSessions;
    v2->_currentSessions = v7;
  }

  return v2;
}

- (void)_tearDownPanelForSessionUUID:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_sessionPanels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AFUIServiceDelegate__tearDownPanelForSessionUUID___block_invoke;
    block[3] = &unk_1E84247B0;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(NSMutableDictionary *)self->_sessionPanels removeObjectForKey:v4];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)_tearDownPanelsExceptForSessionUUID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  [(NSLock *)self->_lock lock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_sessionPanels;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if (([v11 isEqual:v4] & 1) == 0)
        {
          v12 = [(NSMutableDictionary *)self->_sessionPanels objectForKeyedSubscript:v11];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __59__AFUIServiceDelegate__tearDownPanelsExceptForSessionUUID___block_invoke;
          block[3] = &unk_1E84247B0;
          v25 = v12;
          v13 = v12;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableDictionary *)self->_sessionPanels removeObjectForKey:*(*(&v20 + 1) + 8 * j), v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v16);
  }

  [(NSLock *)self->_lock unlock];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_displayPanelForSession:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [v6 documentTraits];
  }

  v8 = [(AFUIServiceDelegate *)self _shouldDisplayPanelForSession:v6 documentTraits:v7];
  v9 = [v6 uuid];
  if (v8)
  {
    v10 = -[AFUIServiceDelegate _setupPanelForSessionUUID:documentPid:](self, "_setupPanelForSessionUUID:documentPid:", v9, [v7 processId]);

    v11 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:v6];
    v12 = [v6 internalQueue];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke;
    v16[3] = &unk_1E8424BB0;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    v19 = v7;
    v20 = v6;
    v13 = v10;
    v14 = v11;
    objc_copyWeak(&v22, &location);
    v21 = v12;
    v15 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v16);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:v9];
  }
}

void __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_8];

  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) documentState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_3;
  v6[3] = &unk_1E8424B88;
  objc_copyWeak(&v11, (a1 + 80));
  v7 = *(a1 + 72);
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v3 displayForDocumentTraits:v4 documentState:v5 textOperationsHandler:v6];

  objc_destroyWeak(&v11);
}

void __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_4;
    block[3] = &unk_1E8424B60;
    block[4] = WeakRetained;
    v9 = v3;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_5;
  v6[3] = &unk_1E84247B0;
  v7 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)_shouldDisplayPanelForSession:(id)a3 documentTraits:(id)a4
{
  v4 = a4;
  if (([v4 _isExplicitAutoFillInvocation] & 1) == 0)
  {
    v6 = [v4 bundleId];
    if (v6)
    {
      if (isAutoFillPanelAlwaysBlockedForBundleID_onceToken != -1)
      {
        [AFUIServiceDelegate _shouldDisplayPanelForSession:documentTraits:];
      }

      if ([isAutoFillPanelAlwaysBlockedForBundleID_blockedBundleIDs containsObject:v6])
      {
        v5 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v7 = isAutoFillPanelAlwaysAllowedForBundleID_onceToken;
      v8 = v6;
      if (v7 != -1)
      {
        [AFUIServiceDelegate _shouldDisplayPanelForSession:documentTraits:];
      }

      v9 = [isAutoFillPanelAlwaysAllowedForBundleID_allowedBundleIDs containsObject:v8];

      if (v9)
      {
        v5 = 1;
        goto LABEL_13;
      }
    }

    v10 = [MEMORY[0x1E69DC938] currentDevice];
    [v10 userInterfaceIdiom];

    v5 = _os_feature_enabled_impl();
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (BOOL)_shouldAutomaticallyDisplayPanelForDocumentTraits:(id)a3
{
  v3 = a3;
  if ([v3 autofillMode] && (objc_msgSend(v3, "_isExplicitAutoFillInvocation") & 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    [v5 userInterfaceIdiom];

    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_scheduleExpirationOfQueuedOperations:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 20000000000);
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke;
  block[3] = &unk_1E8424BD8;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_after(v5, v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] lock];
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = [v3[2] objectForKey:v5];

    if (v6)
    {
      v7 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke_cold_1(v4);
      }

      [v3[2] removeObjectForKey:*v4];
    }

    [v3[4] unlock];
  }
}

- (void)_sendOrQueueTextOperations:(id)a3 session:(id)a4 withInputIdentifier:(id)a5
{
  v16 = a4;
  lock = self->_lock;
  v8 = a3;
  [(NSLock *)lock lock];
  v9 = [(AFUIServiceDelegate *)self currentSessions];
  v10 = [v9 containsObject:v16];

  [(NSLock *)self->_lock unlock];
  v11 = [v16 documentTraits];
  v12 = [v11 appId];
  v13 = [v12 copy];

  v14 = [v16 documentTraits];
  v15 = [v14 processId];

  if (v10)
  {
    [(AFUIServiceDelegate *)self _sendTextOperations:v8 toSession:v16 completionHandler:0];
  }

  else
  {
    [(AFUIServiceDelegate *)self _queueTextOperations:v8 forSecureAppID:v13 processID:v15 completionHandler:0];
  }
}

- (id)_inputIdentifierForSession:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 documentTraits], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 documentTraits];
    v7 = [v6 contextID];

    if (v7)
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [v4 documentTraits];
      v10 = [v9 processId];
      v11 = [v4 documentTraits];
      v12 = [v11 contextID] ^ v10;
      v13 = [v4 documentTraits];
      v14 = [v13 bundleId];
      v15 = [v8 numberWithUnsignedInteger:{objc_msgSend(v14, "hash") ^ v12}];
    }

    else
    {
      v18 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AFUIServiceDelegate _inputIdentifierForSession:v4];
      }

      v19 = MEMORY[0x1E696AD98];
      v20 = [v4 documentTraits];
      v21 = [v20 processId];
      v22 = [v4 documentTraits];
      v23 = [v22 bundleId];
      v15 = [v19 numberWithUnsignedInteger:{objc_msgSend(v23, "hash") ^ v21}];
    }
  }

  else
  {
    v16 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AFUIServiceDelegate _inputIdentifierForSession:v4];
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)_checkAndSendQueuedTextOperationsIfNecessary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 documentTraits];
  v6 = [v5 appId];

  v7 = [v4 documentTraits];
  v8 = [v7 processId];

  v9 = 0;
  if ([v6 length] && v8)
  {
    [(NSLock *)self->_lock lock];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__1;
    v33 = __Block_byref_object_dispose__1;
    v34 = 0;
    queuedOperations = self->_queuedOperations;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke;
    v25[3] = &unk_1E8424C00;
    v11 = v6;
    v28 = v8;
    v26 = v11;
    v27 = &v29;
    [(NSMutableDictionary *)queuedOperations enumerateKeysAndObjectsUsingBlock:v25];
    if (v30[5])
    {
      v12 = [(NSMutableDictionary *)self->_queuedOperations objectForKey:?];
      [(NSMutableDictionary *)self->_queuedOperations removeObjectForKey:v30[5]];
    }

    else
    {
      v12 = 0;
    }

    [(NSLock *)self->_lock unlock];
    v13 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [v12 textOperations];
      v21 = [v4 uuid];
      v22 = v21;
      v23 = @"found";
      if (!v20)
      {
        v23 = @"not found";
      }

      v24 = [v19 stringWithFormat:@"%s textOperations %@ for session uuid %@ (appId: %@)", "-[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:]", v23, v21, v11];
      *buf = 138412290;
      v36 = v24;
      _os_log_debug_impl(&dword_1D2F0D000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v14 = [v12 textOperations];

    v9 = v14 != 0;
    if (v14)
    {
      v15 = [v12 textOperations];
      v16 = [v12 completionHandler];
      [(AFUIServiceDelegate *)self _sendTextOperations:v15 toSession:v4 completionHandler:v16];
    }

    _Block_object_dispose(&v29, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

void __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = [v9 secureAppID];
  if ([v10 isEqualToString:*(a1 + 32)])
  {
    v11 = [v9 processID];
    v12 = *(a1 + 48);

    if (v11 == v12)
    {
      v13 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke_cold_1();
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (void)_sendTextOperations:(id)a3 toSession:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:v9];
  v12 = v11;
  if (self->_trackedInputIdentifier)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && [v11 isEqualToValue:?])
  {
    trackedInputIdentifier = self->_trackedInputIdentifier;
    self->_trackedInputIdentifier = 0;
  }

  v15 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate _sendTextOperations:v9 toSession:v15 completionHandler:?];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AFUIServiceDelegate__sendTextOperations_toSession_completionHandler___block_invoke;
  block[3] = &unk_1E84245D0;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__AFUIServiceDelegate__sendTextOperations_toSession_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) textToAssert];
  v3 = [*(a1 + 32) textOperations];
  [v3 setTextToAssert:v2];

  v4 = [*(a1 + 40) keyboardOutput];
  v5 = [v4 insertionText];
  v6 = [*(a1 + 32) textOperations];
  v7 = [v6 keyboardOutput];
  [v7 setInsertionText:v5];

  v8 = [*(a1 + 40) customInfoType];
  v9 = [*(a1 + 32) textOperations];
  [v9 setCustomInfoType:v8];

  v10 = [*(a1 + 40) customInfo];
  v11 = [*(a1 + 32) textOperations];
  [v11 setCustomInfo:v10];

  v12 = [*(a1 + 40) keyboardOutput];
  v13 = [v12 customInfo];
  v14 = [*(a1 + 32) textOperations];
  v15 = [v14 keyboardOutput];
  [v15 setCustomInfo:v13];

  v16 = [*(a1 + 40) isExplicitAutoFillInvocation];
  v17 = [*(a1 + 32) textOperations];
  [v17 setIsExplicitAutoFillInvocation:v16];

  v18 = *(a1 + 32);
  if (*(a1 + 48))
  {

    return [v18 flushOperationsWithResultHandler:?];
  }

  else
  {

    return [v18 flushOperations];
  }
}

void __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_2;
  v4[3] = &unk_1E8424C28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _sendTextOperations:v2 toSession:v3 completionHandler:v4];
}

uint64_t __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticationWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate authenticationWillBeginForSessionUUID:a2 completion:?];
  }

  [(AFUIServiceDelegate *)self setAuthenticatingForSessionId:v8];
  [(NSLock *)self->_lock lock];
  v10 = [(AFUIServiceDelegate *)self _sessionForUUID:v8];
  v11 = [v10 documentTraits];
  [(AFUIServiceDelegate *)self setAuthenticatingForDocumentTraits:v11];

  [(NSLock *)self->_lock unlock];
  [(AFUIServiceDelegate *)self _sendAuthenticationStateOperation:1 sessionUUID:v8 completion:v7];
}

- (void)authenticationDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate authenticationDidEndForSessionUUID:a2 completion:?];
  }

  [(AFUIServiceDelegate *)self _sendAuthenticationStateOperation:0 sessionUUID:v8 completion:v7];
  [(AFUIServiceDelegate *)self setAuthenticatingForSessionId:0];
  [(AFUIServiceDelegate *)self setAuthenticatingForDocumentTraits:0];
}

- (void)contactsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFUIServiceDelegate *)self setContactsUIShowingForSessionId:v7];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:v7];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v6];
}

- (void)contactsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFUIServiceDelegate *)self setContactsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:v7];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v6];
}

- (void)passwordsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFUIServiceDelegate *)self setPasswordsUIShowingForSessionId:v7];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:v7];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v6];
}

- (void)passwordsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFUIServiceDelegate *)self setPasswordsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:v7];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v6];
}

- (void)creditCardsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFUIServiceDelegate *)self setCreditCardsUIShowingForSessionId:v7];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:v7];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v6];
}

- (void)creditCardsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFUIServiceDelegate *)self setCreditCardsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:v7];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v6];
}

- (void)_performBlockOnInternalQueueForUUID:(id)a3 block:(id)a4
{
  v6 = a4;
  if (v6)
  {
    block = v6;
    lock = self->_lock;
    v8 = a3;
    [(NSLock *)lock lock];
    v9 = [(AFUIServiceDelegate *)self _sessionForUUID:v8];

    v10 = [v9 internalQueue];

    [(NSLock *)self->_lock unlock];
    if (v10)
    {
      dispatch_async(v10, block);
    }

    v6 = block;
  }
}

- (void)setIsMenuPresented:(BOOL)a3 forSessionUUID:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__AFUIServiceDelegate_setIsMenuPresented_forSessionUUID___block_invoke;
  v8[3] = &unk_1E8424580;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v8];
}

- (void)inputSystemService:(id)a3 inputSessionDidBegin:(id)a4 options:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a4;
  [(NSLock *)self->_lock lock];
  v8 = [(AFUIServiceDelegate *)self currentSessions];
  [v8 addObject:v7];

  [(NSLock *)self->_lock unlock];
  v9 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v51 = MEMORY[0x1E696AEC0];
    v52 = [v7 documentTraits];
    v10 = [v52 bundleId];
    v11 = [v7 uuid];
    v12 = [v7 documentTraits];
    v13 = [v12 appName];
    [v7 documentTraits];
    v14 = v53 = a2;
    v15 = [v14 processId];
    v16 = [v7 documentTraits];
    v50 = v15;
    v17 = v10;
    v18 = [v51 stringWithFormat:@"%s Session info. Bundle ID: %@ uuid: %@; appName: %@; processId: %d; contextID: %u", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v10, v11, v13, v50, objc_msgSend(v16, "contextID")];;
    *buf = 138412290;
    v55 = v18;
    _os_log_impl(&dword_1D2F0D000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

    a2 = v53;
  }

  if (self->_trackedInputIdentifier)
  {
    v19 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:v7];
    if (v19)
    {
      v20 = v19;
      trackedInputIdentifier = self->_trackedInputIdentifier;
      v22 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:v7];
      LODWORD(trackedInputIdentifier) = [(NSNumber *)trackedInputIdentifier isEqual:v22];

      if (trackedInputIdentifier)
      {
        v23 = [v7 uuid];
        [(AFUIServiceDelegate *)self _tearDownPanelsExceptForSessionUUID:v23];

        v24 = self->_trackedInputIdentifier;
        self->_trackedInputIdentifier = 0;
      }
    }
  }

  v25 = [v7 documentTraits];
  v26 = [v25 bundleId];
  if ([v26 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    goto LABEL_10;
  }

  v27 = [v7 documentTraits];
  v28 = [v27 bundleId];
  if ([v28 isEqualToString:@"com.apple.LocalAuthenticationUIService"])
  {

LABEL_10:
    goto LABEL_11;
  }

  v31 = [v7 documentTraits];
  v32 = [v31 bundleId];
  v33 = [v32 isEqualToString:@"com.apple.ContactsUI.ContactsViewService"];

  if (v33)
  {
LABEL_11:
    v29 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSessionDidBegin:? options:?];
    }

    goto LABEL_13;
  }

  v34 = [v7 uuid];
  v35 = [(AFUIServiceDelegate *)self authenticatingForSessionId];
  v36 = [v34 isEqual:v35];

  if (v36)
  {
    v29 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
    }
  }

  else
  {
    v37 = [v7 uuid];
    v38 = [(AFUIServiceDelegate *)self contactsUIShowingForSessionId];
    v39 = [v37 isEqual:v38];

    if (v39)
    {
      v29 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
      }
    }

    else
    {
      v40 = [v7 uuid];
      v41 = [(AFUIServiceDelegate *)self passwordsUIShowingForSessionId];
      v42 = [v40 isEqual:v41];

      if (v42)
      {
        v29 = AFUIServiceDelegateOSLogFacility();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
        }
      }

      else
      {
        v43 = [v7 uuid];
        v44 = [(AFUIServiceDelegate *)self creditCardsUIShowingForSessionId];
        v45 = [v43 isEqual:v44];

        v29 = AFUIServiceDelegateOSLogFacility();
        v46 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (v45)
        {
          if (v46)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
          }
        }

        else
        {
          if (v46)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
          }

          if (-[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:](self, "_checkAndSendQueuedTextOperationsIfNecessary:", v7) || ([v7 documentTraits], v47 = objc_claimAutoreleasedReturnValue(), v48 = -[AFUIServiceDelegate _shouldAutomaticallyDisplayPanelForDocumentTraits:](self, "_shouldAutomaticallyDisplayPanelForDocumentTraits:", v47), v47, !v48))
          {
            v29 = AFUIServiceDelegateOSLogFacility();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [AFUIServiceDelegate inputSystemService:a2 inputSessionDidBegin:v7 options:v29];
            }
          }

          else
          {
            v49 = AFUIServiceDelegateOSLogFacility();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
            }

            v29 = [v7 documentTraits];
            [(AFUIServiceDelegate *)self _displayPanelForSession:v7 traits:v29];
          }
        }
      }
    }
  }

LABEL_13:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:(id)a3 inputSessionDidEnd:(id)a4 options:(id)a5
{
  v7 = a4;
  [(NSLock *)self->_lock lock];
  v8 = [(AFUIServiceDelegate *)self currentSessions];
  [v8 removeObject:v7];

  [(NSLock *)self->_lock unlock];
  v9 = [v7 documentTraits];
  v10 = [v9 bundleId];
  if ([v10 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    goto LABEL_4;
  }

  v11 = [v7 documentTraits];
  v12 = [v11 bundleId];
  if ([v12 isEqualToString:@"com.apple.LocalAuthenticationUIService"])
  {

LABEL_4:
    goto LABEL_5;
  }

  v14 = [v7 documentTraits];
  v15 = [v14 bundleId];
  v16 = [v15 isEqualToString:@"com.apple.ContactsUI.ContactsViewService"];

  if (v16)
  {
LABEL_5:
    v13 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSessionDidEnd:? options:?];
    }

    goto LABEL_7;
  }

  v17 = [v7 uuid];
  v18 = [(AFUIServiceDelegate *)self authenticatingForSessionId];
  v19 = [v17 isEqual:v18];

  if (v19)
  {
    v13 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
    }
  }

  else
  {
    v20 = [v7 uuid];
    v21 = [(AFUIServiceDelegate *)self contactsUIShowingForSessionId];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      v13 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
      }
    }

    else
    {
      v23 = [v7 uuid];
      v24 = [(AFUIServiceDelegate *)self passwordsUIShowingForSessionId];
      v25 = [v23 isEqual:v24];

      if (v25)
      {
        v13 = AFUIServiceDelegateOSLogFacility();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
        }
      }

      else
      {
        v26 = [v7 uuid];
        v27 = [(AFUIServiceDelegate *)self creditCardsUIShowingForSessionId];
        v28 = [v26 isEqual:v27];

        v13 = AFUIServiceDelegateOSLogFacility();
        v29 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v28)
        {
          if (v29)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
          }
        }

        else
        {
          if (v29)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
          }

          v13 = [v7 uuid];
          [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:v13];
        }
      }
    }
  }

LABEL_7:
}

- (void)inputSystemService:(id)a3 inputSessionDidDie:(id)a4
{
  v5 = a4;
  [(NSLock *)self->_lock lock];
  v6 = [(AFUIServiceDelegate *)self currentSessions];
  [v6 removeObject:v5];

  [(NSLock *)self->_lock unlock];
  v7 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidDie:];
  }

  v8 = [v5 uuid];
  [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:v8];
}

- (void)inputSystemService:(id)a3 inputSession:(id)a4 documentStateDidChange:(id)a5
{
  v7 = a5;
  sessionPanels = self->_sessionPanels;
  v9 = [a4 uuid];
  v10 = [(NSMutableDictionary *)sessionPanels objectForKey:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__AFUIServiceDelegate_inputSystemService_inputSession_documentStateDidChange___block_invoke;
  v13[3] = &unk_1E8424990;
  v14 = v10;
  v15 = v7;
  v11 = v7;
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)inputSystemService:(id)a3 inputSessionDidPause:(id)a4 withReason:(id)a5
{
  v6 = a4;
  sessionPanels = self->_sessionPanels;
  v8 = [v6 uuid];
  v9 = [(NSMutableDictionary *)sessionPanels objectForKey:v8];

  v10 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidPause:withReason:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AFUIServiceDelegate_inputSystemService_inputSessionDidPause_withReason___block_invoke;
  block[3] = &unk_1E84247B0;
  v13 = v9;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)inputSystemService:(id)a3 inputSessionDidUnpause:(id)a4 withReason:(id)a5
{
  v6 = a4;
  sessionPanels = self->_sessionPanels;
  v8 = [v6 uuid];
  v9 = [(NSMutableDictionary *)sessionPanels objectForKey:v8];

  v10 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidUnpause:withReason:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AFUIServiceDelegate_inputSystemService_inputSessionDidUnpause_withReason___block_invoke;
  block[3] = &unk_1E84247B0;
  v13 = v9;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)inputSystemService:(id)a3 inputSession:(id)a4 performInputOperation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 documentTraits];
  v11 = [v10 bundleId];

  if (([v11 isEqualToString:@"com.apple.CoreAuthUI"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"com.apple.LocalAuthenticationUIService") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"com.apple.ContactsUI.ContactsViewService"))
  {
    v12 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSession:? performInputOperation:?];
    }

    goto LABEL_6;
  }

  v13 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSession:performInputOperation:];
  }

  v14 = [v9 customInfoType];
  v15 = [v14 isEqualToString:@"UIUserInteractionRemoteInputOperations"];

  if (!v15)
  {
    goto LABEL_7;
  }

  if ([v9 actionSelector] == sel_dismissAutoFillPanel || objc_msgSend(v9, "actionSelector") == sel_dismissAutoFillMenu)
  {
    sessionPanels = self->_sessionPanels;
    v18 = [v8 uuid];
    v19 = [(NSMutableDictionary *)sessionPanels objectForKey:v18];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__AFUIServiceDelegate_inputSystemService_inputSession_performInputOperation___block_invoke;
    v22[3] = &unk_1E8424990;
    v23 = v9;
    v24 = v19;
    v12 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], v22);

LABEL_6:
    goto LABEL_7;
  }

  if ([v9 actionSelector] && objc_msgSend(v9, "actionSelector") == sel_handleAutoFillContactPopoverCommand)
  {
    v16 = 1;
LABEL_32:
    v20 = 7;
    goto LABEL_35;
  }

  if ([v9 actionSelector] && objc_msgSend(v9, "actionSelector") == sel_handleAutoFillCreditCardPopoverCommand)
  {
    v16 = 1;
LABEL_34:
    v20 = 9;
    goto LABEL_35;
  }

  if ([v9 actionSelector] && objc_msgSend(v9, "actionSelector") == sel_handleAutoFillPasswordPopoverCommand)
  {
    v16 = 1;
    goto LABEL_30;
  }

  if ([v9 actionSelector] && objc_msgSend(v9, "actionSelector") == sel_handleAutoFillContactDetected)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if ([v9 actionSelector] && objc_msgSend(v9, "actionSelector") == sel_handleAutoFillCreditCardDetected)
  {
    v16 = 0;
    goto LABEL_34;
  }

  if ([v9 actionSelector] && objc_msgSend(v9, "actionSelector") == sel_handleAutoFillPasswordDetected)
  {
    v16 = 0;
LABEL_30:
    v20 = 1;
LABEL_35:
    v21 = [v8 documentTraits];
    v12 = [v21 copy];

    [v12 setAutofillMode:v20];
    [v12 setExplicitAutoFillMode:v16];
    [(AFUIServiceDelegate *)self _displayPanelForSession:v8 traits:v12];
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t __77__AFUIServiceDelegate_inputSystemService_inputSession_performInputOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSelector];
  v3 = *(a1 + 40);
  if (v2 == sel_dismissAutoFillPanel)
  {

    return [v3 hide];
  }

  else
  {

    return [v3 dismissMenu];
  }
}

- (id)_sessionForUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AFUIServiceDelegate *)self currentSessions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_queueTextOperations:(uint64_t)a1 forSecureAppID:(uint64_t)a2 processID:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Queueing textOperations for session with appId: %@ (payloadID: %@)"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v3, v4, "%@", v5, v6, v7, v8, "[AFUIServiceDelegate _queueTextOperations:forSecureAppID:processID:completionHandler:]", a1, a2, v12, v13);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queueTextOperations:forSecureAppID:processID:completionHandler:.cold.2()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Cannot queue textOperations: secureAppID is empty"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_1D2F0D000, v1, v2, "%@", v3, v4, v5, v6, "[AFUIServiceDelegate _queueTextOperations:forSecureAppID:processID:completionHandler:]", v8, v9);

  v7 = *MEMORY[0x1E69E9840];
}

void __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Queued operations are expiring unused for payloadID: %@", "-[AFUIServiceDelegate _scheduleExpirationOfQueuedOperations:]_block_invoke", *a1];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v2, v3, "%@", v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_inputIdentifierForSession:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 uuid];
  v3 = [v1 stringWithFormat:@"%s ContextID is null for session %@, identifying the input with processId and bundle identifier"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_1D2F0D000, v4, v5, "%@", v6, v7, v8, v9, "[AFUIServiceDelegate _inputIdentifierForSession:]", v2, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_inputIdentifierForSession:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 uuid];
  v3 = [v1 stringWithFormat:@"%s Could not compute input identifier for session %@"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_1D2F0D000, v4, v5, "%@", v6, v7, v8, v9, "[AFUIServiceDelegate _inputIdentifierForSession:]", v2, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v15 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v3 = [v2 secureAppID];
  v12 = v0;
  v4 = [v1 stringWithFormat:@"%s Found queued textOperations for session with appId: %@ (payloadID: %@)"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:]_block_invoke", v3, v12, v13, v14);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_sendTextOperations:(void *)a1 toSession:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 uuid];
  v6 = [a1 documentTraits];
  v7 = [v6 appId];
  v8 = [v4 stringWithFormat:@"%s sending textOperations for session %@ (appId: %@)", "-[AFUIServiceDelegate _sendTextOperations:toSession:completionHandler:]", v5, v7];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D2F0D000, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)authenticationWillBeginForSessionUUID:(const char *)a1 completion:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@", "-[AFUIServiceDelegate authenticationWillBeginForSessionUUID:completion:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v7);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)authenticationDidEndForSessionUUID:(const char *)a1 completion:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@", "-[AFUIServiceDelegate authenticationDidEndForSessionUUID:completion:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v7);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a new session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ displaying the panel for session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:(const char *)a1 inputSessionDidBegin:(void *)a2 options:(NSObject *)a3 .cold.3(const char *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a1);
  v7 = [a2 uuid];
  v8 = [a2 documentTraits];
  v9 = [v5 stringWithFormat:@"%s %@ not displaying the panel for session %@: autofillMode = %lu", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v6, v7, objc_msgSend(v8, "autofillMode")];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D2F0D000, a3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Credit Card Picker UI %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Password Picker UI %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.6()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Contact Picker UI %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.7()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is authenticating %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:(const char *)a1 inputSessionDidBegin:options:.cold.8(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@ is for a process that should be ignored", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v7);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a finished session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Credit Card Picker UI %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Password Picker UI %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Contact Picker UI %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is authenticating %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:(const char *)a1 inputSessionDidEnd:options:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@ is for a process that should be ignored", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v7);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidDie:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a finished session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidDie:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidPause:withReason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ for session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidPause:withReason:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSessionDidUnpause:withReason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ for session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSessionDidUnpause:withReason:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:inputSession:performInputOperation:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ for session %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIServiceDelegate inputSystemService:inputSession:performInputOperation:]", v12, v13, v14, v15);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:(const char *)a1 inputSession:performInputOperation:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@ is for a process that should be ignored", "-[AFUIServiceDelegate inputSystemService:inputSession:performInputOperation:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v7);

  v6 = *MEMORY[0x1E69E9840];
}

@end