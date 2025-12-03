@interface AAFollowUpUtilities
+ (BOOL)hasValidIDMSAccountForUserInfo:(id)info;
+ (id)followUpPostAnalyticsInfoWithContext:(id)context identifier:(id)identifier error:(id)error;
@end

@implementation AAFollowUpUtilities

+ (BOOL)hasValidIDMSAccountForUserInfo:(id)info
{
  v53 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [infoCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  v6 = _AALogSystem();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpUtilities hasValidIDMSAccountForUserInfo:v7];
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
  }

  v7 = [defaultStore accountWithIdentifier:v5];
  if (!v7)
  {
LABEL_32:
    v30 = 0;
    goto LABEL_38;
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  allAuthKitAccounts = [mEMORY[0x1E698DC80] allAuthKitAccounts];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = allAuthKitAccounts;
  v40 = [v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v40)
  {
    v12 = *v48;
    v37 = defaultStore;
    v38 = infoCopy;
    v35 = *v48;
    v36 = v5;
    v39 = v11;
    while (2)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        username = [v14 username];
        username2 = [v7 username];
        v17 = [username isEqualToString:username2];

        if (v17)
        {
          v34 = _AALogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
          }

          v30 = 1;
LABEL_36:
          v29 = v11;
          defaultStore = v37;
          infoCopy = v38;
          v5 = v36;
          goto LABEL_37;
        }

        mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
        v19 = [mEMORY[0x1E698DC80]2 aliasesForAccount:v14];

        if (v19)
        {
          v20 = _AALogSystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [(AAFollowUpUtilities *)&buf hasValidIDMSAccountForUserInfo:v46, v20];
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v42;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v42 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v41 + 1) + 8 * j);
                username3 = [v7 username];
                v28 = [username3 isEqualToString:v26];

                if (v28)
                {
                  v31 = _AALogSystem();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
                    +[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:];
                  }

                  v30 = 1;
                  v11 = v39;
                  goto LABEL_36;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v41 objects:v51 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v11 = v39;
          v12 = v35;
        }
      }

      defaultStore = v37;
      infoCopy = v38;
      v5 = v36;
      v40 = [v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    [(AAFollowUpUtilities *)v7 hasValidIDMSAccountForUserInfo:v29];
  }

  v30 = 0;
LABEL_37:

LABEL_38:
  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (id)followUpPostAnalyticsInfoWithContext:(id)context identifier:(id)identifier error:(id)error
{
  contextCopy = context;
  identifierCopy = identifier;
  errorCopy = error;
  v10 = objc_alloc_init(MEMORY[0x1E6985DA8]);
  proxiedDevice = [contextCopy proxiedDevice];

  if (proxiedDevice)
  {
    [v10 setHasProxiedDevice:&unk_1F2F24B80];
  }

  _proxiedAppBundleID = [contextCopy _proxiedAppBundleID];

  if (_proxiedAppBundleID)
  {
    _proxiedAppBundleID2 = [contextCopy _proxiedAppBundleID];
    [v10 setProxiedBundleID:_proxiedAppBundleID2];
  }

  if (errorCopy)
  {
    [v10 setPostedReasonError:errorCopy];
  }

  telemetryFlowID = [contextCopy telemetryFlowID];

  if (telemetryFlowID)
  {
    telemetryFlowID2 = [contextCopy telemetryFlowID];
    [v10 setFlowID:telemetryFlowID2];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  altDSID = [contextCopy altDSID];
  v18 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID];

  if ([mEMORY[0x1E698DC80] accountAccessTelemetryOptInForAccount:v18])
  {
    v19 = [mEMORY[0x1E698DC80] telemetryDeviceSessionIDForAccount:v18];
    [v10 setDeviceSessionID:v19];
  }

  [v10 setCfuType:identifierCopy];
  v20 = [v10 copy];

  return v20;
}

+ (void)hasValidIDMSAccountForUserInfo:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "AAFollowUpUtilities: Follow up has account identifier %@ in userInfo", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)hasValidIDMSAccountForUserInfo:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "AAFollowUpUtilities: Found account %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)hasValidIDMSAccountForUserInfo:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "AAFollowUpUtilities: Checking aliases...", buf, 2u);
}

+ (void)hasValidIDMSAccountForUserInfo:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "AAFollowUpUtilities: alias %@ found!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)hasValidIDMSAccountForUserInfo:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "AAFollowUpUtilities: Found valid IDMS account for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)hasValidIDMSAccountForUserInfo:(void *)a1 .cold.6(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 accountType];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_FAULT, "AAFollowUpUtilities: Unable to find valid account for followup with account type %{public}@. Clearing item.", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end