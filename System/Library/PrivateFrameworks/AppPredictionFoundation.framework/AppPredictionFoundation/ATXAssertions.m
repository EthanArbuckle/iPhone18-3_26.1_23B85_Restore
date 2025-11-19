@interface ATXAssertions
+ (void)assert:(BOOL)a3 conditionName:(id)a4 withDescriptionString:(id)a5;
+ (void)parameterAssert:(id)a3 parameterName:(id)a4 descriptionString:(id)a5;
@end

@implementation ATXAssertions

+ (void)parameterAssert:(id)a3 parameterName:(id)a4 descriptionString:(id)a5
{
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    if (!a3)
    {
      [ATXAssertions parameterAssert:a2 parameterName:a1 descriptionString:?];
    }
  }

  else
  {
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&v13];
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[ATXAssertions parameterAssert:parameterName:descriptionString:];
      }
    }

    else
    {
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [ATXAssertions parameterAssert:v9 parameterName:v11 descriptionString:?];
      }
    }
  }
}

+ (void)assert:(BOOL)a3 conditionName:(id)a4 withDescriptionString:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      goto LABEL_7;
    }

LABEL_12:
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ATXAssertions assert:v9 conditionName:v14 withDescriptionString:?];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v15 = &v16;
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&v16];
  if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
  {
    if (v11)
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        +[ATXAssertions assert:conditionName:withDescriptionString:];
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    if (!a3)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = a1;
      v14 = v12;
      [v12 handleFailureInMethod:a2 object:v13 file:@"ATXAssertions.m" lineNumber:70 description:@"Condition %@ is unexpectedly false - %@", v9, v11];
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_7:
  if (!a3)
  {
    [(ATXAssertions *)a2 assert:a1 conditionName:v9 withDescriptionString:&v15];
    v11 = 0;
    v14 = v15;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:
}

+ (void)parameterAssert:parameterName:descriptionString:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_226368000, v0, v1, "%@ parameter is unexpectedly nil - %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)parameterAssert:(uint64_t)a1 parameterName:(NSObject *)a2 descriptionString:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "%@ parameter is unexpectedly nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)parameterAssert:(uint64_t)a1 parameterName:(uint64_t)a2 descriptionString:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAssertions.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];
}

+ (void)assert:conditionName:withDescriptionString:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_226368000, v0, v1, "Condition %@ is unexpectedly false - %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)assert:(uint64_t)a1 conditionName:(NSObject *)a2 withDescriptionString:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "Condition %@ is unexpectedly false.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)assert:(uint64_t)a3 conditionName:(void *)a4 withDescriptionString:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  *a4 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"ATXAssertions.m" lineNumber:72 description:{@"Condition %@ is unexpectedly false.", a3}];
}

@end