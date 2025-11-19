@interface AEActivePolicySession
+ (id)sessionWithPolicyStore:(id)a3 performancePrimitives:(id)a4 invalidationRouter:(id)a5 activations:(id)a6 persistentDeactivations:(id)a7 queue:(id)a8;
- (id)initWithPolicyStore:(void *)a3 performancePrimitives:(void *)a4 invalidationRouter:(void *)a5 activations:(void *)a6 persistentDeactivations:(void *)a7 queue:;
- (void)deactivateWithCompletion:(id)a3;
- (void)invalidationRouter:(id)a3 didReceiveInvalidationError:(id)a4;
- (void)runRemainingActivations:(void *)a3 remainingDeactivations:(uint64_t)a4 currentEvent:(void *)a5 errors:(void *)a6 completion:;
- (void)setInvalidationHandler:(id)a3;
- (void)validateProducedPersistentDeactivations:(uint64_t)a1 currentEvent:;
@end

@implementation AEActivePolicySession

- (void)deactivateWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    [(AEInvalidationRouter *)self->_invalidationRouter setRouterMode:0];
    performancePrimitives = self->_performancePrimitives;
  }

  else
  {
    [AEActivePolicySession deactivateWithCompletion:];
    performancePrimitives = 0;
  }

  v6 = performancePrimitives;
  v7 = [(AEPerformancePrimitives *)v6 beginIntervalWithCategory:@"Totals" name:@"Deactivate Session"];

  if (self)
  {
    v8 = self->_activation;
    persistentDeactivations = self->_persistentDeactivations;
  }

  else
  {
    v8 = 0;
    persistentDeactivations = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__AEActivePolicySession_deactivateWithCompletion___block_invoke;
  v11[3] = &unk_278BB6E98;
  v11[4] = self;
  v11[5] = v7;
  v12 = v4;
  v10 = v4;
  [(AEActivePolicySession *)self runRemainingActivations:v8 remainingDeactivations:persistentDeactivations currentEvent:3 errors:MEMORY[0x277CBEBF8] completion:v11];
}

BOOL __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(AEPersistentDeactivation *)a2 deactivation];
  v4 = [v3 event] == *(a1 + 32);

  return v4;
}

void __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 80);
  [AEActivePolicySession validateProducedPersistentDeactivations:? currentEvent:?];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_4;
  v14[3] = &unk_278BB6EE8;
  v8 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = v6;
  v9 = *(a1 + 64);
  v17 = *(a1 + 56);
  v18 = v5;
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v19 = v9;
  v21 = v10;
  v20 = v11;
  v12 = v5;
  v13 = v6;
  [(AEDeactivationPool *)v8 deactivateWithCompletion:v14];
}

BOOL __78__AEActivePolicySession_validateProducedPersistentDeactivations_currentEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(AEPersistentDeactivation *)a2 deactivation];
  v4 = [v3 event] <= *(a1 + 32);

  return v4;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = MEMORY[0x23EECC850](a3, a2);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  v6 = self->_invalidationHandler != 0;
  invalidationRouter = self->_invalidationRouter;

  [(AEInvalidationRouter *)invalidationRouter setRouterMode:v6];
}

- (void)invalidationRouter:(id)a3 didReceiveInvalidationError:(id)a4
{
  v5 = a4;
  v6 = [(AEActivePolicySession *)self invalidationHandler];

  if (v6)
  {
    v7 = AECoreLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AEActivePolicySession invalidationRouter:v5 didReceiveInvalidationError:v7];
    }

    v8 = [(AEActivePolicySession *)self invalidationHandler];
    (v8)[2](v8, v5);
  }
}

- (id)initWithPolicyStore:(void *)a3 performancePrimitives:(void *)a4 invalidationRouter:(void *)a5 activations:(void *)a6 persistentDeactivations:(void *)a7 queue:
{
  v25 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = AEActivePolicySession;
    v19 = objc_msgSendSuper2(&v26, sel_init);
    a1 = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      v20 = [v16 copy];
      v21 = a1[6];
      a1[6] = v20;

      v22 = [v17 copy];
      v23 = a1[7];
      a1[7] = v22;

      objc_storeStrong(a1 + 5, a7);
    }
  }

  return a1;
}

+ (id)sessionWithPolicyStore:(id)a3 performancePrimitives:(id)a4 invalidationRouter:(id)a5 activations:(id)a6 persistentDeactivations:(id)a7 queue:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[AEActivePolicySession alloc] initWithPolicyStore:v18 performancePrimitives:v17 invalidationRouter:v16 activations:v15 persistentDeactivations:v14 queue:v13];

  [v16 setRouterDelegate:v19];

  return v19;
}

void __50__AEActivePolicySession_deactivateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__AEActivePolicySession_deactivateWithCompletion___block_invoke_2;
  v9[3] = &unk_278BB6E70;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v4;
  [v6 fetchCapturedErrorWithCompletion:v9];
}

void __50__AEActivePolicySession_deactivateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) endInterval];
  v4 = *(a1 + 40);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 ae_adding:v3];

    v5 = v6;
  }

  v7 = AECoreLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_0(&dword_23C1AA000, v8, v9, "Finished running deactivations", v10, v11, v12, v13, v35, v36, v37, v38, v39, v40, 0);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 hasPersistentData];
  v17 = AECoreLog();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23C1AA000, v18, OS_LOG_TYPE_FAULT, "Some scratchpads were not removed meaning some deactivations failed. Will reattempt to recover on next launch.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0(&dword_23C1AA000, v19, v20, "No scratchpads are left after running deactivations. Cleaning up all state…", v21, v22, v23, v24, v35, v36, v37, v38, v39, v40, 0);
    }

    v25 = *(a1 + 48);
    if (v25)
    {
      v25 = v25[2];
    }

    v36 = 0;
    v26 = v25;
    v27 = [v26 cleanUpPolicyStoreWithError:&v36];
    v18 = v36;

    if ((v27 & 1) == 0)
    {
      v28 = AECoreLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v34 = [v18 ae_verboseDescription];
        *buf = 138543362;
        v42 = v34;
        _os_log_error_impl(&dword_23C1AA000, v28, OS_LOG_TYPE_ERROR, "Failed to clean up policy store. Error: %{public}@", buf, 0xCu);
      }

      v29 = [v5 ae_adding:v18];

      v5 = v29;
    }
  }

  if ([v5 count])
  {
    v30 = *MEMORY[0x277CCA578];
    v37 = AEPolicySessionFailedToDeactivateSubsystemsKey;
    v38 = v30;
    v39 = v5;
    v40 = v5;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v37 count:2];
    v32 = AECoreErrorUserInfo(101, v31);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)runRemainingActivations:(void *)a3 remainingDeactivations:(uint64_t)a4 currentEvent:(void *)a5 errors:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    if ([v11 count])
    {
      if (a4 >= 6)
      {
LABEL_8:
        v14[2](v14, v13);
        goto LABEL_9;
      }
    }

    else
    {
      v15 = [v12 count];
      if (a4 > 5 || !v15)
      {
        goto LABEL_8;
      }
    }

    v46[4] = a4;
    v47[0] = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke;
    v46[3] = &__block_descriptor_40_e30_B16__0___AEPolicyActivation__8l;
    v35 = [v11 ae_split:v47 includeBlock:v46];
    v36 = v11;
    v34 = v47[0];
    v45 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_2;
    v44[3] = &__block_descriptor_40_e34_B16__0__AEPersistentDeactivation_8l;
    v44[4] = a4;
    v33 = [v12 ae_split:&v45 includeBlock:v44];
    v32 = v45;
    v16 = [AEActivationPool alloc];
    v37 = v13;
    v17 = v12;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = v19;
    v22 = v18;
    v23 = [v20 invalidationHandler];
    v24 = [(AEActivationPool *)&v16->super.isa initWithPolicyStore:v22 performancePrimitives:v21 invalidationHandler:v23 activations:v34 queue:*(a1 + 40)];

    v25 = [AEDeactivationPool alloc];
    v26 = *(a1 + 16);
    v27 = *(a1 + 40);
    v28 = *(a1 + 24);
    v29 = v26;
    p_isa = &v25->super.isa;
    v12 = v17;
    v13 = v37;
    v31 = [(AEDeactivationPool *)p_isa initWithPolicyStore:v29 performancePrimitives:v28 persistentDeactivations:v32 queue:v27];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_3;
    v38[3] = &unk_278BB6F10;
    v43 = a4;
    v38[4] = a1;
    v38[5] = v31;
    v39 = v37;
    v40 = v33;
    v41 = v35;
    v42 = v14;
    [(AEActivationPool *)v24 activateWithCompletion:v38];

    v11 = v36;
  }

LABEL_9:
}

- (void)validateProducedPersistentDeactivations:(uint64_t)a1 currentEvent:
{
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    v7 = 3221225472;
    v8 = __78__AEActivePolicySession_validateProducedPersistentDeactivations_currentEvent___block_invoke;
    v9 = &__block_descriptor_40_e34_B16__0__AEPersistentDeactivation_8l;
    v10 = v2;
    v4 = [v3 ae_filter:v6];
    if ([v4 count])
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      [v5 handleFailureInMethod:sel_validateProducedPersistentDeactivations_currentEvent_ object:a1 file:@"AEActivePolicySession.m" lineNumber:190 description:{@"Produced deactivations that will not run: %@", v4}];
    }
  }
}

void __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_0();
  v13 = 3221225472;
  v14 = __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_5;
  v15 = &unk_278BB6EC0;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = v3;
  v6 = *(a1 + 64);
  v19 = *(a1 + 56);
  v7 = v6;
  v8 = *(a1 + 32);
  v20 = v7;
  v21 = v8;
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v22 = *(a1 + 72);
  v24 = v9;
  v23 = v10;
  v11 = v3;
  dispatch_async(v5, block);
}

void __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) ae_addingItems:*(a1 + 40)];
  v4 = [v2 ae_addingItems:*(a1 + 48)];

  v3 = [*(a1 + 56) ae_addingItems:*(a1 + 64)];
  [(AEActivePolicySession *)*(a1 + 72) runRemainingActivations:v3 remainingDeactivations:*(a1 + 96) + 1 currentEvent:v4 errors:*(a1 + 88) completion:?];
}

- (void)invalidationRouter:(void *)a1 didReceiveInvalidationError:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 ae_verboseDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_23C1AA000, a2, OS_LOG_TYPE_ERROR, "Active policy session encountered plugin invalidation. Reporting issue. Error: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end