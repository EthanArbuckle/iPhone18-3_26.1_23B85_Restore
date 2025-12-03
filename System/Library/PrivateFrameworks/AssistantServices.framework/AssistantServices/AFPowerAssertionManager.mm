@interface AFPowerAssertionManager
- (AFPowerAssertionManager)initWithIdentifier:(id)identifier;
- (void)_createPowerAssertion;
- (void)_releasePowerAssertion;
- (void)_reportLeakedPowerAssertion;
- (void)_watchdogTimedOut;
- (void)assertionCoordinator:(id)coordinator didActivateAssertion:(id)assertion isFirstAssertion:(BOOL)firstAssertion;
- (void)assertionCoordinator:(id)coordinator didDeactivateAssertion:(id)assertion isLastAssertion:(BOOL)lastAssertion;
- (void)dealloc;
- (void)releaseAllPowerAssertions;
- (void)releasePowerAssertionWithName:(id)name;
- (void)takePowerAssertionWithName:(id)name;
@end

@implementation AFPowerAssertionManager

- (void)_reportLeakedPowerAssertion
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    identifier = self->_identifier;
    v9 = 136315650;
    v10 = "[AFPowerAssertionManager _reportLeakedPowerAssertion]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = identifier;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p (%@)", &v9, 0x20u);
  }

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v4 = [AFSettingsConnection alloc];
    v5 = +[AFInstanceContext defaultContext];
    v6 = [(AFSettingsConnection *)v4 initWithInstanceContext:v5];

    [(AFSettingsConnection *)v6 triggerABCForType:@"power" subType:@"leaked_assertion" context:0 completionHandler:&__block_literal_global_4464];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __54__AFPowerAssertionManager__reportLeakedPowerAssertion__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[AFPowerAssertionManager _reportLeakedPowerAssertion]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Unable to trigger ABC due to error %@.", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_watchdogTimedOut
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    identifier = self->_identifier;
    v9 = 136315906;
    v10 = "[AFPowerAssertionManager _watchdogTimedOut]";
    v11 = 2048;
    selfCopy2 = self;
    v13 = 2112;
    v14 = identifier;
    v15 = 2048;
    v16 = 0x4066800000000000;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p (%@) Watchdog timed out after %f seconds.", &v9, 0x2Au);
  }

  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_identifier;
      v9 = 136315906;
      v10 = "[AFPowerAssertionManager _watchdogTimedOut]";
      v11 = 2048;
      selfCopy2 = self;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      LODWORD(v16) = powerAssertion;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p (%@) Leaked power assertion ID %u.", &v9, 0x26u);
    }

    [(AFPowerAssertionManager *)self _reportLeakedPowerAssertion];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_releasePowerAssertion
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v11 = 136315650;
    v12 = "[AFPowerAssertionManager _releasePowerAssertion]";
    v13 = 2048;
    selfCopy2 = self;
    v15 = 2112;
    v16 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", &v11, 0x20u);
  }

  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = self->_identifier;
      v11 = 136315906;
      v12 = "[AFPowerAssertionManager _releasePowerAssertion]";
      v13 = 2048;
      selfCopy2 = self;
      v15 = 2112;
      v16 = v7;
      v17 = 1024;
      v18 = powerAssertion;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p (%@) Released power assertion ID %u.", &v11, 0x26u);
      powerAssertion = self->_powerAssertion;
    }

    IOPMAssertionRelease(powerAssertion);
    self->_powerAssertion = 0;
  }

  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(AFWatchdogTimer *)watchdogTimer cancel];
    v9 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_createPowerAssertion
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v23 = "[AFPowerAssertionManager _createPowerAssertion]";
    v24 = 2048;
    selfCopy3 = self;
    v26 = 2112;
    v27 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  if (!self->_powerAssertion)
  {
    AssertionID = 0;
    if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, self->_identifier, &AssertionID))
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v6 = self->_identifier;
        *buf = 136315650;
        v23 = "[AFPowerAssertionManager _createPowerAssertion]";
        v24 = 2048;
        selfCopy3 = self;
        v26 = 2112;
        v27 = v6;
        _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p (%@) Failed to create power assertion.", buf, 0x20u);
      }
    }

    else
    {
      v7 = AssertionID;
      self->_powerAssertion = AssertionID;
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v9 = self->_identifier;
        *buf = 136315906;
        v23 = "[AFPowerAssertionManager _createPowerAssertion]";
        v24 = 2048;
        selfCopy3 = self;
        v26 = 2112;
        v27 = v9;
        v28 = 1024;
        v29 = v7;
        _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p (%@) Created power assertion with ID %u.", buf, 0x26u);
      }
    }
  }

  if (!self->_watchdogTimer)
  {
    objc_initWeak(buf, self);
    v10 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __48__AFPowerAssertionManager__createPowerAssertion__block_invoke;
    v19 = &unk_1E7348A80;
    objc_copyWeak(&v20, buf);
    v12 = [(AFWatchdogTimer *)v10 initWithTimeoutInterval:queue onQueue:&v16 timeoutHandler:180.0];
    watchdogTimer = self->_watchdogTimer;
    p_watchdogTimer = &self->_watchdogTimer;
    *p_watchdogTimer = v12;

    [*p_watchdogTimer start];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __48__AFPowerAssertionManager__createPowerAssertion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _watchdogTimedOut];
}

- (void)assertionCoordinator:(id)coordinator didDeactivateAssertion:(id)assertion isLastAssertion:(BOOL)lastAssertion
{
  lastAssertionCopy = lastAssertion;
  v25 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = AFSiriLogContextConnection;
  if (assertionCoordinator == coordinatorCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v15 = 136316162;
      v16 = "[AFPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      v20 = identifier;
      v21 = 2112;
      v22 = assertionCopy;
      v23 = 1024;
      LODWORD(v24) = lastAssertionCopy;
      _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isLastAssertion = %d", &v15, 0x30u);
      if (!lastAssertionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!lastAssertionCopy)
    {
      goto LABEL_7;
    }

    [(AFPowerAssertionManager *)self _releasePowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v15 = 136316162;
    v16 = "[AFPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
    v17 = 2048;
    selfCopy2 = self;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = assertionCoordinator;
    v23 = 2112;
    v24 = coordinatorCopy;
    _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v15, 0x34u);
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)assertionCoordinator:(id)coordinator didActivateAssertion:(id)assertion isFirstAssertion:(BOOL)firstAssertion
{
  firstAssertionCopy = firstAssertion;
  v25 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = AFSiriLogContextConnection;
  if (assertionCoordinator == coordinatorCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v15 = 136316162;
      v16 = "[AFPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      v20 = identifier;
      v21 = 2112;
      v22 = assertionCopy;
      v23 = 1024;
      LODWORD(v24) = firstAssertionCopy;
      _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isFirstAssertion = %d", &v15, 0x30u);
      if (!firstAssertionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!firstAssertionCopy)
    {
      goto LABEL_7;
    }

    [(AFPowerAssertionManager *)self _createPowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v15 = 136316162;
    v16 = "[AFPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
    v17 = 2048;
    selfCopy2 = self;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = assertionCoordinator;
    v23 = 2112;
    v24 = coordinatorCopy;
    _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v15, 0x34u);
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v8 = "[AFPowerAssertionManager dealloc]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  [(AFPowerAssertionManager *)self _releasePowerAssertion];
  v6.receiver = self;
  v6.super_class = AFPowerAssertionManager;
  [(AFPowerAssertionManager *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)releaseAllPowerAssertions
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v9 = "[AFPowerAssertionManager releaseAllPowerAssertions]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2;
  v7[3] = &unk_1E73426B0;
  v7[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  return [*(a1 + 32) _releasePowerAssertion];
}

void __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    v11 = 136316162;
    v12 = "[AFPowerAssertionManager releaseAllPowerAssertions]_block_invoke_2";
    v13 = 2048;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s %p (%@), name = %@, assertion = %@", &v11, 0x34u);
  }

  [v6 relinquishWithContext:0 options:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)releasePowerAssertionWithName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v15 = "[AFPowerAssertionManager releasePowerAssertionWithName:]";
    v16 = 2048;
    selfCopy = self;
    v18 = 2112;
    v19 = identifier;
    v20 = 2112;
    v21 = nameCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
  }

  v7 = @"default";
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  v8 = v7;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__AFPowerAssertionManager_releasePowerAssertionWithName___block_invoke;
  v12[3] = &unk_1E7349860;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __57__AFPowerAssertionManager_releasePowerAssertionWithName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      v9 = 136315906;
      v10 = "[AFPowerAssertionManager releasePowerAssertionWithName:]_block_invoke";
      v11 = 2048;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v2;
      _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v9, 0x2Au);
    }

    [v2 relinquishWithContext:0 options:0];
    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
    if (![*(*(a1 + 32) + 40) count])
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)takePowerAssertionWithName:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v23 = "[AFPowerAssertionManager takePowerAssertionWithName:]";
    v24 = 2048;
    selfCopy = self;
    v26 = 2112;
    v27 = identifier;
    v28 = 2112;
    v29 = nameCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
  }

  v7 = @"default";
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  v8 = v7;
  assertionCoordinator = self->_assertionCoordinator;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke;
  v20[3] = &unk_1E7342688;
  v10 = v8;
  v21 = v10;
  v11 = [AFAssertionContext newWithBuilder:v20];
  v12 = [(AFAssertionCoordinator *)assertionCoordinator acquireRelinquishableAssertionWithContext:v11 relinquishmentHandler:0];

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke_2;
  v17[3] = &unk_1E73494B0;
  v17[4] = self;
  v18 = v12;
  v19 = v10;
  v14 = v10;
  v15 = v12;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7 = @"effectiveName";
  v8[0] = v2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setUserInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(v9 + 8);
    v12 = 136315906;
    v13 = "[AFPowerAssertionManager takePowerAssertionWithName:]_block_invoke_2";
    v14 = 2048;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v12, 0x2Au);
  }

  v3 = *(a1[4] + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = a1[4];
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(a1[4] + 40);
  }

  result = [v3 setObject:a1[5] forKey:a1[6]];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (AFPowerAssertionManager)initWithIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = AFPowerAssertionManager;
  v5 = [(AFPowerAssertionManager *)&v19 init];
  if (v5)
  {
    if ([identifierCopy length])
    {
      v6 = [identifierCopy copy];
    }

    else
    {
      v6 = @"com.apple.assistant.power-assertion-manager";
    }

    identifier = v5->_identifier;
    v5->_identifier = &v6->isa;

    uTF8String = [@"com.apple.assistant.power-assertion-manager" UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_DEFAULT, 0);

    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v5->_queue;
    v5->_queue = v11;

    v13 = [[AFAssertionCoordinator alloc] initWithIdentifier:@"com.apple.assistant.power-assertion-manager" queue:v5->_queue delegate:v5];
    assertionCoordinator = v5->_assertionCoordinator;
    v5->_assertionCoordinator = v13;

    v5->_powerAssertion = 0;
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v16 = v5->_identifier;
      *buf = 136315650;
      v21 = "[AFPowerAssertionManager initWithIdentifier:]";
      v22 = 2048;
      v23 = v5;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end