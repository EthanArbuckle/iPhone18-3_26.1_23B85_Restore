@interface ACRemoteUtilities
+ (id)localAccountMatchingRemoteAccount:(id)a3 inAccountStore:(id)a4;
@end

@implementation ACRemoteUtilities

+ (id)localAccountMatchingRemoteAccount:(id)a3 inAccountStore:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v8 = [v6 accountWithIdentifier:v7];

  if (v8)
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[ACRemoteUtilities localAccountMatchingRemoteAccount:inAccountStore:];
    }

    v10 = v8;
    goto LABEL_33;
  }

  v11 = [v5 accountType];
  v12 = v11;
  if (!v11 || ([v11 identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v10 = 0;
    goto LABEL_32;
  }

  v14 = [v12 identifier];
  v15 = [v6 accountTypeWithAccountTypeIdentifier:v14];

  if (!v15)
  {
    v10 = 0;
    goto LABEL_31;
  }

  [v6 accountsWithAccountType:v15];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v16 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v16)
  {
    v10 = 0;
    goto LABEL_30;
  }

  v17 = v16;
  v38 = v15;
  v39 = v6;
  v18 = *v43;
  v19 = *MEMORY[0x277CB8D58];
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v43 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v42 + 1) + 8 * i);
      v22 = [v12 identifier];
      if ([v22 isEqualToString:v19])
      {
        v23 = [v21 objectForKeyedSubscript:@"dsid"];
        [v5 objectForKeyedSubscript:@"dsid"];
        v24 = v21;
        v25 = v5;
        v26 = v17;
        v27 = v19;
        v28 = v18;
        v30 = v29 = v12;
        v41 = [v23 isEqual:v30];

        v12 = v29;
        v18 = v28;
        v19 = v27;
        v17 = v26;
        v5 = v25;
        v21 = v24;

        if (v41)
        {
          v34 = _ACLogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            +[ACRemoteUtilities localAccountMatchingRemoteAccount:inAccountStore:];
          }

LABEL_28:
          v15 = v38;

          v10 = v21;
          v6 = v39;
          goto LABEL_29;
        }
      }

      else
      {
      }

      v31 = [v21 username];
      v32 = [v5 username];
      v33 = [v31 isEqualToString:v32];

      if (v33)
      {
        v34 = _ACLogSystem();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          +[ACRemoteUtilities localAccountMatchingRemoteAccount:inAccountStore:];
        }

        goto LABEL_28;
      }
    }

    v17 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  v10 = 0;
  v6 = v39;
  v15 = v38;
LABEL_29:
  v8 = 0;
LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:
  v36 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)localAccountMatchingRemoteAccount:inAccountStore:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  v4 = v0;
  _os_log_debug_impl(&dword_221D2F000, v1, OS_LOG_TYPE_DEBUG, "Remote account '%@' matched local account '%@' by identifier", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)localAccountMatchingRemoteAccount:inAccountStore:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  v3 = 0;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "Remote account '%@' matched local account '%@' by accountType and username", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)localAccountMatchingRemoteAccount:inAccountStore:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  v3 = 0;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "Remote account '%@' matched local iTunes account '%@' dsid", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end