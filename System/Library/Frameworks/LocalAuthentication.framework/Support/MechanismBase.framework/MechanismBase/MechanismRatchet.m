@interface MechanismRatchet
- (BOOL)_isStateSatisfiable:(id)a3;
- (LACRemoteUI)remoteUiDelegate;
- (MechanismRatchet)initWithParams:(id)a3 request:(id)a4;
- (NSString)description;
- (void)_addBiometryConfirmationCredentialWithCompletion:(id)a3;
- (void)_beginSecurityDelay;
- (void)_continue;
- (void)_dismiss;
- (void)_finishInState:(id)a3 result:(id)a4 error:(id)a5 retryStrategy:(int64_t)a6;
- (void)_ratchetStateCompositeWithCompletion:(id)a3;
- (void)_runWithShowUIBlock:(id)a3;
- (void)_startObservingRatchetState;
- (void)_stopObservingRatchetState;
- (void)finishRunWithResult:(id)a3 error:(id)a4;
- (void)handleUIEvent:(int64_t)a3 params:(id)a4;
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
@end

@implementation MechanismRatchet

- (MechanismRatchet)initWithParams:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"AcmContextRecord"];
  v17.receiver = self;
  v17.super_class = MechanismRatchet;
  v9 = [(MechanismACM *)&v17 initWithEventIdentifier:12 remoteViewController:6 acmContextRecord:v8 request:v7];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D23FD0]) initWithACMContext:{-[MechanismACM acmContext](v9, "acmContext")}];
    acmHelper = v9->_acmHelper;
    v9->_acmHelper = v10;

    v9->_coolOffDuration = 0.0;
    v12 = [v6 objectForKeyedSubscript:@"ACMRequirement"];
    requirement = v9->_requirement;
    v9->_requirement = v12;

    v14 = [MEMORY[0x277D24048] sharedInstance];
    notificationCenter = v9->_notificationCenter;
    v9->_notificationCenter = v14;
  }

  return v9;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MechanismBase *)self showUIBlock];
  [(MechanismBase *)self setShowUIBlock:0];
  v13.receiver = self;
  v13.super_class = MechanismRatchet;
  [(MechanismBase *)&v13 runWithHints:v10 eventsDelegate:v9 reply:v8];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &__block_literal_global_2;
  }

  [(MechanismRatchet *)self _runWithShowUIBlock:v12];
}

- (void)handleUIEvent:(int64_t)a3 params:(id)a4
{
  v6 = a4;
  if (a3 == 12)
  {
    v7 = v6;
    [(MechanismRatchet *)self _continue];
  }

  else
  {
    if (a3 != 11)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(MechanismRatchet *)self _dismiss];
  }

  v6 = v7;
LABEL_6:
}

- (void)finishRunWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MechanismRatchet *)self _stopObservingRatchetState];
  v8.receiver = self;
  v8.super_class = MechanismRatchet;
  [(MechanismBase *)&v8 finishRunWithResult:v7 error:v6];
}

- (void)_finishInState:(id)a3 result:(id)a4 error:(id)a5 retryStrategy:(int64_t)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 | v11)
  {
    [(MechanismRatchet *)self finishRunWithResult:v10 error:v11];
  }

  else
  {
    v12 = [(MechanismRatchet *)self _isStateSatisfiable:v16];
    v13 = a6 != 2 && v12;
    if (a6 == 1 || v13)
    {
      v14 = [MEMORY[0x277CD47F0] errorWithCode:-1024];
    }

    else
    {
      v14 = [MEMORY[0x277CD47F0] errorWithCode:-1 subcode:6 message:@"Unsatisfiable constraint."];
    }

    v15 = v14;
    [(MechanismRatchet *)self finishRunWithResult:0 error:v14];
  }
}

- (void)_runWithShowUIBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__MechanismRatchet__runWithShowUIBlock___block_invoke;
  v10[3] = &unk_278A62BC8;
  objc_copyWeak(&v12, &location);
  v5 = v4;
  v11 = v5;
  v6 = MEMORY[0x23EE73C30](v10);
  v7 = [(MechanismBase *)self policyOptions];
  v8 = [v7 objectForKeyedSubscript:&unk_284B78918];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [(MechanismRatchet *)self _addBiometryConfirmationCredentialWithCompletion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __40__MechanismRatchet__runWithShowUIBlock___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = LACLogDTOUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = WeakRetained;
      _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%@ Will perform ratchet state query", buf, 0xCu);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__MechanismRatchet__runWithShowUIBlock___block_invoke_16;
    v7[3] = &unk_278A62BA0;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = v3;
    v9 = *(a1 + 32);
    [WeakRetained _ratchetStateCompositeWithCompletion:v7];

    objc_destroyWeak(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __40__MechanismRatchet__runWithShowUIBlock___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = v5;
LABEL_8:
      [WeakRetained _finishInState:v10 error:v9];
      goto LABEL_9;
    }

    v11 = LACLogDTOUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 ratchetState];
      *buf = 138412546;
      v31 = v8;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "%@ Did finish ratchet state query %{public}@", buf, 0x16u);
    }

    if (v6)
    {
LABEL_7:
      WeakRetained = v8;
      v10 = v5;
      v9 = v6;
      goto LABEL_8;
    }

    if ([v8 _shouldAddRatchetCredential])
    {
      v14 = v8[34];
      v29 = 0;
      v15 = [v14 addCredential:22 scope:1 error:&v29];
      v6 = v29;
      if ((v15 & 1) == 0)
      {
        v16 = LACLogDTOUI();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __40__MechanismRatchet__runWithShowUIBlock___block_invoke_16_cold_1();
        }

        goto LABEL_7;
      }
    }

    else
    {
      v6 = 0;
    }

    v17 = [MechanismRatchetFlow alloc];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __40__MechanismRatchet__runWithShowUIBlock___block_invoke_18;
    v26[3] = &unk_278A62B78;
    v18 = v5;
    v27 = v18;
    v28 = v8;
    v19 = __40__MechanismRatchet__runWithShowUIBlock___block_invoke_18(v26);
    v20 = [(MechanismRatchetFlow *)v17 initWithParams:v19];

    if ([(MechanismRatchetFlow *)v20 shouldFinishSuccessfullyWithoutUI])
    {
      v21 = LACLogDTOUI();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_impl(&dword_238B95000, v21, OS_LOG_TYPE_DEFAULT, "%@ Skipping UI presentation and finishing with success", buf, 0xCu);
      }

      [v8 _finishInState:v18 result:MEMORY[0x277CBEC10]];
    }

    else
    {
      v22 = [(MechanismRatchetFlow *)v20 shouldFinishWithoutUI];
      v23 = LACLogDTOUI();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = [v18 ratchetState];
          *buf = 138412546;
          v31 = v8;
          v32 = 2112;
          v33 = v25;
          _os_log_impl(&dword_238B95000, v23, OS_LOG_TYPE_DEFAULT, "%@ Skipping UI presentation and finishing with state: %@", buf, 0x16u);
        }

        [v8 _finishInState:v18];
      }

      else
      {
        if (v24)
        {
          *buf = 138412290;
          v31 = v8;
          _os_log_impl(&dword_238B95000, v23, OS_LOG_TYPE_DEFAULT, "%@ Will proceed with UI presentation", buf, 0xCu);
        }

        if ([(MechanismRatchetFlow *)v20 needsCountdownUI])
        {
          [(MechanismRatchetFlow *)v20 countdownDuration];
          [v8 setCoolOffDuration:?];
        }

        if ([(MechanismRatchetFlow *)v20 needsGracePeriodUI])
        {
          [(MechanismRatchetFlow *)v20 gracePeriodDuration];
          [v8 setGracePeriodDuration:?];
        }

        [v8 _startObservingRatchetState];
        (*(*(a1 + 40) + 16))();
      }
    }
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

MutableMechanismRatchetFlowParams *__40__MechanismRatchet__runWithShowUIBlock___block_invoke_18(uint64_t a1)
{
  v2 = [[MutableMechanismRatchetFlowParams alloc] initWithStateComposite:*(a1 + 32)];
  -[MutableMechanismRatchetFlowParams setHandlingBiometryMatchConfirmedRequirement:](v2, "setHandlingBiometryMatchConfirmedRequirement:", [*(*(a1 + 40) + 280) integerValue] == 27);
  v3 = [*(a1 + 40) policyOptions];
  v4 = [v3 objectForKeyedSubscript:&unk_284B788E8];
  -[MutableMechanismRatchetFlowParams setSkipCountdownUI:](v2, "setSkipCountdownUI:", [v4 BOOLValue]);

  v5 = [*(a1 + 40) policyOptions];
  v6 = [v5 objectForKeyedSubscript:&unk_284B788E8];
  -[MutableMechanismRatchetFlowParams setSkipBeginSecurityDelayUI:](v2, "setSkipBeginSecurityDelayUI:", [v6 BOOLValue]);

  v7 = [*(a1 + 40) policyOptions];
  v8 = [v7 objectForKeyedSubscript:&unk_284B78900];
  -[MutableMechanismRatchetFlowParams setSkipGracePeriodUI:](v2, "setSkipGracePeriodUI:", [v8 BOOLValue]);

  return v2;
}

- (void)_ratchetStateCompositeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MechanismBase *)self request];
  v6 = [v5 serviceLocator];
  v7 = NSStringFromProtocol(&unk_284B7EBE0);
  v8 = [v6 serviceWithIdentifier:v7];

  if (v8 && ([v8 conformsToProtocol:&unk_284B7EBE0] & 1) != 0)
  {
    v9 = [v8 ratchetStateProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__MechanismRatchet__ratchetStateCompositeWithCompletion___block_invoke;
    v11[3] = &unk_278A62BF0;
    v12 = v4;
    [v9 ratchetStateCompositeWithCompletion:v11];
  }

  else
  {
    v10 = [MEMORY[0x277CD47F0] errorWithCode:-1000 message:@"Missing LACDTOService dependency"];
    (*(v4 + 2))(v4, 0, v10);
  }
}

- (void)_dismiss
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__MechanismRatchet__dismiss__block_invoke;
  v3[3] = &unk_278A62C18;
  objc_copyWeak(&v4, &location);
  [(MechanismRatchet *)self _ratchetStateCompositeWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __28__MechanismRatchet__dismiss__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _finishInState:v8 error:v5];
    }

    else
    {
      [WeakRetained _finishInState:v8 retryStrategy:2];
    }
  }
}

- (void)_continue
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__MechanismRatchet__continue__block_invoke;
  v3[3] = &unk_278A62C18;
  objc_copyWeak(&v4, &location);
  [(MechanismRatchet *)self _ratchetStateCompositeWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __29__MechanismRatchet__continue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _finishInState:v10 error:v5];
    }

    else
    {
      v8 = [v10 ratchetState];
      v9 = [v8 rawValue];

      if (v9)
      {
        [v7 _finishInState:v10];
      }

      else
      {
        [v7 _beginSecurityDelay];
      }
    }
  }
}

- (void)_beginSecurityDelay
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__MechanismRatchet__beginSecurityDelay__block_invoke;
  v3[3] = &unk_278A62C68;
  objc_copyWeak(&v4, &location);
  [(MechanismRatchet *)self _addBiometryConfirmationCredentialWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __39__MechanismRatchet__beginSecurityDelay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__MechanismRatchet__beginSecurityDelay__block_invoke_2;
    v5[3] = &unk_278A62C40;
    objc_copyWeak(&v7, (a1 + 32));
    v6 = v3;
    [WeakRetained _ratchetStateCompositeWithCompletion:v5];

    objc_destroyWeak(&v7);
  }
}

void __39__MechanismRatchet__beginSecurityDelay__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v15;
LABEL_6:
      [WeakRetained _finishInState:v9 error:v8];
      goto LABEL_7;
    }

    if (v5)
    {
      v9 = v15;
      v8 = v5;
      goto LABEL_6;
    }

    v10 = [v15 ratchetState];
    [v10 duration];
    v12 = v11;
    if ([v10 rawValue] != 1 || v12 == 0.0)
    {
      [v7 _finishInState:v15 retryStrategy:{objc_msgSend(v10, "rawValue") == 0}];
    }

    else
    {
      [v7 setCoolOffDuration:v12];
      v13 = [v7 remoteUiDelegate];
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      [v13 mechanismEvent:18 value:v14 reply:&__block_literal_global_98];
    }
  }

LABEL_7:
}

- (void)_addBiometryConfirmationCredentialWithCompletion:(id)a3
{
  v4 = a3;
  acmHelper = self->_acmHelper;
  v14 = 0;
  v6 = [(LACACMHelper *)acmHelper addCredential:23 scope:1 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = self->_acmHelper;
    v9 = [MEMORY[0x277D23FD0] acmPolicyForPolicy:{-[MechanismBase policy](self, "policy")}];
    v10 = [(MechanismBase *)self maxGlobalCredentialAge];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__MechanismRatchet__addBiometryConfirmationCredentialWithCompletion___block_invoke;
    v12[3] = &unk_278A62C90;
    v12[4] = self;
    v13 = v4;
    [(LACACMHelper *)v8 preflightPolicy:v9 parameters:0 maxGlobalCredentialAge:v10 processRequirement:v12];
  }

  else
  {
    v11 = LACLogDTOUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MechanismRatchet _addBiometryConfirmationCredentialWithCompletion:];
    }

    (*(v4 + 2))(v4, v7);
  }
}

void __69__MechanismRatchet__addBiometryConfirmationCredentialWithCompletion___block_invoke(uint64_t a1, int a2, int a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = LACLogDTOUI();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138413058;
    v13 = v10;
    v14 = 1024;
    v15 = a2;
    v16 = 1024;
    v17 = a3;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_238B95000, v9, OS_LOG_TYPE_DEFAULT, "%@ preflew policy with status: %d, policySatisfied: %d, error: %@", &v12, 0x22u);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isStateSatisfiable:(id)a3
{
  v3 = [a3 ratchetState];
  v4 = [v3 rawValue];

  return (v4 - 2) < 3;
}

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  v5 = a3;
  if (self->_notificationCenter == v5)
  {
    v6 = *MEMORY[0x277D23E50];
    if (LACDarwinNotificationsEqual())
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x277CD47C8] queue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __62__MechanismRatchet_notificationCenter_didReceiveNotification___block_invoke;
      v8[3] = &unk_278A626F0;
      objc_copyWeak(&v9, &location);
      dispatch_async(v7, v8);

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __62__MechanismRatchet_notificationCenter_didReceiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __62__MechanismRatchet_notificationCenter_didReceiveNotification___block_invoke_2;
    v3[3] = &unk_278A62C18;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained _ratchetStateCompositeWithCompletion:v3];
    objc_destroyWeak(&v4);
  }
}

void __62__MechanismRatchet_notificationCenter_didReceiveNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained && [WeakRetained _isStateSatisfiable:v8])
  {
    [v6 setCoolOffDuration:0.0];
    v7 = [v6 remoteUiDelegate];
    [v7 mechanismEvent:19 reply:&__block_literal_global_102];
  }
}

- (void)_startObservingRatchetState
{
  if (([(LACDarwinNotificationCenter *)self->_notificationCenter hasObserver:self]& 1) == 0)
  {
    notificationCenter = self->_notificationCenter;
    v4 = *MEMORY[0x277D23E50];

    [(LACDarwinNotificationCenter *)notificationCenter addObserver:self notification:v4];
  }
}

- (void)_stopObservingRatchetState
{
  if ([(LACDarwinNotificationCenter *)self->_notificationCenter hasObserver:self])
  {
    notificationCenter = self->_notificationCenter;

    [(LACDarwinNotificationCenter *)notificationCenter removeObserver:self];
  }
}

- (NSString)description
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"coolOffDuration: %.2f", *&self->_coolOffDuration];
  v12[0] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACMRequirement: %@", self->_requirement];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v7 componentsJoinedByString:@" "];;
  v9 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v8];;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (LACRemoteUI)remoteUiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUiDelegate);

  return WeakRetained;
}

void __40__MechanismRatchet__runWithShowUIBlock___block_invoke_16_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 22;
  _os_log_error_impl(&dword_238B95000, v0, OS_LOG_TYPE_ERROR, "%@ Could not add credential(%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_addBiometryConfirmationCredentialWithCompletion:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 23;
  _os_log_error_impl(&dword_238B95000, v0, OS_LOG_TYPE_ERROR, "%@ could not add credential(%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end