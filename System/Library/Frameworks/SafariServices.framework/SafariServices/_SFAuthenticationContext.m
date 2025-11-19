@interface _SFAuthenticationContext
- (BOOL)_canInvalidateAuthentication;
- (BOOL)_contextRequiresSessionBasedAuthentication;
- (BOOL)_contextShouldAllowMultipleBiometricFailures;
- (BOOL)_contextShouldAllowPasscodeFallback;
- (BOOL)_hasAuthenticationCapability:(id *)a3;
- (BOOL)_monotonicTimeIsWithinAuthenticationGracePeriod:(double)a3;
- (BOOL)needsAuthentication;
- (LAContext)authenticatedContext;
- (_SFAuthenticationContext)init;
- (_SFAuthenticationContextDelegate)delegate;
- (id)_authenticationContext;
- (void)_cancelOngoingAndPendingAuthentications;
- (void)_cancelOngoingAuthentication;
- (void)_evaluatePolicyForClient:(id)a3 userInitiated:(BOOL)a4 reply:(id)a5;
- (void)_handleTouchIDEventWithParameters:(id)a3;
- (void)_invalidateAuthentication;
- (void)_processNextClientAwaitingAuthenticationUserInitiated:(BOOL)a3;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)authenticateForClient:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)invalidateClient:(id)a3;
- (void)preemptOngoingAuthenticationWithPasccodeAuthentication;
@end

@implementation _SFAuthenticationContext

- (_SFAuthenticationContext)init
{
  v21.receiver = self;
  v21.super_class = _SFAuthenticationContext;
  v2 = [(_SFAuthenticationContext *)&v21 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = [MEMORY[0x1E695DFA0] orderedSet];
    clientsAwaitingAuthentication = v2->_clientsAwaitingAuthentication;
    v2->_clientsAwaitingAuthentication = v5;

    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientsAwaitingAuthenticationToCompletionBlocks = v2->_clientsAwaitingAuthenticationToCompletionBlocks;
    v2->_clientsAwaitingAuthenticationToCompletionBlocks = v7;

    v2->_authenticationGracePeriod = 160.0;
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __32___SFAuthenticationContext_init__block_invoke;
    v18 = &unk_1E84946E0;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch("com.apple.springboard.lockstate", &v2->_notificationToken, v9, &v15);

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v2 selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

    v13 = v2;
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  notificationToken = self->_notificationToken;
  if (notificationToken)
  {
    notify_cancel(notificationToken);
  }

  v4.receiver = self;
  v4.super_class = _SFAuthenticationContext;
  [(_SFAuthenticationContext *)&v4 dealloc];
}

- (LAContext)authenticatedContext
{
  if (self->_successfullyAuthenticated)
  {
    v3 = self->_context;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_authenticationContext
{
  context = self->_context;
  if (!context)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v5 = self->_context;
    self->_context = v4;

    context = self->_context;
  }

  v6 = context;

  return v6;
}

- (BOOL)_monotonicTimeIsWithinAuthenticationGracePeriod:(double)a3
{
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v7);
  v5 = v7.tv_nsec / 1000000000.0 + v7.tv_sec - a3;
  return v5 >= 0.0 && v5 < self->_authenticationGracePeriod;
}

- (BOOL)_hasAuthenticationCapability:(id *)a3
{
  v4 = [(_SFAuthenticationContext *)self _authenticationContext];
  LOBYTE(a3) = [v4 canEvaluatePolicy:2 error:a3];

  return a3;
}

- (BOOL)needsAuthentication
{
  if (!self->_successfullyAuthenticated)
  {
    return 1;
  }

  if ([(NSHashTable *)self->_clients count])
  {
    return 0;
  }

  return ![(_SFAuthenticationContext *)self _monotonicTimeIsWithinAuthenticationGracePeriod:self->_lastAuthenticatedSessionEndTime];
}

- (BOOL)_contextRequiresSessionBasedAuthentication
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained contextRequiresSessionBasedAuthentication:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_contextShouldAllowPasscodeFallback
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained contextShouldAllowPasscodeFallback:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_contextShouldAllowMultipleBiometricFailures
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained contextShouldAllowMultipleBiometricFailures:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_processNextClientAwaitingAuthenticationUserInitiated:(BOOL)a3
{
  v3 = a3;
  if ([(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication count])
  {
    v6 = [(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication firstObject];
    [(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication removeObjectAtIndex:0];
    v5 = [(NSMapTable *)self->_clientsAwaitingAuthenticationToCompletionBlocks objectForKey:v6];
    [(NSMapTable *)self->_clientsAwaitingAuthenticationToCompletionBlocks removeObjectForKey:v6];
    [(_SFAuthenticationContext *)self authenticateForClient:v6 userInitiated:v3 completion:v5];
  }
}

- (void)authenticateForClient:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v10 = [(_SFAuthenticationContext *)self _hasAuthenticationCapability:&v27];
  v11 = v27;
  v12 = v11;
  if (!v10)
  {
    v15 = [v11 code];
    if (v15 == -5)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    (v9)[2](v9, v15 == -5, v16);
LABEL_12:
    [(_SFAuthenticationContext *)self _processNextClientAwaitingAuthenticationUserInitiated:v6];
    goto LABEL_13;
  }

  if (![(_SFAuthenticationContext *)self needsAuthentication])
  {
    if ([(_SFAuthenticationContext *)self _contextRequiresSessionBasedAuthentication])
    {
      [(NSHashTable *)self->_clients addObject:v8];
    }

    v9[2](v9, 1, 0);
    goto LABEL_12;
  }

  if (self->_currentClientBeingAuthenticated)
  {
    [(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication addObject:v8];
    clientsAwaitingAuthenticationToCompletionBlocks = self->_clientsAwaitingAuthenticationToCompletionBlocks;
    v14 = _Block_copy(v9);
    [(NSMapTable *)clientsAwaitingAuthenticationToCompletionBlocks setObject:v14 forKey:v8];
  }

  else
  {
    *&self->_successfullyAuthenticated = 0;
    self->_ongoingAuthenticationCanceled = 0;
    self->_lastAuthenticatedSessionStartTime = 1.79769313e308;
    context = self->_context;
    self->_context = 0;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75___SFAuthenticationContext_authenticateForClient_userInitiated_completion___block_invoke;
    aBlock[3] = &unk_1E8494708;
    aBlock[4] = self;
    v18 = v8;
    v24 = v18;
    v25 = v9;
    v26 = v6;
    v19 = _Block_copy(aBlock);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__7;
    v21[4] = __Block_byref_object_dispose__7;
    v22 = _Block_copy(v19);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75___SFAuthenticationContext_authenticateForClient_userInitiated_completion___block_invoke_24;
    v20[3] = &unk_1E8494758;
    v20[4] = v21;
    [(_SFAuthenticationContext *)self _evaluatePolicyForClient:v18 userInitiated:v6 reply:v20];
    _Block_object_dispose(v21, 8);
  }

LABEL_13:
}

- (void)_evaluatePolicyForClient:(id)a3 userInitiated:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_currentClientBeingAuthenticated, a3);
  v11 = [(_SFAuthenticationContext *)self _authenticationContext];
  v12 = [v9 authenticationMessageForContext:self];
  v13 = [MEMORY[0x1E69C8880] isDTOMitigationEnabled];
  v14 = [(_SFAuthenticationContext *)self _contextShouldAllowPasscodeFallback]| v6;
  v15 = 4;
  if (v14)
  {
    v15 = 2;
  }

  if (v13)
  {
    [v9 authenticationCustomUIProgressObserverForContext:{self, WBSAuthenticationPolicyForPasswordManager()}];
  }

  else
  {
    [v9 authenticationCustomUIProgressObserverForContext:{self, v15}];
  }
  v16 = ;

  if (v16)
  {
    [v11 setUiDelegate:self];
    *&self->_matchFound = 0;
    self->_numberOfBiometricAuthenticationFailures = 0;
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = MEMORY[0x1E695E0F8];
    [v17 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:&unk_1F50233B0];
    [v17 setObject:v18 forKeyedSubscript:&unk_1F50233C8];
    v19 = [MEMORY[0x1E695DF90] dictionary];
    [v19 setObject:v17 forKeyedSubscript:&unk_1F50233E0];
    [v19 setObject:&unk_1F50233F8 forKeyedSubscript:&unk_1F5023380];
    [v19 setObject:&unk_1F5024148 forKeyedSubscript:&unk_1F5023410];
    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = &stru_1F4FE9E38;
    }

    [v19 setObject:v20 forKeyedSubscript:&unk_1F5023350];
    if (v13)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithBool:v14];
      [v19 setObject:v21 forKeyedSubscript:&unk_1F5023308];
    }

    v22 = [MEMORY[0x1E696AAE8] mainBundle];
    v23 = [v22 localizedInfoDictionary];
    v24 = [v23 objectForKeyedSubscript:@"CFBundleDisplayName"];

    if (v24)
    {
      [v19 setObject:v24 forKeyedSubscript:&unk_1F5023428];
    }

    else
    {
      v27 = _WBSLocalizedString();
      [v19 setObject:v27 forKeyedSubscript:&unk_1F5023428];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_66;
    aBlock[3] = &unk_1E84947F8;
    aBlock[4] = self;
    v32 = v10;
    v28 = _Block_copy(aBlock);
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__7;
    v38 = __Block_byref_object_dispose__7;
    v39 = _Block_copy(v28);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_3;
    v30[3] = &unk_1E84947A8;
    v30[4] = &v34;
    [v11 evaluatePolicy:v29 options:v19 reply:v30];
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    [v11 setUiDelegate:0];
    v17 = [MEMORY[0x1E695E0F8] mutableCopy];
    if ((v13 & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithBool:v14];
      [v17 setObject:v25 forKeyedSubscript:&unk_1F5023308];
    }

    if ([v9 displayMessageAsTitleForContext:self])
    {
      [v17 setObject:v12 forKeyedSubscript:&unk_1F5023320];
      v26 = [v9 passcodePromptForContext:self];
      if (v26)
      {
        [v17 setObject:v26 forKeyedSubscript:&unk_1F5023338];
      }
    }

    else
    {
      [v17 setObject:v12 forKeyedSubscript:&unk_1F5023350];
    }

    if (![(_SFAuthenticationContext *)self _contextShouldAllowMultipleBiometricFailures]&& !v6)
    {
      [v17 setObject:&unk_1F5023368 forKeyedSubscript:&unk_1F5023380];
    }

    if (!v6)
    {
      [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F5023398];
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__7;
    v38 = __Block_byref_object_dispose__7;
    v39 = _Block_copy(v10);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke;
    v33[3] = &unk_1E84947A8;
    v33[4] = &v34;
    [v11 evaluatePolicy:v29 options:v17 reply:v33];
    _Block_object_dispose(&v34, 8);
  }
}

- (void)preemptOngoingAuthenticationWithPasccodeAuthentication
{
  if (self->_currentClientBeingAuthenticated)
  {
    v3 = [(_SFAuthenticationContext *)self _authenticationContext];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __82___SFAuthenticationContext_preemptOngoingAuthenticationWithPasccodeAuthentication__block_invoke;
    v4[3] = &unk_1E8492CD0;
    v4[4] = self;
    [v3 failProcessedEvent:1 failureError:0 reply:v4];
  }
}

- (void)invalidateClient:(id)a3
{
  v4 = a3;
  if ([(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication containsObject:v4])
  {
    v5 = [(NSMapTable *)self->_clientsAwaitingAuthenticationToCompletionBlocks objectForKey:v4];
    [(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication removeObject:v4];
    [(NSMapTable *)self->_clientsAwaitingAuthenticationToCompletionBlocks removeObjectForKey:v4];
    if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }

  else if (self->_currentClientBeingAuthenticated == v4)
  {
    [(_SFAuthenticationContext *)self _cancelOngoingAuthentication];
  }

  else if ([(NSHashTable *)self->_clients containsObject:v4])
  {
    [(NSHashTable *)self->_clients removeObject:v4];
    if (![(NSHashTable *)self->_clients count])
    {
      v6.tv_sec = 0;
      v6.tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC, &v6);
      self->_lastAuthenticatedSessionEndTime = v6.tv_nsec / 1000000000.0 + v6.tv_sec;
    }
  }
}

- (void)applicationDidEnterBackground
{
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v3);
  self->_lastApplicationBackgroundTime = v3.tv_nsec / 1000000000.0 + v3.tv_sec;
}

- (void)applicationWillEnterForeground
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained invalidationTimeoutIfApplicationEntersBackgroundDuringAuthenticationForContext:self];
  }

  else
  {
    v3 = 2.22507386e-308;
  }

  if (self->_currentClientBeingAuthenticated || (lastApplicationBackgroundTime = self->_lastApplicationBackgroundTime, lastApplicationBackgroundTime != 0.0) && v3 >= 0.0 && (v3 = v3 + self->_lastAuthenticatedSessionStartTime, v3 > lastApplicationBackgroundTime) || lastApplicationBackgroundTime != 0.0 && ![(_SFAuthenticationContext *)self _monotonicTimeIsWithinAuthenticationGracePeriod:self->_lastApplicationBackgroundTime])
  {
    [(_SFAuthenticationContext *)self _invalidateAuthentication];
  }
}

- (BOOL)_canInvalidateAuthentication
{
  if (self->_currentClientBeingAuthenticated)
  {
    return 1;
  }

  if (self->_successfullyAuthenticated || [(NSHashTable *)self->_clients count]|| [(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication count])
  {
    return 1;
  }

  return ![(_SFAuthenticationContext *)self _contextRequiresSessionBasedAuthentication];
}

- (void)_invalidateAuthentication
{
  if ([(_SFAuthenticationContext *)self _hasAuthenticationCapability:0]&& [(_SFAuthenticationContext *)self _canInvalidateAuthentication])
  {
    self->_authenticationInvalidated = 1;
    [(_SFAuthenticationContext *)self _cancelOngoingAndPendingAuthentications];
    self->_successfullyAuthenticated = 0;
    self->_lastApplicationBackgroundTime = 0.0;
    [(NSHashTable *)self->_clients removeAllObjects];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"AuthenticationContextDidInvalidateNotification" object:self];
  }
}

- (void)_cancelOngoingAndPendingAuthentications
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_clientsAwaitingAuthentication;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v8 = [(NSMapTable *)self->_clientsAwaitingAuthenticationToCompletionBlocks objectForKey:*(*(&v10 + 1) + 8 * v7), v10];
        v9 = v8;
        if (v8)
        {
          (*(v8 + 16))(v8, 0, 0);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableOrderedSet *)self->_clientsAwaitingAuthentication removeAllObjects];
  [(NSMapTable *)self->_clientsAwaitingAuthenticationToCompletionBlocks removeAllObjects];
  [(_SFAuthenticationContext *)self _cancelOngoingAuthentication];
}

- (void)_cancelOngoingAuthentication
{
  self->_ongoingAuthenticationCanceled = 1;
  v5 = [(_SFAuthenticationClient *)self->_currentClientBeingAuthenticated authenticationCustomUIProgressObserverForContext:self];
  if (objc_opt_respondsToSelector())
  {
    [v5 authenticationDidCancel:self completion:0];
  }

  v3 = [(_SFAuthenticationContext *)self _authenticationContext];
  [v3 invalidate];

  context = self->_context;
  self->_context = 0;
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (a3 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47___SFAuthenticationContext_event_params_reply___block_invoke;
    v9[3] = &unk_1E848F548;
    v9[4] = self;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

- (void)_handleTouchIDEventWithParameters:(id)a3
{
  v4 = a3;
  if (!self->_matchFound)
  {
    v12 = v4;
    v5 = [(_SFAuthenticationClient *)self->_currentClientBeingAuthenticated authenticationCustomUIProgressObserverForContext:self];
    v6 = [v12 objectForKeyedSubscript:&unk_1F50233B0];
    v7 = v6;
    if (v6 && ([v6 BOOLValue] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 authenticationDidFallbackToPasscode:self];
    }

    v8 = [v12 objectForKeyedSubscript:&unk_1F5023440];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 integerValue];
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:
            self->_matchFound = 0;
            v11 = self->_numberOfBiometricAuthenticationFailures + 1;
            self->_numberOfBiometricAuthenticationFailures = v11;
            if (v11 == 2 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v5 authenticationShowOptionForPasscodeFallback:self];
            }

            break;
          case 4:
            if (objc_opt_respondsToSelector())
            {
              [v5 authenticationDidEncounterMatchMiss:self completion:0];
            }

            break;
          case 5:
            self->_fingerDetectRequired = 1;
            if (objc_opt_respondsToSelector())
            {
              [v5 authenticationDidBeginFingerDetection:self];
            }

            break;
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          if (objc_opt_respondsToSelector())
          {
            [v5 authenticationDidEncounterFingerOff:self];
          }
        }

        else if (v10 == 2)
        {
          self->_matchFound = 1;
          self->_numberOfBiometricAuthenticationFailures = 0;
        }
      }

      else if (self->_fingerDetectRequired && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 authenticationDidEncounterFingerOn:self];
      }
    }

    v4 = v12;
  }
}

- (_SFAuthenticationContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end