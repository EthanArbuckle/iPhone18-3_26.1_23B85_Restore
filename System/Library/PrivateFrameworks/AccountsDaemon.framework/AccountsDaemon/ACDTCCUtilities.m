@interface ACDTCCUtilities
+ (BOOL)clearAllTCCStatesForAccountTypeID:(id)a3;
+ (BOOL)clearTCCStateForClient:(id)a3 accountTypeID:(id)a4;
+ (BOOL)setTCCStateForClient:(id)a3 accountTypeID:(id)a4 toGranted:(BOOL)a5;
+ (__CFString)_TCCServiceForAccountTypeID:(id)a3;
+ (id)allTCCStatesForAccountTypeID:(id)a3;
+ (int)TCCStateForClient:(id)a3 accountTypeID:(id)a4;
@end

@implementation ACDTCCUtilities

+ (int)TCCStateForClient:(id)a3 accountTypeID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([a1 _TCCServiceForAccountTypeID:v7])
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = TCCAccessCopyInformation();
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v20 = v7;
      v10 = *v22;
      v11 = MEMORY[0x277D6C0C8];
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:*v11];

          if (v14)
          {
            v15 = CFBundleGetIdentifier(v14);
            v16 = [v6 bundleID];
            v17 = [v15 isEqualToString:v16];

            if (v17)
            {
              v9 = [v13 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

              if (v9)
              {
                if (CFBooleanGetValue(v9))
                {
                  LODWORD(v9) = 1;
                }

                else
                {
                  LODWORD(v9) = 2;
                }
              }

              v7 = v20;

              goto LABEL_21;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v7 = v20;
    }

LABEL_21:
  }

  else
  {
    v8 = _ACDLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities TCCStateForClient:accountTypeID:];
    }

    LODWORD(v9) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)setTCCStateForClient:(id)a3 accountTypeID:(id)a4 toGranted:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (![a1 _TCCServiceForAccountTypeID:v8])
  {
    v12 = _ACDLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities setTCCStateForClient:accountTypeID:toGranted:];
    }

    goto LABEL_10;
  }

  if (![v7 bundle])
  {
    v12 = _ACDLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities setTCCStateForClient:accountTypeID:toGranted:];
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  v9 = TCCAccessSetForBundle();
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDTCCUtilities setTCCStateForClient:v9 accountTypeID:v10 toGranted:?];
  }

  v11 = v9 != 0;
LABEL_11:

  return v11;
}

+ (BOOL)clearTCCStateForClient:(id)a3 accountTypeID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![a1 _TCCServiceForAccountTypeID:v7])
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities clearTCCStateForClient:accountTypeID:];
    }

    goto LABEL_8;
  }

  if (![v6 bundle])
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities clearTCCStateForClient:accountTypeID:];
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  [a1 _TCCServiceForAccountTypeID:v7];
  [v6 bundle];
  v8 = TCCAccessResetForBundle() != 0;
LABEL_9:

  return v8;
}

+ (id)allTCCStatesForAccountTypeID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 _TCCServiceForAccountTypeID:v4])
  {
    v5 = TCCAccessCopyInformation();
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v22 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        v11 = MEMORY[0x277D6C0C8];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:{*v11, v22}];

            if (v14)
            {
              v15 = CFBundleGetIdentifier(v14);
              v16 = [v13 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:CFBooleanGetValue(v16)];
              [v6 setObject:v17 forKey:v15];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v9);
      }

      v5 = v22;
    }

    else
    {
      v6 = 0;
    }

    v18 = v6;

    v19 = v18;
  }

  else
  {
    v18 = _ACDLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities TCCStateForClient:accountTypeID:];
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)clearAllTCCStatesForAccountTypeID:(id)a3
{
  v4 = a3;
  if ([a1 _TCCServiceForAccountTypeID:v4])
  {
    v5 = TCCAccessReset() != 0;
  }

  else
  {
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities TCCStateForClient:accountTypeID:];
    }

    v5 = 0;
  }

  return v5;
}

+ (__CFString)_TCCServiceForAccountTypeID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CB8C18]])
  {
    v4 = MEMORY[0x277D6C170];
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CB8D28]])
  {
    v4 = MEMORY[0x277D6C228];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CB8D00]])
  {
    v4 = MEMORY[0x277D6C208];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CB8D18]])
  {
    v5 = *MEMORY[0x277D6C220];
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

+ (void)TCCStateForClient:accountTypeID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Cannot check access to a private account type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setTCCStateForClient:(unsigned __int8)a1 accountTypeID:(NSObject *)a2 toGranted:.cold.1(unsigned __int8 a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "Setting TCC access bit returned: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)setTCCStateForClient:accountTypeID:toGranted:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "%@ seems to have a NULL bundle. Sorry can't work with that.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setTCCStateForClient:accountTypeID:toGranted:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_221D2F000, v1, OS_LOG_TYPE_ERROR, "%@ is requesting access to a private account type: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)clearTCCStateForClient:accountTypeID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Cannot reset TCC Access with nil bundle: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)clearTCCStateForClient:accountTypeID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Cannot clear access for account type %@, which has no backing TCC service.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end