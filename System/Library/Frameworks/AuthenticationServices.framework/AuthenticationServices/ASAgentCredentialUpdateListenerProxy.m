@interface ASAgentCredentialUpdateListenerProxy
@end

@implementation ASAgentCredentialUpdateListenerProxy

void __58___ASAgentCredentialUpdateListenerProxy__setUpConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __58___ASAgentCredentialUpdateListenerProxy__setUpConnection___block_invoke_cold_1(v2);
    }

    [WeakRetained[1] invalidate];
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

void __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_ERROR, "Remote proxy object error handler invoked with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4(a1, a2);
  v5 = OUTLINED_FUNCTION_2();
  NSStringFromSelector(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_1B1C8D000, v7, v8, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

@end