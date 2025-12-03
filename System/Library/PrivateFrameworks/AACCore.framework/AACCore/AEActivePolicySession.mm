@interface AEActivePolicySession
+ (id)sessionWithPolicyStore:(id)store performancePrimitives:(id)primitives invalidationRouter:(id)router activations:(id)activations persistentDeactivations:(id)deactivations queue:(id)queue;
- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives invalidationRouter:(void *)router activations:(void *)activations persistentDeactivations:(void *)deactivations queue:;
- (void)deactivateWithCompletion:(id)completion;
- (void)invalidationRouter:(id)router didReceiveInvalidationError:(id)error;
- (void)runRemainingActivations:(void *)activations remainingDeactivations:(uint64_t)deactivations currentEvent:(void *)event errors:(void *)errors completion:;
- (void)setInvalidationHandler:(id)handler;
- (void)validateProducedPersistentDeactivations:(uint64_t)deactivations currentEvent:;
@end

@implementation AEActivePolicySession

- (void)deactivateWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v12 = completionCopy;
  v10 = completionCopy;
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

- (void)setInvalidationHandler:(id)handler
{
  v4 = MEMORY[0x23EECC850](handler, a2);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  v6 = self->_invalidationHandler != 0;
  invalidationRouter = self->_invalidationRouter;

  [(AEInvalidationRouter *)invalidationRouter setRouterMode:v6];
}

- (void)invalidationRouter:(id)router didReceiveInvalidationError:(id)error
{
  errorCopy = error;
  invalidationHandler = [(AEActivePolicySession *)self invalidationHandler];

  if (invalidationHandler)
  {
    v7 = AECoreLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AEActivePolicySession invalidationRouter:errorCopy didReceiveInvalidationError:v7];
    }

    invalidationHandler2 = [(AEActivePolicySession *)self invalidationHandler];
    (invalidationHandler2)[2](invalidationHandler2, errorCopy);
  }
}

- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives invalidationRouter:(void *)router activations:(void *)activations persistentDeactivations:(void *)deactivations queue:
{
  v25 = a2;
  storeCopy = store;
  primitivesCopy = primitives;
  routerCopy = router;
  activationsCopy = activations;
  deactivationsCopy = deactivations;
  if (self)
  {
    v26.receiver = self;
    v26.super_class = AEActivePolicySession;
    v19 = objc_msgSendSuper2(&v26, sel_init);
    self = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 2, a2);
      objc_storeStrong(self + 3, store);
      objc_storeStrong(self + 4, primitives);
      v20 = [routerCopy copy];
      v21 = self[6];
      self[6] = v20;

      v22 = [activationsCopy copy];
      v23 = self[7];
      self[7] = v22;

      objc_storeStrong(self + 5, deactivations);
    }
  }

  return self;
}

+ (id)sessionWithPolicyStore:(id)store performancePrimitives:(id)primitives invalidationRouter:(id)router activations:(id)activations persistentDeactivations:(id)deactivations queue:(id)queue
{
  queueCopy = queue;
  deactivationsCopy = deactivations;
  activationsCopy = activations;
  routerCopy = router;
  primitivesCopy = primitives;
  storeCopy = store;
  v19 = [[AEActivePolicySession alloc] initWithPolicyStore:storeCopy performancePrimitives:primitivesCopy invalidationRouter:routerCopy activations:activationsCopy persistentDeactivations:deactivationsCopy queue:queueCopy];

  [routerCopy setRouterDelegate:v19];

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

- (void)runRemainingActivations:(void *)activations remainingDeactivations:(uint64_t)deactivations currentEvent:(void *)event errors:(void *)errors completion:
{
  v11 = a2;
  activationsCopy = activations;
  eventCopy = event;
  errorsCopy = errors;
  if (self)
  {
    if ([v11 count])
    {
      if (deactivations >= 6)
      {
LABEL_8:
        errorsCopy[2](errorsCopy, eventCopy);
        goto LABEL_9;
      }
    }

    else
    {
      v15 = [activationsCopy count];
      if (deactivations > 5 || !v15)
      {
        goto LABEL_8;
      }
    }

    v46[4] = deactivations;
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
    v44[4] = deactivations;
    v33 = [activationsCopy ae_split:&v45 includeBlock:v44];
    v32 = v45;
    v16 = [AEActivationPool alloc];
    v37 = eventCopy;
    v17 = activationsCopy;
    v18 = *(self + 16);
    v19 = *(self + 24);
    v20 = *(self + 32);
    v21 = v19;
    v22 = v18;
    invalidationHandler = [v20 invalidationHandler];
    v24 = [(AEActivationPool *)&v16->super.isa initWithPolicyStore:v22 performancePrimitives:v21 invalidationHandler:invalidationHandler activations:v34 queue:*(self + 40)];

    v25 = [AEDeactivationPool alloc];
    v26 = *(self + 16);
    v27 = *(self + 40);
    v28 = *(self + 24);
    v29 = v26;
    p_isa = &v25->super.isa;
    activationsCopy = v17;
    eventCopy = v37;
    v31 = [(AEDeactivationPool *)p_isa initWithPolicyStore:v29 performancePrimitives:v28 persistentDeactivations:v32 queue:v27];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __103__AEActivePolicySession_runRemainingActivations_remainingDeactivations_currentEvent_errors_completion___block_invoke_3;
    v38[3] = &unk_278BB6F10;
    deactivationsCopy = deactivations;
    v38[4] = self;
    v38[5] = v31;
    v39 = v37;
    v40 = v33;
    v41 = v35;
    v42 = errorsCopy;
    [(AEActivationPool *)v24 activateWithCompletion:v38];

    v11 = v36;
  }

LABEL_9:
}

- (void)validateProducedPersistentDeactivations:(uint64_t)deactivations currentEvent:
{
  if (deactivations)
  {
    OUTLINED_FUNCTION_0();
    v7 = 3221225472;
    v8 = __78__AEActivePolicySession_validateProducedPersistentDeactivations_currentEvent___block_invoke;
    v9 = &__block_descriptor_40_e34_B16__0__AEPersistentDeactivation_8l;
    v10 = v2;
    v4 = [v3 ae_filter:v6];
    if ([v4 count])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_validateProducedPersistentDeactivations_currentEvent_ object:deactivations file:@"AEActivePolicySession.m" lineNumber:190 description:{@"Produced deactivations that will not run: %@", v4}];
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