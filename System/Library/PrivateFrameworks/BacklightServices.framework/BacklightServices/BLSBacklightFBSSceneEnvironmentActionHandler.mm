@interface BLSBacklightFBSSceneEnvironmentActionHandler
+ (id)desiredFidelityRequestFromAction:(id)a3;
+ (id)frameSpecifiersRequestFromAction:(id)a3;
- (id)respondToActions:(id)a3 forFBSScene:(id)a4 fromTransitionContext:(id)a5;
@end

@implementation BLSBacklightFBSSceneEnvironmentActionHandler

+ (id)desiredFidelityRequestFromAction:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [BLSDesiredFidelityRequest alloc];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke;
    v7[3] = &unk_278428768;
    v8 = v3;
    v5 = [(BLSDesiredFidelityRequest *)v4 initWithCompletion:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) canSendResponse];
  v5 = bls_scenes_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_2();
    }

    v7 = *v3;
    v6 = [[BLSDesiredFidelityResponse alloc] initWithDesiredFidelity:a2];
    [v7 sendResponse:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_1();
  }
}

+ (id)frameSpecifiersRequestFromAction:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [BLSFrameSpecifiersRequest alloc];
    v5 = [v3 dateInterval];
    v6 = [v3 previousPresentationDate];
    v7 = [v3 shouldReset];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke;
    v10[3] = &unk_2784291A0;
    v11 = v3;
    v8 = [(BLSFrameSpecifiersRequest *)v4 initWithDateInterval:v5 previousPresentationDate:v6 shouldReset:v7 completion:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 canSendResponse];
  v7 = bls_scenes_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_2();
    }

    v9 = *v4;
    v8 = [[BLSFrameSpecifiersRequestResponse alloc] initWithDateSpecifiers:v3];
    [v9 sendResponse:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_1();
  }
}

- (id)respondToActions:(id)a3 forFBSScene:(id)a4 fromTransitionContext:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = bls_scenes_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironmentActionHandler respondToActions:v5 forFBSScene:? fromTransitionContext:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v14 = bls_scenes_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_debug_impl(&dword_21FE25000, v14, OS_LOG_TYPE_DEBUG, "respondToActions expect to handle action:%@", buf, 0xCu);
          }

          v15 = v6;
        }

        else
        {
          v14 = bls_scenes_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_debug_impl(&dword_21FE25000, v14, OS_LOG_TYPE_DEBUG, "respondToActions unhandled action:%@", buf, 0xCu);
          }

          v15 = v22;
        }

        [v15 addObject:v13];
        ++v12;
      }

      while (v10 != v12);
      v16 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
      v10 = v16;
    }

    while (v16);
  }

  if ([v6 count])
  {
    v17 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke;
    block[3] = &unk_2784291C8;
    v24 = v6;
    dispatch_after(v17, MEMORY[0x277D85CD0], block);
  }

  v18 = bls_scenes_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironmentActionHandler respondToActions:v22 forFBSScene:? fromTransitionContext:?];
  }

  v19 = [MEMORY[0x277CBEB98] setWithArray:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (!v3)
  {
LABEL_16:

    goto LABEL_17;
  }

  v5 = v3;
  v6 = 0;
  v7 = *v14;
  *&v4 = 138412290;
  v12 = v4;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      if ([v9 _expectsResponse] && objc_msgSend(v9, "canSendResponse"))
      {
        v10 = bls_scenes_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = v12;
          v18 = v9;
          _os_log_debug_impl(&dword_21FE25000, v10, OS_LOG_TYPE_DEBUG, "response failed for action:%@", buf, 0xCu);
        }

        v6 = 1;
      }
    }

    v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  }

  while (v5);

  if (v6)
  {
    v2 = bls_scenes_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke_cold_1(v1, v2);
    }

    goto LABEL_16;
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_3();
  v10 = *MEMORY[0x277D85DE8];
  NSStringFromBLSUpdateFidelity(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_2(&dword_21FE25000, v2, v3, "unable to send desiredFidelity:%{public}@ response to desiredFidelityAction:%{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_desiredFidelityRequestFromAction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_3();
  v8 = *MEMORY[0x277D85DE8];
  NSStringFromBLSUpdateFidelity(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_3();
  v10 = *MEMORY[0x277D85DE8];
  [v1 bls_boundedDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_2(&dword_21FE25000, v2, v3, "unable to send specifiers:%{public}@ response to frameSpecifiersAction:%{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __81__BLSBacklightFBSSceneEnvironmentActionHandler_frameSpecifiersRequestFromAction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_3();
  v8 = *MEMORY[0x277D85DE8];
  [v1 bls_boundedDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)respondToActions:(void *)a1 forFBSScene:fromTransitionContext:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)respondToActions:(void *)a1 forFBSScene:fromTransitionContext:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __99__BLSBacklightFBSSceneEnvironmentActionHandler_respondToActions_forFBSScene_fromTransitionContext___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134218242;
  v5 = 0x4014000000000000;
  v6 = 2112;
  v7 = v2;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "one or more actions did not respond after %lf seconds; %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end