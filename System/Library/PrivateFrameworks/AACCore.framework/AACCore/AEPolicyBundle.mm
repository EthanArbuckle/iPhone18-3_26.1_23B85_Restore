@interface AEPolicyBundle
- (AEPolicyBundle)initWithPolicyStore:(id)a3 performancePrimitives:(id)a4 activations:(id)a5 queue:(id)a6;
- (id)activationErrorWithErrors:(uint64_t)a1;
- (id)recoverySession;
- (void)activateSessionWithCompletion:(id)a3;
- (void)recoverWithError:(void *)a3 deactivations:(void *)a4 finalCompletion:;
- (void)runWithRemainingActivations:(void *)a3 remainingDeactivations:(void *)a4 invalidationHandler:(uint64_t)a5 currentEvent:(void *)a6 completion:;
- (void)validateProducedPersistentDeactivations:(uint64_t)a1 currentEvent:;
@end

@implementation AEPolicyBundle

- (AEPolicyBundle)initWithPolicyStore:(id)a3 performancePrimitives:(id)a4 activations:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AEPolicyBundle;
  v15 = [(AEPolicyBundle *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_policyStore, a3);
    objc_storeStrong(&v16->_performancePrimitives, a4);
    v17 = [v13 copy];
    activations = v16->_activations;
    v16->_activations = v17;

    objc_storeStrong(&v16->_queue, a6);
  }

  return v16;
}

void __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) endInterval];
  if ([v9 count])
  {
    v13 = [(AEPolicyBundle *)*(a1 + 40) activationErrorWithErrors:v9];
    [(AEPolicyBundle *)*(a1 + 40) recoverWithError:v13 deactivations:v8 finalCompletion:*(a1 + 56)];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke_2;
    v14[3] = &unk_278BB6B98;
    v10 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v8;
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    v18 = v11;
    v16 = v12;
    v17 = v7;
    [v10 fetchCapturedErrorWithCompletion:v14];
  }
}

void __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke_2(void *a1, void *a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke_2_cold_1(a1, a2, v3);
  }

  else
  {
    __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke_2_cold_2(a1, 0);
  }

  v2 = *MEMORY[0x277D85DE8];
}

BOOL __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(AEPersistentDeactivation *)a2 deactivation];
  v4 = [v3 event] == *(a1 + 32);

  return v4;
}

void __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 88);
  [AEPolicyBundle validateProducedPersistentDeactivations:? currentEvent:?];
  if ([v6 count])
  {
    v8 = [*(a1 + 40) ae_addingItems:v5];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_4;
    v14[3] = &unk_278BB6C78;
    v9 = *(a1 + 48);
    v14[4] = *(a1 + 56);
    v15 = v5;
    v10 = *(a1 + 72);
    v11 = *(a1 + 64);
    v16 = *(a1 + 32);
    v17 = v11;
    v18 = v10;
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v19 = v12;
    v20 = v13;
    [(AEDeactivationPool *)v9 deactivateWithCompletion:v14];
  }
}

void __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ae_addingItems:*(a1 + 40)];
  if ([v3 count])
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_4_cold_1(a1, &v5, v4);
  }
}

void __65__AEPolicyBundle_recoverWithError_deactivations_finalCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AECoreLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__AEPolicyBundle_recoverWithError_deactivations_finalCompletion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

BOOL __71__AEPolicyBundle_validateProducedPersistentDeactivations_currentEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(AEPersistentDeactivation *)a2 deactivation];
  v4 = [v3 event] <= *(a1 + 32);

  return v4;
}

- (void)activateSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [AEInvalidationRouter alloc];
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7 = [(AEInvalidationRouter *)v5 initWithQueue:queue];
  [(AEInvalidationRouter *)v7 setRouterMode:0];
  if (self)
  {
    performancePrimitives = self->_performancePrimitives;
  }

  else
  {
    performancePrimitives = 0;
  }

  v9 = performancePrimitives;
  v10 = [(AEPerformancePrimitives *)v9 beginIntervalWithCategory:@"Totals" name:@"Activate Session"];

  if (self)
  {
    activations = self->_activations;
  }

  else
  {
    activations = 0;
  }

  v12 = activations;
  v13 = [(AEInvalidationRouter *)v7 invalidationHandler];
  OUTLINED_FUNCTION_1();
  v15[1] = 3221225472;
  v15[2] = __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke;
  v15[3] = &unk_278BB6BC0;
  v15[4] = v10;
  v15[5] = self;
  v15[6] = v7;
  v16 = v4;
  v14 = v4;
  [(AEPolicyBundle *)self runWithRemainingActivations:v12 remainingDeactivations:MEMORY[0x277CBEBF8] invalidationHandler:v13 currentEvent:0 completion:v15];
}

- (id)activationErrorWithErrors:(uint64_t)a1
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *MEMORY[0x277CCA578];
    v9[0] = AEPolicySessionFailedToActivateSubsystemsKey;
    v9[1] = v2;
    v10[0] = a2;
    v10[1] = a2;
    v3 = MEMORY[0x277CBEAC0];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v10 forKeys:v9 count:2];

    v6 = AECoreErrorUserInfo(100, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)recoverWithError:(void *)a3 deactivations:(void *)a4 finalCompletion:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = a3;
    v10 = [AERecoveryPolicySession alloc];
    v11 = *(a1 + 32);
    v14 = a1 + 8;
    v12 = *(a1 + 8);
    v13 = *(v14 + 8);
    v15 = v11;
    v16 = v13;
    v17 = [(AERecoveryPolicySession *)&v10->super.isa initWithPolicyStore:v16 performancePrimitives:v15 persistentDeactivations:v9 queue:v12];

    OUTLINED_FUNCTION_1();
    v18[1] = 3221225472;
    v18[2] = __65__AEPolicyBundle_recoverWithError_deactivations_finalCompletion___block_invoke;
    v18[3] = &unk_278BB6CC8;
    v20 = v8;
    v19 = v7;
    [v17 deactivateWithCompletion:v18];
  }
}

- (void)runWithRemainingActivations:(void *)a3 remainingDeactivations:(void *)a4 invalidationHandler:(uint64_t)a5 currentEvent:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    if ([v11 count])
    {
      if (a5 >= 3)
      {
LABEL_8:
        v14[2](v14, v11, v12, MEMORY[0x277CBEBF8]);
        goto LABEL_9;
      }
    }

    else
    {
      v15 = [v12 count];
      if (a5 > 2 || !v15)
      {
        goto LABEL_8;
      }
    }

    v47[4] = a5;
    v48[0] = 0;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke;
    v47[3] = &__block_descriptor_40_e30_B16__0___AEPolicyActivation__8l;
    v34 = [v11 ae_split:v48 includeBlock:v47];
    v33 = v48[0];
    v46 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_2;
    v45[3] = &__block_descriptor_40_e34_B16__0__AEPersistentDeactivation_8l;
    v45[4] = a5;
    v32 = [v12 ae_split:&v46 includeBlock:v45];
    v31 = v46;
    v16 = [AEActivationPool alloc];
    v36 = v14;
    v17 = v13;
    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    v35 = v11;
    v20 = v12;
    v21 = *(a1 + 32);
    v22 = v18;
    v23 = [(AEActivationPool *)&v16->super.isa initWithPolicyStore:v22 performancePrimitives:v21 invalidationHandler:v17 activations:v33 queue:v19];

    v24 = [AEDeactivationPool alloc];
    v26 = *(a1 + 8);
    v25 = *(a1 + 16);
    v27 = *(a1 + 32);
    v28 = v25;
    v29 = v26;
    v12 = v20;
    v11 = v35;
    v30 = [(AEDeactivationPool *)&v24->super.isa initWithPolicyStore:v28 performancePrimitives:v27 persistentDeactivations:v31 queue:v29];

    v13 = v17;
    v14 = v36;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_3;
    v37[3] = &unk_278BB6CA0;
    v37[4] = a1;
    v44 = a5;
    v38 = v12;
    v39 = v30;
    v40 = v32;
    v41 = v34;
    v42 = v36;
    v43 = v13;
    [(AEActivationPool *)v23 activateWithCompletion:v37];
  }

LABEL_9:
}

- (id)recoverySession
{
  v2 = self;
  if (self)
  {
    self = self->_policyStore;
  }

  if (([(AEPolicyBundle *)self exists]& 1) != 0)
  {
    if (v2)
    {
      activations = v2->_activations;
    }

    OUTLINED_FUNCTION_0();
    v14 = 3221225472;
    v15 = __33__AEPolicyBundle_recoverySession__block_invoke;
    v16 = &unk_278BB6BE8;
    v17 = v2;
    v5 = [v4 ae_map:v13];
    v6 = [AERecoveryPolicySession alloc];
    if (v2)
    {
      v7 = v2->_policyStore;
      v8 = v2->_performancePrimitives;
      queue = v2->_queue;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      queue = 0;
    }

    v10 = [(AERecoveryPolicySession *)&v6->super.isa initWithPolicyStore:v7 performancePrimitives:v8 persistentDeactivations:v5 queue:queue];
  }

  else
  {
    v11 = AECoreLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1AA000, v11, OS_LOG_TYPE_DEFAULT, "Policy store does not exist. Skipping recovery session.", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

id *__33__AEPolicyBundle_recoverySession__block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v6 = [v3 identifier];
  v7 = [v5 readOnlyScratchpadForIdentifier:v6];

  v8 = AECoreLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v3 identifier];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_3(&dword_23C1AA000, v11, v12, "Found scratchpad for identifier: %{public}@", v13, v14, v15, v16, v44);
    }

    v8 = [v3 deactivationForScratchpad:v7];
    v17 = AECoreLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v18)
      {
        v19 = [v3 identifier];
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4(&dword_23C1AA000, v20, v21, "Made deactivation for scratchpad with identifier: %{public}@", v22, v23, v24, v25, v44);
      }

      v26 = [AEPersistentDeactivation alloc];
      v17 = [v3 identifier];
      v27 = [(AEPersistentDeactivation *)&v26->super.isa initWithScratchpadIdentifier:v17 deactivation:v8];
    }

    else
    {
      if (v18)
      {
        v35 = [v3 identifier];
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4(&dword_23C1AA000, v36, v37, "Did not make a deactivation for activation with identifier: %{public}@", v38, v39, v40, v41, v44);
      }

      v27 = 0;
    }
  }

  else
  {
    if (v9)
    {
      v28 = [v3 identifier];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_3(&dword_23C1AA000, v29, v30, "Did not find scratchpad for identifier: %{public}@", v31, v32, v33, v34, v44);
    }

    v27 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)validateProducedPersistentDeactivations:(uint64_t)a1 currentEvent:
{
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    v7 = 3221225472;
    v8 = __71__AEPolicyBundle_validateProducedPersistentDeactivations_currentEvent___block_invoke;
    v9 = &__block_descriptor_40_e34_B16__0__AEPersistentDeactivation_8l;
    v10 = v2;
    v4 = [v3 ae_filter:v6];
    if ([v4 count])
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      [v5 handleFailureInMethod:sel_validateProducedPersistentDeactivations_currentEvent_ object:a1 file:@"AEPolicyBundle.m" lineNumber:217 description:{@"Produced deactivations that will not run: %@", v4}];
    }
  }
}

void __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke_2_cold_1(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  *a3 = a2;
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = [v6 arrayWithObjects:a3 count:1];
  v9 = [(AEPolicyBundle *)v5 activationErrorWithErrors:v8];

  [(AEPolicyBundle *)*(a1 + 32) recoverWithError:v9 deactivations:*(a1 + 40) finalCompletion:*(a1 + 64)];
}

void __48__AEPolicyBundle_activateSessionWithCompletion___block_invoke_2_cold_2(void *a1, void *a2)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[4];
  if (v6)
  {
    v6 = v6[4];
  }

  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[4];
  v10 = a1[5];
  if (v9)
  {
    v11 = *(v9 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = v6;
  v13 = v5;
  v14 = a2;
  v15 = [AEActivePolicySession sessionWithPolicyStore:v13 performancePrimitives:v12 invalidationRouter:v7 activations:v8 persistentDeactivations:v10 queue:v11];

  (*(a1[8] + 16))();
}

void __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_4_cold_1(uint64_t a1, id *a2, void *a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __113__AEPolicyBundle_runWithRemainingActivations_remainingDeactivations_invalidationHandler_currentEvent_completion___block_invoke_5;
  a2[3] = &unk_278BB6C50;
  *(a2 + 2) = *(a1 + 48);
  a2[6] = a3;
  a2[7] = *(a1 + 72);
  a2[9] = *(a1 + 80);
  a2[8] = *(a1 + 64);
  dispatch_async(v6, a2);
}

void __65__AEPolicyBundle_recoverWithError_deactivations_finalCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_23C1AA000, v0, OS_LOG_TYPE_ERROR, "Failed to run deactivations during recovery session %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end