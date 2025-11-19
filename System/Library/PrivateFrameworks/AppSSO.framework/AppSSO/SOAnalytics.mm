@interface SOAnalytics
+ (void)analyticsForMDMProfiles:(id)a3 reason:(id)a4;
@end

@implementation SOAnalytics

+ (void)analyticsForMDMProfiles:(id)a3 reason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = MEMORY[0x1E69E9820];
        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = v6;
        AnalyticsSendEventLazy();
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:{16, v12, 3221225472, __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke, &unk_1E813EE48, v13}];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

id __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke(uint64_t a1)
{
  v50[21] = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v2 = getPOProfileClass_softClass;
  v48 = getPOProfileClass_softClass;
  if (!getPOProfileClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getPOProfileClass_block_invoke;
    v43 = &unk_1E813E230;
    v44 = &v45;
    __getPOProfileClass_block_invoke(&v40);
    v2 = v46[3];
  }

  v3 = v2;
  _Block_object_dispose(&v45, 8);
  v4 = [[v2 alloc] initWithProfile:*(a1 + 32)];
  if (!v4)
  {
    if (SO_LOG_SOAnalytics_once != -1)
    {
      __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke_cold_1();
    }

    v5 = SO_LOG_SOAnalytics_log;
    if (os_log_type_enabled(SO_LOG_SOAnalytics_log, OS_LOG_TYPE_ERROR))
    {
      __46__SOAnalytics_analyticsForMDMProfiles_reason___block_invoke_cold_2(v5);
    }
  }

  v50[0] = *(a1 + 40);
  v49[0] = @"reason";
  v49[1] = @"type";
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v6 = getSOFullProfileClass_softClass_0;
  v48 = getSOFullProfileClass_softClass_0;
  if (!getSOFullProfileClass_softClass_0)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getSOFullProfileClass_block_invoke_0;
    v43 = &unk_1E813E230;
    v44 = &v45;
    __getSOFullProfileClass_block_invoke_0(&v40);
    v6 = v46[3];
  }

  v7 = v6;
  _Block_object_dispose(&v45, 8);
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  v39 = [v6 stringWithProfileType:{objc_msgSend(v9, "type")}];
  v50[1] = v39;
  v49[2] = @"isKerberosExtension";
  v10 = MEMORY[0x1E696AD98];
  v38 = [*v8 extensionBundleIdentifier];
  v37 = [v10 numberWithBool:{objc_msgSend(v38, "isEqualToString:", @"com.apple.AppSSOKerberos.KerberosExtension"}];
  v50[2] = v37;
  v49[3] = @"authenticationMethod";
  v36 = [*v8 platformSSO];
  v11 = [v36 objectForKeyedSubscript:@"AuthenticationMethod"];
  v35 = v11;
  v12 = &stru_1F408B1A0;
  if (v11)
  {
    v12 = v11;
  }

  v50[3] = v12;
  v49[4] = @"hasRegistrationToken";
  v13 = MEMORY[0x1E696AD98];
  v34 = [*v8 pssoRegistrationToken];
  v33 = [v13 numberWithInt:{objc_msgSend(v34, "length") != 0}];
  v50[4] = v33;
  v49[5] = @"sharedDeviceKeys";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "useSharedDeviceKeys")}];
  v50[5] = v32;
  v49[6] = @"createUsersEnabled";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "createUsersEnabled")}];
  v50[6] = v31;
  v49[7] = @"createFirstUserDuringSetup";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "createFirstUserDuringSetupEnabled")}];
  v50[7] = v30;
  v49[8] = @"enableAuthorization";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "authorizationEnabled")}];
  v50[8] = v29;
  v49[9] = @"allowDeviceIdentifiersInAttestation";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allowDeviceIdentifiersInAttestation")}];
  v50[9] = v28;
  v49[10] = @"allowAccessKeyExpressMode";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allowAccessKeyExpressMode")}];
  v50[10] = v27;
  v49[11] = @"synchronizeProfilePicture";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "synchronizeProfilePicture")}];
  v50[11] = v26;
  v49[12] = @"temporarySessionQuickLogin";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "temporarySessionQuickLogin")}];
  v50[12] = v25;
  v49[13] = @"enableRegistrationDuringSetup";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "enableRegistrationDuringSetup")}];
  v50[13] = v14;
  v49[14] = @"newUserAuthorizationMode";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "newUserAuthorizationMode")}];
  v50[14] = v15;
  v49[15] = @"userAuthorizationMode";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "userAuthorizationMode")}];
  v50[15] = v16;
  v49[16] = @"offlineGracePeriod";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "offlineGracePeriod")}];
  v50[16] = v17;
  v49[17] = @"authenticationGracePeriod";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "requireAuthGracePeriod")}];
  v50[17] = v18;
  v49[18] = @"fileVaultPolicy";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "fileVaultPolicy")}];
  v50[18] = v19;
  v49[19] = @"loginPolicy";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "loginPolicy")}];
  v50[19] = v20;
  v49[20] = @"unlockPolicy";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "unlockPolicy")}];
  v50[20] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

@end