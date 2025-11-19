@interface AAPersonaUtility
+ (BOOL)personaConsistencyCheck:(id)a3;
+ (id)findEnterprisePersonaIdentifier;
+ (void)findEnterprisePersonaIdentifier;
+ (void)verifyAndFixPersonaIfNeeded:(id)a3 desiredContext:(id)a4;
@end

@implementation AAPersonaUtility

+ (id)findEnterprisePersonaIdentifier
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 listAllPersonaWithAttributes];

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(AAPersonaUtility *)v3];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isEnterprisePersona])
        {
          v13 = [v12 userPersonaUniqueString];

          v14 = _AALogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v13;
            _os_log_debug_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEBUG, "Found the enterprise persona (%@)!", buf, 0xCu);
          }

          v9 = v13;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)personaConsistencyCheck:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];

  v6 = [v3 isEqualToPersona:v5];
  v7 = _AALogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[AAPersonaUtility personaConsistencyCheck:];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    +[AAPersonaUtility personaConsistencyCheck:];
  }

  return v6;
}

+ (void)verifyAndFixPersonaIfNeeded:(id)a3 desiredContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v9 = [v8 currentPersona];

  v10 = [v6 isEqualToPersona:v9];
  v11 = _AALogSystem();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[AAPersonaUtility verifyAndFixPersonaIfNeeded:desiredContext:];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[AAPersonaUtility verifyAndFixPersonaIfNeeded:desiredContext:];
    }

    v13 = [MEMORY[0x1E69DF068] sharedManager];
    v14 = [v13 currentPersona];
    v15 = [v14 restorePersonaWithSavedPersonaContext:v7];

    v16 = [MEMORY[0x1E69DF068] sharedManager];
    v17 = [v16 currentPersona];

    [a1 personaConsistencyCheck:v6];
    v9 = v17;
  }
}

+ (void)findEnterprisePersonaIdentifier
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "personaAttributes: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)personaConsistencyCheck:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v10 = *MEMORY[0x1E69E9840];
  [v3 userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaUniqueString];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x34u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)personaConsistencyCheck:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v10 = *MEMORY[0x1E69E9840];
  [v3 userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaUniqueString];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x34u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)verifyAndFixPersonaIfNeeded:desiredContext:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v10 = *MEMORY[0x1E69E9840];
  [v3 userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaNickName];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x34u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)verifyAndFixPersonaIfNeeded:desiredContext:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v10 = *MEMORY[0x1E69E9840];
  [v3 userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_1() userPersonaNickName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() userPersonaNickName];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x34u);

  v9 = *MEMORY[0x1E69E9840];
}

@end