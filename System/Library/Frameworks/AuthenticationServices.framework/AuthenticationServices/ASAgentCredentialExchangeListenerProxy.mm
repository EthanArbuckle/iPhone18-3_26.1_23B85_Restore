@interface ASAgentCredentialExchangeListenerProxy
@end

@implementation ASAgentCredentialExchangeListenerProxy

void __60___ASAgentCredentialExchangeListenerProxy__setUpConnection___block_invoke(uint64_t a1)
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

void __78___ASAgentCredentialExchangeListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __118___ASAgentCredentialExchangeListenerProxy_requestExportForCredentialProvider_windowSceneIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __118___ASAgentCredentialExchangeListenerProxy_requestExportForCredentialProvider_windowSceneIdentifier_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  os_activity_apply(v4, v8);
  (*(a1[5] + 16))(a1[5], 0, v6, v7);
}

void __118___ASAgentCredentialExchangeListenerProxy_requestExportForCredentialProvider_windowSceneIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __91___ASAgentCredentialExchangeListenerProxy_continueExportWithCredentials_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91___ASAgentCredentialExchangeListenerProxy_continueExportWithCredentials_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __91___ASAgentCredentialExchangeListenerProxy_continueExportWithCredentials_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __88___ASAgentCredentialExchangeListenerProxy_importCredentialsWithToken_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88___ASAgentCredentialExchangeListenerProxy_importCredentialsWithToken_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  os_activity_apply(v4, v8);
  (*(a1[5] + 16))(a1[5], 0, v6, v7);
}

void __88___ASAgentCredentialExchangeListenerProxy_importCredentialsWithToken_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __61___ASAgentCredentialExchangeListenerProxy_setTokenForImport___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___ASAgentCredentialExchangeListenerProxy_setTokenForImport___block_invoke_2;
  v7[3] = &unk_1E7AF8610;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  os_activity_apply(v4, v7);
}

void __61___ASAgentCredentialExchangeListenerProxy_setTokenForImport___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __69___ASAgentCredentialExchangeListenerProxy_getExportedCredentialData___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69___ASAgentCredentialExchangeListenerProxy_getExportedCredentialData___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], 0, v7, v8);
}

void __69___ASAgentCredentialExchangeListenerProxy_getExportedCredentialData___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

void __65___ASAgentCredentialExchangeListenerProxy_cancelCurrentOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___ASAgentCredentialExchangeListenerProxy_cancelCurrentOperation__block_invoke_2;
  v7[3] = &unk_1E7AF8610;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  os_activity_apply(v4, v7);
}

void __65___ASAgentCredentialExchangeListenerProxy_cancelCurrentOperation__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

@end