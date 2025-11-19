@interface SATelephonyManager
- (SATelephonyDelegateProtocol)delegate;
- (SATelephonyManager)initWithQueue:(id)a3;
- (void)_callStatusChanged:(id)a3;
- (void)_canPlaceNewCall:(id)a3;
- (void)_currentCallEnded;
- (void)_currentCallEndedWithUpdatedFailureStatus:(BOOL)a3;
- (void)handleCallChanged:(id)a3 force:(BOOL)a4;
- (void)placeVoiceCall:(id)a3 completionHandler:(id)a4;
@end

@implementation SATelephonyManager

- (SATelephonyManager)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SATelephonyManager;
  v6 = [(SATelephonyManager *)&v9 init];
  if (v6)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
    objc_storeStrong(&v6->_callQueue, a3);
  }

  return v6;
}

- (void)placeVoiceCall:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sa_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SATelephonyManager placeVoiceCall:completionHandler:];
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke;
  v11[3] = &unk_278B67B70;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [(SATelephonyManager *)self _canPlaceNewCall:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained setCallInProgress:1];
    [v5 setCallFailed:0];
    v6 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:*(a1 + 32)];
    v7 = objc_alloc_init(MEMORY[0x277D6EE28]);
    v8 = [v7 defaultProvider];
    v9 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v8];
    [v9 setHandle:v6];
    [v9 setShowUIPrompt:0];
    [v9 setPreferDefaultApp:0];
    v10 = [v9 isValid];
    v11 = sa_default_log();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_cold_1();
      }

      v13 = sa_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 URL];
        *buf = 136315395;
        v42 = "[SATelephonyManager placeVoiceCall:completionHandler:]_block_invoke";
        v43 = 2113;
        v44 = v14;
        _os_log_impl(&dword_23AA4D000, v13, OS_LOG_TYPE_DEFAULT, "%s - request is valid, request.URL: %{private}@", buf, 0x16u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_8;
      block[3] = &unk_278B67B48;
      v37 = v9;
      objc_copyWeak(&v39, (a1 + 48));
      v38 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v39);
      v15 = v37;
    }

    else
    {
      v27 = a1;
      v28 = v8;
      v30 = v6;
      v31 = v5;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v9 URL];
        *buf = 136315650;
        v42 = "[SATelephonyManager placeVoiceCall:completionHandler:]_block_invoke_4";
        v43 = 2112;
        v44 = v9;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_23AA4D000, v12, OS_LOG_TYPE_DEFAULT, "%s - request is not valid, request: %@, request.URL: %@", buf, 0x20u);
      }

      v29 = v7;

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = [v9 validityErrors];
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v33;
        do
        {
          v22 = 0;
          do
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v32 + 1) + 8 * v22);
            v24 = sa_default_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v42 = "[SATelephonyManager placeVoiceCall:completionHandler:]_block_invoke";
              v43 = 2112;
              v44 = v23;
              _os_log_error_impl(&dword_23AA4D000, v24, OS_LOG_TYPE_ERROR, "%s - unable to place voice call, error: %@", buf, 0x16u);
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v20);
      }

      v25 = *(v27 + 40);
      v15 = [SAError errorWithCode:3];
      (*(v25 + 16))(v25, 0, v15);
      v6 = v30;
      v5 = v31;
      v8 = v28;
      v7 = v29;
    }
  }

  else
  {
    v16 = *(a1 + 40);
    v6 = [SAError errorWithCode:4];
    (*(v16 + 16))(v16, 0, v6);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_2;
  v4[3] = &unk_278B67B20;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [v2 dialWithRequest:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_3;
  block[3] = &unk_278B67AF8;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCall:*(a1 + 32)];
  [WeakRetained handleCallChanged:*(a1 + 32) force:1];
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32) != 0, 0);
}

- (void)_currentCallEndedWithUpdatedFailureStatus:(BOOL)a3
{
  objc_initWeak(&location, self);
  callQueue = self->_callQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SATelephonyManager__currentCallEndedWithUpdatedFailureStatus___block_invoke;
  block[3] = &unk_278B67B98;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(callQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __64__SATelephonyManager__currentCallEndedWithUpdatedFailureStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCallFailed:*(a1 + 40)];
  [WeakRetained _currentCallEnded];
}

- (void)_currentCallEnded
{
  objc_initWeak(&location, self);
  callQueue = self->_callQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SATelephonyManager__currentCallEnded__block_invoke;
  v4[3] = &unk_278B67BC0;
  objc_copyWeak(&v5, &location);
  dispatch_async(callQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__SATelephonyManager__currentCallEnded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained callInProgress])
  {
    [WeakRetained setCallInProgress:0];
    [WeakRetained setCall:0];
    v1 = [WeakRetained delegate];
    if ([WeakRetained callFailed])
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    [v1 telephonyManager:WeakRetained didUpdateVoiceCallStatus:v2];
  }
}

- (void)_canPlaceNewCall:(id)a3
{
  v4 = a3;
  if (+[SAGestalt inAirplaneMode])
  {
    callQueue = self->_callQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SATelephonyManager__canPlaceNewCall___block_invoke;
    block[3] = &unk_278B67BE8;
    v13 = v4;
    v6 = v4;
    dispatch_async(callQueue, block);
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SATelephonyManager__canPlaceNewCall___block_invoke_13;
    v8[3] = &unk_278B67C10;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __39__SATelephonyManager__canPlaceNewCall___block_invoke(uint64_t a1)
{
  v2 = sa_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39__SATelephonyManager__canPlaceNewCall___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __39__SATelephonyManager__canPlaceNewCall___block_invoke_13(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentCalls];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SATelephonyManager__canPlaceNewCall___block_invoke_2;
  block[3] = &unk_278B67AF8;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void __39__SATelephonyManager__canPlaceNewCall___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = v4;
  v7 = *v18;
  *&v5 = 136315138;
  v16 = v5;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = [WeakRetained call];
      if ([v9 isEqualToCall:v10])
      {
        v11 = [v9 status];

        if (v11 == 6)
        {
          v12 = sa_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = "[SATelephonyManager _canPlaceNewCall:]_block_invoke_2";
            _os_log_impl(&dword_23AA4D000, v12, OS_LOG_TYPE_DEFAULT, "%s - current call out of sync, cleaning up", buf, 0xCu);
          }

          [WeakRetained _currentCallEnded];
          continue;
        }
      }

      else
      {
      }

      if ([v9 status] != 6)
      {
        v13 = sa_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v16;
          v22 = "[SATelephonyManager _canPlaceNewCall:]_block_invoke";
          _os_log_impl(&dword_23AA4D000, v13, OS_LOG_TYPE_DEFAULT, "%s - cannot place new call because there is already a call in progress", buf, 0xCu);
        }

        goto LABEL_19;
      }
    }

    v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v14 = sa_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __39__SATelephonyManager__canPlaceNewCall___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleCallChanged:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SATelephonyManager_handleCallChanged_force___block_invoke;
  v8[3] = &unk_278B67C38;
  objc_copyWeak(&v10, &location);
  v9 = v6;
  v11 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = [WeakRetained call];
  v6 = [v3 isEqualToCall:v5];

  v7 = sa_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*v4 handle];
      v10 = [v9 value];
      v29 = 136315394;
      v30 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_23AA4D000, v8, OS_LOG_TYPE_DEFAULT, "%s - we found our call, call: %@", &v29, 0x16u);
    }

    v11 = [WeakRetained call];
    v12 = [v11 status];
    if (v12 == [*v4 status])
    {
      v13 = *(a1 + 48);

      if ((v13 & 1) == 0)
      {
        v8 = sa_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_2(v4);
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v8 = [WeakRetained delegate];
    v14 = [*v4 status];
    v15 = sa_default_log();
    v16 = v15;
    switch(v14)
    {
      case 1:
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*v4 handle];
          v27 = [v26 value];
          v29 = 136315650;
          v30 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
          v31 = 2112;
          v32 = v27;
          v33 = 2048;
          v34 = 1;
          _os_log_impl(&dword_23AA4D000, v16, OS_LOG_TYPE_DEFAULT, "%s - updating status for call, call: %@, status: %lu", &v29, 0x20u);
        }

        [WeakRetained setCallFailed:0];
        v19 = v8;
        v20 = WeakRetained;
        v21 = 1;
        goto LABEL_25;
      case 6:
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [*v4 handle];
          v23 = [v22 value];
          v24 = [WeakRetained callFailed];
          v29 = 136315650;
          v30 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
          v25 = 2;
          if (v24)
          {
            v25 = 3;
          }

          v31 = 2112;
          v32 = v23;
          v33 = 2048;
          v34 = v25;
          _os_log_impl(&dword_23AA4D000, v16, OS_LOG_TYPE_DEFAULT, "%s - updating status for call, call: %@, status: %lu", &v29, 0x20u);
        }

        [WeakRetained _currentCallEndedWithUpdatedFailureStatus:{objc_msgSend(*v4, "sa_hasFailed")}];
        break;
      case 3:
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*v4 handle];
          v18 = [v17 value];
          v29 = 136315650;
          v30 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
          v31 = 2112;
          v32 = v18;
          v33 = 2048;
          v34 = 0;
          _os_log_impl(&dword_23AA4D000, v16, OS_LOG_TYPE_DEFAULT, "%s - updating status for call, call: %@, status: %lu", &v29, 0x20u);
        }

        v19 = v8;
        v20 = WeakRetained;
        v21 = 0;
LABEL_25:
        [v19 telephonyManager:v20 didUpdateVoiceCallStatus:v21];
        break;
      default:
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_3(v4);
        }

        break;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_1((a1 + 32));
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_callStatusChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SATelephonyManager _callStatusChanged:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23AA4D000, v5, OS_LOG_TYPE_DEFAULT, "%s, call: %@", &v7, 0x16u);
  }

  [(SATelephonyManager *)self handleCallChanged:v4 force:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (SATelephonyDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)placeVoiceCall:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__SATelephonyManager__canPlaceNewCall___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__SATelephonyManager__canPlaceNewCall___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 callUUID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*a1 handle];
  v9 = [v2 value];
  [*a1 status];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_3(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 handle];
  v2 = [v1 value];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end