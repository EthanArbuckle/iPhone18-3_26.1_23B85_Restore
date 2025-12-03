@interface AFUIServiceDelegate
- (AFUIServiceDelegate)init;
- (BOOL)_checkAndSendQueuedTextOperationsIfNecessary:(id)necessary;
- (BOOL)_shouldAutomaticallyDisplayPanelForDocumentTraits:(id)traits;
- (BOOL)_shouldDisplayPanelForSession:(id)session documentTraits:(id)traits;
- (id)_inputIdentifierForSession:(id)session;
- (id)_sessionForUUID:(id)d;
- (void)_displayPanelForSession:(id)session traits:(id)traits;
- (void)_performBlockOnInternalQueueForUUID:(id)d block:(id)block;
- (void)_scheduleExpirationOfQueuedOperations:(id)operations;
- (void)_sendOrQueueTextOperations:(id)operations session:(id)session withInputIdentifier:(id)identifier;
- (void)_sendTextOperations:(id)operations toSession:(id)session completionHandler:(id)handler;
- (void)_tearDownPanelForSessionUUID:(id)d;
- (void)_tearDownPanelsExceptForSessionUUID:(id)d;
- (void)authenticationDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)authenticationWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)contactsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)contactsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)creditCardsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)creditCardsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change;
- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options;
- (void)inputSystemService:(id)service inputSessionDidDie:(id)die;
- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options;
- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason;
- (void)passwordsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)passwordsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)setIsMenuPresented:(BOOL)presented forSessionUUID:(id)d;
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

- (void)_tearDownPanelForSessionUUID:(id)d
{
  dCopy = d;
  [(NSLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_sessionPanels objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AFUIServiceDelegate__tearDownPanelForSessionUUID___block_invoke;
    block[3] = &unk_1E84247B0;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(NSMutableDictionary *)self->_sessionPanels removeObjectForKey:dCopy];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)_tearDownPanelsExceptForSessionUUID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
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
        if (([v11 isEqual:dCopy] & 1) == 0)
        {
          v12 = [(NSMutableDictionary *)self->_sessionPanels objectForKeyedSubscript:v11];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __59__AFUIServiceDelegate__tearDownPanelsExceptForSessionUUID___block_invoke;
          block[3] = &unk_1E84247B0;
          v25 = v12;
          v13 = v12;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          [array addObject:v11];
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
  v14 = array;
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

- (void)_displayPanelForSession:(id)session traits:(id)traits
{
  sessionCopy = session;
  traitsCopy = traits;
  if (!traitsCopy)
  {
    traitsCopy = [sessionCopy documentTraits];
  }

  v8 = [(AFUIServiceDelegate *)self _shouldDisplayPanelForSession:sessionCopy documentTraits:traitsCopy];
  uuid = [sessionCopy uuid];
  if (v8)
  {
    v10 = -[AFUIServiceDelegate _setupPanelForSessionUUID:documentPid:](self, "_setupPanelForSessionUUID:documentPid:", uuid, [traitsCopy processId]);

    v11 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:sessionCopy];
    internalQueue = [sessionCopy internalQueue];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke;
    v16[3] = &unk_1E8424BB0;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    v19 = traitsCopy;
    v20 = sessionCopy;
    v13 = v10;
    v14 = v11;
    objc_copyWeak(&v22, &location);
    v21 = internalQueue;
    v15 = internalQueue;
    dispatch_async(MEMORY[0x1E69E96A0], v16);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:uuid];
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

- (BOOL)_shouldDisplayPanelForSession:(id)session documentTraits:(id)traits
{
  traitsCopy = traits;
  if (([traitsCopy _isExplicitAutoFillInvocation] & 1) == 0)
  {
    bundleId = [traitsCopy bundleId];
    if (bundleId)
    {
      if (isAutoFillPanelAlwaysBlockedForBundleID_onceToken != -1)
      {
        [AFUIServiceDelegate _shouldDisplayPanelForSession:documentTraits:];
      }

      if ([isAutoFillPanelAlwaysBlockedForBundleID_blockedBundleIDs containsObject:bundleId])
      {
        v5 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v7 = isAutoFillPanelAlwaysAllowedForBundleID_onceToken;
      v8 = bundleId;
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

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    v5 = _os_feature_enabled_impl();
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (BOOL)_shouldAutomaticallyDisplayPanelForDocumentTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy autofillMode] && (objc_msgSend(traitsCopy, "_isExplicitAutoFillInvocation") & 1) == 0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_scheduleExpirationOfQueuedOperations:(id)operations
{
  operationsCopy = operations;
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 20000000000);
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke;
  block[3] = &unk_1E8424BD8;
  objc_copyWeak(&v10, &location);
  v9 = operationsCopy;
  v7 = operationsCopy;
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

- (void)_sendOrQueueTextOperations:(id)operations session:(id)session withInputIdentifier:(id)identifier
{
  sessionCopy = session;
  lock = self->_lock;
  operationsCopy = operations;
  [(NSLock *)lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  v10 = [currentSessions containsObject:sessionCopy];

  [(NSLock *)self->_lock unlock];
  documentTraits = [sessionCopy documentTraits];
  appId = [documentTraits appId];
  v13 = [appId copy];

  documentTraits2 = [sessionCopy documentTraits];
  processId = [documentTraits2 processId];

  if (v10)
  {
    [(AFUIServiceDelegate *)self _sendTextOperations:operationsCopy toSession:sessionCopy completionHandler:0];
  }

  else
  {
    [(AFUIServiceDelegate *)self _queueTextOperations:operationsCopy forSecureAppID:v13 processID:processId completionHandler:0];
  }
}

- (id)_inputIdentifierForSession:(id)session
{
  sessionCopy = session;
  v4 = sessionCopy;
  if (sessionCopy && ([sessionCopy documentTraits], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    documentTraits = [v4 documentTraits];
    contextID = [documentTraits contextID];

    if (contextID)
    {
      v8 = MEMORY[0x1E696AD98];
      documentTraits2 = [v4 documentTraits];
      processId = [documentTraits2 processId];
      documentTraits3 = [v4 documentTraits];
      v12 = [documentTraits3 contextID] ^ processId;
      documentTraits4 = [v4 documentTraits];
      bundleId = [documentTraits4 bundleId];
      v15 = [v8 numberWithUnsignedInteger:{objc_msgSend(bundleId, "hash") ^ v12}];
    }

    else
    {
      v18 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AFUIServiceDelegate _inputIdentifierForSession:v4];
      }

      v19 = MEMORY[0x1E696AD98];
      documentTraits5 = [v4 documentTraits];
      processId2 = [documentTraits5 processId];
      documentTraits6 = [v4 documentTraits];
      bundleId2 = [documentTraits6 bundleId];
      v15 = [v19 numberWithUnsignedInteger:{objc_msgSend(bundleId2, "hash") ^ processId2}];
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

- (BOOL)_checkAndSendQueuedTextOperationsIfNecessary:(id)necessary
{
  v37 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  documentTraits = [necessaryCopy documentTraits];
  appId = [documentTraits appId];

  documentTraits2 = [necessaryCopy documentTraits];
  processId = [documentTraits2 processId];

  v9 = 0;
  if ([appId length] && processId)
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
    v11 = appId;
    v28 = processId;
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
      textOperations = [v12 textOperations];
      uuid = [necessaryCopy uuid];
      v22 = uuid;
      v23 = @"found";
      if (!textOperations)
      {
        v23 = @"not found";
      }

      v24 = [v19 stringWithFormat:@"%s textOperations %@ for session uuid %@ (appId: %@)", "-[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:]", v23, uuid, v11];
      *buf = 138412290;
      v36 = v24;
      _os_log_debug_impl(&dword_1D2F0D000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    textOperations2 = [v12 textOperations];

    v9 = textOperations2 != 0;
    if (textOperations2)
    {
      textOperations3 = [v12 textOperations];
      completionHandler = [v12 completionHandler];
      [(AFUIServiceDelegate *)self _sendTextOperations:textOperations3 toSession:necessaryCopy completionHandler:completionHandler];
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

- (void)_sendTextOperations:(id)operations toSession:(id)session completionHandler:(id)handler
{
  operationsCopy = operations;
  sessionCopy = session;
  handlerCopy = handler;
  v11 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:sessionCopy];
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
    [AFUIServiceDelegate _sendTextOperations:sessionCopy toSession:v15 completionHandler:?];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AFUIServiceDelegate__sendTextOperations_toSession_completionHandler___block_invoke;
  block[3] = &unk_1E84245D0;
  v20 = sessionCopy;
  v21 = operationsCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = operationsCopy;
  v18 = sessionCopy;
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

- (void)authenticationWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v9 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate authenticationWillBeginForSessionUUID:a2 completion:?];
  }

  [(AFUIServiceDelegate *)self setAuthenticatingForSessionId:dCopy];
  [(NSLock *)self->_lock lock];
  v10 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];
  documentTraits = [v10 documentTraits];
  [(AFUIServiceDelegate *)self setAuthenticatingForDocumentTraits:documentTraits];

  [(NSLock *)self->_lock unlock];
  [(AFUIServiceDelegate *)self _sendAuthenticationStateOperation:1 sessionUUID:dCopy completion:completionCopy];
}

- (void)authenticationDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v9 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate authenticationDidEndForSessionUUID:a2 completion:?];
  }

  [(AFUIServiceDelegate *)self _sendAuthenticationStateOperation:0 sessionUUID:dCopy completion:completionCopy];
  [(AFUIServiceDelegate *)self setAuthenticatingForSessionId:0];
  [(AFUIServiceDelegate *)self setAuthenticatingForDocumentTraits:0];
}

- (void)contactsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setContactsUIShowingForSessionId:dCopy];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)contactsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setContactsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)passwordsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setPasswordsUIShowingForSessionId:dCopy];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)passwordsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setPasswordsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)creditCardsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setCreditCardsUIShowingForSessionId:dCopy];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)creditCardsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setCreditCardsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)_performBlockOnInternalQueueForUUID:(id)d block:(id)block
{
  blockCopy2 = block;
  if (blockCopy2)
  {
    block = blockCopy2;
    lock = self->_lock;
    dCopy = d;
    [(NSLock *)lock lock];
    v9 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];

    internalQueue = [v9 internalQueue];

    [(NSLock *)self->_lock unlock];
    if (internalQueue)
    {
      dispatch_async(internalQueue, block);
    }

    blockCopy2 = block;
  }
}

- (void)setIsMenuPresented:(BOOL)presented forSessionUUID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__AFUIServiceDelegate_setIsMenuPresented_forSessionUUID___block_invoke;
  v8[3] = &unk_1E8424580;
  presentedCopy = presented;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v8];
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options
{
  v56 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  [(NSLock *)self->_lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  [currentSessions addObject:beginCopy];

  [(NSLock *)self->_lock unlock];
  v9 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v51 = MEMORY[0x1E696AEC0];
    documentTraits = [beginCopy documentTraits];
    bundleId = [documentTraits bundleId];
    uuid = [beginCopy uuid];
    documentTraits2 = [beginCopy documentTraits];
    appName = [documentTraits2 appName];
    [beginCopy documentTraits];
    v14 = v53 = a2;
    processId = [v14 processId];
    documentTraits3 = [beginCopy documentTraits];
    v50 = processId;
    v17 = bundleId;
    v18 = [v51 stringWithFormat:@"%s Session info. Bundle ID: %@ uuid: %@; appName: %@; processId: %d; contextID: %u", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", bundleId, uuid, appName, v50, objc_msgSend(documentTraits3, "contextID")];;
    *buf = 138412290;
    v55 = v18;
    _os_log_impl(&dword_1D2F0D000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

    a2 = v53;
  }

  if (self->_trackedInputIdentifier)
  {
    v19 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:beginCopy];
    if (v19)
    {
      v20 = v19;
      trackedInputIdentifier = self->_trackedInputIdentifier;
      v22 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:beginCopy];
      LODWORD(trackedInputIdentifier) = [(NSNumber *)trackedInputIdentifier isEqual:v22];

      if (trackedInputIdentifier)
      {
        uuid2 = [beginCopy uuid];
        [(AFUIServiceDelegate *)self _tearDownPanelsExceptForSessionUUID:uuid2];

        v24 = self->_trackedInputIdentifier;
        self->_trackedInputIdentifier = 0;
      }
    }
  }

  documentTraits4 = [beginCopy documentTraits];
  bundleId2 = [documentTraits4 bundleId];
  if ([bundleId2 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    goto LABEL_10;
  }

  documentTraits5 = [beginCopy documentTraits];
  bundleId3 = [documentTraits5 bundleId];
  if ([bundleId3 isEqualToString:@"com.apple.LocalAuthenticationUIService"])
  {

LABEL_10:
    goto LABEL_11;
  }

  documentTraits6 = [beginCopy documentTraits];
  bundleId4 = [documentTraits6 bundleId];
  v33 = [bundleId4 isEqualToString:@"com.apple.ContactsUI.ContactsViewService"];

  if (v33)
  {
LABEL_11:
    documentTraits7 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSessionDidBegin:? options:?];
    }

    goto LABEL_13;
  }

  uuid3 = [beginCopy uuid];
  authenticatingForSessionId = [(AFUIServiceDelegate *)self authenticatingForSessionId];
  v36 = [uuid3 isEqual:authenticatingForSessionId];

  if (v36)
  {
    documentTraits7 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
    }
  }

  else
  {
    uuid4 = [beginCopy uuid];
    contactsUIShowingForSessionId = [(AFUIServiceDelegate *)self contactsUIShowingForSessionId];
    v39 = [uuid4 isEqual:contactsUIShowingForSessionId];

    if (v39)
    {
      documentTraits7 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
      {
        [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
      }
    }

    else
    {
      uuid5 = [beginCopy uuid];
      passwordsUIShowingForSessionId = [(AFUIServiceDelegate *)self passwordsUIShowingForSessionId];
      v42 = [uuid5 isEqual:passwordsUIShowingForSessionId];

      if (v42)
      {
        documentTraits7 = AFUIServiceDelegateOSLogFacility();
        if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
        {
          [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
        }
      }

      else
      {
        uuid6 = [beginCopy uuid];
        creditCardsUIShowingForSessionId = [(AFUIServiceDelegate *)self creditCardsUIShowingForSessionId];
        v45 = [uuid6 isEqual:creditCardsUIShowingForSessionId];

        documentTraits7 = AFUIServiceDelegateOSLogFacility();
        v46 = os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG);
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

          if (-[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:](self, "_checkAndSendQueuedTextOperationsIfNecessary:", beginCopy) || ([beginCopy documentTraits], v47 = objc_claimAutoreleasedReturnValue(), v48 = -[AFUIServiceDelegate _shouldAutomaticallyDisplayPanelForDocumentTraits:](self, "_shouldAutomaticallyDisplayPanelForDocumentTraits:", v47), v47, !v48))
          {
            documentTraits7 = AFUIServiceDelegateOSLogFacility();
            if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
            {
              [AFUIServiceDelegate inputSystemService:a2 inputSessionDidBegin:beginCopy options:documentTraits7];
            }
          }

          else
          {
            v49 = AFUIServiceDelegateOSLogFacility();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
            }

            documentTraits7 = [beginCopy documentTraits];
            [(AFUIServiceDelegate *)self _displayPanelForSession:beginCopy traits:documentTraits7];
          }
        }
      }
    }
  }

LABEL_13:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options
{
  endCopy = end;
  [(NSLock *)self->_lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  [currentSessions removeObject:endCopy];

  [(NSLock *)self->_lock unlock];
  documentTraits = [endCopy documentTraits];
  bundleId = [documentTraits bundleId];
  if ([bundleId isEqualToString:@"com.apple.CoreAuthUI"])
  {
    goto LABEL_4;
  }

  documentTraits2 = [endCopy documentTraits];
  bundleId2 = [documentTraits2 bundleId];
  if ([bundleId2 isEqualToString:@"com.apple.LocalAuthenticationUIService"])
  {

LABEL_4:
    goto LABEL_5;
  }

  documentTraits3 = [endCopy documentTraits];
  bundleId3 = [documentTraits3 bundleId];
  v16 = [bundleId3 isEqualToString:@"com.apple.ContactsUI.ContactsViewService"];

  if (v16)
  {
LABEL_5:
    uuid5 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSessionDidEnd:? options:?];
    }

    goto LABEL_7;
  }

  uuid = [endCopy uuid];
  authenticatingForSessionId = [(AFUIServiceDelegate *)self authenticatingForSessionId];
  v19 = [uuid isEqual:authenticatingForSessionId];

  if (v19)
  {
    uuid5 = AFUIServiceDelegateOSLogFacility();
    if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
    }
  }

  else
  {
    uuid2 = [endCopy uuid];
    contactsUIShowingForSessionId = [(AFUIServiceDelegate *)self contactsUIShowingForSessionId];
    v22 = [uuid2 isEqual:contactsUIShowingForSessionId];

    if (v22)
    {
      uuid5 = AFUIServiceDelegateOSLogFacility();
      if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
      {
        [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
      }
    }

    else
    {
      uuid3 = [endCopy uuid];
      passwordsUIShowingForSessionId = [(AFUIServiceDelegate *)self passwordsUIShowingForSessionId];
      v25 = [uuid3 isEqual:passwordsUIShowingForSessionId];

      if (v25)
      {
        uuid5 = AFUIServiceDelegateOSLogFacility();
        if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
        {
          [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
        }
      }

      else
      {
        uuid4 = [endCopy uuid];
        creditCardsUIShowingForSessionId = [(AFUIServiceDelegate *)self creditCardsUIShowingForSessionId];
        v28 = [uuid4 isEqual:creditCardsUIShowingForSessionId];

        uuid5 = AFUIServiceDelegateOSLogFacility();
        v29 = os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG);
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

          uuid5 = [endCopy uuid];
          [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:uuid5];
        }
      }
    }
  }

LABEL_7:
}

- (void)inputSystemService:(id)service inputSessionDidDie:(id)die
{
  dieCopy = die;
  [(NSLock *)self->_lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  [currentSessions removeObject:dieCopy];

  [(NSLock *)self->_lock unlock];
  v7 = AFUIServiceDelegateOSLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidDie:];
  }

  uuid = [dieCopy uuid];
  [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:uuid];
}

- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change
{
  changeCopy = change;
  sessionPanels = self->_sessionPanels;
  uuid = [session uuid];
  v10 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__AFUIServiceDelegate_inputSystemService_inputSession_documentStateDidChange___block_invoke;
  v13[3] = &unk_1E8424990;
  v14 = v10;
  v15 = changeCopy;
  v11 = changeCopy;
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason
{
  pauseCopy = pause;
  sessionPanels = self->_sessionPanels;
  uuid = [pauseCopy uuid];
  v9 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

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

- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason
{
  unpauseCopy = unpause;
  sessionPanels = self->_sessionPanels;
  uuid = [unpauseCopy uuid];
  v9 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

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

- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation
{
  sessionCopy = session;
  operationCopy = operation;
  documentTraits = [sessionCopy documentTraits];
  bundleId = [documentTraits bundleId];

  if (([bundleId isEqualToString:@"com.apple.CoreAuthUI"] & 1) != 0 || (objc_msgSend(bundleId, "isEqualToString:", @"com.apple.LocalAuthenticationUIService") & 1) != 0 || objc_msgSend(bundleId, "isEqualToString:", @"com.apple.ContactsUI.ContactsViewService"))
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

  customInfoType = [operationCopy customInfoType];
  v15 = [customInfoType isEqualToString:@"UIUserInteractionRemoteInputOperations"];

  if (!v15)
  {
    goto LABEL_7;
  }

  if ([operationCopy actionSelector] == sel_dismissAutoFillPanel || objc_msgSend(operationCopy, "actionSelector") == sel_dismissAutoFillMenu)
  {
    sessionPanels = self->_sessionPanels;
    uuid = [sessionCopy uuid];
    v19 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__AFUIServiceDelegate_inputSystemService_inputSession_performInputOperation___block_invoke;
    v22[3] = &unk_1E8424990;
    v23 = operationCopy;
    v24 = v19;
    v12 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], v22);

LABEL_6:
    goto LABEL_7;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillContactPopoverCommand)
  {
    v16 = 1;
LABEL_32:
    v20 = 7;
    goto LABEL_35;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillCreditCardPopoverCommand)
  {
    v16 = 1;
LABEL_34:
    v20 = 9;
    goto LABEL_35;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillPasswordPopoverCommand)
  {
    v16 = 1;
    goto LABEL_30;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillContactDetected)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillCreditCardDetected)
  {
    v16 = 0;
    goto LABEL_34;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillPasswordDetected)
  {
    v16 = 0;
LABEL_30:
    v20 = 1;
LABEL_35:
    documentTraits2 = [sessionCopy documentTraits];
    v12 = [documentTraits2 copy];

    [v12 setAutofillMode:v20];
    [v12 setExplicitAutoFillMode:v16];
    [(AFUIServiceDelegate *)self _displayPanelForSession:sessionCopy traits:v12];
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

- (id)_sessionForUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  v6 = [currentSessions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(currentSessions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [currentSessions countByEnumeratingWithState:&v14 objects:v18 count:16];
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